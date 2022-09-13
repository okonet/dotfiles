=begin
 This is a machine generated stub using stdlib-doc for <b>module OpenSSL</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

# OpenSSL provides SSL, TLS and general purpose cryptography.  It wraps the
# OpenSSL[http://www.openssl.org/] library.
# 
# = Examples
# 
# All examples assume you have loaded OpenSSL with:
# 
#   require 'openssl'
# 
# These examples build atop each other.  For example the key created in the
# next is used in throughout these examples.
# 
# == Keys
# 
# === Creating a Key
# 
# This example creates a 2048 bit RSA keypair and writes it to the current
# directory.
# 
#   key = OpenSSL::PKey::RSA.new 2048
# 
#   open 'private_key.pem', 'w' do |io| io.write key.to_pem end
#   open 'public_key.pem', 'w' do |io| io.write key.public_key.to_pem end
# 
# === Exporting a Key
# 
# Keys saved to disk without encryption are not secure as anyone who gets
# ahold of the key may use it unless it is encrypted.  In order to securely
# export a key you may export it with a pass phrase.
# 
#   cipher = OpenSSL::Cipher.new 'AES-128-CBC'
#   pass_phrase = 'my secure pass phrase goes here'
# 
#   key_secure = key.export cipher, pass_phrase
# 
#   open 'private.secure.pem', 'w' do |io|
#     io.write key_secure
#   end
# 
# OpenSSL::Cipher.ciphers returns a list of available ciphers.
# 
# === Loading a Key
# 
# A key can also be loaded from a file.
# 
#   key2 = OpenSSL::PKey::RSA.new File.read 'private_key.pem'
#   key2.public? # => true
# 
# or
# 
#   key3 = OpenSSL::PKey::RSA.new File.read 'public_key.pem'
#   key3.private? # => false
# 
# === Loading an Encrypted Key
# 
# OpenSSL will prompt you for your pass phrase when loading an encrypted key.
# If you will not be able to type in the pass phrase you may provide it when
# loading the key:
# 
#   key4_pem = File.read 'private.secure.pem'
#   key4 = OpenSSL::PKey::RSA.new key4_pem, pass_phrase
# 
# == RSA Encryption
# 
# RSA provides encryption and decryption using the public and private keys.
# You can use a variety of padding methods depending upon the intended use of
# encrypted data.
# 
# === Encryption & Decryption
# 
# Asymmetric public/private key encryption is slow and victim to attack in
# cases where it is used without padding or directly to encrypt larger chunks
# of data. Typical use cases for RSA encryption involve "wrapping" a symmetric
# key with the public key of the recipient who would "unwrap" that symmetric
# key again using their private key.
# The following illustrates a simplified example of such a key transport
# scheme. It shouldn't be used in practice, though, standardized protocols
# should always be preferred.
# 
#   wrapped_key = key.public_encrypt key
# 
# A symmetric key encrypted with the public key can only be decrypted with
# the corresponding private key of the recipient.
# 
#   original_key = key.private_decrypt wrapped_key
# 
# By default PKCS#1 padding will be used, but it is also possible to use
# other forms of padding, see PKey::RSA for further details.
# 
# === Signatures
# 
# Using "private_encrypt" to encrypt some data with the private key is
# equivalent to applying a digital signature to the data. A verifying
# party may validate the signature by comparing the result of decrypting
# the signature with "public_decrypt" to the original data. However,
# OpenSSL::PKey already has methods "sign" and "verify" that handle
# digital signatures in a standardized way - "private_encrypt" and
# "public_decrypt" shouldn't be used in practice.
# 
# To sign a document, a cryptographically secure hash of the document is
# computed first, which is then signed using the private key.
# 
#   digest = OpenSSL::Digest::SHA256.new
#   signature = key.sign digest, document
# 
# To validate the signature, again a hash of the document is computed and
# the signature is decrypted using the public key. The result is then
# compared to the hash just computed, if they are equal the signature was
# valid.
# 
#   digest = OpenSSL::Digest::SHA256.new
#   if key.verify digest, signature, document
#     puts 'Valid'
#   else
#     puts 'Invalid'
#   end
# 
# == PBKDF2 Password-based Encryption
# 
# If supported by the underlying OpenSSL version used, Password-based
# Encryption should use the features of PKCS5. If not supported or if
# required by legacy applications, the older, less secure methods specified
# in RFC 2898 are also supported (see below).
# 
# PKCS5 supports PBKDF2 as it was specified in PKCS#5
# v2.0[http://www.rsa.com/rsalabs/node.asp?id=2127]. It still uses a
# password, a salt, and additionally a number of iterations that will
# slow the key derivation process down. The slower this is, the more work
# it requires being able to brute-force the resulting key.
# 
# === Encryption
# 
# The strategy is to first instantiate a Cipher for encryption, and
# then to generate a random IV plus a key derived from the password
# using PBKDF2. PKCS #5 v2.0 recommends at least 8 bytes for the salt,
# the number of iterations largely depends on the hardware being used.
# 
#   cipher = OpenSSL::Cipher.new 'AES-128-CBC'
#   cipher.encrypt
#   iv = cipher.random_iv
# 
#   pwd = 'some hopefully not to easily guessable password'
#   salt = OpenSSL::Random.random_bytes 16
#   iter = 20000
#   key_len = cipher.key_len
#   digest = OpenSSL::Digest::SHA256.new
# 
#   key = OpenSSL::PKCS5.pbkdf2_hmac(pwd, salt, iter, key_len, digest)
#   cipher.key = key
# 
#   Now encrypt the data:
# 
#   encrypted = cipher.update document
#   encrypted << cipher.final
# 
# === Decryption
# 
# Use the same steps as before to derive the symmetric AES key, this time
# setting the Cipher up for decryption.
# 
#   cipher = OpenSSL::Cipher.new 'AES-128-CBC'
#   cipher.decrypt
#   cipher.iv = iv # the one generated with #random_iv
# 
#   pwd = 'some hopefully not to easily guessable password'
#   salt = ... # the one generated above
#   iter = 20000
#   key_len = cipher.key_len
#   digest = OpenSSL::Digest::SHA256.new
# 
#   key = OpenSSL::PKCS5.pbkdf2_hmac(pwd, salt, iter, key_len, digest)
#   cipher.key = key
# 
#   Now decrypt the data:
# 
#   decrypted = cipher.update encrypted
#   decrypted << cipher.final
# 
# == PKCS #5 Password-based Encryption
# 
# PKCS #5 is a password-based encryption standard documented at
# RFC2898[http://www.ietf.org/rfc/rfc2898.txt].  It allows a short password or
# passphrase to be used to create a secure encryption key. If possible, PBKDF2
# as described above should be used if the circumstances allow it.
# 
# PKCS #5 uses a Cipher, a pass phrase and a salt to generate an encryption
# key.
# 
#   pass_phrase = 'my secure pass phrase goes here'
#   salt = '8 octets'
# 
# === Encryption
# 
# First set up the cipher for encryption
# 
#   encrypter = OpenSSL::Cipher.new 'AES-128-CBC'
#   encrypter.encrypt
#   encrypter.pkcs5_keyivgen pass_phrase, salt
# 
# Then pass the data you want to encrypt through
# 
#   encrypted = encrypter.update 'top secret document'
#   encrypted << encrypter.final
# 
# === Decryption
# 
# Use a new Cipher instance set up for decryption
# 
#   decrypter = OpenSSL::Cipher.new 'AES-128-CBC'
#   decrypter.decrypt
#   decrypter.pkcs5_keyivgen pass_phrase, salt
# 
# Then pass the data you want to decrypt through
# 
#   plain = decrypter.update encrypted
#   plain << decrypter.final
# 
# == X509 Certificates
# 
# === Creating a Certificate
# 
# This example creates a self-signed certificate using an RSA key and a SHA1
# signature.
# 
#   name = OpenSSL::X509::Name.parse 'CN=nobody/DC=example'
# 
#   cert = OpenSSL::X509::Certificate.new
#   cert.version = 2
#   cert.serial = 0
#   cert.not_before = Time.now
#   cert.not_after = Time.now + 3600
# 
#   cert.public_key = key.public_key
#   cert.subject = name
# 
# === Certificate Extensions
# 
# You can add extensions to the certificate with
# OpenSSL::SSL::ExtensionFactory to indicate the purpose of the certificate.
# 
#   extension_factory = OpenSSL::X509::ExtensionFactory.new nil, cert
# 
#   cert.add_extension \
#     extension_factory.create_extension('basicConstraints', 'CA:FALSE', true)
# 
#   cert.add_extension \
#     extension_factory.create_extension(
#       'keyUsage', 'keyEncipherment,dataEncipherment,digitalSignature')
# 
#   cert.add_extension \
#     extension_factory.create_extension('subjectKeyIdentifier', 'hash')
# 
# The list of supported extensions (and in some cases their possible values)
# can be derived from the "objects.h" file in the OpenSSL source code.
# 
# === Signing a Certificate
# 
# To sign a certificate set the issuer and use OpenSSL::X509::Certificate#sign
# with a digest algorithm.  This creates a self-signed cert because we're using
# the same name and key to sign the certificate as was used to create the
# certificate.
# 
#   cert.issuer = name
#   cert.sign key, OpenSSL::Digest::SHA1.new
# 
#   open 'certificate.pem', 'w' do |io| io.write cert.to_pem end
# 
# === Loading a Certificate
# 
# Like a key, a cert can also be loaded from a file.
# 
#   cert2 = OpenSSL::X509::Certificate.new File.read 'certificate.pem'
# 
# === Verifying a Certificate
# 
# Certificate#verify will return true when a certificate was signed with the
# given public key.
# 
#   raise 'certificate can not be verified' unless cert2.verify key
# 
# == Certificate Authority
# 
# A certificate authority (CA) is a trusted third party that allows you to
# verify the ownership of unknown certificates.  The CA issues key signatures
# that indicate it trusts the user of that key.  A user encountering the key
# can verify the signature by using the CA's public key.
# 
# === CA Key
# 
# CA keys are valuable, so we encrypt and save it to disk and make sure it is
# not readable by other users.
# 
#   ca_key = OpenSSL::PKey::RSA.new 2048
# 
#   cipher = OpenSSL::Cipher::Cipher.new 'AES-128-CBC'
# 
#   open 'ca_key.pem', 'w', 0400 do |io|
#     io.write key.export(cipher, pass_phrase)
#   end
# 
# === CA Certificate
# 
# A CA certificate is created the same way we created a certificate above, but
# with different extensions.
# 
#   ca_name = OpenSSL::X509::Name.parse 'CN=ca/DC=example'
# 
#   ca_cert = OpenSSL::X509::Certificate.new
#   ca_cert.serial = 0
#   ca_cert.version = 2
#   ca_cert.not_before = Time.now
#   ca_cert.not_after = Time.now + 86400
# 
#   ca_cert.public_key = ca_key.public_key
#   ca_cert.subject = ca_name
#   ca_cert.issuer = ca_name
# 
#   extension_factory = OpenSSL::X509::ExtensionFactory.new
#   extension_factory.subject_certificate = ca_cert
#   extension_factory.issuer_certificate = ca_cert
# 
#   ca_cert.add_extension \
#     extension_factory.create_extension('subjectKeyIdentifier', 'hash')
# 
# This extension indicates the CA's key may be used as a CA.
# 
#   ca_cert.add_extension \
#     extension_factory.create_extension('basicConstraints', 'CA:TRUE', true)
# 
# This extension indicates the CA's key may be used to verify signatures on
# both certificates and certificate revocations.
# 
#   ca_cert.add_extension \
#     extension_factory.create_extension(
#       'keyUsage', 'cRLSign,keyCertSign', true)
# 
# Root CA certificates are self-signed.
# 
#   ca_cert.sign ca_key, OpenSSL::Digest::SHA1.new
# 
# The CA certificate is saved to disk so it may be distributed to all the
# users of the keys this CA will sign.
# 
#   open 'ca_cert.pem', 'w' do |io|
#     io.write ca_cert.to_pem
#   end
# 
# === Certificate Signing Request
# 
# The CA signs keys through a Certificate Signing Request (CSR).  The CSR
# contains the information necessary to identify the key.
# 
#   csr = OpenSSL::X509::Request.new
#   csr.version = 0
#   csr.subject = name
#   csr.public_key = key.public_key
#   csr.sign key, OpenSSL::Digest::SHA1.new
# 
# A CSR is saved to disk and sent to the CA for signing.
# 
#   open 'csr.pem', 'w' do |io|
#     io.write csr.to_pem
#   end
# 
# === Creating a Certificate from a CSR
# 
# Upon receiving a CSR the CA will verify it before signing it.  A minimal
# verification would be to check the CSR's signature.
# 
#   csr = OpenSSL::X509::Request.new File.read 'csr.pem'
# 
#   raise 'CSR can not be verified' unless csr.verify csr.public_key
# 
# After verification a certificate is created, marked for various usages,
# signed with the CA key and returned to the requester.
# 
#   csr_cert = OpenSSL::X509::Certificate.new
#   csr_cert.serial = 0
#   csr_cert.version = 2
#   csr_cert.not_before = Time.now
#   csr_cert.not_after = Time.now + 600
# 
#   csr_cert.subject = csr.subject
#   csr_cert.public_key = csr.public_key
#   csr_cert.issuer = ca_cert.subject
# 
#   extension_factory = OpenSSL::X509::ExtensionFactory.new
#   extension_factory.subject_certificate = csr_cert
#   extension_factory.issuer_certificate = ca_cert
# 
#   csr_cert.add_extension \
#     extension_factory.create_extension('basicConstraints', 'CA:FALSE')
# 
#   csr_cert.add_extension \
#     extension_factory.create_extension(
#       'keyUsage', 'keyEncipherment,dataEncipherment,digitalSignature')
# 
#   csr_cert.add_extension \
#     extension_factory.create_extension('subjectKeyIdentifier', 'hash')
# 
#   csr_cert.sign ca_key, OpenSSL::Digest::SHA1.new
# 
#   open 'csr_cert.pem', 'w' do |io|
#     io.write csr_cert.to_pem
#   end
# 
# == SSL and TLS Connections
# 
# Using our created key and certificate we can create an SSL or TLS connection.
# An SSLContext is used to set up an SSL session.
# 
#   context = OpenSSL::SSL::SSLContext.new
# 
# === SSL Server
# 
# An SSL server requires the certificate and private key to communicate
# securely with its clients:
# 
#   context.cert = cert
#   context.key = key
# 
# Then create an SSLServer with a TCP server socket and the context.  Use the
# SSLServer like an ordinary TCP server.
# 
#   require 'socket'
# 
#   tcp_server = TCPServer.new 5000
#   ssl_server = OpenSSL::SSL::SSLServer.new tcp_server, context
# 
#   loop do
#     ssl_connection = ssl_server.accept
# 
#     data = connection.gets
# 
#     response = "I got #{data.dump}"
#     puts response
# 
#     connection.puts "I got #{data.dump}"
#     connection.close
#   end
# 
# === SSL client
# 
# An SSL client is created with a TCP socket and the context.
# SSLSocket#connect must be called to initiate the SSL handshake and start
# encryption.  A key and certificate are not required for the client socket.
# 
#   require 'socket'
# 
#   tcp_client = TCPSocket.new 'localhost', 5000
#   ssl_client = OpenSSL::SSL::SSLSocket.new client_socket, context
#   ssl_client.connect
# 
#   ssl_client.puts "hello server!"
#   puts ssl_client.gets
# 
# === Peer Verification
# 
# An unverified SSL connection does not provide much security.  For enhanced
# security the client or server can verify the certificate of its peer.
# 
# The client can be modified to verify the server's certificate against the
# certificate authority's certificate:
# 
#   context.ca_file = 'ca_cert.pem'
#   context.verify_mode = OpenSSL::SSL::VERIFY_PEER
# 
#   require 'socket'
# 
#   tcp_client = TCPSocket.new 'localhost', 5000
#   ssl_client = OpenSSL::SSL::SSLSocket.new client_socket, context
#   ssl_client.connect
# 
#   ssl_client.puts "hello server!"
#   puts ssl_client.gets
# 
# If the server certificate is invalid or <tt>context.ca_file</tt> is not set
# when verifying peers an OpenSSL::SSL::SSLError will be raised.
module OpenSSL
    # OpenSSL ruby extension version
    VERSION = nil #value is unknown, used for indexing.
    # Version of OpenSSL the ruby OpenSSL extension was built with
    OPENSSL_VERSION = nil #value is unknown, used for indexing.
    # Version number of OpenSSL the ruby OpenSSL extension was built with
    # (base 16)
    OPENSSL_VERSION_NUMBER = nil #value is unknown, used for indexing.
    OPENSSL_FIPS = nil #value is unknown, used for indexing.
    # OpenSSL.fips_mode = boolean -> boolean
    #  
    # Turns FIPS mode on or off. Turning on FIPS mode will obviously only have an
    # effect for FIPS-capable installations of the OpenSSL library. Trying to do
    # so otherwise will result in an error.
    # 
    # === Examples
    # 
    # OpenSSL.fips_mode = true   # turn FIPS mode on
    # OpenSSL.fips_mode = false  # and off again
    def self.fips_mode= boolean
        #This is a stub, used for indexing
    end
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
    # Abstract Syntax Notation One (or ASN.1) is a notation syntax to
    # describe data structures and is defined in ITU-T X.680. ASN.1 itself
    # does not mandate any encoding or parsing rules, but usually ASN.1 data
    # structures are encoded using the Distinguished Encoding Rules (DER) or
    # less often the Basic Encoding Rules (BER) described in ITU-T X.690. DER
    # and BER encodings are binary Tag-Length-Value (TLV) encodings that are
    # quite concise compared to other popular data description formats such
    # as XML, JSON etc.
    # ASN.1 data structures are very common in cryptographic applications,
    # e.g. X.509 public key certificates or certificate revocation lists
    # (CRLs) are all defined in ASN.1 and DER-encoded. ASN.1, DER and BER are
    # the building blocks of applied cryptography.
    # The ASN1 module provides the necessary classes that allow generation
    # of ASN.1 data structures and the methods to encode them using a DER
    # encoding. The decode method allows parsing arbitrary BER-/DER-encoded
    # data to a Ruby object that can then be modified and re-encoded at will.
    # 
    # == ASN.1 class hierarchy
    # 
    # The base class representing ASN.1 structures is ASN1Data. ASN1Data offers
    # attributes to read and set the +tag+, the +tag_class+ and finally the
    # +value+ of a particular ASN.1 item. Upon parsing, any tagged values
    # (implicit or explicit) will be represented by ASN1Data instances because
    # their "real type" can only be determined using out-of-band information
    # from the ASN.1 type declaration. Since this information is normally
    # known when encoding a type, all sub-classes of ASN1Data offer an
    # additional attribute +tagging+ that allows to encode a value implicitly
    # (+:IMPLICIT+) or explicitly (+:EXPLICIT+).
    # 
    # === Constructive
    # 
    # Constructive is, as its name implies, the base class for all
    # constructed encodings, i.e. those that consist of several values,
    # opposed to "primitive" encodings with just one single value.
    # Primitive values that are encoded with "infinite length" are typically
    # constructed (their values come in multiple chunks) and are therefore
    # represented by instances of Constructive. The value of an Constructive
    # is always an Array.
    # 
    # ==== ASN1::Set and ASN1::Sequence
    # 
    # The most common constructive encodings are SETs and SEQUENCEs, which is
    # why there are two sub-classes of Constructive representing each of
    # them.
    # 
    # === Primitive
    # 
    # This is the super class of all primitive values. Primitive
    # itself is not used when parsing ASN.1 data, all values are either
    # instances of a corresponding sub-class of Primitive or they are
    # instances of ASN1Data if the value was tagged implicitly or explicitly.
    # Please cf. Primitive documentation for details on sub-classes and
    # their respective mappings of ASN.1 data types to Ruby objects.
    # 
    # == Possible values for +tagging+
    # 
    # When constructing an ASN1Data object the ASN.1 type definition may
    # require certain elements to be either implicitly or explicitly tagged.
    # This can be achieved by setting the +tagging+ attribute manually for
    # sub-classes of ASN1Data. Use the symbol +:IMPLICIT+ for implicit
    # tagging and +:EXPLICIT+ if the element requires explicit tagging.
    # 
    # == Possible values for +tag_class+
    # 
    # It is possible to create arbitrary ASN1Data objects that also support
    # a PRIVATE or APPLICATION tag class. Possible values for the +tag_class+
    # attribute are:
    # * +:UNIVERSAL+ (the default for untagged values)
    # * +:CONTEXT_SPECIFIC+ (the default for tagged values)
    # * +:APPLICATION+
    # * +:PRIVATE+
    # 
    # == Tag constants
    # 
    # There is a constant defined for each universal tag:
    # * OpenSSL::ASN1::EOC (0)
    # * OpenSSL::ASN1::BOOLEAN (1)
    # * OpenSSL::ASN1::INTEGER (2)
    # * OpenSSL::ASN1::BIT_STRING (3)
    # * OpenSSL::ASN1::OCTET_STRING (4)
    # * OpenSSL::ASN1::NULL (5)
    # * OpenSSL::ASN1::OBJECT (6)
    # * OpenSSL::ASN1::ENUMERATED (10)
    # * OpenSSL::ASN1::UTF8STRING (12)
    # * OpenSSL::ASN1::SEQUENCE (16)
    # * OpenSSL::ASN1::SET (17)
    # * OpenSSL::ASN1::NUMERICSTRING (18)
    # * OpenSSL::ASN1::PRINTABLESTRING (19)
    # * OpenSSL::ASN1::T61STRING (20)
    # * OpenSSL::ASN1::VIDEOTEXSTRING (21)
    # * OpenSSL::ASN1::IA5STRING (22)
    # * OpenSSL::ASN1::UTCTIME (23)
    # * OpenSSL::ASN1::GENERALIZEDTIME (24)
    # * OpenSSL::ASN1::GRAPHICSTRING (25)
    # * OpenSSL::ASN1::ISO64STRING (26)
    # * OpenSSL::ASN1::GENERALSTRING (27)
    # * OpenSSL::ASN1::UNIVERSALSTRING (28)
    # * OpenSSL::ASN1::BMPSTRING (30)
    # 
    # == UNIVERSAL_TAG_NAME constant
    # 
    # An Array that stores the name of a given tag number. These names are
    # the same as the name of the tag constant that is additionally defined,
    # e.g. UNIVERSAL_TAG_NAME[2] = "INTEGER" and OpenSSL::ASN1::INTEGER = 2.
    # 
    # == Example usage
    # 
    # === Decoding and viewing a DER-encoded file
    #   require 'openssl'
    #   require 'pp'
    #   der = File.binread('data.der')
    #   asn1 = OpenSSL::ASN1.decode(der)
    #   pp der
    # 
    # === Creating an ASN.1 structure and DER-encoding it
    #   require 'openssl'
    #   version = OpenSSL::ASN1::Integer.new(1)
    #   # Explicitly 0-tagged implies context-specific tag class
    #   serial = OpenSSL::ASN1::Integer.new(12345, 0, :EXPLICIT, :CONTEXT_SPECIFIC)
    #   name = OpenSSL::ASN1::PrintableString.new('Data 1')
    #   sequence = OpenSSL::ASN1::Sequence.new( [ version, serial, name ] )
    #   der = sequence.to_der
    module ASN1
        # Array storing tag names at the tag's index.
        UNIVERSAL_TAG_NAME = nil #value is unknown, used for indexing.
        # OpenSSL::ASN1.traverse(asn1) -> nil
        #  
        # If a block is given, it prints out each of the elements encountered.
        # Block parameters are (in that order):
        # * depth: The recursion depth, plus one with each constructed value being encountered (Number)
        # * offset: Current byte offset (Number)
        # * header length: Combined length in bytes of the Tag and Length headers. (Number)
        # * length: The overall remaining length of the entire data (Number)
        # * constructed: Whether this value is constructed or not (Boolean)
        # * tag_class: Current tag class (Symbol)
        # * tag: The current tag (Number)
        # 
        # == Example
        #   der = File.binread('asn1data.der')
        #   OpenSSL::ASN1.traverse(der) do | depth, offset, header_len, length, constructed, tag_class, tag|
        #     puts "Depth: #{depth} Offset: #{offset} Length: #{length}"
        #     puts "Header length: #{header_len} Tag: #{tag} Tag class: #{tag_class} Constructed: #{constructed}"
        #   end
        def self.traverse(asn1)
            #This is a stub, used for indexing
        end
        # OpenSSL::ASN1.decode(der) -> ASN1Data
        #  
        # Decodes a BER- or DER-encoded value and creates an ASN1Data instance. +der+
        # may be a +String+ or any object that features a +#to_der+ method transforming
        # it into a BER-/DER-encoded +String+.
        # 
        # == Example
        #   der = File.binread('asn1data')
        #   asn1 = OpenSSL::ASN1.decode(der)
        def self.decode(der)
            #This is a stub, used for indexing
        end
        # OpenSSL::ASN1.decode_all(der) -> Array of ASN1Data
        #  
        # Similar to +decode+ with the difference that +decode+ expects one
        # distinct value represented in +der+. +decode_all+ on the contrary
        # decodes a sequence of sequential BER/DER values lined up in +der+
        # and returns them as an array.
        # 
        # == Example
        #   ders = File.binread('asn1data_seq')
        #   asn1_ary = OpenSSL::ASN1.decode_all(ders)
        def self.decode_all(der)
            #This is a stub, used for indexing
        end
        # The top-level class representing any ASN.1 object. When parsed by
        # ASN1.decode, tagged values are always represented by an instance
        # of ASN1Data.
        # 
        # == The role of ASN1Data for parsing tagged values
        # 
        # When encoding an ASN.1 type it is inherently clear what original
        # type (e.g. INTEGER, OCTET STRING etc.) this value has, regardless
        # of its tagging.
        # But opposed to the time an ASN.1 type is to be encoded, when parsing
        # them it is not possible to deduce the "real type" of tagged
        # values. This is why tagged values are generally parsed into ASN1Data
        # instances, but with a different outcome for implicit and explicit
        # tagging.
        # 
        # === Example of a parsed implicitly tagged value
        # 
        # An implicitly 1-tagged INTEGER value will be parsed as an
        # ASN1Data with
        # * +tag+ equal to 1
        # * +tag_class+ equal to +:CONTEXT_SPECIFIC+
        # * +value+ equal to a +String+ that carries the raw encoding
        #   of the INTEGER.
        # This implies that a subsequent decoding step is required to
        # completely decode implicitly tagged values.
        # 
        # === Example of a parsed explicitly tagged value
        # 
        # An explicitly 1-tagged INTEGER value will be parsed as an
        # ASN1Data with
        # * +tag+ equal to 1
        # * +tag_class+ equal to +:CONTEXT_SPECIFIC+
        # * +value+ equal to an +Array+ with one single element, an
        #   instance of OpenSSL::ASN1::Integer, i.e. the inner element
        #   is the non-tagged primitive value, and the tagging is represented
        #   in the outer ASN1Data
        # 
        # == Example - Decoding an implicitly tagged INTEGER
        #   int = OpenSSL::ASN1::Integer.new(1, 0, :IMPLICIT) # implicit 0-tagged
        #   seq = OpenSSL::ASN1::Sequence.new( [int] )
        #   der = seq.to_der
        #   asn1 = OpenSSL::ASN1.decode(der)
        #   # pp asn1 => #<OpenSSL::ASN1::Sequence:0x87326e0
        #   #              @infinite_length=false,
        #   #              @tag=16,
        #   #              @tag_class=:UNIVERSAL,
        #   #              @tagging=nil,
        #   #              @value=
        #   #                [#<OpenSSL::ASN1::ASN1Data:0x87326f4
        #   #                   @infinite_length=false,
        #   #                   @tag=0,
        #   #                   @tag_class=:CONTEXT_SPECIFIC,
        #   #                   @value="\x01">]>
        #   raw_int = asn1.value[0]
        #   # manually rewrite tag and tag class to make it an UNIVERSAL value
        #   raw_int.tag = OpenSSL::ASN1::INTEGER
        #   raw_int.tag_class = :UNIVERSAL
        #   int2 = OpenSSL::ASN1.decode(raw_int)
        #   puts int2.value # => 1
        # 
        # == Example - Decoding an explicitly tagged INTEGER
        #   int = OpenSSL::ASN1::Integer.new(1, 0, :EXPLICIT) # explicit 0-tagged
        #   seq = OpenSSL::ASN1::Sequence.new( [int] )
        #   der = seq.to_der
        #   asn1 = OpenSSL::ASN1.decode(der)
        #   # pp asn1 => #<OpenSSL::ASN1::Sequence:0x87326e0
        #   #              @infinite_length=false,
        #   #              @tag=16,
        #   #              @tag_class=:UNIVERSAL,
        #   #              @tagging=nil,
        #   #              @value=
        #   #                [#<OpenSSL::ASN1::ASN1Data:0x87326f4
        #   #                   @infinite_length=false,
        #   #                   @tag=0,
        #   #                   @tag_class=:CONTEXT_SPECIFIC,
        #   #                   @value=
        #   #                     [#<OpenSSL::ASN1::Integer:0x85bf308
        #   #                        @infinite_length=false,
        #   #                        @tag=2,
        #   #                        @tag_class=:UNIVERSAL
        #   #                        @tagging=nil,
        #   #                        @value=1>]>]>
        #   int2 = asn1.value[0].value[0]
        #   puts int2.value # => 1
        class ASN1Data
            # OpenSSL::ASN1::ASN1Data.new(value, tag, tag_class) => ASN1Data
            #  
            # +value+: Please have a look at Constructive and Primitive to see how Ruby
            # types are mapped to ASN.1 types and vice versa.
            # 
            # +tag+: A +Number+ indicating the tag number.
            # 
            # +tag_class+: A +Symbol+ indicating the tag class. Please cf. ASN1 for
            # possible values.
            # 
            # == Example
            #   asn1_int = OpenSSL::ASN1Data.new(42, 2, :UNIVERSAL) # => Same as OpenSSL::ASN1::Integer.new(42)
            #   tagged_int = OpenSSL::ASN1Data.new(42, 0, :CONTEXT_SPECIFIC) # implicitly 0-tagged INTEGER
            def self.new(value, tag, tag_class)
                #This is a stub, used for indexing
            end
            # asn1.to_der => DER-encoded String
            #  
            # Encodes this ASN1Data into a DER-encoded String value. The result is
            # DER-encoded except for the possibility of infinite length encodings.
            # Infinite length encodings are not allowed in strict DER, so strictly
            # speaking the result of such an encoding would be a BER-encoding.
            def to_der()
                #This is a stub, used for indexing
            end
        end
        # Generic error class for all errors raised in ASN1 and any of the
        # classes defined in it.
        class ASN1Error < OpenSSLError
        end
        # The parent class for all constructed encodings. The +value+ attribute
        # of a Constructive is always an +Array+. Attributes are the same as
        # for ASN1Data, with the addition of +tagging+.
        # 
        # == SET and SEQUENCE
        # 
        # Most constructed encodings come in the form of a SET or a SEQUENCE.
        # These encodings are represented by one of the two sub-classes of
        # Constructive:
        # * OpenSSL::ASN1::Set
        # * OpenSSL::ASN1::Sequence
        # Please note that tagged sequences and sets are still parsed as
        # instances of ASN1Data. Find further details on tagged values
        # there.
        # 
        # === Example - constructing a SEQUENCE
        #   int = OpenSSL::ASN1::Integer.new(1)
        #   str = OpenSSL::ASN1::PrintableString.new('abc')
        #   sequence = OpenSSL::ASN1::Sequence.new( [ int, str ] )
        # 
        # === Example - constructing a SET
        #   int = OpenSSL::ASN1::Integer.new(1)
        #   str = OpenSSL::ASN1::PrintableString.new('abc')
        #   set = OpenSSL::ASN1::Set.new( [ int, str ] )
        # 
        # == Infinite length primitive values
        # 
        # The only case where Constructive is used directly is for infinite
        # length encodings of primitive values. These encodings are always
        # constructed, with the contents of the +value+ +Array+ being either
        # UNIVERSAL non-infinite length partial encodings of the actual value
        # or again constructive encodings with infinite length (i.e. infinite
        # length primitive encodings may be constructed recursively with another
        # infinite length value within an already infinite length value). Each
        # partial encoding must be of the same UNIVERSAL type as the overall
        # encoding. The value of the overall encoding consists of the
        # concatenation of each partial encoding taken in sequence. The +value+
        # array of the outer infinite length value must end with a
        # OpenSSL::ASN1::EndOfContent instance.
        # 
        # Please note that it is not possible to encode Constructive without
        # the +infinite_length+ attribute being set to +true+, use
        # OpenSSL::ASN1::Sequence or OpenSSL::ASN1::Set in these cases instead.
        # 
        # === Example - Infinite length OCTET STRING
        #   partial1 = OpenSSL::ASN1::OctetString.new("\x01")
        #   partial2 = OpenSSL::ASN1::OctetString.new("\x02")
        #   inf_octets = OpenSSL::ASN1::Constructive.new( [ partial1,
        #                                                   partial2,
        #                                                   OpenSSL::ASN1::EndOfContent.new ],
        #                                                 OpenSSL::ASN1::OCTET_STRING,
        #                                                 nil,
        #                                                 :UNIVERSAL )
        #   # The real value of inf_octets is "\x01\x02", i.e. the concatenation
        #   # of partial1 and partial2
        #   inf_octets.infinite_length = true
        #   der = inf_octets.to_der
        #   asn1 = OpenSSL::ASN1.decode(der)
        #   puts asn1.infinite_length # => true
        class Constructive < ASN1Data
            include Enumerable
            # OpenSSL::ASN1::Primitive.new( value [, tag, tagging, tag_class ]) => Primitive
            #  
            # +value+: is mandatory.
            # 
            # +tag+: optional, may be specified for tagged values. If no +tag+ is
            # specified, the UNIVERSAL tag corresponding to the Primitive sub-class
            # is used by default.
            # 
            # +tagging+: may be used as an encoding hint to encode a value either
            # explicitly or implicitly, see ASN1 for possible values.
            # 
            # +tag_class+: if +tag+ and +tagging+ are +nil+ then this is set to
            # +:UNIVERSAL+ by default. If either +tag+ or +tagging+ are set then
            # +:CONTEXT_SPECIFIC+ is used as the default. For possible values please
            # cf. ASN1.
            # 
            # == Example
            #   int = OpenSSL::ASN1::Integer.new(42)
            #   zero_tagged_int = OpenSSL::ASN1::Integer.new(42, 0, :IMPLICIT)
            #   private_explicit_zero_tagged_int = OpenSSL::ASN1::Integer.new(42, 0, :EXPLICIT, :PRIVATE)
            def self.new(p1, p2 = v2, p3 = v3, p4 = v4)
                #This is a stub, used for indexing
            end
            # asn1.to_der => DER-encoded String
            #  
            # See ASN1Data#to_der for details.
            def to_der()
                #This is a stub, used for indexing
            end
            # asn1_ary.each { |asn1| block } => asn1_ary
            #  
            # Calls <i>block</i> once for each element in +self+, passing that element
            # as parameter +asn1+. If no block is given, an enumerator is returned
            # instead.
            # 
            # == Example
            #   asn1_ary.each do |asn1|
            #     puts asn1
            #   end
            def each()
                #This is a stub, used for indexing
            end
        end
        class ObjectId < Primitive
            def self.register(p1, p2, p3)
                #This is a stub, used for indexing
            end
            def sn()
                #This is a stub, used for indexing
            end
            alias short_name sn
            def ln()
                #This is a stub, used for indexing
            end
            alias long_name ln
            def oid()
                #This is a stub, used for indexing
            end
            def short_name()
                #This is a stub, used for indexing
            end
            def long_name()
                #This is a stub, used for indexing
            end
        end
        # The parent class for all primitive encodings. Attributes are the same as
        # for ASN1Data, with the addition of +tagging+.
        # Primitive values can never be infinite length encodings, thus it is not
        # possible to set the +infinite_length+ attribute for Primitive and its
        # sub-classes.
        # 
        # == Primitive sub-classes and their mapping to Ruby classes
        # * OpenSSL::ASN1::EndOfContent    <=> +value+ is always +nil+
        # * OpenSSL::ASN1::Boolean         <=> +value+ is a +Boolean+
        # * OpenSSL::ASN1::Integer         <=> +value+ is a +Number+
        # * OpenSSL::ASN1::BitString       <=> +value+ is a +String+
        # * OpenSSL::ASN1::OctetString     <=> +value+ is a +String+
        # * OpenSSL::ASN1::Null            <=> +value+ is always +nil+
        # * OpenSSL::ASN1::Object          <=> +value+ is a +String+
        # * OpenSSL::ASN1::Enumerated      <=> +value+ is a +Number+
        # * OpenSSL::ASN1::UTF8String      <=> +value+ is a +String+
        # * OpenSSL::ASN1::NumericString   <=> +value+ is a +String+
        # * OpenSSL::ASN1::PrintableString <=> +value+ is a +String+
        # * OpenSSL::ASN1::T61String       <=> +value+ is a +String+
        # * OpenSSL::ASN1::VideotexString  <=> +value+ is a +String+
        # * OpenSSL::ASN1::IA5String       <=> +value+ is a +String+
        # * OpenSSL::ASN1::UTCTime         <=> +value+ is a +Time+
        # * OpenSSL::ASN1::GeneralizedTime <=> +value+ is a +Time+
        # * OpenSSL::ASN1::GraphicString   <=> +value+ is a +String+
        # * OpenSSL::ASN1::ISO64String     <=> +value+ is a +String+
        # * OpenSSL::ASN1::GeneralString   <=> +value+ is a +String+
        # * OpenSSL::ASN1::UniversalString <=> +value+ is a +String+
        # * OpenSSL::ASN1::BMPString       <=> +value+ is a +String+
        # 
        # == OpenSSL::ASN1::BitString
        # 
        # === Additional attributes
        # +unused_bits+: if the underlying BIT STRING's
        # length is a multiple of 8 then +unused_bits+ is 0. Otherwise
        # +unused_bits+ indicates the number of bits that are to be ignored in
        # the final octet of the +BitString+'s +value+.
        # 
        # == OpenSSL::ASN1::ObjectId
        # 
        # === Additional attributes
        # * +sn+: the short name as defined in <openssl/objects.h>.
        # * +ln+: the long name as defined in <openssl/objects.h>.
        # * +oid+: the object identifier as a +String+, e.g. "1.2.3.4.5"
        # * +short_name+: alias for +sn+.
        # * +long_name+: alias for +ln+.
        # 
        # == Examples
        # With the Exception of OpenSSL::ASN1::EndOfContent, each Primitive class
        # constructor takes at least one parameter, the +value+.
        # 
        # === Creating EndOfContent
        #   eoc = OpenSSL::ASN1::EndOfContent.new
        # 
        # === Creating any other Primitive
        #   prim = <class>.new(value) # <class> being one of the sub-classes except EndOfContent
        #   prim_zero_tagged_implicit = <class>.new(value, 0, :IMPLICIT)
        #   prim_zero_tagged_explicit = <class>.new(value, 0, :EXPLICIT)
        class Primitive < ASN1Data
            # OpenSSL::ASN1::Primitive.new( value [, tag, tagging, tag_class ]) => Primitive
            #  
            # +value+: is mandatory.
            # 
            # +tag+: optional, may be specified for tagged values. If no +tag+ is
            # specified, the UNIVERSAL tag corresponding to the Primitive sub-class
            # is used by default.
            # 
            # +tagging+: may be used as an encoding hint to encode a value either
            # explicitly or implicitly, see ASN1 for possible values.
            # 
            # +tag_class+: if +tag+ and +tagging+ are +nil+ then this is set to
            # +:UNIVERSAL+ by default. If either +tag+ or +tagging+ are set then
            # +:CONTEXT_SPECIFIC+ is used as the default. For possible values please
            # cf. ASN1.
            # 
            # == Example
            #   int = OpenSSL::ASN1::Integer.new(42)
            #   zero_tagged_int = OpenSSL::ASN1::Integer.new(42, 0, :IMPLICIT)
            #   private_explicit_zero_tagged_int = OpenSSL::ASN1::Integer.new(42, 0, :EXPLICIT, :PRIVATE)
            def self.new(p1, p2 = v2, p3 = v3, p4 = v4)
                #This is a stub, used for indexing
            end
            # asn1.to_der => DER-encoded String
            #  
            # See ASN1Data#to_der for details. *
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
    # Provides symmetric algorithms for encryption and decryption. The
    # algorithms that are available depend on the particular version
    # of OpenSSL that is installed.
    # 
    # === Listing all supported algorithms
    # 
    # A list of supported algorithms can be obtained by
    # 
    #   puts OpenSSL::Cipher.ciphers
    # 
    # === Instantiating a Cipher
    # 
    # There are several ways to create a Cipher instance. Generally, a
    # Cipher algorithm is categorized by its name, the key length in bits
    # and the cipher mode to be used. The most generic way to create a
    # Cipher is the following
    # 
    #   cipher = OpenSSL::Cipher.new('<name>-<key length>-<mode>')
    # 
    # That is, a string consisting of the hyphenated concatenation of the
    # individual components name, key length and mode. Either all uppercase
    # or all lowercase strings may be used, for example:
    # 
    #  cipher = OpenSSL::Cipher.new('AES-128-CBC')
    # 
    # For each algorithm supported, there is a class defined under the
    # Cipher class that goes by the name of the cipher, e.g. to obtain an
    # instance of AES, you could also use
    # 
    #   # these are equivalent
    #   cipher = OpenSSL::Cipher::AES.new(128, :CBC)
    #   cipher = OpenSSL::Cipher::AES.new(128, 'CBC')
    #   cipher = OpenSSL::Cipher::AES.new('128-CBC')
    # 
    # Finally, due to its wide-spread use, there are also extra classes
    # defined for the different key sizes of AES
    # 
    #   cipher = OpenSSL::Cipher::AES128.new(:CBC)
    #   cipher = OpenSSL::Cipher::AES192.new(:CBC)
    #   cipher = OpenSSL::Cipher::AES256.new(:CBC)
    # 
    # === Choosing either encryption or decryption mode
    # 
    # Encryption and decryption are often very similar operations for
    # symmetric algorithms, this is reflected by not having to choose
    # different classes for either operation, both can be done using the
    # same class. Still, after obtaining a Cipher instance, we need to
    # tell the instance what it is that we intend to do with it, so we
    # need to call either
    # 
    #   cipher.encrypt
    # 
    # or
    # 
    #   cipher.decrypt
    # 
    # on the Cipher instance. This should be the first call after creating
    # the instance, otherwise configuration that has already been set could
    # get lost in the process.
    # 
    # === Choosing a key
    # 
    # Symmetric encryption requires a key that is the same for the encrypting
    # and for the decrypting party and after initial key establishment should
    # be kept as private information. There are a lot of ways to create
    # insecure keys, the most notable is to simply take a password as the key
    # without processing the password further. A simple and secure way to
    # create a key for a particular Cipher is
    # 
    #  cipher = OpenSSL::AES256.new(:CFB)
    #  cipher.encrypt
    #  key = cipher.random_key # also sets the generated key on the Cipher
    # 
    # If you absolutely need to use passwords as encryption keys, you
    # should use Password-Based Key Derivation Function 2 (PBKDF2) by
    # generating the key with the help of the functionality provided by
    # OpenSSL::PKCS5.pbkdf2_hmac_sha1 or OpenSSL::PKCS5.pbkdf2_hmac.
    # 
    # Although there is Cipher#pkcs5_keyivgen, its use is deprecated and
    # it should only be used in legacy applications because it does not use
    # the newer PKCS#5 v2 algorithms.
    # 
    # === Choosing an IV
    # 
    # The cipher modes CBC, CFB, OFB and CTR all need an "initialization
    # vector", or short, IV. ECB mode is the only mode that does not require
    # an IV, but there is almost no legitimate use case for this mode
    # because of the fact that it does not sufficiently hide plaintext
    # patterns. Therefore
    # 
    # <b>You should never use ECB mode unless you are absolutely sure that
    # you absolutely need it</b>
    # 
    # Because of this, you will end up with a mode that explicitly requires
    # an IV in any case. Note that for backwards compatibility reasons,
    # setting an IV is not explicitly mandated by the Cipher API. If not
    # set, OpenSSL itself defaults to an all-zeroes IV ("\\0", not the
    # character). Although the IV can be seen as public information, i.e.
    # it may be transmitted in public once generated, it should still stay
    # unpredictable to prevent certain kinds of attacks. Therefore, ideally
    # 
    # <b>Always create a secure random IV for every encryption of your
    # Cipher</b>
    # 
    # A new, random IV should be created for every encryption of data. Think
    # of the IV as a nonce (number used once) - it's public but random and
    # unpredictable. A secure random IV can be created as follows
    # 
    #  cipher = ...
    #  cipher.encrypt
    #  key = cipher.random_key
    #  iv = cipher.random_iv # also sets the generated IV on the Cipher
    # 
    #  Although the key is generally a random value, too, it is a bad choice
    #  as an IV. There are elaborate ways how an attacker can take advantage
    #  of such an IV. As a general rule of thumb, exposing the key directly
    #  or indirectly should be avoided at all cost and exceptions only be
    #  made with good reason.
    # 
    # === Calling Cipher#final
    # 
    # ECB (which should not be used) and CBC are both block-based modes.
    # This means that unlike for the other streaming-based modes, they
    # operate on fixed-size blocks of data, and therefore they require a
    # "finalization" step to produce or correctly decrypt the last block of
    # data by appropriately handling some form of padding. Therefore it is
    # essential to add the output of OpenSSL::Cipher#final to your
    # encryption/decryption buffer or you will end up with decryption errors
    # or truncated data.
    # 
    # Although this is not really necessary for streaming-mode ciphers, it is
    # still recommended to apply the same pattern of adding the output of
    # Cipher#final there as well - it also enables you to switch between
    # modes more easily in the future.
    # 
    # === Encrypting and decrypting some data
    # 
    #   data = "Very, very confidential data"
    # 
    #   cipher = OpenSSL::Cipher::AES.new(128, :CBC)
    #   cipher.encrypt
    #   key = cipher.random_key
    #   iv = cipher.random_iv
    # 
    #   encrypted = cipher.update(data) + cipher.final
    #   ...
    #   decipher = OpenSSL::Cipher::AES.new(128, :CBC)
    #   decipher.decrypt
    #   decipher.key = key
    #   decipher.iv = iv
    # 
    #   plain = decipher.update(encrypted) + decipher.final
    # 
    #   puts data == plain #=> true
    # 
    # === Authenticated Encryption and Associated Data (AEAD)
    # 
    # If the OpenSSL version used supports it, an Authenticated Encryption
    # mode (such as GCM or CCM) should always be preferred over any
    # unauthenticated mode. Currently, OpenSSL supports AE only in combination
    # with Associated Data (AEAD) where additional associated data is included
    # in the encryption process to compute a tag at the end of the encryption.
    # This tag will also be used in the decryption process and by verifying
    # its validity, the authenticity of a given ciphertext is established.
    # 
    # This is superior to unauthenticated modes in that it allows to detect
    # if somebody effectively changed the ciphertext after it had been
    # encrypted. This prevents malicious modifications of the ciphertext that
    # could otherwise be exploited to modify ciphertexts in ways beneficial to
    # potential attackers.
    # 
    # If no associated data is needed for encryption and later decryption,
    # the OpenSSL library still requires a value to be set - "" may be used in
    # case none is available. An example using the GCM (Galois Counter Mode):
    # 
    #   cipher = OpenSSL::Cipher::AES.new(128, :GCM)
    #   cipher.encrypt
    #   key = cipher.random_key
    #   iv = cipher.random_iv
    #   cipher.auth_data = ""
    # 
    #   encrypted = cipher.update(data) + cipher.final
    #   tag = cipher.auth_tag
    # 
    #   decipher = OpenSSL::Cipher::AES.new(128, :GCM)
    #   decipher.decrypt
    #   decipher.key = key
    #   decipher.iv = iv
    #   decipher.auth_tag = tag
    #   decipher.auth_data = ""
    # 
    #   plain = decipher.update(encrypted) + decipher.final
    # 
    #   puts data == plain #=> true
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
        # Fully resets the internal state of the Cipher. By using this, the same
        # Cipher instance may be used several times for en- or decryption tasks.
        # 
        # Internally calls EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, -1).
        def reset()
            #This is a stub, used for indexing
        end
        # cipher.encrypt -> self
        #  
        # Initializes the Cipher for encryption.
        # 
        # Make sure to call Cipher#encrypt or Cipher#decrypt before using any of the
        # following methods:
        # * [key=, iv=, random_key, random_iv, pkcs5_keyivgen]
        # 
        # Internally calls EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, 1).
        def encrypt()
            #This is a stub, used for indexing
        end
        # cipher.decrypt -> self
        #  
        # Initializes the Cipher for decryption.
        # 
        # Make sure to call Cipher#encrypt or Cipher#decrypt before using any of the
        # following methods:
        # * [key=, iv=, random_key, random_iv, pkcs5_keyivgen]
        # 
        # Internally calls EVP_CipherInit_ex(ctx, NULL, NULL, NULL, NULL, 0).
        def decrypt()
            #This is a stub, used for indexing
        end
        # cipher.pkcs5_keyivgen(pass [, salt [, iterations [, digest]]] ) -> nil
        #  
        # Generates and sets the key/IV based on a password.
        # 
        # WARNING: This method is only PKCS5 v1.5 compliant when using RC2, RC4-40,
        # or DES with MD5 or SHA1. Using anything else (like AES) will generate the
        # key/iv using an OpenSSL specific method. This method is deprecated and
        # should no longer be used. Use a PKCS5 v2 key generation method from
        # OpenSSL::PKCS5 instead.
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
        # Encrypts data in a streaming fashion. Hand consecutive blocks of data
        # to the +update+ method in order to encrypt it. Returns the encrypted
        # data chunk. When done, the output of Cipher#final should be additionally
        # added to the result.
        # 
        # === Parameters
        # +data+ is a nonempty string.
        # +buffer+ is an optional string to store the result.
        def update(p1, p2 = v2)
            #This is a stub, used for indexing
        end
        # cipher.final -> string
        #  
        # Returns the remaining data held in the cipher object. Further calls to
        # Cipher#update or Cipher#final will return garbage. This call should always
        # be made as the last call of an encryption or decryption operation, after
        # after having fed the entire plaintext or ciphertext to the Cipher instance.
        # 
        # If an authenticated cipher was used, a CipherError is raised if the tag
        # could not be authenticated successfully. Only call this method after
        # setting the authentication tag and passing the entire contents of the
        # ciphertext into the cipher.
        def final()
            #This is a stub, used for indexing
        end
        # cipher.name -> string
        #  
        # Returns the name of the cipher which may differ slightly from the original
        # name provided.
        def name()
            #This is a stub, used for indexing
        end
        # cipher.key = string -> string
        #  
        # Sets the cipher key. To generate a key, you should either use a secure
        # random byte string or, if the key is to be derived from a password, you
        # should rely on PBKDF2 functionality provided by OpenSSL::PKCS5. To
        # generate a secure random-based key, Cipher#random_key may be used.
        # 
        # Only call this method after calling Cipher#encrypt or Cipher#decrypt.
        def key= string
            #This is a stub, used for indexing
        end
        # cipher.auth_data = string -> string
        #  
        # Sets the cipher's additional authenticated data. This field must be
        # set when using AEAD cipher modes such as GCM or CCM. If no associated
        # data shall be used, this method must *still* be called with a value of "".
        # The contents of this field should be non-sensitive data which will be
        # added to the ciphertext to generate the authentication tag which validates
        # the contents of the ciphertext.
        # 
        # The AAD must be set prior to encryption or decryption. In encryption mode,
        # it must be set after calling Cipher#encrypt and setting Cipher#key= and
        # Cipher#iv=. When decrypting, the authenticated data must be set after key,
        # iv and especially *after* the authentication tag has been set. I.e. set it
        # only after calling Cipher#decrypt, Cipher#key=, Cipher#iv= and
        # Cipher#auth_tag= first.
        def auth_data= string
            #This is a stub, used for indexing
        end
        # cipher.auth_tag = string -> string
        #  
        # Sets the authentication tag to verify the contents of the
        # ciphertext. The tag must be set after calling Cipher#decrypt,
        # Cipher#key= and Cipher#iv=, but before assigning the associated
        # authenticated data using Cipher#auth_data= and of course, before
        # decrypting any of the ciphertext. After all decryption is
        # performed, the tag is verified automatically in the call to
        # Cipher#final.
        def auth_tag= string
            #This is a stub, used for indexing
        end
        # cipher.auth_tag([ tag_len ] -> string
        #  
        # Gets the authentication tag generated by Authenticated Encryption Cipher
        # modes (GCM for example). This tag may be stored along with the ciphertext,
        # then set on the decryption cipher to authenticate the contents of the
        # ciphertext against changes. If the optional integer parameter +tag_len+ is
        # given, the returned tag will be +tag_len+ bytes long. If the parameter is
        # omitted, the maximum length of 16 bytes will be returned. For maximum
        # security, the default of 16 bytes should be chosen.
        # 
        # The tag may only be retrieved after calling Cipher#final.
        def auth_tag(p1 = v1)
            #This is a stub, used for indexing
        end
        # cipher.authenticated? -> boolean
        #  
        # Indicated whether this Cipher instance uses an Authenticated Encryption
        # mode.
        def authenticated?()
            #This is a stub, used for indexing
        end
        # cipher.key_len = integer -> integer
        #  
        # Sets the key length of the cipher.  If the cipher is a fixed length cipher
        # then attempting to set the key length to any value other than the fixed
        # value is an error.
        # 
        # Under normal circumstances you do not need to call this method (and probably shouldn't).
        # 
        # See EVP_CIPHER_CTX_set_key_length for further information.
        def key_len= integer
            #This is a stub, used for indexing
        end
        # cipher.iv = string -> string
        #  
        # Sets the cipher IV. Please note that since you should never be using ECB
        # mode, an IV is always explicitly required and should be set prior to
        # encryption. The IV itself can be safely transmitted in public, but it
        # should be unpredictable to prevent certain kinds of attacks. You may use
        # Cipher#random_iv to create a secure random IV.
        # 
        # Only call this method after calling Cipher#encrypt or Cipher#decrypt.
        # 
        # If not explicitly set, the OpenSSL default of an all-zeroes ("\\0") IV is
        # used.
        def iv= string
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
        DEFAULT_CONFIG_FILE = nil #value is unknown, used for indexing.
    end
    class ConfigError < OpenSSLError
    end
    # OpenSSL::Digest allows you to compute message digests (sometimes
    # interchangeably called "hashes") of arbitrary data that are
    # cryptographically secure, i.e. a Digest implements a secure one-way
    # function.
    # 
    # One-way functions offer some useful properties. E.g. given two
    # distinct inputs the probability that both yield the same output
    # is highly unlikely. Combined with the fact that every message digest
    # algorithm has a fixed-length output of just a few bytes, digests are
    # often used to create unique identifiers for arbitrary data. A common
    # example is the creation of a unique id for binary documents that are
    # stored in a database.
    # 
    # Another useful characteristic of one-way functions (and thus the name)
    # is that given a digest there is no indication about the original
    # data that produced it, i.e. the only way to identify the original input
    # is to "brute-force" through every possible combination of inputs.
    # 
    # These characteristics make one-way functions also ideal companions
    # for public key signature algorithms: instead of signing an entire
    # document, first a hash of the document is produced with a considerably
    # faster message digest algorithm and only the few bytes of its output
    # need to be signed using the slower public key algorithm. To validate
    # the integrity of a signed document, it suffices to re-compute the hash
    # and verify that it is equal to that in the signature.
    # 
    # Among the supported message digest algorithms are:
    # * SHA, SHA1, SHA224, SHA256, SHA384 and SHA512
    # * MD2, MD4, MDC2 and MD5
    # * RIPEMD160
    # * DSS, DSS1 (Pseudo algorithms to be used for DSA signatures. DSS is
    #   equal to SHA and DSS1 is equal to SHA1)
    # 
    # For each of these algorithms, there is a sub-class of Digest that
    # can be instantiated as simply as e.g.
    # 
    #   digest = OpenSSL::Digest::SHA1.new
    # 
    # === Mapping between Digest class and sn/ln
    # 
    # The sn (short names) and ln (long names) are defined in
    # <openssl/object.h> and <openssl/obj_mac.h>. They are textual
    # representations of ASN.1 OBJECT IDENTIFIERs. Each supported digest
    # algorithm has an OBJECT IDENTIFIER associated to it and those again
    # have short/long names assigned to them.
    # E.g. the OBJECT IDENTIFIER for SHA-1 is 1.3.14.3.2.26 and its
    # sn is "SHA1" and its ln is "sha1".
    # ==== MD2
    # * sn: MD2
    # * ln: md2
    # ==== MD4
    # * sn: MD4
    # * ln: md4
    # ==== MD5
    # * sn: MD5
    # * ln: md5
    # ==== SHA
    # * sn: SHA
    # * ln: SHA
    # ==== SHA-1
    # * sn: SHA1
    # * ln: sha1
    # ==== SHA-224
    # * sn: SHA224
    # * ln: sha224
    # ==== SHA-256
    # * sn: SHA256
    # * ln: sha256
    # ==== SHA-384
    # * sn: SHA384
    # * ln: sha384
    # ==== SHA-512
    # * sn: SHA512
    # * ln: sha512
    # 
    # "Breaking" a message digest algorithm means defying its one-way
    # function characteristics, i.e. producing a collision or finding a way
    # to get to the original data by means that are more efficient than
    # brute-forcing etc. Most of the supported digest algorithms can be
    # considered broken in this sense, even the very popular MD5 and SHA1
    # algorithms. Should security be your highest concern, then you should
    # probably rely on SHA224, SHA256, SHA384 or SHA512.
    # 
    # === Hashing a file
    # 
    #   data = File.read('document')
    #   sha256 = OpenSSL::Digest::SHA256.new
    #   digest = sha256.digest(data)
    # 
    # === Hashing several pieces of data at once
    # 
    #   data1 = File.read('file1')
    #   data2 = File.read('file2')
    #   data3 = File.read('file3')
    #   sha256 = OpenSSL::Digest::SHA256.new
    #   sha256 << data1
    #   sha256 << data2
    #   sha256 << data3
    #   digest = sha256.digest
    # 
    # === Reuse a Digest instance
    # 
    #   data1 = File.read('file1')
    #   sha256 = OpenSSL::Digest::SHA256.new
    #   digest1 = sha256.digest(data1)
    # 
    #   data2 = File.read('file2')
    #   sha256.reset
    #   digest2 = sha256.digest(data2)
    class Digest < Class
        # Digest.new(string [, data]) -> Digest
        #  
        # Creates a Digest instance based on +string+, which is either the ln
        # (long name) or sn (short name) of a supported digest algorithm.
        # If +data+ (a +String+) is given, it is used as the initial input to the
        # Digest instance, i.e.
        #   digest = OpenSSL::Digest.new('sha256', 'digestdata')
        # is equal to
        #   digest = OpenSSL::Digest.new('sha256')
        #   digest.update('digestdata')
        # 
        # === Example
        #   digest = OpenSSL::Digest.new('sha1')
        def self.new(p1, p2 = v2)
            #This is a stub, used for indexing
        end
        # digest.reset -> self
        #  
        # Resets the Digest in the sense that any Digest#update that has been
        # performed is abandoned and the Digest is set to its initial state again.
        def reset()
            #This is a stub, used for indexing
        end
        # digest.update(string) -> aString
        #  
        # Not every message digest can be computed in one single pass. If a message
        # digest is to be computed from several subsequent sources, then each may
        # be passed individually to the Digest instance.
        # 
        # === Example
        #   digest = OpenSSL::Digest::SHA256.new
        #   digest.update('First input')
        #   digest << 'Second input' # equivalent to digest.update('Second input')
        #   result = digest.digest
        def update(string)
            #This is a stub, used for indexing
        end
        alias << update
        # digest.finish -> aString
        #  
        def finish()
            #This is a stub, used for indexing
        end
        # digest.digest_length -> integer
        #  
        # Returns the output size of the digest, i.e. the length in bytes of the
        # final message digest result.
        # 
        # === Example
        #   digest = OpenSSL::Digest::SHA1.new
        #   puts digest.digest_length # => 20
        def digest_length()
            #This is a stub, used for indexing
        end
        # digest.block_length -> integer
        #  
        # Returns the block length of the digest algorithm, i.e. the length in bytes
        # of an individual block. Most modern algorithms partition a message to be
        # digested into a sequence of fix-sized blocks that are processed
        # consecutively.
        # 
        # === Example
        #   digest = OpenSSL::Digest::SHA1.new
        #   puts digest.block_length # => 64
        def block_length()
            #This is a stub, used for indexing
        end
        # digest.name -> string
        #  
        # Returns the sn of this Digest instance.
        # 
        # === Example
        #   digest = OpenSSL::Digest::SHA512.new
        #   puts digest.name # => SHA512
        def name()
            #This is a stub, used for indexing
        end
        def <<(p1)
            #This is a stub, used for indexing
        end
        # Generic Exception class that is raised if an error occurs during a
        # Digest operation.
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
    # OpenSSL::Netscape is a namespace for SPKI (Simple Public Key
    # Infrastructure) which implements Signed Public Key and Challenge.
    # See {RFC 2692}[http://tools.ietf.org/html/rfc2692] and {RFC
    # 2693}[http://tools.ietf.org/html/rfc2692] for details.
    module Netscape
        # A Simple Public Key Infrastructure implementation (pronounced "spookey").
        # The structure is defined as
        #   PublicKeyAndChallenge ::= SEQUENCE {
        #     spki SubjectPublicKeyInfo,
        #     challenge IA5STRING
        #   }
        # 
        #   SignedPublicKeyAndChallenge ::= SEQUENCE {
        #     publicKeyAndChallenge PublicKeyAndChallenge,
        #     signatureAlgorithm AlgorithmIdentifier,
        #     signature BIT STRING
        #   }
        # where the definitions of SubjectPublicKeyInfo and AlgorithmIdentifier can
        # be found in RFC5280. SPKI is typically used in browsers for generating
        # a public/private key pair and a subsequent certificate request, using
        # the HTML <keygen> element.
        # 
        # == Examples
        # 
        # === Creating an SPKI
        #   key = OpenSSL::PKey::RSA.new 2048
        #   spki = OpenSSL::Netscape::SPKI.new
        #   spki.challenge = "RandomChallenge"
        #   spki.public_key = key.public_key
        #   spki.sign(key, OpenSSL::Digest::SHA256.new)
        #   #send a request containing this to a server generating a certificate
        # === Verifiying an SPKI request
        #   request = #...
        #   spki = OpenSSL::Netscape::SPKI.new request
        #   unless spki.verify(spki.public_key)
        #     # signature is invalid
        #   end
        #   #proceed
        class SPKI
            # SPKI.new([request]) => spki
            #  
            # === Parameters
            # * +request+ - optional raw request, either in PEM or DER format.
            def self.new(*request)
                #This is a stub, used for indexing
            end
            # spki.to_der => DER-encoded string
            #  
            # Returns the DER encoding of this SPKI.
            def to_der()
                #This is a stub, used for indexing
            end
            # spki.to_pem => PEM-encoded string
            #  
            # Returns the PEM encoding of this SPKI.
            def to_pem()
                #This is a stub, used for indexing
            end
            alias to_s to_pem
            # spki.to_text => string
            #  
            # Returns a textual representation of this SPKI, useful for debugging
            # purposes.
            def to_text()
                #This is a stub, used for indexing
            end
            # spki.public_key => pkey
            #  
            # Returns the public key associated with the SPKI, an instance of
            # OpenSSL::PKey.
            def public_key()
                #This is a stub, used for indexing
            end
            # spki.public_key = pub => pkey
            #  
            # === Parameters
            # * +pub+ - the public key to be set for this instance
            # 
            # Sets the public key to be associated with the SPKI, an instance of
            # OpenSSL::PKey. This should be the public key corresponding to the
            # private key used for signing the SPKI.
            def public_key= pub
                #This is a stub, used for indexing
            end
            # spki.sign(key, digest) => spki
            #  
            # === Parameters
            # * +key+ - the private key to be used for signing this instance
            # * +digest+ - the digest to be used for signing this instance
            # 
            # To sign an SPKI, the private key corresponding to the public key set
            # for this instance should be used, in addition to a digest algorithm in
            # the form of an OpenSSL::Digest. The private key should be an instance of
            # OpenSSL::PKey.
            def sign(key, digest)
                #This is a stub, used for indexing
            end
            # spki.verify(key) => boolean
            #  
            # === Parameters
            # * +key+ - the public key to be used for verifying the SPKI signature
            # 
            # Returns +true+ if the signature is valid, +false+ otherwise. To verify an
            # SPKI, the public key contained within the SPKI should be used.
            def verify(key)
                #This is a stub, used for indexing
            end
            # spki.challenge => string
            #  
            # Returns the challenge string associated with this SPKI.
            def challenge()
                #This is a stub, used for indexing
            end
            # spki.challenge = str => string
            #  
            # === Parameters
            # * +str+ - the challenge string to be set for this instance
            # 
            # Sets the challenge to be associated with the SPKI. May be used by the
            # server, e.g. to prevent replay.
            def challenge= str
                #This is a stub, used for indexing
            end
            def to_s()
                #This is a stub, used for indexing
            end
        end
        # Generic Exception class that is raised if an error occurs during an
        # operation on an instance of OpenSSL::Netscape::SPKI.
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
            def self.new(p1, p2, p3 = v3)
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
    # Provides password-based encryption functionality based on PKCS#5.
    # Typically used for securely deriving arbitrary length symmetric keys
    # to be used with an OpenSSL::Cipher from passwords. Another use case
    # is for storing passwords: Due to the ability to tweak the effort of
    # computation by increasing the iteration count, computation can be
    # slowed down artificially in order to render possible attacks infeasible.
    # 
    # PKCS5 offers support for PBKDF2 with an OpenSSL::Digest::SHA1-based
    # HMAC, or an arbitrary Digest if the underlying version of OpenSSL
    # already supports it (>= 0.9.4).
    # 
    # === Parameters
    # ==== Password
    # Typically an arbitrary String that represents the password to be used
    # for deriving a key.
    # ==== Salt
    # Prevents attacks based on dictionaries of common passwords. It is a
    # public value that can be safely stored along with the password (e.g.
    # if PBKDF2 is used for password storage). For maximum security, a fresh,
    # random salt should be generated for each stored password. According
    # to PKCS#5, a salt should be at least 8 bytes long.
    # ==== Iteration Count
    # Allows to tweak the length that the actual computation will take. The
    # larger the iteration count, the longer it will take.
    # ==== Key Length
    # Specifies the length in bytes of the output that will be generated.
    # Typically, the key length should be larger than or equal to the output
    # length of the underlying digest function, otherwise an attacker could
    # simply try to brute-force the key. According to PKCS#5, security is
    # limited by the output length of the underlying digest function, i.e.
    # security is not improved if a key length strictly larger than the
    # digest output length is chosen. Therefore, when using PKCS5 for
    # password storage, it suffices to store values equal to the digest
    # output length, nothing is gained by storing larger values.
    # 
    # == Examples
    # === Generating a 128 bit key for a Cipher (e.g. AES)
    #   pass = "secret"
    #   salt = OpenSSL::Random.random_bytes(16)
    #   iter = 20000
    #   key_len = 16
    #   key = OpenSSL::PKCS5.pbkdf2_hmac_sha1(pass, salt, iter, key_len)
    # 
    # === Storing Passwords
    #   pass = "secret"
    #   salt = OpenSSL::Random.random_bytes(16) #store this with the generated value
    #   iter = 20000
    #   digest = OpenSSL::Digest::SHA256.new
    #   len = digest.digest_length
    #   #the final value to be stored
    #   value = OpenSSL::PKCS5.pbkdf2_hmac(pass, salt, iter, len, digest)
    # 
    # === Important Note on Checking Passwords
    # When comparing passwords provided by the user with previously stored
    # values, a common mistake made is comparing the two values using "==".
    # Typically, "==" short-circuits on evaluation, and is therefore
    # vulnerable to timing attacks. The proper way is to use a method that
    # always takes the same amount of time when comparing two values, thus
    # not leaking any information to potential attackers. To compare two
    # values, the following could be used:
    #   def eql_time_cmp(a, b)
    #     unless a.length == b.length
    #       return false
    #     end
    #     cmp = b.bytes.to_a
    #     result = 0
    #     a.bytes.each_with_index {|c,i|
    #       result |= c ^ cmp[i]
    #     }
    #     result == 0
    #   end
    # Please note that the premature return in case of differing lengths
    # typically does not leak valuable information - when using PKCS#5, the
    # length of the values to be compared is of fixed size.
    module PKCS5
        # PKCS5.pbkdf2_hmac(pass, salt, iter, keylen, digest) => string
        #  
        # === Parameters
        # * +pass+ - string
        # * +salt+ - string - should be at least 8 bytes long.
        # * +iter+ - integer - should be greater than 1000.  20000 is better.
        # * +keylen+ - integer
        # * +digest+ - a string or OpenSSL::Digest object.
        # 
        # Available in OpenSSL 0.9.4.
        # 
        # Digests other than SHA1 may not be supported by other cryptography libraries.
        def self.pbkdf2_hmac(pass, salt, iter, keylen, digest)
            #This is a stub, used for indexing
        end
        # PKCS5.pbkdf2_hmac_sha1(pass, salt, iter, keylen) => string
        #  
        # === Parameters
        # * +pass+ - string
        # * +salt+ - string - should be at least 8 bytes long.
        # * +iter+ - integer - should be greater than 1000.  20000 is better.
        # * +keylen+ - integer
        # 
        # This method is available in almost any version of OpenSSL.
        # 
        # Conforms to rfc2898.
        def self.pbkdf2_hmac_sha1(pass, salt, iter, keylen)
            #This is a stub, used for indexing
        end
        # Generic Exception class that is raised if an error occurs during a
        # computation.
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
    # == Asymmetric Public Key Algorithms
    # 
    # Asymmetric public key algorithms solve the problem of establishing and
    # sharing secret keys to en-/decrypt messages. The key in such an
    # algorithm consists of two parts: a public key that may be distributed
    # to others and a private key that needs to remain secret.
    # 
    # Messages encrypted with a public key can only be encrypted by
    # recipients that are in possession of the associated private key.
    # Since public key algorithms are considerably slower than symmetric
    # key algorithms (cf. OpenSSL::Cipher) they are often used to establish
    # a symmetric key shared between two parties that are in possession of
    # each other's public key.
    # 
    # Asymmetric algorithms offer a lot of nice features that are used in a
    # lot of different areas. A very common application is the creation and
    # validation of digital signatures. To sign a document, the signatory
    # generally uses a message digest algorithm (cf. OpenSSL::Digest) to
    # compute a digest of the document that is then encrypted (i.e. signed)
    # using the private key. Anyone in possession of the public key may then
    # verify the signature by computing the message digest of the original
    # document on their own, decrypting the signature using the signatory's
    # public key and comparing the result to the message digest they
    # previously computed. The signature is valid if and only if the
    # decrypted signature is equal to this message digest.
    # 
    # The PKey module offers support for three popular public/private key
    # algorithms:
    # * RSA (OpenSSL::PKey::RSA)
    # * DSA (OpenSSL::PKey::DSA)
    # * Elliptic Curve Cryptography (OpenSSL::PKey::EC)
    # Each of these implementations is in fact a sub-class of the abstract
    # PKey class which offers the interface for supporting digital signatures
    # in the form of PKey#sign and PKey#verify.
    # 
    # == Diffie-Hellman Key Exchange
    # 
    # Finally PKey also features OpenSSL::PKey::DH, an implementation of
    # the Diffie-Hellman key exchange protocol based on discrete logarithms
    # in finite fields, the same basis that DSA is built on.
    # The Diffie-Hellman protocol can be used to exchange (symmetric) keys
    # over insecure channels without needing any prior joint knowledge
    # between the participating parties. As the security of DH demands
    # relatively long "public keys" (i.e. the part that is overtly
    # transmitted between participants) DH tends to be quite slow. If
    # security or speed is your primary concern, OpenSSL::PKey::EC offers
    # another implementation of the Diffie-Hellman protocol.
    module PKey
        # OpenSSL::PKey.read(string [, pwd ] ) -> PKey
        # OpenSSL::PKey.read(file [, pwd ]) -> PKey
        #  
        # === Parameters
        # * +string+ is a DER- or PEM-encoded string containing an arbitrary private
        # or public key.
        # * +file+ is an instance of +File+ containing a DER- or PEM-encoded
        # arbitrary private or public key.
        # * +pwd+ is an optional password in case +string+ or +file+ is an encrypted
        # PEM resource.
        def self.read(*several_variants)
            #This is a stub, used for indexing
        end
        # An implementation of the Diffie-Hellman key exchange protocol based on
        # discrete logarithms in finite fields, the same basis that DSA is built
        # on.
        # 
        # === Accessor methods for the Diffie-Hellman parameters
        # * DH#p
        # The prime (an OpenSSL::BN) of the Diffie-Hellman parameters.
        # * DH#g
        # The generator (an OpenSSL::BN) g of the Diffie-Hellman parameters.
        # * DH#pub_key
        # The per-session public key (an OpenSSL::BN) matching the private key.
        # This needs to be passed to DH#compute_key.
        # * DH#priv_key
        # The per-session private key, an OpenSSL::BN.
        # 
        # === Example of a key exchange
        #  dh1 = OpenSSL::PKey::DH.new(2048)
        #  der = dh1.public_key.to_der #you may send this publicly to the participating party
        #  dh2 = OpenSSL::PKey::DH.new(der)
        #  dh2.generate_key! #generate the per-session key pair
        #  symm_key1 = dh1.compute_key(dh2.pub_key)
        #  symm_key2 = dh2.compute_key(dh1.pub_key)
        # 
        #  puts symm_key1 == symm_key2 # => true
        class DH < PKey
            # DH.generate(size [, generator]) -> dh
            #  
            # Creates a new DH instance from scratch by generating the private and public
            # components alike.
            # 
            # === Parameters
            # * +size+ is an integer representing the desired key size. Keys smaller than 1024 bits should be considered insecure.
            # * +generator+ is a small number > 1, typically 2 or 5.
            def self.generate(p1, p2 = v2)
                #This is a stub, used for indexing
            end
            # DH.new([size [, generator] | string]) -> dh
            #  
            # Either generates a DH instance from scratch or by reading already existing
            # DH parameters from +string+. Note that when reading a DH instance from
            # data that was encoded from a DH instance by using DH#to_pem or DH#to_der
            # the result will *not* contain a public/private key pair yet. This needs to
            # be generated using DH#generate_key! first.
            # 
            # === Parameters
            # * +size+ is an integer representing the desired key size. Keys smaller than 1024 bits should be considered insecure.
            # * +generator+ is a small number > 1, typically 2 or 5.
            # * +string+ contains the DER or PEM encoded key.
            # 
            # === Examples
            #  DH.new # -> dh
            #  DH.new(1024) # -> dh
            #  DH.new(1024, 5) # -> dh
            #  #Reading DH parameters
            #  dh = DH.new(File.read('parameters.pem')) # -> dh, but no public/private key yet
            #  dh.generate_key! # -> dh with public and private key
            def self.new(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            # dh.public? -> true | false
            #  
            # Indicates whether this DH instance has a public key associated with it or
            # not. The public key may be retrieved with DH#pub_key.
            def public?()
                #This is a stub, used for indexing
            end
            # dh.private? -> true | false
            #  
            # Indicates whether this DH instance has a private key associated with it or
            # not. The private key may be retrieved with DH#priv_key.
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
            # Encodes this DH to its PEM encoding. Note that any existing per-session
            # public/private keys will *not* get encoded, just the Diffie-Hellman
            # parameters will be encoded.
            def export()
                #This is a stub, used for indexing
            end
            alias to_pem export
            alias to_s export
            # dh.to_der -> aString
            #  
            # Encodes this DH to its DER encoding. Note that any existing per-session
            # public/private keys will *not* get encoded, just the Diffie-Hellman
            # parameters will be encoded.
            def to_der()
                #This is a stub, used for indexing
            end
            # dh.public_key -> aDH
            #  
            # Returns a new DH instance that carries just the public information, i.e.
            # the prime +p+ and the generator +g+, but no public/private key yet. Such
            # a pair may be generated using DH#generate_key!. The "public key" needed
            # for a key exchange with DH#compute_key is considered as per-session
            # information and may be retrieved with DH#pub_key once a key pair has
            # been generated.
            # If the current instance already contains private information (and thus a
            # valid public/private key pair), this information will no longer be present
            # in the new instance generated by DH#public_key. This feature is helpful for
            # publishing the Diffie-Hellman parameters without leaking any of the private
            # per-session information.
            # 
            # === Example
            #  dh = OpenSSL::PKey::DH.new(2048) # has public and private key set
            #  public_key = dh.public_key # contains only prime and generator
            #  parameters = public_key.to_der # it's safe to publish this
            def public_key()
                #This is a stub, used for indexing
            end
            # dh.check_params -> true | false
            #  
            # Validates the Diffie-Hellman parameters associated with this instance.
            # It checks whether a safe prime and a suitable generator are used. If this
            # is not the case, +false+ is returned.
            def params_ok?()
                #This is a stub, used for indexing
            end
            # dh.generate_key! -> self
            #  
            # Generates a private and public key unless a private key already exists.
            # If this DH instance was generated from public DH parameters (e.g. by
            # encoding the result of DH#public_key), then this method needs to be
            # called first in order to generate the per-session keys before performing
            # the actual key exchange.
            # 
            # === Example
            #   dh = OpenSSL::PKey::DH.new(2048)
            #   public_key = dh.public_key #contains no private/public key yet
            #   public_key.generate_key!
            #   puts public_key.private? # => true
            def generate_key!()
                #This is a stub, used for indexing
            end
            # dh.compute_key(pub_bn) -> aString
            #  
            # Returns a String containing a shared secret computed from the other party's public value.
            # See DH_compute_key() for further information.
            # 
            # === Parameters
            # * +pub_bn+ is a OpenSSL::BN, *not* the DH instance returned by
            # DH#public_key as that contains the DH parameters only.
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
        # Generic exception that is raised if an operation on a DH PKey
        # fails unexpectedly or in case an instantiation of an instance of DH
        # fails due to non-conformant input data.
        class DHError < PKeyError
        end
        # DSA, the Digital Signature Algorithm, is specified in NIST's
        # FIPS 186-3. It is an asymmetric public key algorithm that may be used
        # similar to e.g. RSA.
        # Please note that for OpenSSL versions prior to 1.0.0 the digest
        # algorithms OpenSSL::Digest::DSS (equivalent to SHA) or
        # OpenSSL::Digest::DSS1 (equivalent to SHA-1) must be used for issuing
        # signatures with a DSA key using OpenSSL::PKey#sign.
        # Starting with OpenSSL 1.0.0, digest algorithms are no longer restricted,
        # any Digest may be used for signing.
        class DSA < PKey
            # DSA.generate(size) -> dsa
            #  
            # Creates a new DSA instance by generating a private/public key pair
            # from scratch.
            # 
            # === Parameters
            # * +size+ is an integer representing the desired key size.
            def self.generate(size)
                #This is a stub, used for indexing
            end
            # DSA.new([size | string [, pass]) -> dsa
            #  
            # Creates a new DSA instance by reading an existing key from +string+.
            # 
            # === Parameters
            # * +size+ is an integer representing the desired key size.
            # * +string+ contains a DER or PEM encoded key.
            # * +pass+ is a string that contains an optional password.
            # 
            # === Examples
            #  DSA.new -> dsa
            #  DSA.new(1024) -> dsa
            #  DSA.new(File.read('dsa.pem')) -> dsa
            #  DSA.new(File.read('dsa.pem'), 'mypassword') -> dsa
            def self.new(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            # dsa.public? -> true | false
            #  
            # Indicates whether this DSA instance has a public key associated with it or
            # not. The public key may be retrieved with DSA#public_key.
            def public?()
                #This is a stub, used for indexing
            end
            # dsa.private? -> true | false
            #  
            # Indicates whether this DSA instance has a private key associated with it or
            # not. The private key may be retrieved with DSA#private_key.
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
            # Encodes this DSA to its PEM encoding.
            # 
            # === Parameters
            # * +cipher+ is an OpenSSL::Cipher.
            # * +password+ is a string containing your password.
            # 
            # === Examples
            #  DSA.to_pem -> aString
            #  DSA.to_pem(cipher, 'mypassword') -> aString
            def export(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            alias to_pem export
            alias to_s export
            # dsa.to_der -> aString
            #  
            # Encodes this DSA to its DER encoding.
            def to_der()
                #This is a stub, used for indexing
            end
            # dsa.public_key -> aDSA
            #  
            # Returns a new DSA instance that carries just the public key information.
            # If the current instance has also private key information, this will no
            # longer be present in the new instance. This feature is helpful for
            # publishing the public key information without leaking any of the private
            # information.
            # 
            # === Example
            #  dsa = OpenSSL::PKey::DSA.new(2048) # has public and private information
            #  pub_key = dsa.public_key # has only the public part available
            #  pub_key_der = pub_key.to_der # it's safe to publish this
            def public_key()
                #This is a stub, used for indexing
            end
            # dsa.syssign(string) -> aString
            #  
            # Computes and returns the DSA signature of +string+, where +string+ is
            # expected to be an already-computed message digest of the original input
            # data. The signature is issued using the private key of this DSA instance.
            # 
            # === Parameters
            # * +string+ is a message digest of the original input data to be signed
            # 
            # === Example
            #  dsa = OpenSSL::PKey::DSA.new(2048)
            #  doc = "Sign me"
            #  digest = OpenSSL::Digest::SHA1.digest(doc)
            #  sig = dsa.syssign(digest)
            def syssign(string)
                #This is a stub, used for indexing
            end
            # dsa.sysverify(digest, sig) -> true | false
            #  
            # Verifies whether the signature is valid given the message digest input. It
            # does so by validating +sig+ using the public key of this DSA instance.
            # 
            # === Parameters
            # * +digest+ is a message digest of the original input data to be signed
            # * +sig+ is a DSA signature value
            # 
            # === Example
            #  dsa = OpenSSL::PKey::DSA.new(2048)
            #  doc = "Sign me"
            #  digest = OpenSSL::Digest::SHA1.digest(doc)
            #  sig = dsa.syssign(digest)
            #  puts dsa.sysverify(digest, sig) # => true
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
        # Generic exception that is raised if an operation on a DSA PKey
        # fails unexpectedly or in case an instantiation of an instance of DSA
        # fails due to non-conformant input data.
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
            # OpenSSL::PKey::EC.new(pem_string [, pwd])
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
            # key.export   => String
            # key.export(cipher, pass_phrase) => String
            #  
            # Outputs the EC key in PEM encoding.  If +cipher+ and +pass_phrase+ are
            # given they will be used to encrypt the key.  +cipher+ must be an
            # OpenSSL::Cipher::Cipher instance. Note that encryption will only be
            # effective for a private key, public keys will always be encoded in plain
            # text.
            def export(*several_variants)
                #This is a stub, used for indexing
            end
            alias to_pem export
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
            def to_pem(p1 = v1, p2 = v2)
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
                # point.mul(bn)  => point
                # point.mul(bn, bn) => point
                # point.mul([bn], [point]) => point
                # point.mul([bn], [point], bn) => point
                #  
                def mul(*several_variants)
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
        # An abstract class that bundles signature creation (PKey#sign) and
        # validation (PKey#verify) that is common to all implementations except
        # OpenSSL::PKey::DH
        # * OpenSSL::PKey::RSA
        # * OpenSSL::PKey::DSA
        # * OpenSSL::PKey::EC
        class PKey
            # PKeyClass.new -> self
            #  
            # Because PKey is an abstract class, actually calling this method explicitly
            # will raise a +NotImplementedError+.
            def self.new()
                #This is a stub, used for indexing
            end
            # pkey.sign(digest, data) -> String
            #  
            # To sign the +String+ +data+, +digest+, an instance of OpenSSL::Digest, must
            # be provided. The return value is again a +String+ containing the signature.
            # A PKeyError is raised should errors occur.
            # Any previous state of the +Digest+ instance is irrelevant to the signature
            # outcome, the digest instance is reset to its initial state during the
            # operation.
            # 
            # == Example
            #   data = 'Sign me!'
            #   digest = OpenSSL::Digest::SHA256.new
            #   pkey = OpenSSL::PKey::RSA.new(2048)
            #   signature = pkey.sign(digest, data)
            def sign(digest, data)
                #This is a stub, used for indexing
            end
            # pkey.verify(digest, signature, data) -> String
            #  
            # To verify the +String+ +signature+, +digest+, an instance of
            # OpenSSL::Digest, must be provided to re-compute the message digest of the
            # original +data+, also a +String+. The return value is +true+ if the
            # signature is valid, +false+ otherwise. A PKeyError is raised should errors
            # occur.
            # Any previous state of the +Digest+ instance is irrelevant to the validation
            # outcome, the digest instance is reset to its initial state during the
            # operation.
            # 
            # == Example
            #   data = 'Sign me!'
            #   digest = OpenSSL::Digest::SHA256.new
            #   pkey = OpenSSL::PKey::RSA.new(2048)
            #   signature = pkey.sign(digest, data)
            #   pub_key = pkey.public_key
            #   puts pub_key.verify(digest, signature, data) # => true
            def verify(digest, signature, data)
                #This is a stub, used for indexing
            end
        end
        # Raised when errors occur during PKey#sign or PKey#verify.
        class PKeyError < OpenSSLError
        end
        # RSA is an asymmetric public key algorithm that has been formalized in
        # RFC 3447. It is in widespread use in public key infrastuctures (PKI)
        # where certificates (cf. OpenSSL::X509::Certificate) often are issued
        # on the basis of a public/private RSA key pair. RSA is used in a wide
        # field of applications such as secure (symmetric) key exchange, e.g.
        # when establishing a secure TLS/SSL connection. It is also used in
        # various digital signature schemes.
        class RSA < PKey
            # RSA.generate(size)           => RSA instance
            # RSA.generate(size, exponent) => RSA instance
            #  
            # Generates an RSA keypair.  +size+ is an integer representing the desired key
            # size.  Keys smaller than 1024 should be considered insecure.  +exponent+ is
            # an odd number normally 3, 17, or 65537.
            def self.generate(*several_variants)
                #This is a stub, used for indexing
            end
            # RSA.new(key_size)                 => RSA instance
            # RSA.new(encoded_key)              => RSA instance
            # RSA.new(encoded_key, pass_phrase) => RSA instance
            #  
            # Generates or loads an RSA keypair.  If an integer +key_size+ is given it
            # represents the desired key size.  Keys less than 1024 bits should be
            # considered insecure.
            # 
            # A key can instead be loaded from an +encoded_key+ which must be PEM or DER
            # encoded.  A +pass_phrase+ can be used to decrypt the key.  If none is given
            # OpenSSL will prompt for the pass phrase.
            # 
            # = Examples
            # 
            #   OpenSSL::PKey::RSA.new 2048
            #   OpenSSL::PKey::RSA.new File.read 'rsa.pem'
            #   OpenSSL::PKey::RSA.new File.read('rsa.pem'), 'my pass phrase'
            def self.new(*several_variants)
                #This is a stub, used for indexing
            end
            # rsa.public? => true
            #  
            # The return value is always true since every private key is also a public
            # key.
            def public?()
                #This is a stub, used for indexing
            end
            # rsa.private? => true | false
            #  
            # Does this keypair contain a private key?
            def private?()
                #This is a stub, used for indexing
            end
            # rsa.to_text => String
            #  
            # THIS METHOD IS INSECURE, PRIVATE INFORMATION CAN LEAK OUT!!!
            # 
            # Dumps all parameters of a keypair to a String
            # 
            # Don't use :-)) (It's up to you)
            def to_text()
                #This is a stub, used for indexing
            end
            # rsa.to_pem                      => PEM-format String
            # rsa.to_pem(cipher, pass_phrase) => PEM-format String
            #  
            # Outputs this keypair in PEM encoding.  If +cipher+ and +pass_phrase+ are
            # given they will be used to encrypt the key.  +cipher+ must be an
            # OpenSSL::Cipher::Cipher instance.
            def export(p1 = v1, p2 = v2)
                #This is a stub, used for indexing
            end
            alias to_pem export
            alias to_s export
            # rsa.to_der => DER-format String
            #  
            # Outputs this keypair in DER encoding.
            def to_der()
                #This is a stub, used for indexing
            end
            # rsa.public_key -> RSA
            #  
            # Makes new RSA instance containing the public key from the private key.
            def public_key()
                #This is a stub, used for indexing
            end
            # rsa.public_encrypt(string)          => String
            # rsa.public_encrypt(string, padding) => String
            #  
            # Encrypt +string+ with the public key.  +padding+ defaults to PKCS1_PADDING.
            # The encrypted string output can be decrypted using #private_decrypt.
            def public_encrypt(*several_variants)
                #This is a stub, used for indexing
            end
            # rsa.public_decrypt(string)          => String
            # rsa.public_decrypt(string, padding) => String
            #  
            # Decrypt +string+, which has been encrypted with the private key, with the
            # public key.  +padding+ defaults to PKCS1_PADDING.
            def public_decrypt(*several_variants)
                #This is a stub, used for indexing
            end
            # rsa.private_encrypt(string)          => String
            # rsa.private_encrypt(string, padding) => String
            #  
            # Encrypt +string+ with the private key.  +padding+ defaults to PKCS1_PADDING.
            # The encrypted string output can be decrypted using #public_decrypt.
            def private_encrypt(*several_variants)
                #This is a stub, used for indexing
            end
            # rsa.private_decrypt(string)          => String
            # rsa.private_decrypt(string, padding) => String
            #  
            # Decrypt +string+, which has been encrypted with the public key, with the
            # private key.  +padding+ defaults to PKCS1_PADDING.
            def private_decrypt(*several_variants)
                #This is a stub, used for indexing
            end
            # rsa.params => hash
            #  
            # THIS METHOD IS INSECURE, PRIVATE INFORMATION CAN LEAK OUT!!!
            # 
            # Stores all parameters of key to the hash.  The hash has keys 'n', 'e', 'd',
            # 'p', 'q', 'dmp1', 'dmq1', 'iqmp'.
            # 
            # Don't use :-)) (It's up to you)
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
        # Generic exception that is raised if an operation on an RSA PKey
        # fails unexpectedly or in case an instantiation of an instance of RSA
        # fails due to non-conformant input data.
        class RSAError < PKeyError
        end
    end
    module Random
        class RandomError < OpenSSLError
        end
    end
    # Use SSLContext to set up the parameters for a TLS (former SSL)
    # connection. Both client and server TLS connections are supported,
    # SSLSocket and SSLServer may be used in conjunction with an instance
    # of SSLContext to set up connections.
    module SSL
        # An SSLContext is used to set various options regarding certificates,
        # algorithms, verification, session caching, etc.  The SSLContext is
        # used to create an SSLSocket.
        # 
        # All attributes must be set before creating an SSLSocket as the
        # SSLContext will be frozen afterward.
        # 
        # The following attributes are available but don't show up in rdoc:
        # * ssl_version, cert, key, client_ca, ca_file, ca_path, timeout,
        # * verify_mode, verify_depth client_cert_cb, tmp_dh_callback,
        # * session_id_context, session_add_cb, session_new_cb, session_remove_cb
        class SSLContext
            # No session caching for client or server
            SESSION_CACHE_OFF = nil #value is unknown, used for indexing.
            # Client sessions are added to the session cache
            SESSION_CACHE_CLIENT = nil #value is unknown, used for indexing.
            # Server sessions are added to the session cache
            SESSION_CACHE_SERVER = nil #value is unknown, used for indexing.
            # Both client and server sessions are added to the session cache
            SESSION_CACHE_BOTH = nil #value is unknown, used for indexing.
            # Normally the session cache is checked for expired sessions every 255
            # connections.  Since this may lead to a delay that cannot be controlled,
            # the automatic flushing may be disabled and #flush_sessions can be
            # called explicitly.
            SESSION_CACHE_NO_AUTO_CLEAR = nil #value is unknown, used for indexing.
            # Always perform external lookups of sessions even if they are in the
            # internal cache.
            # 
            # This flag has no effect on clients
            SESSION_CACHE_NO_INTERNAL_LOOKUP = nil #value is unknown, used for indexing.
            # Never automatically store sessions in the internal store.
            SESSION_CACHE_NO_INTERNAL_STORE = nil #value is unknown, used for indexing.
            # Enables both SESSION_CACHE_NO_INTERNAL_LOOKUP and
            # SESSION_CACHE_NO_INTERNAL_STORE.
            SESSION_CACHE_NO_INTERNAL = nil #value is unknown, used for indexing.
            # The list of available SSL/TLS methods   
            METHODS = nil #value is unknown, used for indexing.
            # SSLContext.new => ctx
            # SSLContext.new(:TLSv1) => ctx
            # SSLContext.new("SSLv23_client") => ctx
            #  
            # You can get a list of valid methods with OpenSSL::SSL::SSLContext::METHODS
            def self.new(*several_variants)
                #This is a stub, used for indexing
            end
            # ctx.ssl_version = :TLSv1
            # ctx.ssl_version = "SSLv23_client"
            #  
            # You can get a list of valid versions with OpenSSL::SSL::SSLContext::METHODS
            def ssl_version=(p1)
                #This is a stub, used for indexing
            end
            # ctx.ciphers => [[name, version, bits, alg_bits], ...]
            #  
            # The list of ciphers configured for this context.
            def ciphers()
                #This is a stub, used for indexing
            end
            # ctx.ciphers = "cipher1:cipher2:..."
            # ctx.ciphers = [name, ...]
            # ctx.ciphers = [[name, version, bits, alg_bits], ...]
            #  
            # Sets the list of available ciphers for this context.  Note in a server
            # context some ciphers require the appropriate certificates.  For example, an
            # RSA cipher can only be chosen when an RSA certificate is available.
            # 
            # See also OpenSSL::Cipher and OpenSSL::Cipher::ciphers
            def ciphers=(p1)
                #This is a stub, used for indexing
            end
            # ctx.setup => Qtrue # first time
            # ctx.setup => nil # thereafter
            #  
            # This method is called automatically when a new SSLSocket is created.
            # Normally you do not need to call this method (unless you are writing an
            # extension in C).
            def setup(*several_variants)
                #This is a stub, used for indexing
            end
            # ctx.session_add(session) -> true | false
            #  
            # Adds +session+ to the session cache
            def session_add(session)
                #This is a stub, used for indexing
            end
            # ctx.session_remove(session) -> true | false
            #  
            # Removes +session+ from the session cache
            def session_remove(session)
                #This is a stub, used for indexing
            end
            # ctx.session_cache_mode -> Integer
            #  
            # The current session cache mode.
            def session_cache_mode()
                #This is a stub, used for indexing
            end
            # ctx.session_cache_mode=(integer) -> Integer
            #  
            # Sets the SSL session cache mode.  Bitwise-or together the desired
            # SESSION_CACHE_* constants to set.  See SSL_CTX_set_session_cache_mode(3) for
            # details.
            def session_cache_mode=(integer)
                #This is a stub, used for indexing
            end
            # ctx.session_cache_size -> Integer
            #  
            # Returns the current session cache size.  Zero is used to represent an
            # unlimited cache size.
            def session_cache_size()
                #This is a stub, used for indexing
            end
            # ctx.session_cache_size=(integer) -> Integer
            #  
            # Sets the session cache size.  Returns the previously valid session cache
            # size.  Zero is used to represent an unlimited session cache size.
            def session_cache_size=(integer)
                #This is a stub, used for indexing
            end
            # ctx.session_cache_stats -> Hash
            #  
            # Returns a Hash containing the following keys:
            # 
            # :accept:: Number of started SSL/TLS handshakes in server mode
            # :accept_good:: Number of established SSL/TLS sessions in server mode
            # :accept_renegotiate:: Number of start renegotiations in server mode
            # :cache_full:: Number of sessions that were removed due to cache overflow
            # :cache_hits:: Number of successfully reused connections
            # :cache_misses:: Number of sessions proposed by clients that were not found
            #                 in the cache
            # :cache_num:: Number of sessions in the internal session cache
            # :cb_hits:: Number of sessions retrieved from the external cache in server
            #            mode
            # :connect:: Number of started SSL/TLS handshakes in client mode
            # :connect_good:: Number of established SSL/TLS sessions in client mode
            # :connect_renegotiate:: Number of start renegotiations in client mode
            # :timeouts:: Number of sessions proposed by clients that were found in the
            #             cache but had expired due to timeouts
            def session_cache_stats()
                #This is a stub, used for indexing
            end
            # ctx.flush_sessions(time | nil) -> self
            #  
            # Removes sessions in the internal cache that have expired at +time+.
            def flush_sessions(p1 = v1)
                #This is a stub, used for indexing
            end
        end
        # Generic error class raised by SSLSocket and SSLContext.
        class SSLError < OpenSSLError
        end
        # The following attributes are available but don't show up in rdoc.
        # * io, context, sync_close
        class SSLSocket
            # SSLSocket.new(io) => aSSLSocket
            # SSLSocket.new(io, ctx) => aSSLSocket
            #  
            # Creates a new SSL socket from +io+ which must be a real ruby object (not an
            # IO-like object that responds to read/write.
            # 
            # If +ctx+ is provided the SSL Sockets initial params will be taken from
            # the context.
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
            # Initiates an SSL/TLS handshake with a server.  The handshake may be started
            # after unencrypted data has been sent over the socket.
            def connect()
                #This is a stub, used for indexing
            end
            # ssl.connect_nonblock => self
            #  
            # Initiates the SSL/TLS handshake as a client in non-blocking manner.
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
            # Waits for a SSL/TLS client to initiate a handshake.  The handshake may be
            # started after unencrypted data has been sent over the socket.
            def accept()
                #This is a stub, used for indexing
            end
            # ssl.accept_nonblock => self
            #  
            # Initiates the SSL/TLS handshake as a server in non-blocking manner.
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
            # Reads +length+ bytes from the SSL connection.  If a pre-allocated +buffer+
            # is provided the data will be written into it.
            def sysread(*several_variants)
                #This is a stub, used for indexing
            end
            # ssl.sysread_nonblock(length) => string
            # ssl.sysread_nonblock(length, buffer) => buffer
            #  
            # A non-blocking version of #sysread.  Raises an SSLError if reading would
            # block.
            # 
            # Reads +length+ bytes from the SSL connection.  If a pre-allocated +buffer+
            # is provided the data will be written into it.
            def sysread_nonblock(*several_variants)
                #This is a stub, used for indexing
            end
            # ssl.syswrite(string) => Integer
            #  
            # Writes +string+ to the SSL connection.
            def syswrite(string)
                #This is a stub, used for indexing
            end
            # ssl.syswrite_nonblock(string) => Integer
            #  
            # Writes +string+ to the SSL connection in a non-blocking manner.  Raises an
            # SSLError if writing would block.
            def syswrite_nonblock(string)
                #This is a stub, used for indexing
            end
            # ssl.sysclose => nil
            #  
            # Shuts down the SSL connection and prepares it for another connection.
            def sysclose()
                #This is a stub, used for indexing
            end
            # ssl.cert => cert or nil
            #  
            # The X509 certificate for this socket endpoint.
            def cert()
                #This is a stub, used for indexing
            end
            # ssl.peer_cert => cert or nil
            #  
            # The X509 certificate for this socket's peer.
            def peer_cert()
                #This is a stub, used for indexing
            end
            # ssl.peer_cert_chain => [cert, ...] or nil
            #  
            # The X509 certificate chain for this socket's peer.
            def peer_cert_chain()
                #This is a stub, used for indexing
            end
            # ssl.version => String
            # *
            # Returns a String representing the SSL/TLS version that was negotiated
            # for the connection, for example "TLSv1.2".
            def ssl_version()
                #This is a stub, used for indexing
            end
            # ssl.cipher => [name, version, bits, alg_bits]
            # *
            # The cipher being used for the current connection
            def cipher()
                #This is a stub, used for indexing
            end
            # ssl.state => string
            #  
            # A description of the current connection state.
            def state()
                #This is a stub, used for indexing
            end
            # ssl.pending => Integer
            #  
            # The number of bytes that are immediately available for reading
            def pending()
                #This is a stub, used for indexing
            end
            # ssl.session_reused? -> true | false
            #  
            # Returns true if a reused session was negotiated during the handshake.
            def session_reused?()
                #This is a stub, used for indexing
            end
            # ssl.session = session -> session
            #  
            # Sets the Session to be used when the connection is established.
            def session= session
                #This is a stub, used for indexing
            end
            # ssl.verify_result => Integer
            #  
            # Returns the result of the peer certificates verification.  See verify(1)
            # for error values and descriptions.
            # 
            # If no peer certificate was presented X509_V_OK is returned.
            def verify_result()
                #This is a stub, used for indexing
            end
            # ssl.client_ca => [x509name, ...]
            #  
            # Returns the list of client CAs. Please note that in contrast to
            # SSLContext#client_ca= no array of X509::Certificate is returned but
            # X509::Name instances of the CA's subject distinguished name.
            # 
            # In server mode, returns the list set by SSLContext#client_ca=.
            # In client mode, returns the list of client CAs sent from the server.
            def client_ca()
                #This is a stub, used for indexing
            end
            # ssl.npn_protocol => String
            #  
            # Returns the protocol string that was finally selected by the client
            # during the handshake.
            def npn_protocol()
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
            # Gets start time of the session.
            def time()
                #This is a stub, used for indexing
            end
            # session.time=(Time) -> Time
            # session.time=(integer) -> Time
            #  
            # Sets start time of the session. Time resolution is in seconds.
            def time=(*several_variants)
                #This is a stub, used for indexing
            end
            # session.timeout -> integer
            #  
            # Gets how long until the session expires in seconds.
            def timeout()
                #This is a stub, used for indexing
            end
            # session.timeout=(integer) -> integer
            #  
            # Sets how long until the session expires in seconds.
            def timeout=(integer)
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
        # Implementation of an X.509 certificate as specified in RFC 5280.
        # Provides access to a certificate's attributes and allows certificates
        # to be read from a string, but also supports the creation of new
        # certificates from scratch.
        # 
        # === Reading a certificate from a file
        # 
        # Certificate is capable of handling DER-encoded certificates and
        # certificates encoded in OpenSSL's PEM format.
        # 
        #   raw = File.read "cert.cer" # DER- or PEM-encoded
        #   certificate = OpenSSL::X509::Certificate.new raw
        # 
        # === Saving a certificate to a file
        # 
        # A certificate may be encoded in DER format
        # 
        #   cert = ...
        #   File.open("cert.cer", "wb") { |f| f.print cert.to_der }
        # 
        # or in PEM format
        # 
        #   cert = ...
        #   File.open("cert.pem", "wb") { |f| f.print cert.to_pem }
        # 
        # X.509 certificates are associated with a private/public key pair,
        # typically a RSA, DSA or ECC key (see also OpenSSL::PKey::RSA,
        # OpenSSL::PKey::DSA and OpenSSL::PKey::EC), the public key itself is
        # stored within the certificate and can be accessed in form of an
        # OpenSSL::PKey. Certificates are typically used to be able to associate
        # some form of identity with a key pair, for example web servers serving
        # pages over HTTPs use certificates to authenticate themselves to the user.
        # 
        # The public key infrastructure (PKI) model relies on trusted certificate
        # authorities ("root CAs") that issue these certificates, so that end
        # users need to base their trust just on a selected few authorities
        # that themselves again vouch for subordinate CAs issuing their
        # certificates to end users.
        # 
        # The OpenSSL::X509 module provides the tools to set up an independent
        # PKI, similar to scenarios where the 'openssl' command line tool is
        # used for issuing certificates in a private PKI.
        # 
        # === Creating a root CA certificate and an end-entity certificate
        # 
        # First, we need to create a "self-signed" root certificate. To do so,
        # we need to generate a key first. Please note that the choice of "1"
        # as a serial number is considered a security flaw for real certificates.
        # Secure choices are integers in the two-digit byte range and ideally
        # not sequential but secure random numbers, steps omitted here to keep
        # the example concise.
        # 
        #   root_key = OpenSSL::PKey::RSA.new 2048 # the CA's public/private key
        #   root_ca = OpenSSL::X509::Certificate.new
        #   root_ca.version = 2 # cf. RFC 5280 - to make it a "v3" certificate
        #   root_ca.serial = 1
        #   root_ca.subject = OpenSSL::X509::Name.parse "/DC=org/DC=ruby-lang/CN=Ruby CA"
        #   root_ca.issuer = root_ca.subject # root CA's are "self-signed"
        #   root_ca.public_key = root_key.public_key
        #   root_ca.not_before = Time.now
        #   root_ca.not_after = root_ca.not_before + 2 * 365 * 24 * 60 * 60 # 2 years validity
        #   ef = OpenSSL::X509::ExtensionFactory.new
        #   ef.subject_certificate = root_ca
        #   ef.issuer_certificate = root_ca
        #   root_ca.add_extension(ef.create_extension("basicConstraints","CA:TRUE",true))
        #   root_ca.add_extension(ef.create_extension("keyUsage","keyCertSign, cRLSign", true))
        #   root_ca.add_extension(ef.create_extension("subjectKeyIdentifier","hash",false))
        #   root_ca.add_extension(ef.create_extension("authorityKeyIdentifier","keyid:always",false))
        #   root_ca.sign(root_key, OpenSSL::Digest::SHA256.new)
        # 
        # The next step is to create the end-entity certificate using the root CA
        # certificate.
        # 
        #   key = OpenSSL::PKey::RSA.new 2048
        #   cert = OpenSSL::X509::Certificate.new
        #   cert.version = 2
        #   cert.serial = 2
        #   cert.subject = OpenSSL::X509::Name.parse "/DC=org/DC=ruby-lang/CN=Ruby certificate"
        #   cert.issuer = root_ca.subject # root CA is the issuer
        #   cert.public_key = key.public_key
        #   cert.not_before = Time.now
        #   cert.not_after = cert.not_before + 1 * 365 * 24 * 60 * 60 # 1 years validity
        #   ef = OpenSSL::X509::ExtensionFactory.new
        #   ef.subject_certificate = cert
        #   ef.issuer_certificate = root_ca
        #   cert.add_extension(ef.create_extension("keyUsage","digitalSignature", true))
        #   cert.add_extension(ef.create_extension("subjectKeyIdentifier","hash",false))
        #   cert.sign(root_key, OpenSSL::Digest::SHA256.new)
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
            # cert.not_after = time => time
            #  
            def not_after= time
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
            # OpenSSL::X509::Extension.new asn1
            # OpenSSL::X509::Extension.new name, value
            # OpenSSL::X509::Extension.new name, value, critical
            #  
            # Creates an X509 extension.
            # 
            # The extension may be created from +asn1+ data or from an extension +name+
            # and +value+.  The +name+ may be either an OID or an extension name.  If
            # +critical+ is true the extension is marked critical.
            def self.new asn1
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
        # An X.509 name represents a hostname, email address or other entity
        # associated with a public key.
        # 
        # You can create a Name by parsing a distinguished name String or by
        # supplying the distinguished name as an Array.
        # 
        #   name = OpenSSL::X509::Name.parse 'CN=nobody/DC=example'
        # 
        #   name = OpenSSL::X509::Name.new [['CN', 'nobody'], ['DC', 'example']]
        class Name
            include Comparable
            # DEFAULT_OBJECT_TYPE
            # 
            # The default object type for name entries.
            DEFAULT_OBJECT_TYPE = nil #value is unknown, used for indexing.
            # OBJECT_TYPE_TEMPLATE
            # 
            # The default object type template for name entries.
            OBJECT_TYPE_TEMPLATE = nil #value is unknown, used for indexing.
            # COMPAT
            # 
            # A flag for #to_s.
            # 
            # Breaks the name returned into multiple lines if longer than 80
            # characters.
            COMPAT = nil #value is unknown, used for indexing.
            # RFC2253
            # 
            # A flag for #to_s.
            # 
            # Returns an RFC2253 format name.
            RFC2253 = nil #value is unknown, used for indexing.
            # ONELINE
            # 
            # A flag for #to_s.
            # 
            # Returns a more readable format than RFC2253.
            ONELINE = nil #value is unknown, used for indexing.
            # MULTILINE
            # 
            # A flag for #to_s.
            # 
            # Returns a multiline format.
            MULTILINE = nil #value is unknown, used for indexing.
            # X509::Name.new                               => name
            # X509::Name.new(der)                          => name
            # X509::Name.new(distinguished_name)           => name
            # X509::Name.new(distinguished_name, template) => name
            #  
            # Creates a new Name.
            # 
            # A name may be created from a DER encoded string +der+, an Array
            # representing a +distinguished_name+ or a +distinguished_name+ along with a
            # +template+.
            # 
            #   name = OpenSSL::X509::Name.new [['CN', 'nobody'], ['DC', 'example']]
            # 
            #   name = OpenSSL::X509::Name.new name.to_der
            # 
            # See add_entry for a description of the +distinguished_name+ Array's
            # contents
            def self.new(*several_variants)
                #This is a stub, used for indexing
            end
            # name.add_entry(oid, value [, type]) => self
            #  
            # Adds a new entry with the given +oid+ and +value+ to this name.  The +oid+
            # is an object identifier defined in ASN.1.  Some common OIDs are:
            # 
            # C::  Country Name
            # CN:: Common Name
            # DC:: Domain Component
            # O::  Organization Name
            # OU:: Organizational Unit Name
            # ST:: State or Province Name
            def add_entry(p1, p2, p3 = v3)
                #This is a stub, used for indexing
            end
            # name.to_s => string
            # name.to_s(flags) => string
            #  
            # Returns this name as a Distinguished Name string.  +flags+ may be one of:
            # 
            # * OpenSSL::X509::Name::COMPAT
            # * OpenSSL::X509::Name::RFC2253
            # * OpenSSL::X509::Name::ONELINE
            # * OpenSSL::X509::Name::MULTILINE
            def to_s(*several_variants)
                #This is a stub, used for indexing
            end
            # name.to_a => [[name, data, type], ...]
            #  
            # Returns an Array representation of the distinguished name suitable for
            # passing to ::new
            def to_a()
                #This is a stub, used for indexing
            end
            # name.cmp other => integer
            # name.<=> other => integer
            #  
            # Compares this Name with +other+ and returns 0 if they are the same and -1 or
            # +1 if they are greater or less than each other respectively.
            def cmp other
                #This is a stub, used for indexing
            end
            alias <=> cmp
            # name.eql? other => boolean
            #  
            # Returns true if +name+ and +other+ refer to the same hash key.
            def eql? other
                #This is a stub, used for indexing
            end
            # name.hash => integer
            #  
            # The hash value returned is suitable for use as a certificate's filename in
            # a CA path.
            def hash()
                #This is a stub, used for indexing
            end
            # name.hash_old => integer
            #  
            # Returns an MD5 based hash used in OpenSSL 0.9.X.
            def hash_old()
                #This is a stub, used for indexing
            end
            # name.to_der => string
            #  
            # Converts the name to DER encoding
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
        # The X509 certificate store holds trusted CA certificates used to verify
        # peer certificates.
        # 
        # The easiest way to create a useful certificate store is:
        # 
        #   cert_store = OpenSSL::X509::Store.new
        #   cert_store.set_default_paths
        # 
        # This will use your system's built-in certificates.
        # 
        # If your system does not have a default set of certificates you can
        # obtain a set from Mozilla here: http://curl.haxx.se/docs/caextract.html
        # (Note that this set does not have an HTTPS download option so you may
        # wish to use the firefox-db2pem.sh script to extract the certificates
        # from a local install to avoid man-in-the-middle attacks.)
        # 
        # After downloading or generating a cacert.pem from the above link you
        # can create a certificate store from the pem file like this:
        # 
        #   cert_store = OpenSSL::X509::Store.new
        #   cert_store.add_file 'cacert.pem'
        # 
        # The certificate store can be used with an SSLSocket like this:
        # 
        #   ssl_context = OpenSSL::SSL::SSLContext.new
        #   ssl_context.cert_store = cert_store
        # 
        #   tcp_socket = TCPSocket.open 'example.com', 443
        # 
        #   ssl_socket = OpenSSL::SSL::SSLSocket.new tcp_socket, ssl_context
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
            # store.add_file(file) -> store
            #  
            # Adds the certificates in +file+ to the certificate store.  The +file+ can
            # contain multiple PEM-encoded certificates.
            def add_file(file)
                #This is a stub, used for indexing
            end
            # store.set_default_path
            #  
            # Adds the default certificates to the certificate store.  These certificates
            # are loaded from the default configuration directory which can usually be
            # determined by:
            # 
            #   File.dirname OpenSSL::Config::DEFAULT_CONFIG_FILE
            def set_default_paths()
                #This is a stub, used for indexing
            end
            # store.add_cert(cert)
            #  
            # Adds the OpenSSL::X509::Certificate +cert+ to the certificate store.
            def add_cert(cert)
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
