=begin
 This is a machine generated stub using stdlib-doc for <b>module Digest</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# This module provides a framework for message digest libraries.
# 
# You may want to look at OpenSSL::Digest as it supports support more
# algorithms.
# 
# A cryptographic hash function is a procedure that takes data and return a
# fixed bit string : the hash value, also known as _digest_. Hash functions
# are also called one-way functions, it is easy to compute a digest from
# a message, but it is infeasible to generate a message from a digest.
# 
# == Example
# 
#   require 'digest'
# 
#   # Compute a complete digest
#   sha256 = Digest::SHA256.new
#   digest = sha256.digest message
# 
#   # Compute digest by chunks
#   sha256 = Digest::SHA256.new
#   sha256.update message1
#   sha256 << message2 # << is an alias for update
# 
#   digest = sha256.digest
# 
# == Digest algorithms
# 
# Different digest algorithms (or hash functions) are available :
# 
# HMAC::
#   See FIPS PUB 198 The Keyed-Hash Message Authentication Code (HMAC)
# RIPEMD-160::
#   (as Digest::RMD160) see
#   http://homes.esat.kuleuven.be/~bosselae/ripemd160.html
# SHA1::
#   See FIPS 180 Secure Hash Standard
# SHA2 family::
#   See FIPS 180 Secure Hash Standard which defines the following algorithms:
#   * SHA512
#   * SHA384
#   * SHA256
# 
# The latest versions of the FIPS publications can be found here:
# http://csrc.nist.gov/publications/PubsFIPS.html
# 
# Additionally Digest::BubbleBabble encodes a digest as a sequence of
# consonants and vowels which is more recognizable and comparable than a
# hexadecimal digest.  See http://en.wikipedia.org/wiki/Bubblebabble
module Digest
    # Digest.hexencode(string) -> hexencoded_string
    #  
    # Generates a hex-encoded version of a given _string_.
    def self.hexencode(string)
        #This is a stub, used for indexing
    end
    # This module provides instance methods for a digest implementation
    # object to calculate message digest values.
    module Instance
        # digest_obj.update(string) -> digest_obj
        # digest_obj << string -> digest_obj
        #  
        # Updates the digest using a given _string_ and returns self.
        # 
        # The update() method and the left-shift operator are overridden by
        # each implementation subclass. (One should be an alias for the
        # other)
        def update(string)
            #This is a stub, used for indexing
        end
        # digest_obj.update(string) -> digest_obj
        # digest_obj << string -> digest_obj
        #  
        # Updates the digest using a given _string_ and returns self.
        # 
        # The update() method and the left-shift operator are overridden by
        # each implementation subclass. (One should be an alias for the
        # other)
        def << string
            #This is a stub, used for indexing
        end
        # digest_obj.instance_eval { finish } -> digest_obj
        #  
        # Finishes the digest and returns the resulting hash value.
        # 
        # This method is overridden by each implementation subclass and often
        # made private, because some of those subclasses may leave internal
        # data uninitialized.  Do not call this method from outside.  Use
        # #digest!() instead, which ensures that internal data be reset for
        # security reasons.
        def finish()
            #This is a stub, used for indexing
        end
        # digest_obj.reset -> digest_obj
        #  
        # Resets the digest to the initial state and returns self.
        # 
        # This method is overridden by each implementation subclass.
        def reset()
            #This is a stub, used for indexing
        end
        # digest_obj.digest_length -> integer
        #  
        # Returns the length of the hash value of the digest.
        # 
        # This method should be overridden by each implementation subclass.
        # If not, digest_obj.digest().length() is returned.
        def digest_length()
            #This is a stub, used for indexing
        end
        # digest_obj.block_length -> integer
        #  
        # Returns the block length of the digest.
        # 
        # This method is overridden by each implementation subclass.
        def block_length()
            #This is a stub, used for indexing
        end
        # digest_obj == another_digest_obj -> boolean
        # digest_obj == string -> boolean
        #  
        # If a string is given, checks whether it is equal to the hex-encoded
        # hash value of the digest object.  If another digest instance is
        # given, checks whether they have the same hash value.  Otherwise
        # returns false.
        def ==(*several_variants)
            #This is a stub, used for indexing
        end
        # digest_obj.inspect -> string
        #  
        # Creates a printable version of the digest object.
        def inspect()
            #This is a stub, used for indexing
        end
        # digest_obj.new -> another_digest_obj
        #  
        # Returns a new, initialized copy of the digest object.  Equivalent
        # to digest_obj.clone().reset().
        def new()
            #This is a stub, used for indexing
        end
        # digest_obj.digest -> string
        # digest_obj.digest(string) -> string
        #  
        # If none is given, returns the resulting hash value of the digest,
        # keeping the digest's state.
        # 
        # If a _string_ is given, returns the hash value for the given
        # _string_, resetting the digest to the initial state before and
        # after the process.
        def digest(*several_variants)
            #This is a stub, used for indexing
        end
        # digest_obj.digest! -> string
        #  
        # Returns the resulting hash value and resets the digest to the
        # initial state.
        def digest!()
            #This is a stub, used for indexing
        end
        # digest_obj.hexdigest -> string
        # digest_obj.hexdigest(string) -> string
        #  
        # If none is given, returns the resulting hash value of the digest in
        # a hex-encoded form, keeping the digest's state.
        # 
        # If a _string_ is given, returns the hash value for the given
        # _string_ in a hex-encoded form, resetting the digest to the initial
        # state before and after the process.
        def hexdigest(*several_variants)
            #This is a stub, used for indexing
        end
        # digest_obj.hexdigest! -> string
        #  
        # Returns the resulting hash value in a hex-encoded form and resets
        # the digest to the initial state.
        def hexdigest!()
            #This is a stub, used for indexing
        end
        # digest_obj.to_s -> string
        #  
        # Returns digest_obj.hexdigest().
        def to_s()
            #This is a stub, used for indexing
        end
        # digest_obj.length -> integer
        # digest_obj.size -> integer
        #  
        # Returns digest_obj.digest_length().
        def length()
            #This is a stub, used for indexing
        end
        # digest_obj.length -> integer
        # digest_obj.size -> integer
        #  
        # Returns digest_obj.digest_length().
        def size()
            #This is a stub, used for indexing
        end
    end
end
