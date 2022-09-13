// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.

'use strict';

const {
  ObjectKeys,
  ObjectSetPrototypeOf,
} = primordials;

const net = require('net');
const assert = require('internal/assert');
const {
  parsers,
  freeParser,
  debug,
  CRLF,
  continueExpression,
  chunkExpression,
  kIncomingMessage,
  HTTPParser,
  _checkInvalidHeaderChar: checkInvalidHeaderChar,
  prepareError,
} = require('_http_common');
const { OutgoingMessage } = require('_http_outgoing');
const {
  kOutHeaders,
  kNeedDrain,
  nowDate,
  emitStatistics
} = require('internal/http');
const {
  defaultTriggerAsyncIdScope,
  getOrSetAsyncId
} = require('internal/async_hooks');
const { IncomingMessage } = require('_http_incoming');
const {
  ERR_HTTP_HEADERS_SENT,
  ERR_HTTP_INVALID_STATUS_CODE,
  ERR_INVALID_ARG_TYPE,
  ERR_INVALID_CHAR
} = require('internal/errors').codes;
const { validateInteger } = require('internal/validators');
const Buffer = require('buffer').Buffer;
const {
  DTRACE_HTTP_SERVER_REQUEST,
  DTRACE_HTTP_SERVER_RESPONSE
} = require('internal/dtrace');
const { observerCounts, constants } = internalBinding('performance');
const { NODE_PERFORMANCE_ENTRY_TYPE_HTTP } = constants;

const kServerResponse = Symbol('ServerResponse');
const kServerResponseStatistics = Symbol('ServerResponseStatistics');

const STATUS_CODES = {
  100: 'Continue',
  101: 'Switching Protocols',
  102: 'Processing',                 // RFC 2518, obsoleted by RFC 4918
  103: 'Early Hints',
  200: 'OK',
  201: 'Created',
  202: 'Accepted',
  203: 'Non-Authoritative Information',
  204: 'No Content',
  205: 'Reset Content',
  206: 'Partial Content',
  207: 'Multi-Status',               // RFC 4918
  208: 'Already Reported',
  226: 'IM Used',
  300: 'Multiple Choices',           // RFC 7231
  301: 'Moved Permanently',
  302: 'Found',
  303: 'See Other',
  304: 'Not Modified',
  305: 'Use Proxy',
  307: 'Temporary Redirect',
  308: 'Permanent Redirect',         // RFC 7238
  400: 'Bad Request',
  401: 'Unauthorized',
  402: 'Payment Required',
  403: 'Forbidden',
  404: 'Not Found',
  405: 'Method Not Allowed',
  406: 'Not Acceptable',
  407: 'Proxy Authentication Required',
  408: 'Request Timeout',
  409: 'Conflict',
  410: 'Gone',
  411: 'Length Required',
  412: 'Precondition Failed',
  413: 'Payload Too Large',
  414: 'URI Too Long',
  415: 'Unsupported Media Type',
  416: 'Range Not Satisfiable',
  417: 'Expectation Failed',
  418: 'I\'m a Teapot',              // RFC 7168
  421: 'Misdirected Request',
  422: 'Unprocessable Entity',       // RFC 4918
  423: 'Locked',                     // RFC 4918
  424: 'Failed Dependency',          // RFC 4918
  425: 'Too Early',                  // RFC 8470
  426: 'Upgrade Required',           // RFC 2817
  428: 'Precondition Required',      // RFC 6585
  429: 'Too Many Requests',          // RFC 6585
  431: 'Request Header Fields Too Large', // RFC 6585
  451: 'Unavailable For Legal Reasons',
  500: 'Internal Server Error',
  501: 'Not Implemented',
  502: 'Bad Gateway',
  503: 'Service Unavailable',
  504: 'Gateway Timeout',
  505: 'HTTP Version Not Supported',
  506: 'Variant Also Negotiates',    // RFC 2295
  507: 'Insufficient Storage',       // RFC 4918
  508: 'Loop Detected',
  509: 'Bandwidth Limit Exceeded',
  510: 'Not Extended',               // RFC 2774
  511: 'Network Authentication Required' // RFC 6585
};

const kOnExecute = HTTPParser.kOnExecute | 0;

class HTTPServerAsyncResource {
  constructor(type, socket) {
    this.type = type;
    this.socket = socket;
  }
}

function ServerResponse(req) {
  OutgoingMessage.call(this);

  if (req.method === 'HEAD') this._hasBody = false;

  this.sendDate = true;
  this._sent100 = false;
  this._expect_continue = false;

  if (req.httpVersionMajor < 1 || req.httpVersionMinor < 1) {
    this.useChunkedEncodingByDefault = chunkExpression.test(req.headers.te);
    this.shouldKeepAlive = false;
  }

  const httpObserverCount = observerCounts[NODE_PERFORMANCE_ENTRY_TYPE_HTTP];
  if (httpObserverCount > 0) {
    this[kServerResponseStatistics] = {
      startTime: process.hrtime()
    };
  }
}
ObjectSetPrototypeOf(ServerResponse.prototype, OutgoingMessage.prototype);
ObjectSetPrototypeOf(ServerResponse, OutgoingMessage);

ServerResponse.prototype._finish = function _finish() {
  DTRACE_HTTP_SERVER_RESPONSE(this.socket);
  if (this[kServerResponseStatistics] !== undefined) {
    emitStatistics(this[kServerResponseStatistics]);
  }
  OutgoingMessage.prototype._finish.call(this);
};


ServerResponse.prototype.statusCode = 200;
ServerResponse.prototype.statusMessage = undefined;

function onServerResponseClose() {
  // EventEmitter.emit makes a copy of the 'close' listeners array before
  // calling the listeners. detachSocket() unregisters onServerResponseClose
  // but if detachSocket() is called, directly or indirectly, by a 'close'
  // listener, onServerResponseClose is still in that copy of the listeners
  // array. That is, in the example below, b still gets called even though
  // it's been removed by a:
  //
  //   var EventEmitter = require('events');
  //   var obj = new EventEmitter();
  //   obj.on('event', a);
  //   obj.on('event', b);
  //   function a() { obj.removeListener('event', b) }
  //   function b() { throw "BAM!" }
  //   obj.emit('event');  // throws
  //
  // Ergo, we need to deal with stale 'close' events and handle the case
  // where the ServerResponse object has already been deconstructed.
  // Fortunately, that requires only a single if check. :-)
  if (this._httpMessage) this._httpMessage.emit('close');
}

ServerResponse.prototype.assignSocket = function assignSocket(socket) {
  assert(!socket._httpMessage);
  socket._httpMessage = this;
  socket.on('close', onServerResponseClose);
  this.socket = socket;
  this.emit('socket', socket);
  this._flush();
};

ServerResponse.prototype.detachSocket = function detachSocket(socket) {
  assert(socket._httpMessage === this);
  socket.removeListener('close', onServerResponseClose);
  socket._httpMessage = null;
  this.socket = null;
};

ServerResponse.prototype.writeContinue = function writeContinue(cb) {
  this._writeRaw(`HTTP/1.1 100 Continue${CRLF}${CRLF}`, 'ascii', cb);
  this._sent100 = true;
};

ServerResponse.prototype.writeProcessing = function writeProcessing(cb) {
  this._writeRaw(`HTTP/1.1 102 Processing${CRLF}${CRLF}`, 'ascii', cb);
};

ServerResponse.prototype._implicitHeader = function _implicitHeader() {
  this.writeHead(this.statusCode);
};

ServerResponse.prototype.writeHead = writeHead;
function writeHead(statusCode, reason, obj) {
  const originalStatusCode = statusCode;

  statusCode |= 0;
  if (statusCode < 100 || statusCode > 999) {
    throw new ERR_HTTP_INVALID_STATUS_CODE(originalStatusCode);
  }


  if (typeof reason === 'string') {
    // writeHead(statusCode, reasonPhrase[, headers])
    this.statusMessage = reason;
  } else {
    // writeHead(statusCode[, headers])
    if (!this.statusMessage)
      this.statusMessage = STATUS_CODES[statusCode] || 'unknown';
    obj = reason;
  }
  this.statusCode = statusCode;

  let headers;
  if (this[kOutHeaders]) {
    // Slow-case: when progressive API and header fields are passed.
    let k;
    if (obj) {
      const keys = ObjectKeys(obj);
      for (let i = 0; i < keys.length; i++) {
        k = keys[i];
        if (k) this.setHeader(k, obj[k]);
      }
    }
    if (k === undefined && this._header) {
      throw new ERR_HTTP_HEADERS_SENT('render');
    }
    // Only progressive api is used
    headers = this[kOutHeaders];
  } else {
    // Only writeHead() called
    headers = obj;
  }

  if (checkInvalidHeaderChar(this.statusMessage))
    throw new ERR_INVALID_CHAR('statusMessage');

  const statusLine = `HTTP/1.1 ${statusCode} ${this.statusMessage}${CRLF}`;

  if (statusCode === 204 || statusCode === 304 ||
      (statusCode >= 100 && statusCode <= 199)) {
    // RFC 2616, 10.2.5:
    // The 204 response MUST NOT include a message-body, and thus is always
    // terminated by the first empty line after the header fields.
    // RFC 2616, 10.3.5:
    // The 304 response MUST NOT contain a message-body, and thus is always
    // terminated by the first empty line after the header fields.
    // RFC 2616, 10.1 Informational 1xx:
    // This class of status code indicates a provisional response,
    // consisting only of the Status-Line and optional headers, and is
    // terminated by an empty line.
    this._hasBody = false;
  }

  // Don't keep alive connections where the client expects 100 Continue
  // but we sent a final status; they may put extra bytes on the wire.
  if (this._expect_continue && !this._sent100) {
    this.shouldKeepAlive = false;
  }

  this._storeHeader(statusLine, headers);

  return this;
}

// Docs-only deprecated: DEP0063
ServerResponse.prototype.writeHeader = ServerResponse.prototype.writeHead;

function Server(options, requestListener) {
  if (!(this instanceof Server)) return new Server(options, requestListener);

  if (typeof options === 'function') {
    requestListener = options;
    options = {};
  } else if (options == null || typeof options === 'object') {
    options = { ...options };
  } else {
    throw new ERR_INVALID_ARG_TYPE('options', 'object', options);
  }

  this[kIncomingMessage] = options.IncomingMessage || IncomingMessage;
  this[kServerResponse] = options.ServerResponse || ServerResponse;

  const maxHeaderSize = options.maxHeaderSize;
  if (maxHeaderSize !== undefined)
    validateInteger(maxHeaderSize, 'maxHeaderSize', 0);
  this.maxHeaderSize = maxHeaderSize;

  net.Server.call(this, { allowHalfOpen: true });

  if (requestListener) {
    this.on('request', requestListener);
  }

  // Similar option to this. Too lazy to write my own docs.
  // http://www.squid-cache.org/Doc/config/half_closed_clients/
  // http://wiki.squid-cache.org/SquidFaq/InnerWorkings#What_is_a_half-closed_filedescriptor.3F
  this.httpAllowHalfOpen = false;

  this.on('connection', connectionListener);

  this.timeout = 0;
  this.keepAliveTimeout = 5000;
  this.maxHeadersCount = null;
  this.headersTimeout = 40 * 1000; // 40 seconds
}
ObjectSetPrototypeOf(Server.prototype, net.Server.prototype);
ObjectSetPrototypeOf(Server, net.Server);


Server.prototype.setTimeout = function setTimeout(msecs, callback) {
  this.timeout = msecs;
  if (callback)
    this.on('timeout', callback);
  return this;
};


function connectionListener(socket) {
  defaultTriggerAsyncIdScope(
    getOrSetAsyncId(socket), connectionListenerInternal, this, socket
  );
}

function connectionListenerInternal(server, socket) {
  debug('SERVER new http connection');

  // Ensure that the server property of the socket is correctly set.
  // See https://github.com/nodejs/node/issues/13435
  socket.server = server;

  // If the user has added a listener to the server,
  // request, or response, then it's their responsibility.
  // otherwise, destroy on timeout by default
  if (server.timeout && typeof socket.setTimeout === 'function')
    socket.setTimeout(server.timeout);
  socket.on('timeout', socketOnTimeout);

  const parser = parsers.alloc();

  // TODO(addaleax): This doesn't play well with the
  // `async_hooks.currentResource()` proposal, see
  // https://github.com/nodejs/node/pull/21313
  parser.initialize(
    HTTPParser.REQUEST,
    new HTTPServerAsyncResource('HTTPINCOMINGMESSAGE', socket),
    server.maxHeaderSize || 0
  );
  parser.socket = socket;

  // We are starting to wait for our headers.
  parser.parsingHeadersStart = nowDate();
  socket.parser = parser;

  // Propagate headers limit from server instance to parser
  if (typeof server.maxHeadersCount === 'number') {
    parser.maxHeaderPairs = server.maxHeadersCount << 1;
  }

  const state = {
    onData: null,
    onEnd: null,
    onClose: null,
    onDrain: null,
    outgoing: [],
    incoming: [],
    // `outgoingData` is an approximate amount of bytes queued through all
    // inactive responses. If more data than the high watermark is queued - we
    // need to pause TCP socket/HTTP parser, and wait until the data will be
    // sent to the client.
    outgoingData: 0,
    keepAliveTimeoutSet: false
  };
  state.onData = socketOnData.bind(undefined, server, socket, parser, state);
  state.onEnd = socketOnEnd.bind(undefined, server, socket, parser, state);
  state.onClose = socketOnClose.bind(undefined, socket, state);
  state.onDrain = socketOnDrain.bind(undefined, socket, state);
  socket.on('data', state.onData);
  socket.on('error', socketOnError);
  socket.on('end', state.onEnd);
  socket.on('close', state.onClose);
  socket.on('drain', state.onDrain);
  parser.onIncoming = parserOnIncoming.bind(undefined, server, socket, state);

  // We are consuming socket, so it won't get any actual data
  socket.on('resume', onSocketResume);
  socket.on('pause', onSocketPause);

  // Overrides to unconsume on `data`, `readable` listeners
  socket.on = generateSocketListenerWrapper('on');
  socket.addListener = generateSocketListenerWrapper('addListener');
  socket.prependListener = generateSocketListenerWrapper('prependListener');

  // We only consume the socket if it has never been consumed before.
  if (socket._handle && socket._handle.isStreamBase &&
      !socket._handle._consumed) {
    parser._consumed = true;
    socket._handle._consumed = true;
    parser.consume(socket._handle);
  }
  parser[kOnExecute] =
    onParserExecute.bind(undefined, server, socket, parser, state);

  socket._paused = false;
}

function updateOutgoingData(socket, state, delta) {
  state.outgoingData += delta;
  socketOnDrain(socket, state);
}

function socketOnDrain(socket, state) {
  const needPause = state.outgoingData > socket.writableHighWaterMark;

  // If we previously paused, then start reading again.
  if (socket._paused && !needPause) {
    socket._paused = false;
    if (socket.parser)
      socket.parser.resume();
    socket.resume();
  }

  const msg = socket._httpMessage;
  if (msg && !msg.finished && msg[kNeedDrain]) {
    msg[kNeedDrain] = false;
    msg.emit('drain');
  }
}

function socketOnTimeout() {
  const req = this.parser && this.parser.incoming;
  const reqTimeout = req && !req.complete && req.emit('timeout', this);
  const res = this._httpMessage;
  const resTimeout = res && res.emit('timeout', this);
  const serverTimeout = this.server.emit('timeout', this);

  if (!reqTimeout && !resTimeout && !serverTimeout)
    this.destroy();
}

function socketOnClose(socket, state) {
  debug('server socket close');
  // Mark this parser as reusable
  if (socket.parser) {
    freeParser(socket.parser, null, socket);
  }

  abortIncoming(state.incoming);
}

function abortIncoming(incoming) {
  while (incoming.length) {
    const req = incoming.shift();
    req.aborted = true;
    req.emit('aborted');
    req.emit('close');
  }
  // Abort socket._httpMessage ?
}

function socketOnEnd(server, socket, parser, state) {
  const ret = parser.finish();

  if (ret instanceof Error) {
    debug('parse error');
    socketOnError.call(socket, ret);
    return;
  }

  if (!server.httpAllowHalfOpen) {
    abortIncoming(state.incoming);
    if (socket.writable) socket.end();
  } else if (state.outgoing.length) {
    state.outgoing[state.outgoing.length - 1]._last = true;
  } else if (socket._httpMessage) {
    socket._httpMessage._last = true;
  } else if (socket.writable) {
    socket.end();
  }
}

function socketOnData(server, socket, parser, state, d) {
  assert(!socket._paused);
  debug('SERVER socketOnData %d', d.length);

  const ret = parser.execute(d);
  onParserExecuteCommon(server, socket, parser, state, ret, d);
}

function onParserExecute(server, socket, parser, state, ret) {
  socket._unrefTimer();
  const start = parser.parsingHeadersStart;
  debug('SERVER socketOnParserExecute %d', ret);

  // If we have not parsed the headers, destroy the socket
  // after server.headersTimeout to protect from DoS attacks.
  // start === 0 means that we have parsed headers.
  if (start !== 0 && nowDate() - start > server.headersTimeout) {
    const serverTimeout = server.emit('timeout', socket);

    if (!serverTimeout)
      socket.destroy();
    return;
  }

  onParserExecuteCommon(server, socket, parser, state, ret, undefined);
}

const noop = () => {};
const badRequestResponse = Buffer.from(
  `HTTP/1.1 400 ${STATUS_CODES[400]}${CRLF}` +
  `Connection: close${CRLF}${CRLF}`, 'ascii'
);
const requestHeaderFieldsTooLargeResponse = Buffer.from(
  `HTTP/1.1 431 ${STATUS_CODES[431]}${CRLF}` +
  `Connection: close${CRLF}${CRLF}`, 'ascii'
);
function socketOnError(e) {
  // Ignore further errors
  this.removeListener('error', socketOnError);
  this.on('error', noop);

  if (!this.server.emit('clientError', e, this)) {
    if (this.writable) {
      const response = e.code === 'HPE_HEADER_OVERFLOW' ?
        requestHeaderFieldsTooLargeResponse : badRequestResponse;
      this.write(response);
    }
    this.destroy(e);
  }
}

function onParserExecuteCommon(server, socket, parser, state, ret, d) {
  resetSocketTimeout(server, socket, state);

  if (ret instanceof Error) {
    prepareError(ret, parser, d);
    ret.rawPacket = d || parser.getCurrentBuffer();
    debug('parse error', ret);
    socketOnError.call(socket, ret);
  } else if (parser.incoming && parser.incoming.upgrade) {
    // Upgrade or CONNECT
    const req = parser.incoming;
    debug('SERVER upgrade or connect', req.method);

    if (!d)
      d = parser.getCurrentBuffer();

    socket.removeListener('data', state.onData);
    socket.removeListener('end', state.onEnd);
    socket.removeListener('close', state.onClose);
    socket.removeListener('drain', state.onDrain);
    socket.removeListener('error', socketOnError);
    socket.removeListener('timeout', socketOnTimeout);
    unconsume(parser, socket);
    parser.finish();
    freeParser(parser, req, socket);
    parser = null;

    const eventName = req.method === 'CONNECT' ? 'connect' : 'upgrade';
    if (eventName === 'upgrade' || server.listenerCount(eventName) > 0) {
      debug('SERVER have listener for %s', eventName);
      const bodyHead = d.slice(ret, d.length);

      socket.readableFlowing = null;
      server.emit(eventName, req, socket, bodyHead);
    } else {
      // Got CONNECT method, but have no handler.
      socket.destroy();
    }
  }

  if (socket._paused && socket.parser) {
    // onIncoming paused the socket, we should pause the parser as well
    debug('pause parser');
    socket.parser.pause();
  }
}

function clearIncoming(req) {
  req = req || this;
  const parser = req.socket && req.socket.parser;
  // Reset the .incoming property so that the request object can be gc'ed.
  if (parser && parser.incoming === req) {
    if (req.readableEnded) {
      parser.incoming = null;
    } else {
      req.on('end', clearIncoming);
    }
  }
}

function resOnFinish(req, res, socket, state, server) {
  // Usually the first incoming element should be our request.  it may
  // be that in the case abortIncoming() was called that the incoming
  // array will be empty.
  assert(state.incoming.length === 0 || state.incoming[0] === req);

  state.incoming.shift();
  clearIncoming(req);

  // If the user never called req.read(), and didn't pipe() or
  // .resume() or .on('data'), then we call req._dump() so that the
  // bytes will be pulled off the wire.
  if (!req._consuming && !req._readableState.resumeScheduled)
    req._dump();

  res.detachSocket(socket);
  req.emit('close');
  process.nextTick(emitCloseNT, res);

  if (res._last) {
    if (typeof socket.destroySoon === 'function') {
      socket.destroySoon();
    } else {
      socket.end();
    }
  } else if (state.outgoing.length === 0) {
    if (server.keepAliveTimeout && typeof socket.setTimeout === 'function') {
      socket.setTimeout(server.keepAliveTimeout);
      state.keepAliveTimeoutSet = true;
    }
  } else {
    // Start sending the next message
    const m = state.outgoing.shift();
    if (m) {
      m.assignSocket(socket);
    }
  }
}

function emitCloseNT(self) {
  self.emit('close');
}

// The following callback is issued after the headers have been read on a
// new message. In this callback we setup the response object and pass it
// to the user.
function parserOnIncoming(server, socket, state, req, keepAlive) {
  resetSocketTimeout(server, socket, state);

  if (server.keepAliveTimeout > 0) {
    req.on('end', resetHeadersTimeoutOnReqEnd);
  }

  // Set to zero to communicate that we have finished parsing.
  socket.parser.parsingHeadersStart = 0;

  if (req.upgrade) {
    req.upgrade = req.method === 'CONNECT' ||
                  server.listenerCount('upgrade') > 0;
    if (req.upgrade)
      return 2;
  }

  state.incoming.push(req);

  // If the writable end isn't consuming, then stop reading
  // so that we don't become overwhelmed by a flood of
  // pipelined requests that may never be resolved.
  if (!socket._paused) {
    const ws = socket._writableState;
    if (ws.needDrain || state.outgoingData >= socket.writableHighWaterMark) {
      socket._paused = true;
      // We also need to pause the parser, but don't do that until after
      // the call to execute, because we may still be processing the last
      // chunk.
      socket.pause();
    }
  }

  const res = new server[kServerResponse](req);
  res._onPendingData = updateOutgoingData.bind(undefined, socket, state);

  res.shouldKeepAlive = keepAlive;
  DTRACE_HTTP_SERVER_REQUEST(req, socket);

  if (socket._httpMessage) {
    // There are already pending outgoing res, append.
    state.outgoing.push(res);
  } else {
    res.assignSocket(socket);
  }

  // When we're finished writing the response, check if this is the last
  // response, if so destroy the socket.
  res.on('finish',
         resOnFinish.bind(undefined, req, res, socket, state, server));

  if (req.headers.expect !== undefined &&
      (req.httpVersionMajor === 1 && req.httpVersionMinor === 1)) {
    if (continueExpression.test(req.headers.expect)) {
      res._expect_continue = true;

      if (server.listenerCount('checkContinue') > 0) {
        server.emit('checkContinue', req, res);
      } else {
        res.writeContinue();
        server.emit('request', req, res);
      }
    } else if (server.listenerCount('checkExpectation') > 0) {
      server.emit('checkExpectation', req, res);
    } else {
      res.writeHead(417);
      res.end();
    }
  } else {
    server.emit('request', req, res);
  }
  return 0;  // No special treatment.
}

function resetSocketTimeout(server, socket, state) {
  if (!state.keepAliveTimeoutSet)
    return;

  socket.setTimeout(server.timeout || 0);
  state.keepAliveTimeoutSet = false;
}

function onSocketResume() {
  // It may seem that the socket is resumed, but this is an enemy's trick to
  // deceive us! `resume` is emitted asynchronously, and may be called from
  // `incoming.readStart()`. Stop the socket again here, just to preserve the
  // state.
  //
  // We don't care about stream semantics for the consumed socket anyway.
  if (this._paused) {
    this.pause();
    return;
  }

  if (this._handle && !this._handle.reading) {
    this._handle.reading = true;
    this._handle.readStart();
  }
}

function onSocketPause() {
  if (this._handle && this._handle.reading) {
    this._handle.reading = false;
    this._handle.readStop();
  }
}

function unconsume(parser, socket) {
  if (socket._handle) {
    if (parser._consumed)
      parser.unconsume();
    parser._consumed = false;
    socket.removeListener('pause', onSocketPause);
    socket.removeListener('resume', onSocketResume);
  }
}

function generateSocketListenerWrapper(originalFnName) {
  return function socketListenerWrap(ev, fn) {
    const res = net.Socket.prototype[originalFnName].call(this, ev, fn);
    if (!this.parser) {
      this.on = net.Socket.prototype.on;
      this.addListener = net.Socket.prototype.addListener;
      this.prependListener = net.Socket.prototype.prependListener;
      return res;
    }

    if (ev === 'data' || ev === 'readable')
      unconsume(this.parser, this);

    return res;
  };
}

function resetHeadersTimeoutOnReqEnd() {
  debug('resetHeadersTimeoutOnReqEnd');

  const parser = this.socket.parser;
  // Parser can be null if the socket was destroyed
  // in that case, there is nothing to do.
  if (parser) {
    parser.parsingHeadersStart = nowDate();
  }
}

module.exports = {
  STATUS_CODES,
  Server,
  ServerResponse,
  _connectionListener: connectionListener,
  kServerResponse
};