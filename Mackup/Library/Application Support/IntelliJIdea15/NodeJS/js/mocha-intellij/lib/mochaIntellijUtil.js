var fs = require('fs')
  , processStdoutWrite = process.stdout.write.bind(process.stdout)
  , processStderrWrite = process.stderr.write.bind(process.stderr);

var doEscapeCharCode = (function () {
  var obj = {};

  function addMapping(fromChar, toChar) {
    if (fromChar.length !== 1 || toChar.length !== 1) {
      throw Error('String length should be 1');
    }
    var fromCharCode = fromChar.charCodeAt(0);
    if (typeof obj[fromCharCode] === 'undefined') {
      obj[fromCharCode] = toChar;
    }
    else {
      throw Error('Bad mapping');
    }
  }

  addMapping('\n', 'n');
  addMapping('\r', 'r');
  addMapping('\u0085', 'x');
  addMapping('\u2028', 'l');
  addMapping('\u2029', 'p');
  addMapping('|', '|');
  addMapping('\'', '\'');
  addMapping('[', '[');
  addMapping(']', ']');

  return function (charCode) {
    return obj[charCode];
  };
}());

function isAttributeValueEscapingNeeded(str) {
  var len = str.length;
  for (var i = 0; i < len; i++) {
    if (doEscapeCharCode(str.charCodeAt(i))) {
      return true;
    }
  }
  return false;
}

function escapeAttributeValue(str) {
  if (!isAttributeValueEscapingNeeded(str)) {
    return str;
  }
  var res = ''
    , len = str.length;
  for (var i = 0; i < len; i++) {
    var escaped = doEscapeCharCode(str.charCodeAt(i));
    if (escaped) {
      res += '|';
      res += escaped;
    }
    else {
      res += str.charAt(i);
    }
  }
  return res;
}

/**
 * @param {Array.<string>} list
 * @param {number} fromInclusive
 * @param {number} toExclusive
 * @param {string} delimiterChar one character string
 * @returns {string}
 */
function joinList(list, fromInclusive, toExclusive, delimiterChar) {
  if (list.length === 0) {
    return '';
  }
  if (delimiterChar.length !== 1) {
    throw Error('Delimiter is expected to be a character, but "' + delimiterChar + '" received');
  }
  var addDelimiter = false
    , escapeChar = '\\'
    , escapeCharCode = escapeChar.charCodeAt(0)
    , delimiterCharCode = delimiterChar.charCodeAt(0)
    , result = ''
    , item
    , itemLength
    , ch
    , chCode;
  for (var itemId = fromInclusive; itemId < toExclusive; itemId++) {
    if (addDelimiter) {
      result += delimiterChar;
    }
    addDelimiter = true;
    item = list[itemId];
    itemLength = item.length;
    for (var i = 0; i < itemLength; i++) {
      ch = item.charAt(i);
      chCode = item.charCodeAt(i);
      if (chCode === delimiterCharCode || chCode === escapeCharCode) {
        result += escapeChar;
      }
      result += ch;
    }
  }
  return result;
}

var toString = {}.toString;

function isString(value) {
  return typeof value === 'string' || toString.call(value) === '[object String]';
}

function executeSafely(callback) {
  try {
    callback();
  }
  catch (e) {
    writeToStderr(e.stack + '\n');
  }
}

function writeToStdout(str) {
  processStdoutWrite(str);
}

function writeToStderr(str) {
  processStderrWrite(str);
}

function requireMochaModule(pathRelativeToMochaPackageDir) {
  var path = require('path')
    , _mochaPath = process.argv[1];
  var _mochaBasename = path.basename(_mochaPath);
  if (_mochaBasename !== '_mocha') {
    console.error('[IDE integration] Unexpected executable ' + _mochaPath + ': expected basename is "_mocha"');
  }
  var binDir = path.dirname(_mochaPath);
  if (path.basename(binDir) !== 'bin') {
    console.error('[IDE integration] Unexpected executable ' + _mochaPath + ': expected last directory name is "bin"');
  }
  var requirePath = path.join(binDir, '..', pathRelativeToMochaPackageDir);
  return require(requirePath);
}

/*
 * It's suggested that every Mocha reporter should inherit from Mocha Base reporter.
 * See https://github.com/visionmedia/mocha/blob/master/lib/reporters/base.js
 *
 * At least Base reporter is needed to add and update IntellijReporter.stats object that is used by growl reporter.
 */
function requireBaseReporter() {
  var baseReporterPath = './lib/reporters/base.js'
    , Base;
  try {
    Base = requireMochaModule(baseReporterPath);
    if (typeof Base !== 'function') {
      Base = null;
      console.error('[IDE integration] Base reporter (' + baseReporterPath + ') is expected to be a function.');
    }
  } catch (e) {
    console.error('[IDE integration] Can not load base reporter from ' + baseReporterPath, e);
  }
  return Base;
}

exports.escapeAttributeValue = escapeAttributeValue;
exports.joinList = joinList;
exports.isString = isString;
exports.executeSafely = executeSafely;
exports.writeToStdout = writeToStdout;
exports.writeToStderr = writeToStderr;
exports.requireMochaModule = requireMochaModule;
exports.requireBaseReporter = requireBaseReporter;
