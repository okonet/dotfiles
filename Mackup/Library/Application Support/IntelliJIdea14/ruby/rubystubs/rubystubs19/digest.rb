=begin
 This is a machine generated stub using stdlib-doc for <b>module Digest</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# This module provides a framework for message digest libraries.
module Digest
    # Digest.hexencode(string) -> hexencoded_string
    #  
    # Generates a hex-encoded version of a given _string_.
    def self.hexencode(string)
        #This is a stub, used for indexing
    end
    # This abstract class provides a common interface to message digest
    # implementation classes written in C.
    class Base < Class
    end
    # This module stands as a base class for digest implementation
    # classes.
    class Class
        include Digest::Instance
        # Digest::Class.digest(string, *parameters) -> hash_string
        #  
        # Returns the hash value of a given _string_.  This is equivalent to
        # Digest::Class.new(*parameters).digest(string), where extra
        # _parameters_, if any, are passed through to the constructor and the
        # _string_ is passed to #digest().
        def self.digest(string, *parameters)
            #This is a stub, used for indexing
        end
        # Digest::Class.hexdigest(string[, ...]) -> hash_string
        #  
        # Returns the hex-encoded hash value of a given _string_.  This is
        # almost equivalent to
        # Digest.hexencode(Digest::Class.new(*parameters).digest(string)).
        def self.hexdigest(*args)
            #This is a stub, used for indexing
        end
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
