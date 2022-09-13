var util = require('./mochaIntellijUtil');

function stringify(value) {
  if (util.isString(value)) {
    // in compliance with mocha own behavior:
    //   https://github.com/mochajs/mocha/blob/v2.4.5/lib/reporters/base.js#L202
    //   https://github.com/mochajs/mocha/commit/d55221bc967f62d1d8dd4cd8ce4c550c15eba57f
    return value.toString();
  }
  try {
    var mochaUtils = util.requireMochaModule('./lib/utils');
    if (mochaUtils != null && typeof mochaUtils.stringify === 'function') {
      return mochaUtils.stringify(value);
    }
  }
  catch (e) {
    // do nothing
  }
  var normalizedValue = deepCopyAndNormalize(value);
  if (normalizedValue instanceof RegExp) {
    return normalizedValue.toString();
  }
  if (normalizedValue === undefined) {
    return 'undefined';
  }
  return JSON.stringify(normalizedValue, null, 2);
}

function isObject(val) {
  return val === Object(val);
}

function deepCopyAndNormalize(value) {
  var cache = [];
  return (function stringify(value) {
    if (value == null) {
      return value;
    }
    if (typeof value === 'number' || typeof value === 'boolean' || typeof value === 'string') {
      return value;
    }
    if (value instanceof RegExp) {
      return value;
    }

    if (cache.indexOf(value) !== -1) {
      return '[Circular reference found] Truncated by IDE';
    }
    cache.push(value);

    if (Array.isArray(value)) {
      return value.map(function (element) {
        return stringify(element);
      });
    }

    if (isObject(value)) {
      var keys = Object.keys(value);
      keys.sort();
      var ret = {};
      keys.forEach(function (key) {
        ret[key] = stringify(value[key]);
      });
      return ret;
    }

    return value;
  })(value);
}

exports.stringify = stringify;
