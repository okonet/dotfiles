'use strict';

const {
  ArrayPrototypeJoin,
  ObjectDefineProperty,
  ObjectPrototypeHasOwnProperty,
  SafeMap,
  SafeSet,
} = primordials;
const {
  ERR_MANIFEST_DEPENDENCY_MISSING,
  ERR_UNKNOWN_BUILTIN_MODULE
} = require('internal/errors').codes;
const { NativeModule } = require('internal/bootstrap/loaders');

const { validateString } = require('internal/validators');
const path = require('path');
const { pathToFileURL, fileURLToPath } = require('internal/url');
const { URL } = require('url');

const { getOptionValue } = require('internal/options');
const userConditions = getOptionValue('--conditions');

let debug = require('internal/util/debuglog').debuglog('module', (fn) => {
  debug = fn;
});

// TODO: Use this set when resolving pkg#exports conditions in loader.js.
const cjsConditions = new SafeSet(['require', 'node', ...userConditions]);

function loadNativeModule(filename, request) {
  const mod = NativeModule.map.get(filename);
  if (mod) {
    debug('load native module %s', request);
    mod.compileForPublicLoader();
    return mod;
  }
}

// Invoke with makeRequireFunction(module) where |module| is the Module object
// to use as the context for the require() function.
// Use redirects to set up a mapping from a policy and restrict dependencies
const urlToFileCache = new SafeMap();
function makeRequireFunction(mod, redirects) {
  const Module = mod.constructor;

  let require;
  if (redirects) {
    const id = mod.filename || mod.id;
    const conditions = cjsConditions;
    const { resolve, reaction } = redirects;
    require = function require(specifier) {
      let missing = true;
      const destination = resolve(specifier, conditions);
      if (destination === true) {
        missing = false;
      } else if (destination) {
        const href = destination.href;
        if (destination.protocol === 'node:') {
          const specifier = destination.pathname;
          const mod = loadNativeModule(specifier, href);
          if (mod && mod.canBeRequiredByUsers) {
            return mod.exports;
          }
          throw new ERR_UNKNOWN_BUILTIN_MODULE(specifier);
        } else if (destination.protocol === 'file:') {
          let filepath;
          if (urlToFileCache.has(href)) {
            filepath = urlToFileCache.get(href);
          } else {
            filepath = fileURLToPath(destination);
            urlToFileCache.set(href, filepath);
          }
          return mod.require(filepath);
        }
      }
      if (missing) {
        reaction(new ERR_MANIFEST_DEPENDENCY_MISSING(
          id,
          specifier,
          ArrayPrototypeJoin([...conditions], ', ')
        ));
      }
      return mod.require(specifier);
    };
  } else {
    require = function require(path) {
      return mod.require(path);
    };
  }

  function resolve(request, options) {
    validateString(request, 'request');
    return Module._resolveFilename(request, mod, false, options);
  }

  require.resolve = resolve;

  function paths(request) {
    validateString(request, 'request');
    return Module._resolveLookupPaths(request, mod);
  }

  resolve.paths = paths;

  require.main = process.mainModule;

  // Enable support to add extra extension types.
  require.extensions = Module._extensions;

  require.cache = Module._cache;

  return require;
}

/**
 * Remove byte order marker. This catches EF BB BF (the UTF-8 BOM)
 * because the buffer-to-string conversion in `fs.readFileSync()`
 * translates it to FEFF, the UTF-16 BOM.
 */
function stripBOM(content) {
  if (content.charCodeAt(0) === 0xFEFF) {
    content = content.slice(1);
  }
  return content;
}

function addBuiltinLibsToObject(object) {
  // Make built-in modules available directly (loaded lazily).
  const { builtinModules } = require('internal/modules/cjs/loader').Module;
  builtinModules.forEach((name) => {
    // Neither add underscored modules, nor ones that contain slashes (e.g.,
    // 'fs/promises') or ones that are already defined.
    if (name.startsWith('_') ||
        name.includes('/') ||
        ObjectPrototypeHasOwnProperty(object, name)) {
      return;
    }
    // Goals of this mechanism are:
    // - Lazy loading of built-in modules
    // - Having all built-in modules available as non-enumerable properties
    // - Allowing the user to re-assign these variables as if there were no
    //   pre-existing globals with the same name.

    const setReal = (val) => {
      // Deleting the property before re-assigning it disables the
      // getter/setter mechanism.
      delete object[name];
      object[name] = val;
    };

    ObjectDefineProperty(object, name, {
      get: () => {
        const lib = require(name);

        // Disable the current getter/setter and set up a new
        // non-enumerable property.
        delete object[name];
        ObjectDefineProperty(object, name, {
          get: () => lib,
          set: setReal,
          configurable: true,
          enumerable: false
        });

        return lib;
      },
      set: setReal,
      configurable: true,
      enumerable: false
    });
  });
}

function normalizeReferrerURL(referrer) {
  if (typeof referrer === 'string' && path.isAbsolute(referrer)) {
    return pathToFileURL(referrer).href;
  }
  return new URL(referrer).href;
}

module.exports = {
  addBuiltinLibsToObject,
  cjsConditions,
  loadNativeModule,
  makeRequireFunction,
  normalizeReferrerURL,
  stripBOM,
};