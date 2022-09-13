'use strict';

// Most platforms don't allow reads or writes >= 2 GB.
// See https://github.com/libuv/libuv/pull/1501.
const kIoMaxLength = 2 ** 31 - 1;

// Note: This is different from kReadFileBufferLength used for non-promisified
// fs.readFile.
const kReadFileMaxChunkSize = 2 ** 14;
const kWriteFileMaxChunkSize = 2 ** 14;

const {
  MathMax,
  MathMin,
  NumberIsSafeInteger,
  Symbol,
  Error,
  Promise,
} = primordials;

const {
  F_OK,
  O_SYMLINK,
  O_WRONLY,
  S_IFMT,
  S_IFREG
} = internalBinding('constants').fs;
const binding = internalBinding('fs');
const { Buffer } = require('buffer');
const {
  ERR_FS_FILE_TOO_LARGE,
  ERR_INVALID_ARG_TYPE,
  ERR_INVALID_ARG_VALUE,
  ERR_METHOD_NOT_IMPLEMENTED
} = require('internal/errors').codes;
const { isArrayBufferView } = require('internal/util/types');
const { rimrafPromises } = require('internal/fs/rimraf');
const {
  copyObject,
  getDirents,
  getOptions,
  getStatsFromBinding,
  getValidatedPath,
  getValidMode,
  nullCheck,
  preprocessSymlinkDestination,
  stringToFlags,
  stringToSymlinkType,
  toUnixTimestamp,
  validateBufferArray,
  validateOffsetLengthRead,
  validateOffsetLengthWrite,
  validateRmdirOptions,
  validateStringAfterArrayBufferView,
  warnOnNonPortableTemplate
} = require('internal/fs/utils');
const { opendir } = require('internal/fs/dir');
const {
  parseFileMode,
  validateBuffer,
  validateInteger,
  validateUint32
} = require('internal/validators');
const pathModule = require('path');
const { promisify } = require('internal/util');

const kHandle = Symbol('kHandle');
const kFd = Symbol('kFd');
const kRefs = Symbol('kRefs');
const kClosePromise = Symbol('kClosePromise');
const kCloseResolve = Symbol('kCloseResolve');
const kCloseReject = Symbol('kCloseReject');

const { kUsePromises } = binding;
const {
  JSTransferable, kDeserialize, kTransfer, kTransferList
} = require('internal/worker/js_transferable');

const getDirectoryEntriesPromise = promisify(getDirents);

class FileHandle extends JSTransferable {
  constructor(filehandle) {
    super();
    this[kHandle] = filehandle;
    this[kFd] = filehandle ? filehandle.fd : -1;

    this[kRefs] = 1;
    this[kClosePromise] = null;
  }

  getAsyncId() {
    return this[kHandle].getAsyncId();
  }

  get fd() {
    return this[kFd];
  }

  appendFile(data, options) {
    return fsCall(writeFile, this, data, options);
  }

  chmod(mode) {
    return fsCall(fchmod, this, mode);
  }

  chown(uid, gid) {
    return fsCall(fchown, this, uid, gid);
  }

  datasync() {
    return fsCall(fdatasync, this);
  }

  sync() {
    return fsCall(fsync, this);
  }

  read(buffer, offset, length, position) {
    return fsCall(read, this, buffer, offset, length, position);
  }

  readv(buffers, position) {
    return fsCall(readv, this, buffers, position);
  }

  readFile(options) {
    return fsCall(readFile, this, options);
  }

  stat(options) {
    return fsCall(fstat, this, options);
  }

  truncate(len = 0) {
    return fsCall(ftruncate, this, len);
  }

  utimes(atime, mtime) {
    return fsCall(futimes, this, atime, mtime);
  }

  write(buffer, offset, length, position) {
    return fsCall(write, this, buffer, offset, length, position);
  }

  writev(buffers, position) {
    return fsCall(writev, this, buffers, position);
  }

  writeFile(data, options) {
    return fsCall(writeFile, this, data, options);
  }

  close = () => {
    if (this[kFd] === -1) {
      return Promise.resolve();
    }

    if (this[kClosePromise]) {
      return this[kClosePromise];
    }

    this[kRefs]--;
    if (this[kRefs] === 0) {
      this[kFd] = -1;
      this[kClosePromise] = this[kHandle].close().finally(() => {
        this[kClosePromise] = undefined;
      });
    } else {
      this[kClosePromise] = new Promise((resolve, reject) => {
        this[kCloseResolve] = resolve;
        this[kCloseReject] = reject;
      }).finally(() => {
        this[kClosePromise] = undefined;
        this[kCloseReject] = undefined;
        this[kCloseResolve] = undefined;
      });
    }

    return this[kClosePromise];
  }

  [kTransfer]() {
    if (this[kClosePromise] || this[kRefs] > 1) {
      const DOMException = internalBinding('messaging').DOMException;
      throw new DOMException('Cannot transfer FileHandle while in use',
                             'DataCloneError');
    }

    const handle = this[kHandle];
    this[kFd] = -1;
    this[kHandle] = null;
    this[kRefs] = 0;

    return {
      data: { handle },
      deserializeInfo: 'internal/fs/promises:FileHandle'
    };
  }

  [kTransferList]() {
    return [ this[kHandle] ];
  }

  [kDeserialize]({ handle }) {
    this[kHandle] = handle;
    this[kFd] = handle.fd;
  }
}

async function fsCall(fn, handle, ...args) {
  if (handle[kRefs] === undefined) {
    throw new ERR_INVALID_ARG_TYPE('filehandle', 'FileHandle', handle);
  }

  if (handle.fd === -1) {
    // eslint-disable-next-line no-restricted-syntax
    const err = new Error('file closed');
    err.code = 'EBADF';
    err.syscall = fn.name;
    throw err;
  }

  try {
    handle[kRefs]++;
    return await fn(handle, ...args);
  } finally {
    handle[kRefs]--;
    if (handle[kRefs] === 0) {
      handle[kFd] = -1;
      handle[kHandle]
        .close()
        .then(handle[kCloseResolve], handle[kCloseReject]);
    }
  }
}

async function writeFileHandle(filehandle, data) {
  let remaining = data.length;
  if (remaining === 0) return;
  do {
    const { bytesWritten } =
      await write(filehandle, data, 0,
                  MathMin(kWriteFileMaxChunkSize, data.length));
    remaining -= bytesWritten;
    data = data.slice(bytesWritten);
  } while (remaining > 0);
}

async function readFileHandle(filehandle, options) {
  const statFields = await binding.fstat(filehandle.fd, false, kUsePromises);

  let size;
  if ((statFields[1/* mode */] & S_IFMT) === S_IFREG) {
    size = statFields[8/* size */];
  } else {
    size = 0;
  }

  if (size > kIoMaxLength)
    throw new ERR_FS_FILE_TOO_LARGE(size);

  const chunks = [];
  const chunkSize = size === 0 ?
    kReadFileMaxChunkSize :
    MathMin(size, kReadFileMaxChunkSize);
  let endOfFile = false;
  do {
    const buf = Buffer.alloc(chunkSize);
    const { bytesRead, buffer } =
      await read(filehandle, buf, 0, chunkSize, -1);
    endOfFile = bytesRead === 0;
    if (bytesRead > 0)
      chunks.push(buffer.slice(0, bytesRead));
  } while (!endOfFile);

  const result = Buffer.concat(chunks);

  return options.encoding ? result.toString(options.encoding) : result;
}

// All of the functions are defined as async in order to ensure that errors
// thrown cause promise rejections rather than being thrown synchronously.
async function access(path, mode = F_OK) {
  path = getValidatedPath(path);

  mode = getValidMode(mode, 'access');
  return binding.access(pathModule.toNamespacedPath(path), mode,
                        kUsePromises);
}

async function copyFile(src, dest, mode) {
  src = getValidatedPath(src, 'src');
  dest = getValidatedPath(dest, 'dest');
  mode = getValidMode(mode, 'copyFile');
  return binding.copyFile(pathModule.toNamespacedPath(src),
                          pathModule.toNamespacedPath(dest),
                          mode,
                          kUsePromises);
}

// Note that unlike fs.open() which uses numeric file descriptors,
// fsPromises.open() uses the fs.FileHandle class.
async function open(path, flags, mode) {
  path = getValidatedPath(path);
  const flagsNumber = stringToFlags(flags);
  mode = parseFileMode(mode, 'mode', 0o666);
  return new FileHandle(
    await binding.openFileHandle(pathModule.toNamespacedPath(path),
                                 flagsNumber, mode, kUsePromises));
}

async function read(handle, buffer, offset, length, position) {
  validateBuffer(buffer);

  if (offset == null) {
    offset = 0;
  } else {
    validateInteger(offset, 'offset');
  }

  length |= 0;

  if (length === 0)
    return { bytesRead: length, buffer };

  if (buffer.length === 0) {
    throw new ERR_INVALID_ARG_VALUE('buffer', buffer,
                                    'is empty and cannot be written');
  }

  validateOffsetLengthRead(offset, length, buffer.length);

  if (!NumberIsSafeInteger(position))
    position = -1;

  const bytesRead = (await binding.read(handle.fd, buffer, offset, length,
                                        position, kUsePromises)) || 0;

  return { bytesRead, buffer };
}

async function readv(handle, buffers, position) {
  validateBufferArray(buffers);

  if (typeof position !== 'number')
    position = null;

  const bytesRead = (await binding.readBuffers(handle.fd, buffers, position,
                                               kUsePromises)) || 0;
  return { bytesRead, buffers };
}

async function write(handle, buffer, offset, length, position) {
  if (buffer.length === 0)
    return { bytesWritten: 0, buffer };

  if (isArrayBufferView(buffer)) {
    if (offset == null) {
      offset = 0;
    } else {
      validateInteger(offset, 'offset');
    }
    if (typeof length !== 'number')
      length = buffer.length - offset;
    if (typeof position !== 'number')
      position = null;
    validateOffsetLengthWrite(offset, length, buffer.byteLength);
    const bytesWritten =
      (await binding.writeBuffer(handle.fd, buffer, offset,
                                 length, position, kUsePromises)) || 0;
    return { bytesWritten, buffer };
  }

  validateStringAfterArrayBufferView(buffer, 'buffer');
  const bytesWritten = (await binding.writeString(handle.fd, buffer, offset,
                                                  length, kUsePromises)) || 0;
  return { bytesWritten, buffer };
}

async function writev(handle, buffers, position) {
  validateBufferArray(buffers);

  if (typeof position !== 'number')
    position = null;

  const bytesWritten = (await binding.writeBuffers(handle.fd, buffers, position,
                                                   kUsePromises)) || 0;
  return { bytesWritten, buffers };
}

async function rename(oldPath, newPath) {
  oldPath = getValidatedPath(oldPath, 'oldPath');
  newPath = getValidatedPath(newPath, 'newPath');
  return binding.rename(pathModule.toNamespacedPath(oldPath),
                        pathModule.toNamespacedPath(newPath),
                        kUsePromises);
}

async function truncate(path, len = 0) {
  const fd = await open(path, 'r+');
  return ftruncate(fd, len).finally(fd.close.bind(fd));
}

async function ftruncate(handle, len = 0) {
  validateInteger(len, 'len');
  len = MathMax(0, len);
  return binding.ftruncate(handle.fd, len, kUsePromises);
}

async function rmdir(path, options) {
  path = pathModule.toNamespacedPath(getValidatedPath(path));
  options = validateRmdirOptions(options);

  if (options.recursive) {
    return rimrafPromises(path, options);
  }

  return binding.rmdir(path, kUsePromises);
}

async function fdatasync(handle) {
  return binding.fdatasync(handle.fd, kUsePromises);
}

async function fsync(handle) {
  return binding.fsync(handle.fd, kUsePromises);
}

async function mkdir(path, options) {
  if (typeof options === 'number' || typeof options === 'string') {
    options = { mode: options };
  }
  const {
    recursive = false,
    mode = 0o777
  } = options || {};
  path = getValidatedPath(path);
  if (typeof recursive !== 'boolean')
    throw new ERR_INVALID_ARG_TYPE('options.recursive', 'boolean', recursive);

  return binding.mkdir(pathModule.toNamespacedPath(path),
                       parseFileMode(mode, 'mode', 0o777), recursive,
                       kUsePromises);
}

async function readdir(path, options) {
  options = getOptions(options, {});
  path = getValidatedPath(path);
  const result = await binding.readdir(pathModule.toNamespacedPath(path),
                                       options.encoding,
                                       !!options.withFileTypes,
                                       kUsePromises);
  return options.withFileTypes ?
    getDirectoryEntriesPromise(path, result) :
    result;
}

async function readlink(path, options) {
  options = getOptions(options, {});
  path = getValidatedPath(path, 'oldPath');
  return binding.readlink(pathModule.toNamespacedPath(path),
                          options.encoding, kUsePromises);
}

async function symlink(target, path, type_) {
  const type = (typeof type_ === 'string' ? type_ : null);
  target = getValidatedPath(target, 'target');
  path = getValidatedPath(path);
  return binding.symlink(preprocessSymlinkDestination(target, type, path),
                         pathModule.toNamespacedPath(path),
                         stringToSymlinkType(type),
                         kUsePromises);
}

async function fstat(handle, options = { bigint: false }) {
  const result = await binding.fstat(handle.fd, options.bigint, kUsePromises);
  return getStatsFromBinding(result);
}

async function lstat(path, options = { bigint: false }) {
  path = getValidatedPath(path);
  const result = await binding.lstat(pathModule.toNamespacedPath(path),
                                     options.bigint, kUsePromises);
  return getStatsFromBinding(result);
}

async function stat(path, options = { bigint: false }) {
  path = getValidatedPath(path);
  const result = await binding.stat(pathModule.toNamespacedPath(path),
                                    options.bigint, kUsePromises);
  return getStatsFromBinding(result);
}

async function link(existingPath, newPath) {
  existingPath = getValidatedPath(existingPath, 'existingPath');
  newPath = getValidatedPath(newPath, 'newPath');
  return binding.link(pathModule.toNamespacedPath(existingPath),
                      pathModule.toNamespacedPath(newPath),
                      kUsePromises);
}

async function unlink(path) {
  path = getValidatedPath(path);
  return binding.unlink(pathModule.toNamespacedPath(path), kUsePromises);
}

async function fchmod(handle, mode) {
  mode = parseFileMode(mode, 'mode');
  return binding.fchmod(handle.fd, mode, kUsePromises);
}

async function chmod(path, mode) {
  path = getValidatedPath(path);
  mode = parseFileMode(mode, 'mode');
  return binding.chmod(pathModule.toNamespacedPath(path), mode, kUsePromises);
}

async function lchmod(path, mode) {
  if (O_SYMLINK === undefined)
    throw new ERR_METHOD_NOT_IMPLEMENTED('lchmod()');

  const fd = await open(path, O_WRONLY | O_SYMLINK);
  return fchmod(fd, mode).finally(fd.close);
}

async function lchown(path, uid, gid) {
  path = getValidatedPath(path);
  validateUint32(uid, 'uid');
  validateUint32(gid, 'gid');
  return binding.lchown(pathModule.toNamespacedPath(path),
                        uid, gid, kUsePromises);
}

async function fchown(handle, uid, gid) {
  validateUint32(uid, 'uid');
  validateUint32(gid, 'gid');
  return binding.fchown(handle.fd, uid, gid, kUsePromises);
}

async function chown(path, uid, gid) {
  path = getValidatedPath(path);
  validateUint32(uid, 'uid');
  validateUint32(gid, 'gid');
  return binding.chown(pathModule.toNamespacedPath(path),
                       uid, gid, kUsePromises);
}

async function utimes(path, atime, mtime) {
  path = getValidatedPath(path);
  return binding.utimes(pathModule.toNamespacedPath(path),
                        toUnixTimestamp(atime),
                        toUnixTimestamp(mtime),
                        kUsePromises);
}

async function futimes(handle, atime, mtime) {
  atime = toUnixTimestamp(atime, 'atime');
  mtime = toUnixTimestamp(mtime, 'mtime');
  return binding.futimes(handle.fd, atime, mtime, kUsePromises);
}

async function lutimes(path, atime, mtime) {
  path = getValidatedPath(path);
  return binding.lutimes(pathModule.toNamespacedPath(path),
                         toUnixTimestamp(atime),
                         toUnixTimestamp(mtime),
                         kUsePromises);
}

async function realpath(path, options) {
  options = getOptions(options, {});
  path = getValidatedPath(path);
  return binding.realpath(path, options.encoding, kUsePromises);
}

async function mkdtemp(prefix, options) {
  options = getOptions(options, {});
  if (!prefix || typeof prefix !== 'string') {
    throw new ERR_INVALID_ARG_TYPE('prefix', 'string', prefix);
  }
  nullCheck(prefix);
  warnOnNonPortableTemplate(prefix);
  return binding.mkdtemp(`${prefix}XXXXXX`, options.encoding, kUsePromises);
}

async function writeFile(path, data, options) {
  options = getOptions(options, { encoding: 'utf8', mode: 0o666, flag: 'w' });
  const flag = options.flag || 'w';

  if (!isArrayBufferView(data)) {
    validateStringAfterArrayBufferView(data, 'data');
    data = Buffer.from(data, options.encoding || 'utf8');
  }

  if (path instanceof FileHandle)
    return writeFileHandle(path, data);

  const fd = await open(path, flag, options.mode);
  return writeFileHandle(fd, data).finally(fd.close);
}

async function appendFile(path, data, options) {
  options = getOptions(options, { encoding: 'utf8', mode: 0o666, flag: 'a' });
  options = copyObject(options);
  options.flag = options.flag || 'a';
  return writeFile(path, data, options);
}

async function readFile(path, options) {
  options = getOptions(options, { flag: 'r' });
  const flag = options.flag || 'r';

  if (path instanceof FileHandle)
    return readFileHandle(path, options);

  const fd = await open(path, flag, 0o666);
  return readFileHandle(fd, options).finally(fd.close);
}

module.exports = {
  exports: {
    access,
    copyFile,
    open,
    opendir: promisify(opendir),
    rename,
    truncate,
    rmdir,
    mkdir,
    readdir,
    readlink,
    symlink,
    lstat,
    stat,
    link,
    unlink,
    chmod,
    lchmod,
    lchown,
    chown,
    utimes,
    lutimes,
    realpath,
    mkdtemp,
    writeFile,
    appendFile,
    readFile,
  },

  FileHandle
};