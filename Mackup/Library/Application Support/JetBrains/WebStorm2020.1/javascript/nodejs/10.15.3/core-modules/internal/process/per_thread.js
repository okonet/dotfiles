'use strict';

// This files contains process bootstrappers that can be
// run when setting up each thread, including the main
// thread and the worker threads.

const {
  errnoException,
  codes: {
    ERR_ASSERTION,
    ERR_CPU_USAGE,
    ERR_INVALID_ARG_TYPE,
    ERR_INVALID_ARRAY_LENGTH,
    ERR_INVALID_OPT_VALUE,
    ERR_UNCAUGHT_EXCEPTION_CAPTURE_ALREADY_SET,
    ERR_UNKNOWN_SIGNAL
  }
} = require('internal/errors');
const util = require('util');
const constants = process.binding('constants').os.signals;
const { deprecate } = require('internal/util');

function setupAssert() {
  process.assert = deprecate(
    function(x, msg) {
      if (!x) throw new ERR_ASSERTION(msg || 'assertion error');
    },
    'process.assert() is deprecated. Please use the `assert` module instead.',
    'DEP0100');
}

// Set up the process.cpuUsage() function.
function setupCpuUsage(_cpuUsage) {
  // Create the argument array that will be passed to the native function.
  const cpuValues = new Float64Array(2);

  // Replace the native function with the JS version that calls the native
  // function.
  process.cpuUsage = function cpuUsage(prevValue) {
    // If a previous value was passed in, ensure it has the correct shape.
    if (prevValue) {
      if (!previousValueIsValid(prevValue.user)) {
        if (typeof prevValue !== 'object')
          throw new ERR_INVALID_ARG_TYPE('prevValue', 'object', prevValue);

        if (typeof prevValue.user !== 'number') {
          throw new ERR_INVALID_ARG_TYPE('prevValue.user',
                                         'number', prevValue.user);
        }
        throw new ERR_INVALID_OPT_VALUE.RangeError('prevValue.user',
                                                   prevValue.user);
      }

      if (!previousValueIsValid(prevValue.system)) {
        if (typeof prevValue.system !== 'number') {
          throw new ERR_INVALID_ARG_TYPE('prevValue.system',
                                         'number', prevValue.system);
        }
        throw new ERR_INVALID_OPT_VALUE.RangeError('prevValue.system',
                                                   prevValue.system);
      }
    }

    // Call the native function to get the current values.
    const errmsg = _cpuUsage(cpuValues);
    if (errmsg) {
      throw new ERR_CPU_USAGE(errmsg);
    }

    // If a previous value was passed in, return diff of current from previous.
    if (prevValue) {
      return {
        user: cpuValues[0] - prevValue.user,
        system: cpuValues[1] - prevValue.system
      };
    }

    // If no previous value passed in, return current value.
    return {
      user: cpuValues[0],
      system: cpuValues[1]
    };
  };

  // Ensure that a previously passed in value is valid. Currently, the native
  // implementation always returns numbers <= Number.MAX_SAFE_INTEGER.
  function previousValueIsValid(num) {
    return typeof num === 'number' &&
        num <= Number.MAX_SAFE_INTEGER &&
        num >= 0;
  }
}

// The 3 entries filled in by the original process.hrtime contains
// the upper/lower 32 bits of the second part of the value,
// and the remaining nanoseconds of the value.
function setupHrtime(_hrtime, _hrtimeBigInt) {
  const hrValues = new Uint32Array(3);

  process.hrtime = function hrtime(time) {
    _hrtime(hrValues);

    if (time !== undefined) {
      if (!Array.isArray(time)) {
        throw new ERR_INVALID_ARG_TYPE('time', 'Array', time);
      }
      if (time.length !== 2) {
        throw new ERR_INVALID_ARRAY_LENGTH('time', 2, time.length);
      }

      const sec = (hrValues[0] * 0x100000000 + hrValues[1]) - time[0];
      const nsec = hrValues[2] - time[1];
      const needsBorrow = nsec < 0;
      return [needsBorrow ? sec - 1 : sec, needsBorrow ? nsec + 1e9 : nsec];
    }

    return [
      hrValues[0] * 0x100000000 + hrValues[1],
      hrValues[2]
    ];
  };

  // Use a BigUint64Array in the closure because V8 does not have an API for
  // creating a BigInt out of a uint64_t yet.
  const hrBigintValues = new BigUint64Array(1);
  process.hrtime.bigint = function() {
    _hrtimeBigInt(hrBigintValues);
    return hrBigintValues[0];
  };
}

function setupMemoryUsage(_memoryUsage) {
  const memValues = new Float64Array(4);

  process.memoryUsage = function memoryUsage() {
    _memoryUsage(memValues);
    return {
      rss: memValues[0],
      heapTotal: memValues[1],
      heapUsed: memValues[2],
      external: memValues[3]
    };
  };
}

function setupConfig(_source) {
  // NativeModule._source
  // used for `process.config`, but not a real module
  const config = _source.config;
  delete _source.config;

  process.config = JSON.parse(config, function(key, value) {
    if (value === 'true') return true;
    if (value === 'false') return false;
    return value;
  });
}


function setupKillAndExit() {

  process.exit = function(code) {
    if (code || code === 0)
      process.exitCode = code;

    if (!process._exiting) {
      process._exiting = true;
      process.emit('exit', process.exitCode || 0);
    }
    process.reallyExit(process.exitCode || 0);
  };

  process.kill = function(pid, sig) {
    var err;
    if (process.env.NODE_V8_COVERAGE) {
      const { writeCoverage } = require('internal/process/coverage');
      writeCoverage();
    }

    // eslint-disable-next-line eqeqeq
    if (pid != (pid | 0)) {
      throw new ERR_INVALID_ARG_TYPE('pid', 'number', pid);
    }

    // preserve null signal
    if (sig === (sig | 0)) {
      err = process._kill(pid, sig);
    } else {
      sig = sig || 'SIGTERM';
      if (constants[sig]) {
        err = process._kill(pid, constants[sig]);
      } else {
        throw new ERR_UNKNOWN_SIGNAL(sig);
      }
    }

    if (err)
      throw errnoException(err, 'kill');

    return true;
  };
}

function setupRawDebug(_rawDebug) {
  process._rawDebug = function() {
    _rawDebug(util.format.apply(null, arguments));
  };
}


function setupUncaughtExceptionCapture(exceptionHandlerState,
                                       shouldAbortOnUncaughtToggle) {
  // shouldAbortOnUncaughtToggle is a typed array for faster
  // communication with JS.

  process.setUncaughtExceptionCaptureCallback = function(fn) {
    if (fn === null) {
      exceptionHandlerState.captureFn = fn;
      shouldAbortOnUncaughtToggle[0] = 1;
      return;
    }
    if (typeof fn !== 'function') {
      throw new ERR_INVALID_ARG_TYPE('fn', ['Function', 'null'], fn);
    }
    if (exceptionHandlerState.captureFn !== null) {
      throw new ERR_UNCAUGHT_EXCEPTION_CAPTURE_ALREADY_SET();
    }
    exceptionHandlerState.captureFn = fn;
    shouldAbortOnUncaughtToggle[0] = 0;
  };

  process.hasUncaughtExceptionCaptureCallback = function() {
    return exceptionHandlerState.captureFn !== null;
  };
}

const replaceUnderscoresRegex = /_/g;
const leadingDashesRegex = /^--?/;
const trailingValuesRegex = /=.*$/;

// Save references so user code does not interfere
const replace = Function.call.bind(String.prototype.replace);
const has = Function.call.bind(Set.prototype.has);
const test = Function.call.bind(RegExp.prototype.test);

// This builds the initial process.allowedNodeEnvironmentFlags
// from data in the config binding.
function buildAllowedFlags() {
  const {
    envSettings: { kAllowedInEnvironment }
  } = internalBinding('options');
  const { options, aliases } = require('internal/options');

  const allowedNodeEnvironmentFlags = [];
  for (const [name, info] of options) {
    if (info.envVarSettings === kAllowedInEnvironment) {
      allowedNodeEnvironmentFlags.push(name);
    }
  }

  for (const [ from, expansion ] of aliases) {
    let isAccepted = true;
    for (const to of expansion) {
      if (!to.startsWith('-') || to === '--') continue;
      const recursiveExpansion = aliases.get(to);
      if (recursiveExpansion) {
        if (recursiveExpansion[0] === to)
          recursiveExpansion.splice(0, 1);
        expansion.push(...recursiveExpansion);
        continue;
      }
      isAccepted = options.get(to).envVarSettings === kAllowedInEnvironment;
      if (!isAccepted) break;
    }
    if (isAccepted) {
      let canonical = from;
      if (canonical.endsWith('='))
        canonical = canonical.substr(0, canonical.length - 1);
      if (canonical.endsWith(' <arg>'))
        canonical = canonical.substr(0, canonical.length - 4);
      allowedNodeEnvironmentFlags.push(canonical);
    }
  }

  const trimLeadingDashes = (flag) => replace(flag, leadingDashesRegex, '');

  // Save these for comparison against flags provided to
  // process.allowedNodeEnvironmentFlags.has() which lack leading dashes.
  // Avoid interference w/ user code by flattening `Set.prototype` into
  // each object.
  const nodeFlags = Object.defineProperties(
    new Set(allowedNodeEnvironmentFlags.map(trimLeadingDashes)),
    Object.getOwnPropertyDescriptors(Set.prototype)
  );

  class NodeEnvironmentFlagsSet extends Set {
    constructor(...args) {
      super(...args);

      // the super constructor consumes `add`, but
      // disallow any future adds.
      this.add = () => this;
    }

    delete() {
      // noop, `Set` API compatible
      return false;
    }

    clear() {
      // noop
    }

    has(key) {
      // This will return `true` based on various possible
      // permutations of a flag, including present/missing leading
      // dash(es) and/or underscores-for-dashes.
      // Strips any values after `=`, inclusive.
      // TODO(addaleax): It might be more flexible to run the option parser
      // on a dummy option set and see whether it rejects the argument or
      // not.
      if (typeof key === 'string') {
        key = replace(key, replaceUnderscoresRegex, '-');
        if (test(leadingDashesRegex, key)) {
          key = replace(key, trailingValuesRegex, '');
          return has(this, key);
        }
        return has(nodeFlags, key);
      }
      return false;
    }
  }

  Object.freeze(NodeEnvironmentFlagsSet.prototype.constructor);
  Object.freeze(NodeEnvironmentFlagsSet.prototype);

  return process.allowedNodeEnvironmentFlags = Object.freeze(
    new NodeEnvironmentFlagsSet(
      allowedNodeEnvironmentFlags
    ));
}

function setupAllowedFlags() {
  Object.defineProperty(process, 'allowedNodeEnvironmentFlags', {
    get: buildAllowedFlags,
    set(value) {
      // If the user tries to set this to another value, override
      // this completely to that value.
      Object.defineProperty(this, 'allowedNodeEnvironmentFlags', {
        value,
        configurable: true,
        enumerable: true,
        writable: true
      });
    },
    enumerable: true,
    configurable: true
  });
}

module.exports = {
  setupAllowedFlags,
  setupAssert,
  setupCpuUsage,
  setupHrtime,
  setupMemoryUsage,
  setupConfig,
  setupKillAndExit,
  setupRawDebug,
  setupUncaughtExceptionCapture
};

