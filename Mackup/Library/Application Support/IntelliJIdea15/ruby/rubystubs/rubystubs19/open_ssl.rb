=begin
 This is a machine generated stub using stdlib-doc for <b>module OpenSSL</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# OSSL library init
# ---
# let rdoc know about mOSSL   
# ---
# let rdoc know about mOSSL   
# ---
# let rdoc know about mOSSL   
# ---
# let rdoc know about mOSSL   
# ---
# let rdoc know about mOSSL   
# ---
# let rdoc know about mOSSL   
# ---
# let rdoc know about mOSSL and mPKey   
# ---
# let rdoc know about mOSSL and mPKey   
# ---
# let rdoc know about mOSSL and mPKey   
# ---
# let rdoc know about mOSSL   
# ---
# let rdoc know about mOSSL   
# ---
# let rdoc know about mOSSL   
module OpenSSL
    # Constants
    VERSION = nil #value is unknown, used for indexing.
    OPENSSL_VERSION = nil #value is unknown, used for indexing.
    OPENSSL_VERSION_NUMBER = nil #value is unknown, used for indexing.
    # OpenSSL.debug -> true | false
    #  
    def self.debug()
        #This is a stub, used for indexing
    end
    # OpenSSL.debug = boolean -> boolean
    #  
    # Turns on or off CRYPTO_MEM_CHECK.
    # Also shows some debugging message on stderr.
    def self.debug= boolean
        #This is a stub, used for indexing
    end
    # OpenSSL.errors -> [String...]
    #  
    # See any remaining errors held in queue.
    # 
    # Any errors you see here are probably due to a bug in ruby's OpenSSL implementation.
    def self.errors()
        #This is a stub, used for indexing
    end
    module ASN1
        UNIVERSAL_TAG_NAME = nil #value is unknown, used for indexing.
        def self.traverse(p1)
            #This is a stub, used for indexing
        end
        def self.decode(p1)
            #This is a stub, used for indexing
        end
        def self.decode_all(p1)
            #This is a stub, used for indexing
        end
        class ASN1Data
            def self.new(p1, p2, p3)
                #This is a stub, used for indexing
            end
            def to_der()
                #This is a stub, used for indexing
            end
        end
        class ASN1Error < OpenSSLError
        end
        class Constructive < ASN1Data
            include Enumerable
            def self.new(p1, p2 = v2, p3 = v3, p4 = v4)
                #This is a stub, used for indexing
            end
            def to_der()
                #This is a stub, used for indexing
            end
            def each()
                #This is a stub, used for indexing
            end
        end
        class Primitive < ASN1Data
            def self.new(p1, p2 = v2, p3 = v3, p4 = v4)
                #This is a stub, used for indexing
            end
            def to_der()
                #This is a stub, used for indexing
            end
        end
    end
    class BN
        # BN.new => aBN
        # BN.new(bn) => aBN
        # BN.new(string) => aBN
        # BN.new(string, 0 | 2 | 10 | 16) => aBN
        #  
        def self.new(*several_variants)
            #This is a stub, used for indexing
        end
        def copy(p1)
            #This is a stub, used for indexing
        end
        # bn1 / bn2 => [result, remainder]
        #  
        def / bn2
            #This is a stub, used for indexing
        end
        def eql?(p1)
            #This is a stub, used for indexing
        end
        alias == eql?
        alias === eql?
        # BN.generate_prime(bits, [, safe [, add [, rem]]]) => bn
        #  
        # === Parameters
        # * +bits+ - integer
        # * +safe+ - boolean
        # * +add+ - BN
        # * +rem+ - BN
        def self.generate_prime(p1, p2 = v2, p3 = v3, p4 = v4)
            #This is a stub, used for indexing
        end
        # bn.prime? => true | false
        # bn.prime?(checks) => true | false
        #  
        # === Parameters
        # * +checks+ - integer
        def prime?(*several_variants)
            #This is a stub, used for indexing
        end
        # bn.bit_set?(bit) => true | false
        #  
        def bit_set?(bit)
            #This is a stub, used for indexing
        end
        # bn.to_s => string
        # bn.to_s(base) => string
        #  
        # === Parameters
        # * +base+ - integer
        # * * Valid values:
        # * * * 0 - MPI
        # * * * 2 - binary
        # * * * 10 - the default
        # * * * 16 - hex
        def to_s(*several_variants)
            #This is a stub, used for indexing
        end
        # bn.to_i => integer
        #  
        def to_i()
            #This is a stub, used for indexing
        end
        alias to_int to_i
        def to_bn()
            #This is a stub, used for indexing
        end
        def coerce(p1)
            #This is a stub, used for indexing
        end
        # bn.prime_fasttest? => true | false
        # bn.prime_fasttest?(checks) => true | false
        # bn.prime_fasttest?(checks, trial_div) => true | false
        #  
        # === Parameters
        # * +checks+ - integer
        # * +trial_div+ - boolean
        def prime_fasttest?(*several_variants)
            #This is a stub, used for indexing
        end
        def ==(p1)
            #This is a stub, used for indexing
        end
        def ===(p1)
            #This is a stub, used for indexing
        end
        def to_int()
            #This is a stub, used for indexing
        end
    end
    class BNError < OpenSSLError
    end
    class Cipher
        # Cipher.ciphers -> array[string...]
        #  
        # Returns the names of all available ciphers in an array.
        def self.ciphers()
            #This is a stub, used for indexing
        end
        # Cipher.new(string) -> cipher
        #  
        # The string must contain a valid cipher name like "AES-128-CBC" or "3DES".
        # 
        # A list of cipher names is available by calling OpenSSL::Cipher.ciphers.
        def self.new(string)
            #This is a stub, used for indexing
        end
        # cipher.reset -> self
        #  
        # Internally calls EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, -1).
        def reset()
            #This is a stub, used for indexing
        end
        # cipher.encrypt -> self
        #  
        # Make sure to call .encrypt or .decrypt before using any of the following methods:
        # * [key=, iv=, random_key, random_iv, pkcs5_keyivgen]
        # 
        # Internally calls EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, 1).
        def encrypt()
            #This is a stub, used for indexing
        end
        # cipher.decrypt -> self
        #  
        # Make sure to call .encrypt or .decrypt before using any of the following methods:
        # * [key=, iv=, random_key, random_iv, pkcs5_keyivgen]
        # 
        # Internally calls EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, 0).
        def decrypt()
            #This is a stub, used for indexing
        end
        # cipher.pkcs5_keyivgen(pass [, salt [, iterations [, digest]]] ) -> nil
        #  
        # Generates and sets the key/iv based on a password.
        # 
        # WARNING: This method is only PKCS5 v1.5 compliant when using RC2, RC4-40, or DES
        # with MD5 or SHA1.  Using anything else (like AES) will generate the key/iv using an
        # OpenSSL specific method.  Use a PKCS5 v2 key generation method instead.
        # 
        # === Parameters
        # +salt+ must be an 8 byte string if provided.
        # +iterations+ is a integer with a default of 2048.
        # +digest+ is a Digest object that defaults to 'MD5'
        # 
        # A minimum of 1000 iterations is recommended.
        def pkcs5_keyivgen(p1, p2 = v2, p3 = v3, p4 = v4)
            #This is a stub, used for indexing
        end
        # cipher.update(data [, buffer]) -> string or buffer
        #  
        # === Parameters
        # +data+ is a nonempty string.
        # +buffer+ is an optional string to store the result.
        def update(p1, p2 = v2)
            #This is a stub, used for indexing
        end
        # cipher.final -> aString
        #  
        # Returns the remaining data held in the cipher object.  Further calls to update() or final() will return garbage.
        # 
        # See EVP_CipherFinal_ex for further information.
        def final()
            #This is a stub, used for indexing
        end
        # cipher.name -> string
        #  
        # Returns the name of the cipher which may differ slightly from the original name provided.
        def name()
            #This is a stub, used for indexing
        end
        # cipher.key = string -> string
        #  
        # Sets the cipher key.
        # 
        # Only call this method after calling cipher.encrypt or cipher.decrypt.
        def key= string
            #This is a stub, used for indexing
        end
        # cipher.key_length = integer -> integer
        #  
        # Sets the key length of the cipher.  If the cipher is a fixed length cipher then attempting to set the key
        # length to any value other than the fixed value is an error.
        # 
        # Under normal circumstances you do not need to call this method (and probably shouldn't).
        # 
        # See EVP_CIPHER_CTX_set_key_length for further information.
        def key_len=(p1)
            #This is a stub, used for indexing
        end
        # cipher.key_length -> integer
        #  
        def key_len gth
            #This is a stub, used for indexing
        end
        # cipher.iv = string -> string
        #  
        # Sets the cipher iv.
        # 
        # Only call this method after calling cipher.encrypt or cipher.decrypt.
        def iv= string
            #This is a stub, used for indexing
        end
        # cipher.iv_length -> integer
        #  
        def iv_len gth
            #This is a stub, used for indexing
        end
        # cipher.block_size -> integer
        #  
        def block_size()
            #This is a stub, used for indexing
        end
        # cipher.padding = integer -> integer
        #  
        # Enables or disables padding. By default encryption operations are padded using standard block padding and the
        # padding is checked and removed when decrypting. If the pad parameter is zero then no padding is performed, the
        # total amount of data encrypted or decrypted must then be a multiple of the block size or an error will occur.
        # 
        # See EVP_CIPHER_CTX_set_padding for further information.
        def padding= integer
            #This is a stub, used for indexing
        end
        class CipherError < OpenSSLError
        end
    end
    class Config
        include Enumerable
        DEFAULT_CONFIG_FILE = nil #value is unknown, used for indexing.
        def self.parse(p1)
            #This is a stub, used for indexing
        end
        def self.new(p1 = v1)
            #This is a stub, used for indexing
        end
        def get_value(p1, p2)
            #This is a stub, used for indexing
        end
        def value(p1, p2 = v2)
            #This is a stub, used for indexing
        end
        def add_value(p1, p2, p3)
            #This is a stub, used for indexing
        end
        # Get all numbers as strings - use str.to_i to convert
        # long number = CONF_get_number(confp->config, sect, StringValuePtr(item));
        def [](p1)
            #This is a stub, used for indexing
        end
        def section(p1)
            #This is a stub, used for indexing
        end
        def []=(p1, p2)
            #This is a stub, used for indexing
        end
        def sections()
            #This is a stub, used for indexing
        end
        def to_s()
            #This is a stub, used for indexing
        end
        def each()
            #This is a stub, used for indexing
        end
        def inspect()
            #This is a stub, used for indexing
        end
    end
    class ConfigError < OpenSSLError
    end
    class Digest < Class
        # Digest.new(string) -> digest
        #  
        def self.new(string)
            #This is a stub, used for indexing
        end
        # digest.reset -> self
        #  
        def reset()
            #This is a stub, used for indexing
        end
        # digest.update(string) -> aString
        #  
        def update(string)
            #This is a stub, used for indexing
        end
        alias << update
        # digest.finish -> aString
        #  
        def finish()
            #This is a stub, used for indexing
        end
        # digest.digest_size -> integer
        #  
        # Returns the output size of the digest.
        def digest_length()
            #This is a stub, used for indexing
        end
        def block_length()
            #This is a stub, used for indexing
        end
        # digest.name -> string
        #  
        def name()
            #This is a stub, used for indexing
        end
        def <<(p1)
            #This is a stub, used for indexing
        end
        class DigestError < OpenSSLError
        end
    end
    class Engine
        def self.load(p1 = v1)
            #This is a stub, used for indexing
        end
        def self.cleanup()
            #This is a stub, used for indexing
        end
        def self.engines()
            #This is a stub, used for indexing
        end
        def self.by_id(p1)
            #This is a stub, used for indexing
        end
        def id()
            #This is a stub, used for indexing
        end
        def name()
            #This is a stub, used for indexing
        end
        def finish()
            #This is a stub, used for indexing
        end
        def cipher(p1)
            #This is a stub, used for indexing
        end
        def digest(p1)
            #This is a stub, used for indexing
        end
        def load_private_key(p1 = v1, p2 = v2)
            #This is a stub, used for indexing
        end
        def load_public_key(p1 = v1, p2 = v2)
            #This is a stub, used for indexing
        end
        def set_default(p1)
            #This is a stub, used for indexing
        end
        def ctrl_cmd(p1, p2 = v2)
            #This is a stub, used for indexing
        end
        def cmds()
            #This is a stub, used for indexing
        end
        def inspect()
            #This is a stub, used for indexing
        end
        class EngineError < OpenSSLError
        end
    end
    class HMAC
        # HMAC.digest(digest, key, data) -> aString
        #  
        def self.digest(digest, key, data)
            #This is a stub, used for indexing
        end
        # HMAC.digest(digest, key, data) -> aString
        #  
        def self.hexdigest(p1, p2, p3)
            #This is a stub, used for indexing
        end
        # HMAC.new(key, digest) -> hmac
        #  
        def self.new(key, digest)
            #This is a stub, used for indexing
        end
        # hmac.reset -> self
        #  
        def reset()
            #This is a stub, used for indexing
        end
        # hmac.update(string) -> self
        #  
        def update(string)
            #This is a stub, used for indexing
        end
        alias << update
        # hmac.digest -> aString
        #  
        def digest()
            #This is a stub, used for indexing
        end
        # hmac.hexdigest -> aString
        #  
        def hexdigest()
            #This is a stub, used for indexing
        end
        alias inspect hexdigest
        alias to_s hexdigest
        def <<(p1)
            #This is a stub, used for indexing
        end
        def inspect()
            #This is a stub, used for indexing
        end
        def to_s()
            #This is a stub, used for indexing
        end
    end
    class HMACError < OpenSSLError
    end
    module Netscape
        class SPKI
            def self.new(p1 = v1)
                #This is a stub, used for indexing
            end
            def to_der()
                #This is a stub, used for indexing
            end
            def to_pem()
                #This is a stub, used for indexing
            end
            alias to_s to_pem
            def to_text()
                #This is a stub, used for indexing
            end
            def public_key()
                #This is a stub, used for indexing
            end
            def public_key=(p1)
                #This is a stub, used for indexing
            end
            def sign(p1, p2)
                #This is a stub, used for indexing
            end
            # Checks that cert signature is made with PRIVversion of this PUBLIC 'key'
            def verify(p1)
                #This is a stub, used for indexing
            end
            def challenge()
                #This is a stub, used for indexing
            end
            def challenge=(p1)
                #This is a stub, used for indexing
            end
            def to_s()
                #This is a stub, used for indexing
            end
        end
        class SPKIError < OpenSSLError
        end
    end
    module OCSP
        class BasicResponse
            def self.new(*args)
                #This is a stub, used for indexing
            end
            def copy_nonce(p1)
                #This is a stub, used for indexing
            end
            def add_nonce(p1 = v1)
                #This is a stub, used for indexing
            end
            def add_status(p1, p2, p3, p4, p5, p6, p7)
                #This is a stub, used for indexing
            end
            def status()
                #This is a stub, used for indexing
            end
            def sign(p1, p2, p3 = v3, p4 = v4)
                #This is a stub, used for indexing
            end
            def verify(p1, p2, p3 = v3)
                #This is a stub, used for indexing
            end
        end
        class CertificateId
            def self.new(p1, p2)
                #This is a stub, used for indexing
            end
            def cmp(p1)
                #This is a stub, used for indexing
            end
            def cmp_issuer(p1)
                #This is a stub, used for indexing
            end
            def serial()
                #This is a stub, used for indexing
            end
        end
        class OCSPError < OpenSSLError
        end
        class Request
            def self.new(p1 = v1)
                #This is a stub, used for indexing
            end
            def add_nonce(p1 = v1)
                #This is a stub, used for indexing
            end
            # Check nonce validity in a request and response.
            # Return value reflects result:
            #  1: nonces present and equal.
            #  2: nonces both absent.
            #  3: nonce present in response only.
            #  0: nonces both present and not equal.
            # -1: nonce in request only.
            # 
            #  For most responders clients can check return > 0.
            #  If responder doesn't handle nonces return != 0 may be
            #  necessary. return == 0 is always an error.
            def check_nonce(p1)
                #This is a stub, used for indexing
            end
            def add_certid(p1)
                #This is a stub, used for indexing
            end
            def certid()
                #This is a stub, used for indexing
            end
            def sign(p1, p2, p3 = v3, p4 = v4)
                #This is a stub, used for indexing
            end
            def verify(p1, p2, p3 = v3)
                #This is a stub, used for indexing
            end
            def to_der()
                #This is a stub, used for indexing
            end
        end
        class Response
            # OCSP::Response
            def self.create(p1, p2)
                #This is a stub, used for indexing
            end
            def self.new(p1 = v1)
                #This is a stub, used for indexing
            end
            def status()
                #This is a stub, used for indexing
            end
            def status_string()
                #This is a stub, used for indexing
            end
            def basic()
                #This is a stub, used for indexing
            end
            def to_der()
                #This is a stub, used for indexing
            end
        end
    end
    class OpenSSLError < StandardError
    end
    class PKCS12
        # PKCS12.create(pass, name, key, cert [, ca, [, key_pbe [, cert_pbe [, key_iter [, mac_iter [, keytype]]]]]])
        #  
        # === Parameters
        # * +pass+ - string
        # * +name+ - A string describing the key.
        # * +key+ - Any PKey.
        # * +cert+ - A X509::Certificate.
        # * * The public_key portion of the certificate must contain a valid public key.
        # * * The not_before and not_after fields must be filled in.
        # * +ca+ - An optional array of X509::Certificate's.
        # * +key_pbe+ - string
        # * +cert_pbe+ - string
        # * +key_iter+ - integer
        # * +mac_iter+ - integer
        # * +keytype+ - An integer representing an MSIE specific extension.
        # 
        # Any optional arguments may be supplied as nil to preserve the OpenSSL defaults.
        # 
        # See the OpenSSL documentation for PKCS12_create().
        def self.create(p1, p2, p3, p4, p5 = v5, p6 = v6, p7 = v7, p8 = v8, p9 = v9, p10 = v10)
            #This is a stub, used for indexing
        end
        # PKCS12.new -> pkcs12
        # PKCS12.new(str) -> pkcs12
        # PKCS12.new(str, pass) -> pkcs12
        #  
        # === Parameters
        # * +str+ - Must be a DER encoded PKCS12 string.
        # * +pass+ - string
        def self.new(*several_variants)
            #This is a stub, used for indexing
        end
        def to_der()
            #This is a stub, used for indexing
        end
        class PKCS12Error < OpenSSLError
        end
    end
    module PKCS5
        # PKCS5.pbkdf2_hmac(pass, salt, iter, keylen, digest) => string
        #  
        # === Parameters
        # * +pass+ - string
        # * +salt+ - string
        # * +iter+ - integer - should be greater than 1000.  2000 is better.
        # * +keylen+ - integer
        # * +digest+ - a string or OpenSSL::Digest object.
        # 
        # Available in OpenSSL 0.9.9?.
        # 
        # Digests other than SHA1 may not be supported by other cryptography libraries.
        def self.pbkdf2_hmac(pass, salt, iter, keylen, digest)
            #This is a stub, used for indexing
        end
        # PKCS5.pbkdf2_hmac_sha1(pass, salt, iter, keylen) => string
        #  
        # === Parameters
        # * +pass+ - string
        # * +salt+ - string
        # * +iter+ - integer - should be greater than 1000.  2000 is better.
        # * +keylen+ - integer
        # 
        # This method is available almost any version OpenSSL.
        # 
        # Conforms to rfc2898.
        def self.pbkdf2_hmac_sha1(pass, salt, iter, keylen)
            #This is a stub, used for indexing
        end
        class PKCS5Error < OpenSSLError
        end
    end
    class PKCS7
        Signer = nil #value is unknown, used for indexing.
        # PKCS7.read_smime(string) => pkcs7
        #  
        def self.read_smime(string)
            #This is a stub, used for indexing
        end
        # PKCS7.write_smime(pkcs7 [, data [, flags]]) => string
        #  
        def self.write_smime(p1, p2 = v2, p3 = v3)
            #This is a stub, used for indexing
        end
        # PKCS7.sign(cert, key, data, [, certs [, flags]]) => pkcs7
        #  
        def self.sign(p1, p2, p3, p4 = v4, p5 = v5)
            #This is a stub, used for indexing
        end
        # PKCS7.encrypt(certs, data, [, cipher [, flags]]) => pkcs7
        #  
        def self.encrypt(p1, p2, p3 = v3, p4 = v4)
            #This is a stub, used for indexing
        end
        # PKCS7.new => pkcs7
        # PKCS7.new(string) => pkcs7
        #  
        # Many methods in this class aren't documented.
        def self.new(*several_variants)
            #This is a stub, used for indexing
        end
        # pkcs7.type = type => type
        #  
        def type= type
            #This is a stub, used for indexing
        end
        # pkcs7.type => string or nil
        #  
        def type()
            #This is a stub, used for indexing
        end
        def detached=(p1)
            #This is a stub, used for indexing
        end
        def detached()
            #This is a stub, used for indexing
        end
        def detached?()
            #This is a stub, used for indexing
        end
        def cipher=(p1)
            #This is a stub, used for indexing
        end
        def add_signer(p1)
            #This is a stub, used for indexing
        end
        def signers()
            #This is a stub, used for indexing
        end
        def add_recipient(p1)
            #This is a stub, used for indexing
        end
        def recipients()
            #This is a stub, used for indexing
        end
        def add_certificate(p1)
            #This is a stub, used for indexing
        end
        def certificates=(p1)
            #This is a stub, used for indexing
        end
        def certificates()
            #This is a stub, used for indexing
        end
        def add_crl(p1)
            #This is a stub, used for indexing
        end
        def crls=(p1)
            #This is a stub, used for indexing
        end
        def crls()
            #This is a stub, used for indexing
        end
        def add_data(p1)
            #This is a stub, used for indexing
        end
        alias data= add_data
        def verify(p1, p2, p3 = v3, p4 = v4)
            #This is a stub, used for indexing
        end
        def decrypt(p1, p2, p3 = v3)
            #This is a stub, used for indexing
        end
        def to_pem()
            #This is a stub, used for indexing
        end
        alias to_s to_pem
        def to_der()
            #This is a stub, used for indexing
        end
        def data=(p1)
            #This is a stub, used for indexing
        end
        def to_s()
            #This is a stub, used for indexing
        end
        class PKCS7Error < OpenSSLError
        end
        class RecipientInfo
            def self.new(p1)
                #This is a stub, used for indexing
            end
            def issuer()
                #This is a stub, used for indexing
            end
            def serial()
                #This is a stub, used for indexing
            end
            def enc_key()
                #This is a stub, used for indexing
            end
        end
        class SignerInfo
            def self.new(p1, p2, p3)
                #This is a stub, used for indexing
            end
            def issuer()
                #This is a stub, used for indexing
            end
            alias name issuer
            def serial()
                #This is a stub, used for indexing
            end
            def signed_time()
                #This is a stub, used for indexing
            end
            def name()
                #This is a stub, used for indexing
            end
        end
    end
    module PKey
        class DH < PKey
            # DH.generate(size [, generator]) -> dh
            #  
            # === Parameters
            # * +size+ is an integer representing the desired key size.  Keys smaller than 1024 should be considered insecure.
            # * +generator+ is a small number > 1, typically 2 or 5.
            def self.generate(p1, p2 = v2)
                #This is a stub, used for indexing
            end
            # DH.new([size [, generator] | string]) -> dh
            #  
            # === Parameters
            # * +size+ is an integer representing the desired key size.  Keys smaller than 1024 should be considered insecure.
            # * +generator+ is a small number > 1, typically 2 or 5.
            # * +string+ contains the DER or PEM encoded key.
            # 
            # === Examples
            # * DH.new -> dh
            # * DH.new(1024) -> dh
            # * DH.new(1024, 5) -> dh
            # * DH.new(File.read('key.pem')) -> dh
            def self.new(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            # dh.public? -> true | false
            #  
            def public?()
                #This is a stub, used for indexing
            end
            # dh.private? -> true | false
            #  
            def private?()
                #This is a stub, used for indexing
            end
            # dh.to_text -> aString
            #  
            # Prints all parameters of key to buffer
            # INSECURE: PRIVATE INFORMATIONS CAN LEAK OUT!!!
            # Don't use :-)) (I's up to you)
            def to_text()
                #This is a stub, used for indexing
            end
            # dh.to_pem -> aString
            #  
            def export()
                #This is a stub, used for indexing
            end
            alias to_pem export
            alias to_s export
            # dh.to_der -> aString
            #  
            def to_der()
                #This is a stub, used for indexing
            end
            # dh.public_key -> aDH
            #  
            # Makes new instance DH PUBLIC_KEY from PRIVATE_KEY
            def public_key()
                #This is a stub, used for indexing
            end
            # dh.check_params -> true | false
            #  
            def params_ok?()
                #This is a stub, used for indexing
            end
            # dh.generate_key -> self
            #  
            def generate_key!()
                #This is a stub, used for indexing
            end
            # dh.compute_key(pub_bn) -> aString
            #  
            # === Parameters
            # * +pub_bn+ is a OpenSSL::BN.
            # 
            # Returns aString containing a shared secret computed from the other parties public value.
            # 
            # See DH_compute_key() for further information.
            def compute_key(pub_bn)
                #This is a stub, used for indexing
            end
            # dh.params -> hash
            #  
            # Stores all parameters of key to the hash
            # INSECURE: PRIVATE INFORMATIONS CAN LEAK OUT!!!
            # Don't use :-)) (I's up to you)
            def params()
                #This is a stub, used for indexing
            end
            def to_pem()
                #This is a stub, used for indexing
            end
            def to_s()
                #This is a stub, used for indexing
            end
        end
        class DHError < PKeyError
        end
        class DSA < PKey
            # DSA.generate(size) -> dsa
            #  
            # === Parameters
            # * +size+ is an integer representing the desired key size.
            def self.generate(size)
                #This is a stub, used for indexing
            end
            # DSA.new([size | string [, pass]) -> dsa
            #  
            # === Parameters
            # * +size+ is an integer representing the desired key size.
            # * +string+ contains a DER or PEM encoded key.
            # * +pass+ is a string that contains a optional password.
            # 
            # === Examples
            # * DSA.new -> dsa
            # * DSA.new(1024) -> dsa
            # * DSA.new(File.read('dsa.pem')) -> dsa
            # * DSA.new(File.read('dsa.pem'), 'mypassword') -> dsa
            def self.new(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            # dsa.public? -> true | false
            #  
            def public?()
                #This is a stub, used for indexing
            end
            # dsa.private? -> true | false
            #  
            def private?()
                #This is a stub, used for indexing
            end
            # dsa.to_text -> aString
            #  
            # Prints all parameters of key to buffer
            # INSECURE: PRIVATE INFORMATIONS CAN LEAK OUT!!!
            # Don't use :-)) (I's up to you)
            def to_text()
                #This is a stub, used for indexing
            end
            # dsa.to_pem([cipher, password]) -> aString
            #  
            # === Parameters
            # +cipher+ is an OpenSSL::Cipher.
            # +password+ is a string containing your password.
            # 
            # === Examples
            # * DSA.to_pem -> aString
            # * DSA.to_pem(cipher, 'mypassword') -> aString
            def export(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            alias to_pem export
            alias to_s export
            # dsa.to_der -> aString
            #  
            def to_der()
                #This is a stub, used for indexing
            end
            # dsa.public_key -> aDSA
            #  
            # Makes new instance DSA PUBLIC_KEY from PRIVATE_KEY
            def public_key()
                #This is a stub, used for indexing
            end
            # dsa.syssign(string) -> aString
            #  
            def syssign(string)
                #This is a stub, used for indexing
            end
            # dsa.sysverify(digest, sig) -> true | false
            #  
            def sysverify(digest, sig)
                #This is a stub, used for indexing
            end
            # dsa.params -> hash
            #  
            # Stores all parameters of key to the hash
            # INSECURE: PRIVATE INFORMATIONS CAN LEAK OUT!!!
            # Don't use :-)) (I's up to you)
            def params()
                #This is a stub, used for indexing
            end
            def to_pem(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            def to_s(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
        end
        class DSAError < PKeyError
        end
        class EC < PKey
            NAMED_CURVE = nil #value is unknown, used for indexing.
            # EC.builtin_curves => [[name, comment], ...]
            #  
            # See the OpenSSL documentation for EC_builtin_curves()
            def self.builtin_curves()
                #This is a stub, used for indexing
            end
            # OpenSSL::PKey::EC.new()
            # OpenSSL::PKey::EC.new(ec_key)
            # OpenSSL::PKey::EC.new(ec_group)
            # OpenSSL::PKey::EC.new("secp112r1")
            # OpenSSL::PKey::EC.new(pem_string)
            # OpenSSL::PKey::EC.new(der_string)
            #  
            # See the OpenSSL documentation for:
            #    EC_KEY_*
            def self.new(*several_variants)
                #This is a stub, used for indexing
            end
            # key.group   => group
            #  
            # Returns a constant <code>OpenSSL::EC::Group</code> that is tied to the key.
            # Modifying the returned group can make the key invalid.
            def group()
                #This is a stub, used for indexing
            end
            # key.group = group   => group
            #  
            # Returns the same object passed, not the group object associated with the key.
            # If you wish to access the group object tied to the key call key.group after setting
            # the group.
            # 
            # Setting the group will immediately destroy any previously assigned group object.
            # The group is internally copied by OpenSSL.  Modifying the original group after
            # assignment will not effect the internal key structure.
            # (your changes may be lost).  BE CAREFUL.
            # 
            # EC_KEY_set_group calls EC_GROUP_free(key->group) then EC_GROUP_dup(), not EC_GROUP_copy.
            # This documentation is accurate for OpenSSL 0.9.8b.
            def group= group
                #This is a stub, used for indexing
            end
            # key.private_key   => OpenSSL::BN
            #  
            # See the OpenSSL documentation for EC_KEY_get0_private_key()
            def private_key()
                #This is a stub, used for indexing
            end
            # key.private_key = openssl_bn
            #  
            # See the OpenSSL documentation for EC_KEY_set_private_key()
            def private_key= openssl_bn
                #This is a stub, used for indexing
            end
            # key.public_key   => OpenSSL::PKey::EC::Point
            #  
            # See the OpenSSL documentation for EC_KEY_get0_public_key()
            def public_key()
                #This is a stub, used for indexing
            end
            # key.public_key = ec_point
            #  
            # See the OpenSSL documentation for EC_KEY_set_public_key()
            def public_key= ec_point
                #This is a stub, used for indexing
            end
            # key.private_key? => true or false
            #  
            # Both public_key? and private_key? may return false at the same time unlike other PKey classes.
            def private_key?()
                #This is a stub, used for indexing
            end
            # key.public_key? => true or false
            #  
            # Both public_key? and private_key? may return false at the same time unlike other PKey classes.
            def public_key?()
                #This is a stub, used for indexing
            end
            # key.generate_key   => self
            #  
            # See the OpenSSL documentation for EC_KEY_generate_key()
            def generate_key()
                #This is a stub, used for indexing
            end
            # key.check_key   => true
            #  
            # Raises an exception if the key is invalid.
            # 
            # See the OpenSSL documentation for EC_KEY_check_key()
            def check_key()
                #This is a stub, used for indexing
            end
            # key.dh_compute_key(pubkey)   => String
            #  
            # See the OpenSSL documentation for ECDH_compute_key()
            def dh_compute_key(pubkey)
                #This is a stub, used for indexing
            end
            # key.dsa_sign_asn1(data)   => String
            #  
            # See the OpenSSL documentation for ECDSA_sign()
            def dsa_sign_asn1(data)
                #This is a stub, used for indexing
            end
            # key.dsa_verify_asn1(data, sig)   => true or false
            #  
            # See the OpenSSL documentation for ECDSA_verify()
            def dsa_verify_asn1(data, sig)
                #This is a stub, used for indexing
            end
            # key.to_pem   => String
            #  
            # See the OpenSSL documentation for PEM_write_bio_ECPrivateKey()
            def to_pem()
                #This is a stub, used for indexing
            end
            # key.to_der   => String
            #  
            # See the OpenSSL documentation for i2d_ECPrivateKey_bio()
            def to_der()
                #This is a stub, used for indexing
            end
            # key.to_text   => String
            #  
            # See the OpenSSL documentation for EC_KEY_print()
            def to_text()
                #This is a stub, used for indexing
            end
            class Group
                # OpenSSL::PKey::EC::Group.new("secp112r1")
                # OpenSSL::PKey::EC::Group.new(ec_group)
                # OpenSSL::PKey::EC::Group.new(pem_string)
                # OpenSSL::PKey::EC::Group.new(der_string)
                # OpenSSL::PKey::EC::Group.new(pem_file)
                # OpenSSL::PKey::EC::Group.new(der_file)
                # OpenSSL::PKey::EC::Group.new(:GFp_simple)
                # OpenSSL::PKey::EC::Group.new(:GFp_mult)
                # OpenSSL::PKey::EC::Group.new(:GFp_nist)
                # OpenSSL::PKey::EC::Group.new(:GF2m_simple)
                # OpenSSL::PKey::EC::Group.new(:GFp, bignum_p, bignum_a, bignum_b)
                # OpenSSL::PKey::EC::Group.new(:GF2m, bignum_p, bignum_a, bignum_b)
                #  
                # See the OpenSSL documentation for EC_GROUP_*
                def self.new(*several_variants)
                    #This is a stub, used for indexing
                end
                # group1 == group2   => true | false
                #  
                def eql?(p1)
                    #This is a stub, used for indexing
                end
                alias == eql?
                # group.generator   => ec_point
                #  
                # See the OpenSSL documentation for EC_GROUP_get0_generator()
                def generator()
                    #This is a stub, used for indexing
                end
                # group.set_generator(generator, order, cofactor)   => self
                #  
                # See the OpenSSL documentation for EC_GROUP_set_generator()
                def set_generator(generator, order, cofactor)
                    #This is a stub, used for indexing
                end
                # group.get_order   => order_bn
                #  
                # See the OpenSSL documentation for EC_GROUP_get_order()
                def order()
                    #This is a stub, used for indexing
                end
                # group.get_cofactor   => cofactor_bn
                #  
                # See the OpenSSL documentation for EC_GROUP_get_cofactor()
                def cofactor()
                    #This is a stub, used for indexing
                end
                # group.curve_name  => String
                #  
                # See the OpenSSL documentation for EC_GROUP_get_curve_name()
                def curve_name()
                    #This is a stub, used for indexing
                end
                # group.asn1_flag  => Fixnum
                #  
                # See the OpenSSL documentation for EC_GROUP_get_asn1_flag()
                def asn1_flag()
                    #This is a stub, used for indexing
                end
                # group.asn1_flag = Fixnum   => Fixnum
                #  
                # See the OpenSSL documentation for EC_GROUP_set_asn1_flag()
                def asn1_flag=(p1)
                    #This is a stub, used for indexing
                end
                # group.point_conversion_form  => :uncompressed | :compressed | :hybrid
                #  
                # See the OpenSSL documentation for EC_GROUP_get_point_conversion_form()
                def point_conversion_form()
                    #This is a stub, used for indexing
                end
                # group.point_conversion_form = form => form
                #  
                # See the OpenSSL documentation for EC_GROUP_set_point_conversion_form()
                def point_conversion_form= form
                    #This is a stub, used for indexing
                end
                # group.seed   => String or nil
                #  
                # See the OpenSSL documentation for EC_GROUP_get0_seed()
                def seed()
                    #This is a stub, used for indexing
                end
                # group.seed = seed  => seed
                #  
                # See the OpenSSL documentation for EC_GROUP_set_seed()
                def seed= seed
                    #This is a stub, used for indexing
                end
                # group.degree   => Fixnum
                #  
                # See the OpenSSL documentation for EC_GROUP_get_degree()
                def degree()
                    #This is a stub, used for indexing
                end
                # group.to_pem   => String
                #  
                # See the OpenSSL documentation for PEM_write_bio_ECPKParameters()
                def to_pem()
                    #This is a stub, used for indexing
                end
                # group.to_der   => String
                #  
                # See the OpenSSL documentation for i2d_ECPKParameters_bio()
                def to_der()
                    #This is a stub, used for indexing
                end
                # group.to_text   => String
                #  
                # See the OpenSSL documentation for ECPKParameters_print()
                def to_text()
                    #This is a stub, used for indexing
                end
                def ==(p1)
                    #This is a stub, used for indexing
                end
                class Error < OpenSSLError
                end
            end
            class Point
                # OpenSSL::PKey::EC::Point.new(point)
                # OpenSSL::PKey::EC::Point.new(group)
                # OpenSSL::PKey::EC::Point.new(group, bn)
                #  
                # See the OpenSSL documentation for EC_POINT_*
                def self.new(*several_variants)
                    #This is a stub, used for indexing
                end
                # point1 == point2 => true | false
                #  
                def eql?(p1)
                    #This is a stub, used for indexing
                end
                alias == eql?
                # point.infinity? => true | false
                #  
                def infinity?()
                    #This is a stub, used for indexing
                end
                # point.on_curve? => true | false
                #  
                def on_curve?()
                    #This is a stub, used for indexing
                end
                # point.make_affine! => self
                #  
                def make_affine!()
                    #This is a stub, used for indexing
                end
                # point.invert! => self
                #  
                def invert!()
                    #This is a stub, used for indexing
                end
                # point.set_to_infinity! => self
                #  
                def set_to_infinity!()
                    #This is a stub, used for indexing
                end
                # point.to_bn   => OpenSSL::BN
                #  
                # See the OpenSSL documentation for EC_POINT_point2bn()
                def to_bn()
                    #This is a stub, used for indexing
                end
                def ==(p1)
                    #This is a stub, used for indexing
                end
                class Error < OpenSSLError
                end
            end
        end
        class ECError < PKeyError
        end
        class PKey
            def self.new()
                #This is a stub, used for indexing
            end
            def sign(p1, p2)
                #This is a stub, used for indexing
            end
            def verify(p1, p2, p3)
                #This is a stub, used for indexing
            end
        end
        class PKeyError < OpenSSLError
        end
        class RSA < PKey
            # RSA.generate(size [, exponent]) -> rsa
            #  
            # === Parameters
            # * +size+ is an integer representing the desired key size.  Keys smaller than 1024 should be considered insecure.
            # * +exponent+ is an odd number normally 3, 17, or 65537.
            def self.generate(p1, p2 = v2)
                #This is a stub, used for indexing
            end
            # RSA.new([size | encoded_key] [, pass]) -> rsa
            #  
            # === Parameters
            # * +size+ is an integer representing the desired key size.
            # * +encoded_key+ is a string containing PEM or DER encoded key.
            # * +pass+ is an optional string with the password to decrypt the encoded key.
            # 
            # === Examples
            # * RSA.new(2048) -> rsa
            # * RSA.new(File.read("rsa.pem")) -> rsa
            # * RSA.new(File.read("rsa.pem"), "mypassword") -> rsa
            def self.new(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            # rsa.public? -> true
            #  
            # The return value is always true since every private key is also a public key.
            def public?()
                #This is a stub, used for indexing
            end
            # rsa.private? -> true | false
            #  
            def private?()
                #This is a stub, used for indexing
            end
            # rsa.to_text -> aString
            #  
            # Prints all parameters of key to buffer
            # INSECURE: PRIVATE INFORMATIONS CAN LEAK OUT!!!
            # Don't use :-)) (It's up to you)
            def to_text()
                #This is a stub, used for indexing
            end
            # rsa.to_pem([cipher, pass]) -> aString
            #  
            # === Parameters
            # * +cipher+ is a Cipher object.
            # * +pass+ is a string.
            # 
            # === Examples
            # * rsa.to_pem -> aString
            # * rsa.to_pem(cipher, pass) -> aString
            def export(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            alias to_pem export
            alias to_s export
            # rsa.to_der -> aString
            #  
            def to_der()
                #This is a stub, used for indexing
            end
            # rsa.public_key -> aRSA
            #  
            # Makes new instance RSA PUBLIC_KEY from PRIVATE_KEY
            def public_key()
                #This is a stub, used for indexing
            end
            # rsa.public_encrypt(string [, padding]) -> aString
            #  
            def public_encrypt(p1, p2 = v2)
                #This is a stub, used for indexing
            end
            # rsa.public_decrypt(string [, padding]) -> aString
            #  
            def public_decrypt(p1, p2 = v2)
                #This is a stub, used for indexing
            end
            # rsa.private_encrypt(string [, padding]) -> aString
            #  
            def private_encrypt(p1, p2 = v2)
                #This is a stub, used for indexing
            end
            # rsa.private_decrypt(string [, padding]) -> aString
            #  
            def private_decrypt(p1, p2 = v2)
                #This is a stub, used for indexing
            end
            # rsa.params -> hash
            #  
            # Stores all parameters of key to the hash
            # INSECURE: PRIVATE INFORMATIONS CAN LEAK OUT!!!
            # Don't use :-)) (I's up to you)
            def params()
                #This is a stub, used for indexing
            end
            def blinding_on!()
                #This is a stub, used for indexing
            end
            def blinding_off!()
                #This is a stub, used for indexing
            end
            def to_pem(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            def to_s(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
        end
        class RSAError < PKeyError
        end
    end
    module Random
        class RandomError < OpenSSLError
        end
    end
    module SSL
        class SSLContext
            SESSION_CACHE_OFF = nil #value is unknown, used for indexing.
            SESSION_CACHE_CLIENT = nil #value is unknown, used for indexing.
            SESSION_CACHE_SERVER = nil #value is unknown, used for indexing.
            SESSION_CACHE_BOTH = nil #value is unknown, used for indexing.
            SESSION_CACHE_NO_AUTO_CLEAR = nil #value is unknown, used for indexing.
            SESSION_CACHE_NO_INTERNAL_LOOKUP = nil #value is unknown, used for indexing.
            SESSION_CACHE_NO_INTERNAL_STORE = nil #value is unknown, used for indexing.
            SESSION_CACHE_NO_INTERNAL = nil #value is unknown, used for indexing.
            # holds a list of available SSL/TLS methods   
            METHODS = nil #value is unknown, used for indexing.
            # SSLContext.new => ctx
            # SSLContext.new(:TLSv1) => ctx
            # SSLContext.new("SSLv23_client") => ctx
            #  
            # You can get a list of valid methods with OpenSSL::SSL::SSLContext::METHODS
            def self.new(*several_variants)
                #This is a stub, used for indexing
            end
            def ssl_version=(p1)
                #This is a stub, used for indexing
            end
            # ctx.ciphers => [[name, version, bits, alg_bits], ...]
            #  
            def ciphers()
                #This is a stub, used for indexing
            end
            # ctx.ciphers = "cipher1:cipher2:..."
            # ctx.ciphers = [name, ...]
            # ctx.ciphers = [[name, version, bits, alg_bits], ...]
            #  
            def ciphers=(p1)
                #This is a stub, used for indexing
            end
            # ctx.setup => Qtrue # first time
            # ctx.setup => nil # thereafter
            #  
            # This method is called automatically when a new SSLSocket is created.
            # Normally you do not need to call this method (unless you are writing an extension in C).
            def setup(*several_variants)
                #This is a stub, used for indexing
            end
            # ctx.session_add(session) -> true | false
            #  
            def session_add(session)
                #This is a stub, used for indexing
            end
            # ctx.session_remove(session) -> true | false
            #  
            def session_remove(session)
                #This is a stub, used for indexing
            end
            # ctx.session_cache_mode -> integer
            #  
            def session_cache_mode()
                #This is a stub, used for indexing
            end
            # ctx.session_cache_mode=(integer) -> integer
            #  
            def session_cache_mode=(integer)
                #This is a stub, used for indexing
            end
            # ctx.session_cache_size -> integer
            #  
            def session_cache_size()
                #This is a stub, used for indexing
            end
            # ctx.session_cache_size=(integer) -> integer
            #  
            def session_cache_size=(integer)
                #This is a stub, used for indexing
            end
            # ctx.session_cache_stats -> Hash
            #  
            def session_cache_stats()
                #This is a stub, used for indexing
            end
            # ctx.flush_sessions(time | nil) -> self
            #  
            def flush_sessions(p1 = v1)
                #This is a stub, used for indexing
            end
        end
        class SSLError < OpenSSLError
        end
        class SSLSocket
            # SSLSocket.new(io) => aSSLSocket
            # SSLSocket.new(io, ctx) => aSSLSocket
            #  
            # === Parameters
            # * +io+ is a real ruby IO object.  Not an IO like object that responds to read/write.
            # * +ctx+ is an OpenSSLSSL::SSLContext.
            # 
            # The OpenSSL::Buffering module provides additional IO methods.
            # 
            # This method will freeze the SSLContext if one is provided;
            # however, session management is still allowed in the frozen SSLContext.
            def self.new(*several_variants)
                #This is a stub, used for indexing
            end
            # ssl.connect => self
            #  
            def connect()
                #This is a stub, used for indexing
            end
            # ssl.connect_nonblock => self
            #  
            # initiate the TLS/SSL handshake as a client in non-blocking manner.
            # 
            #   # emulates blocking connect
            #   begin
            #     ssl.connect_nonblock
            #   rescue IO::WaitReadable
            #     IO.select([s2])
            #     retry
            #   rescue IO::WaitWritable
            #     IO.select(nil, [s2])
            #     retry
            #   end
            def connect_nonblock()
                #This is a stub, used for indexing
            end
            # ssl.accept => self
            #  
            def accept()
                #This is a stub, used for indexing
            end
            # ssl.accept_nonblock => self
            #  
            # initiate the TLS/SSL handshake as a server in non-blocking manner.
            # 
            #   # emulates blocking accept
            #   begin
            #     ssl.accept_nonblock
            #   rescue IO::WaitReadable
            #     IO.select([s2])
            #     retry
            #   rescue IO::WaitWritable
            #     IO.select(nil, [s2])
            #     retry
            #   end
            def accept_nonblock()
                #This is a stub, used for indexing
            end
            # ssl.sysread(length) => string
            # ssl.sysread(length, buffer) => buffer
            #  
            # === Parameters
            # * +length+ is a positive integer.
            # * +buffer+ is a string used to store the result.
            def sysread(*several_variants)
                #This is a stub, used for indexing
            end
            # ssl.sysread_nonblock(length) => string
            # ssl.sysread_nonblock(length, buffer) => buffer
            #  
            # === Parameters
            # * +length+ is a positive integer.
            # * +buffer+ is a string used to store the result.
            def sysread_nonblock(*several_variants)
                #This is a stub, used for indexing
            end
            # ssl.syswrite(string) => integer
            #  
            def syswrite(string)
                #This is a stub, used for indexing
            end
            # ssl.syswrite_nonblock(string) => integer
            #  
            def syswrite_nonblock(string)
                #This is a stub, used for indexing
            end
            # ssl.sysclose => nil
            #  
            def sysclose()
                #This is a stub, used for indexing
            end
            # ssl.cert => cert or nil
            #  
            def cert()
                #This is a stub, used for indexing
            end
            # ssl.peer_cert => cert or nil
            #  
            def peer_cert()
                #This is a stub, used for indexing
            end
            # ssl.peer_cert_chain => [cert, ...] or nil
            #  
            def peer_cert_chain()
                #This is a stub, used for indexing
            end
            # ssl.cipher => [name, version, bits, alg_bits]
            #  
            def cipher()
                #This is a stub, used for indexing
            end
            # ssl.state => string
            #  
            def state()
                #This is a stub, used for indexing
            end
            # ssl.pending => integer
            #  
            def pending()
                #This is a stub, used for indexing
            end
            # ssl.session_reused? -> true | false
            #  
            def session_reused?()
                #This is a stub, used for indexing
            end
            # ssl.session = session -> session
            #  
            def session= session
                #This is a stub, used for indexing
            end
            def verify_result()
                #This is a stub, used for indexing
            end
        end
        class Session
            # Session.new(SSLSocket | string) => session
            #  
            # === Parameters
            # +SSLSocket+ is an OpenSSL::SSL::SSLSocket
            # +string+ must be a DER or PEM encoded Session.
            def self.new(p1)
                #This is a stub, used for indexing
            end
            # session1 == session2 -> boolean
            #  
            def == session2
                #This is a stub, used for indexing
            end
            # session.time -> Time
            #  
            def time()
                #This is a stub, used for indexing
            end
            # session.timeout -> integer
            #  
            # How long until the session expires in seconds.
            def timeout()
                #This is a stub, used for indexing
            end
            # session.id -> aString
            #  
            # Returns the Session ID.
            def id()
                #This is a stub, used for indexing
            end
            # session.to_der -> aString
            #  
            # Returns an ASN1 encoded String that contains the Session object.
            def to_der()
                #This is a stub, used for indexing
            end
            # session.to_pem -> String
            #  
            # Returns a PEM encoded String that contains the Session object.
            def to_pem()
                #This is a stub, used for indexing
            end
            # session.to_text -> String
            #  
            # Shows everything in the Session object.
            def to_text()
                #This is a stub, used for indexing
            end
            class SessionError < OpenSSLError
            end
        end
    end
    module X509
        class Attribute
            # Attribute.new(oid [, value]) => attr
            #  
            def self.new(p1, p2 = v2)
                #This is a stub, used for indexing
            end
            # attr.oid = string => string
            #  
            def oid= string
                #This is a stub, used for indexing
            end
            # attr.oid => string
            #  
            def oid()
                #This is a stub, used for indexing
            end
            # attr.value = asn1 => asn1
            #  
            def value= asn1
                #This is a stub, used for indexing
            end
            # attr.value => asn1
            #  
            def value()
                #This is a stub, used for indexing
            end
            # attr.to_der => string
            #  
            def to_der()
                #This is a stub, used for indexing
            end
        end
        class AttributeError < OpenSSLError
        end
        class CRL
            def self.new(p1 = v1)
                #This is a stub, used for indexing
            end
            def version()
                #This is a stub, used for indexing
            end
            def version=(p1)
                #This is a stub, used for indexing
            end
            def signature_algorithm()
                #This is a stub, used for indexing
            end
            def issuer()
                #This is a stub, used for indexing
            end
            def issuer=(p1)
                #This is a stub, used for indexing
            end
            def last_update()
                #This is a stub, used for indexing
            end
            def last_update=(p1)
                #This is a stub, used for indexing
            end
            def next_update()
                #This is a stub, used for indexing
            end
            def next_update=(p1)
                #This is a stub, used for indexing
            end
            def revoked()
                #This is a stub, used for indexing
            end
            def revoked=(p1)
                #This is a stub, used for indexing
            end
            def add_revoked(p1)
                #This is a stub, used for indexing
            end
            def sign(p1, p2)
                #This is a stub, used for indexing
            end
            def verify(p1)
                #This is a stub, used for indexing
            end
            def to_der()
                #This is a stub, used for indexing
            end
            def to_pem()
                #This is a stub, used for indexing
            end
            alias to_s to_pem
            def to_text()
                #This is a stub, used for indexing
            end
            # Gets X509v3 extensions as array of X509Ext objects
            def extensions()
                #This is a stub, used for indexing
            end
            # Sets X509_EXTENSIONs
            def extensions=(p1)
                #This is a stub, used for indexing
            end
            def add_extension(p1)
                #This is a stub, used for indexing
            end
            def to_s()
                #This is a stub, used for indexing
            end
        end
        class CRLError < OpenSSLError
        end
        class Certificate
            # Certificate.new => cert
            # Certificate.new(string) => cert
            #  
            def self.new(*several_variants)
                #This is a stub, used for indexing
            end
            # cert.to_der => string
            #  
            def to_der()
                #This is a stub, used for indexing
            end
            # cert.to_pem => string
            #  
            def to_pem()
                #This is a stub, used for indexing
            end
            alias to_s to_pem
            # cert.to_text => string
            #  
            def to_text()
                #This is a stub, used for indexing
            end
            # cert.version => integer
            #  
            def version()
                #This is a stub, used for indexing
            end
            # cert.version = integer => integer
            #  
            def version= integer
                #This is a stub, used for indexing
            end
            # cert.signature_algorithm => string
            #  
            def signature_algorithm()
                #This is a stub, used for indexing
            end
            # cert.serial => integer
            #  
            def serial()
                #This is a stub, used for indexing
            end
            # cert.serial = integer => integer
            #  
            def serial= integer
                #This is a stub, used for indexing
            end
            # cert.subject => name
            #  
            def subject()
                #This is a stub, used for indexing
            end
            # cert.subject = name => name
            #  
            def subject= name
                #This is a stub, used for indexing
            end
            # cert.issuer => name
            #  
            def issuer()
                #This is a stub, used for indexing
            end
            # cert.issuer = name => name
            #  
            def issuer= name
                #This is a stub, used for indexing
            end
            # cert.not_before => time
            #  
            def not_before()
                #This is a stub, used for indexing
            end
            # cert.not_before = time => time
            #  
            def not_before= time
                #This is a stub, used for indexing
            end
            # cert.not_after => time
            #  
            def not_after()
                #This is a stub, used for indexing
            end
            # cert.not_before = time => time
            #  
            def not_after=(p1)
                #This is a stub, used for indexing
            end
            # cert.public_key => key
            #  
            def public_key()
                #This is a stub, used for indexing
            end
            # cert.public_key = key => key
            #  
            def public_key= key
                #This is a stub, used for indexing
            end
            # cert.sign(key, digest) => self
            #  
            def sign(key, digest)
                #This is a stub, used for indexing
            end
            # cert.verify(key) => true | false
            #  
            # Checks that cert signature is made with PRIVversion of this PUBLIC 'key'
            def verify(key)
                #This is a stub, used for indexing
            end
            # cert.check_private_key(key)
            #  
            # Checks if 'key' is PRIV key for this cert
            def check_private_key(key)
                #This is a stub, used for indexing
            end
            # cert.extensions => [extension...]
            #  
            def extensions()
                #This is a stub, used for indexing
            end
            # cert.extensions = [ext...] => [ext...]
            #  
            def extensions=(p1)
                #This is a stub, used for indexing
            end
            # cert.add_extension(extension) => extension
            #  
            def add_extension(extension)
                #This is a stub, used for indexing
            end
            def inspect()
                #This is a stub, used for indexing
            end
            def to_s()
                #This is a stub, used for indexing
            end
        end
        class CertificateError < OpenSSLError
        end
        class Extension
            def self.new(p1, p2 = v2, p3 = v3)
                #This is a stub, used for indexing
            end
            def oid=(p1)
                #This is a stub, used for indexing
            end
            def value=(p1)
                #This is a stub, used for indexing
            end
            def critical=(p1)
                #This is a stub, used for indexing
            end
            def oid()
                #This is a stub, used for indexing
            end
            def value()
                #This is a stub, used for indexing
            end
            def critical?()
                #This is a stub, used for indexing
            end
            def to_der()
                #This is a stub, used for indexing
            end
        end
        class ExtensionError < OpenSSLError
        end
        class ExtensionFactory
            def self.new(p1 = v1, p2 = v2, p3 = v3, p4 = v4)
                #This is a stub, used for indexing
            end
            def issuer_certificate=(p1)
                #This is a stub, used for indexing
            end
            def subject_certificate=(p1)
                #This is a stub, used for indexing
            end
            def subject_request=(p1)
                #This is a stub, used for indexing
            end
            def crl=(p1)
                #This is a stub, used for indexing
            end
            def config=(p1)
                #This is a stub, used for indexing
            end
            # Array to X509_EXTENSION
            # Structure:
            # ["ln", "value", bool_critical] or
            # ["sn", "value", bool_critical] or
            # ["ln", "critical,value"] or the same for sn
            # ["ln", "value"] => not critical
            def create_ext(p1, p2, p3 = v3)
                #This is a stub, used for indexing
            end
        end
        class Name
            DEFAULT_OBJECT_TYPE = nil #value is unknown, used for indexing.
            OBJECT_TYPE_TEMPLATE = nil #value is unknown, used for indexing.
            COMPAT = nil #value is unknown, used for indexing.
            RFC2253 = nil #value is unknown, used for indexing.
            ONELINE = nil #value is unknown, used for indexing.
            MULTILINE = nil #value is unknown, used for indexing.
            # X509::Name.new => name
            # X509::Name.new(string) => name
            # X509::Name.new(dn) => name
            # X509::Name.new(dn, template) => name
            #  
            def self.new(*several_variants)
                #This is a stub, used for indexing
            end
            # name.add_entry(oid, value [, type]) => self
            #  
            def add_entry(p1, p2, p3 = v3)
                #This is a stub, used for indexing
            end
            # name.to_s => string
            # name.to_s(integer) => string
            #  
            def to_s(*several_variants)
                #This is a stub, used for indexing
            end
            # name.to_a => [[name, data, type], ...]
            #  
            def to_a()
                #This is a stub, used for indexing
            end
            def cmp(p1)
                #This is a stub, used for indexing
            end
            alias <=> cmp
            def eql?(p1)
                #This is a stub, used for indexing
            end
            # name.hash => integer
            #  
            def hash()
                #This is a stub, used for indexing
            end
            # name.to_der => string
            #  
            def to_der()
                #This is a stub, used for indexing
            end
            def <=>(p1)
                #This is a stub, used for indexing
            end
        end
        class NameError < OpenSSLError
        end
        class Request
            def self.new(p1 = v1)
                #This is a stub, used for indexing
            end
            def to_pem()
                #This is a stub, used for indexing
            end
            alias to_s to_pem
            def to_der()
                #This is a stub, used for indexing
            end
            def to_text()
                #This is a stub, used for indexing
            end
            def version()
                #This is a stub, used for indexing
            end
            def version=(p1)
                #This is a stub, used for indexing
            end
            def subject()
                #This is a stub, used for indexing
            end
            def subject=(p1)
                #This is a stub, used for indexing
            end
            def signature_algorithm()
                #This is a stub, used for indexing
            end
            def public_key()
                #This is a stub, used for indexing
            end
            def public_key=(p1)
                #This is a stub, used for indexing
            end
            def sign(p1, p2)
                #This is a stub, used for indexing
            end
            # Checks that cert signature is made with PRIVversion of this PUBLIC 'key'
            def verify(p1)
                #This is a stub, used for indexing
            end
            def attributes()
                #This is a stub, used for indexing
            end
            def attributes=(p1)
                #This is a stub, used for indexing
            end
            def add_attribute(p1)
                #This is a stub, used for indexing
            end
            def to_s()
                #This is a stub, used for indexing
            end
        end
        class RequestError < OpenSSLError
        end
        class Revoked
            def self.new(*args)
                #This is a stub, used for indexing
            end
            def serial()
                #This is a stub, used for indexing
            end
            def serial=(p1)
                #This is a stub, used for indexing
            end
            def time()
                #This is a stub, used for indexing
            end
            def time=(p1)
                #This is a stub, used for indexing
            end
            # Gets X509v3 extensions as array of X509Ext objects
            def extensions()
                #This is a stub, used for indexing
            end
            # Sets X509_EXTENSIONs
            def extensions=(p1)
                #This is a stub, used for indexing
            end
            def add_extension(p1)
                #This is a stub, used for indexing
            end
        end
        class RevokedError < OpenSSLError
        end
        class Store
            # X509::Store.new => store
            #  
            def self.new()
                #This is a stub, used for indexing
            end
            # General callback for OpenSSL verify
            def verify_callback=(p1)
                #This is a stub, used for indexing
            end
            def flags=(p1)
                #This is a stub, used for indexing
            end
            def purpose=(p1)
                #This is a stub, used for indexing
            end
            def trust=(p1)
                #This is a stub, used for indexing
            end
            def time=(p1)
                #This is a stub, used for indexing
            end
            def add_path(p1)
                #This is a stub, used for indexing
            end
            def add_file(p1)
                #This is a stub, used for indexing
            end
            def set_default_paths()
                #This is a stub, used for indexing
            end
            def add_cert(p1)
                #This is a stub, used for indexing
            end
            def add_crl(p1)
                #This is a stub, used for indexing
            end
            def verify(p1, p2 = v2)
                #This is a stub, used for indexing
            end
        end
        class StoreContext
        end
        class StoreError < OpenSSLError
        end
    end
end
