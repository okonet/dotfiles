'use strict';

const {
  ObjectDefineProperty,
  Symbol,
} = primordials;

const {
  KeyObjectHandle,
  createNativeKeyObjectClass,
  kKeyTypeSecret,
  kKeyTypePublic,
  kKeyTypePrivate,
  kKeyFormatPEM,
  kKeyFormatDER,
  kKeyEncodingPKCS1,
  kKeyEncodingPKCS8,
  kKeyEncodingSPKI,
  kKeyEncodingSEC1
} = internalBinding('crypto');
const {
  ERR_CRYPTO_INCOMPATIBLE_KEY_OPTIONS,
  ERR_CRYPTO_INVALID_KEY_OBJECT_TYPE,
  ERR_INVALID_ARG_TYPE,
  ERR_INVALID_ARG_VALUE,
  ERR_INVALID_OPT_VALUE,
  ERR_OUT_OF_RANGE
} = require('internal/errors').codes;
const { kHandle } = require('internal/crypto/util');

const { isArrayBufferView } = require('internal/util/types');

const kKeyType = Symbol('kKeyType');

// Key input contexts.
const kConsumePublic = 0;
const kConsumePrivate = 1;
const kCreatePublic = 2;
const kCreatePrivate = 3;

const encodingNames = [];
for (const m of [[kKeyEncodingPKCS1, 'pkcs1'], [kKeyEncodingPKCS8, 'pkcs8'],
                 [kKeyEncodingSPKI, 'spki'], [kKeyEncodingSEC1, 'sec1']])
  encodingNames[m[0]] = m[1];

// Creating the KeyObject class is a little complicated due to inheritance
// and that fact that KeyObjects should be transferrable between threads,
// which requires the KeyObject base class to be implemented in C++.
// The creation requires a callback to make sure that the NativeKeyObject
// base class cannot exist without the other KeyObject implementations.
const [
  KeyObject,
  SecretKeyObject,
  PublicKeyObject,
  PrivateKeyObject
] = createNativeKeyObjectClass((NativeKeyObject) => {
  // Publicly visible KeyObject class.
  class KeyObject extends NativeKeyObject {
    constructor(type, handle) {
      if (type !== 'secret' && type !== 'public' && type !== 'private')
        throw new ERR_INVALID_ARG_VALUE('type', type);
      if (typeof handle !== 'object' || !(handle instanceof KeyObjectHandle))
        throw new ERR_INVALID_ARG_TYPE('handle', 'object', handle);

      super(handle);

      this[kKeyType] = type;

      ObjectDefineProperty(this, kHandle, {
        value: handle,
        enumerable: false,
        configurable: false,
        writable: false
      });
    }

    get type() {
      return this[kKeyType];
    }
  }

  class SecretKeyObject extends KeyObject {
    constructor(handle) {
      super('secret', handle);
    }

    get symmetricKeySize() {
      return this[kHandle].getSymmetricKeySize();
    }

    export() {
      return this[kHandle].export();
    }
  }

  const kAsymmetricKeyType = Symbol('kAsymmetricKeyType');

  class AsymmetricKeyObject extends KeyObject {
    get asymmetricKeyType() {
      return this[kAsymmetricKeyType] ||
             (this[kAsymmetricKeyType] = this[kHandle].getAsymmetricKeyType());
    }
  }

  class PublicKeyObject extends AsymmetricKeyObject {
    constructor(handle) {
      super('public', handle);
    }

    export(encoding) {
      const {
        format,
        type
      } = parsePublicKeyEncoding(encoding, this.asymmetricKeyType);
      return this[kHandle].export(format, type);
    }
  }

  class PrivateKeyObject extends AsymmetricKeyObject {
    constructor(handle) {
      super('private', handle);
    }

    export(encoding) {
      const {
        format,
        type,
        cipher,
        passphrase
      } = parsePrivateKeyEncoding(encoding, this.asymmetricKeyType);
      return this[kHandle].export(format, type, cipher, passphrase);
    }
  }

  return [KeyObject, SecretKeyObject, PublicKeyObject, PrivateKeyObject];
});

function parseKeyFormat(formatStr, defaultFormat, optionName) {
  if (formatStr === undefined && defaultFormat !== undefined)
    return defaultFormat;
  else if (formatStr === 'pem')
    return kKeyFormatPEM;
  else if (formatStr === 'der')
    return kKeyFormatDER;
  throw new ERR_INVALID_OPT_VALUE(optionName, formatStr);
}

function parseKeyType(typeStr, required, keyType, isPublic, optionName) {
  if (typeStr === undefined && !required) {
    return undefined;
  } else if (typeStr === 'pkcs1') {
    if (keyType !== undefined && keyType !== 'rsa') {
      throw new ERR_CRYPTO_INCOMPATIBLE_KEY_OPTIONS(
        typeStr, 'can only be used for RSA keys');
    }
    return kKeyEncodingPKCS1;
  } else if (typeStr === 'spki' && isPublic !== false) {
    return kKeyEncodingSPKI;
  } else if (typeStr === 'pkcs8' && isPublic !== true) {
    return kKeyEncodingPKCS8;
  } else if (typeStr === 'sec1' && isPublic !== true) {
    if (keyType !== undefined && keyType !== 'ec') {
      throw new ERR_CRYPTO_INCOMPATIBLE_KEY_OPTIONS(
        typeStr, 'can only be used for EC keys');
    }
    return kKeyEncodingSEC1;
  }

  throw new ERR_INVALID_OPT_VALUE(optionName, typeStr);
}

function option(name, objName) {
  return objName === undefined ? name : `${objName}.${name}`;
}

function parseKeyFormatAndType(enc, keyType, isPublic, objName) {
  const { format: formatStr, type: typeStr } = enc;

  const isInput = keyType === undefined;
  const format = parseKeyFormat(formatStr,
                                isInput ? kKeyFormatPEM : undefined,
                                option('format', objName));

  const type = parseKeyType(typeStr,
                            !isInput || format === kKeyFormatDER,
                            keyType,
                            isPublic,
                            option('type', objName));

  return { format, type };
}

function isStringOrBuffer(val) {
  return typeof val === 'string' || isArrayBufferView(val);
}

function parseKeyEncoding(enc, keyType, isPublic, objName) {
  if (enc === null || typeof enc !== 'object')
    throw new ERR_INVALID_ARG_TYPE('options', 'object', enc);

  const isInput = keyType === undefined;

  const {
    format,
    type
  } = parseKeyFormatAndType(enc, keyType, isPublic, objName);

  let cipher, passphrase;
  if (isPublic !== true) {
    ({ cipher, passphrase } = enc);

    if (!isInput) {
      if (cipher != null) {
        if (typeof cipher !== 'string')
          throw new ERR_INVALID_OPT_VALUE(option('cipher', objName), cipher);
        if (format === kKeyFormatDER &&
            (type === kKeyEncodingPKCS1 ||
             type === kKeyEncodingSEC1)) {
          throw new ERR_CRYPTO_INCOMPATIBLE_KEY_OPTIONS(
            encodingNames[type], 'does not support encryption');
        }
      } else if (passphrase !== undefined) {
        throw new ERR_INVALID_OPT_VALUE(option('cipher', objName), cipher);
      }
    }

    if ((isInput && passphrase !== undefined &&
         !isStringOrBuffer(passphrase)) ||
        (!isInput && cipher != null && !isStringOrBuffer(passphrase))) {
      throw new ERR_INVALID_OPT_VALUE(option('passphrase', objName),
                                      passphrase);
    }
  }

  return { format, type, cipher, passphrase };
}

// Parses the public key encoding based on an object. keyType must be undefined
// when this is used to parse an input encoding and must be a valid key type if
// used to parse an output encoding.
function parsePublicKeyEncoding(enc, keyType, objName) {
  return parseKeyEncoding(enc, keyType, keyType ? true : undefined, objName);
}

// Parses the private key encoding based on an object. keyType must be undefined
// when this is used to parse an input encoding and must be a valid key type if
// used to parse an output encoding.
function parsePrivateKeyEncoding(enc, keyType, objName) {
  return parseKeyEncoding(enc, keyType, false, objName);
}

function getKeyObjectHandle(key, ctx) {
  if (ctx === kCreatePrivate) {
    throw new ERR_INVALID_ARG_TYPE(
      'key',
      ['string', 'Buffer', 'TypedArray', 'DataView'],
      key
    );
  }

  if (key.type !== 'private') {
    if (ctx === kConsumePrivate || ctx === kCreatePublic)
      throw new ERR_CRYPTO_INVALID_KEY_OBJECT_TYPE(key.type, 'private');
    if (key.type !== 'public') {
      throw new ERR_CRYPTO_INVALID_KEY_OBJECT_TYPE(key.type,
                                                   'private or public');
    }
  }

  return key[kHandle];
}

function prepareAsymmetricKey(key, ctx) {
  if (isKeyObject(key)) {
    // Best case: A key object, as simple as that.
    return { data: getKeyObjectHandle(key, ctx) };
  } else if (typeof key === 'string' || isArrayBufferView(key)) {
    // Expect PEM by default, mostly for backward compatibility.
    return { format: kKeyFormatPEM, data: key };
  } else if (typeof key === 'object') {
    const data = key.key;
    // The 'key' property can be a KeyObject as well to allow specifying
    // additional options such as padding along with the key.
    if (isKeyObject(data))
      return { data: getKeyObjectHandle(data, ctx) };
    // Either PEM or DER using PKCS#1 or SPKI.
    if (!isStringOrBuffer(data)) {
      throw new ERR_INVALID_ARG_TYPE(
        'key.key',
        ['string', 'Buffer', 'TypedArray', 'DataView',
         ...(ctx !== kCreatePrivate ? ['KeyObject'] : [])],
        data);
    }

    const isPublic =
      (ctx === kConsumePrivate || ctx === kCreatePrivate) ? false : undefined;
    return { data, ...parseKeyEncoding(key, undefined, isPublic) };
  }
  throw new ERR_INVALID_ARG_TYPE(
    'key',
    ['string', 'Buffer', 'TypedArray', 'DataView',
     ...(ctx !== kCreatePrivate ? ['KeyObject'] : [])],
    key
  );
}

function preparePrivateKey(key) {
  return prepareAsymmetricKey(key, kConsumePrivate);
}

function preparePublicOrPrivateKey(key) {
  return prepareAsymmetricKey(key, kConsumePublic);
}

function prepareSecretKey(key, bufferOnly = false) {
  if (!isArrayBufferView(key) && (bufferOnly || typeof key !== 'string')) {
    if (isKeyObject(key) && !bufferOnly) {
      if (key.type !== 'secret')
        throw new ERR_CRYPTO_INVALID_KEY_OBJECT_TYPE(key.type, 'secret');
      return key[kHandle];
    }
    throw new ERR_INVALID_ARG_TYPE(
      'key',
      ['Buffer', 'TypedArray', 'DataView',
       ...(bufferOnly ? [] : ['string', 'KeyObject'])],
      key);
  }
  return key;
}

function createSecretKey(key) {
  key = prepareSecretKey(key, true);
  if (key.byteLength === 0)
    throw new ERR_OUT_OF_RANGE('key.byteLength', '> 0', key.byteLength);
  const handle = new KeyObjectHandle();
  handle.init(kKeyTypeSecret, key);
  return new SecretKeyObject(handle);
}

function createPublicKey(key) {
  const { format, type, data } = prepareAsymmetricKey(key, kCreatePublic);
  const handle = new KeyObjectHandle();
  handle.init(kKeyTypePublic, data, format, type);
  return new PublicKeyObject(handle);
}

function createPrivateKey(key) {
  const { format, type, data, passphrase } =
    prepareAsymmetricKey(key, kCreatePrivate);
  const handle = new KeyObjectHandle();
  handle.init(kKeyTypePrivate, data, format, type, passphrase);
  return new PrivateKeyObject(handle);
}

function isKeyObject(key) {
  return key instanceof KeyObject;
}

module.exports = {
  // Public API.
  createSecretKey,
  createPublicKey,
  createPrivateKey,
  KeyObject,

  // These are designed for internal use only and should not be exposed.
  parsePublicKeyEncoding,
  parsePrivateKeyEncoding,
  preparePrivateKey,
  preparePublicOrPrivateKey,
  prepareSecretKey,
  SecretKeyObject,
  PublicKeyObject,
  PrivateKeyObject,
  isKeyObject
};