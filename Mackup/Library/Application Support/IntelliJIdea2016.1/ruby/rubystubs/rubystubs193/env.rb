=begin
 This is a machine generated stub using stdlib-doc for <b>class ENV</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:43 +0400 by IntelliJ Ruby Stubs Generator.
=end

# ENV is a hash-like accessor for environment variables.
class ENV
    # ENV[name] -> value
    #  
    # Retrieves the +value+ for environment variable +name+ as a String.  Returns
    # +nil+ if the named variable does not exist.
    def self.[] name
        #This is a stub, used for indexing
    end
    # ENV.fetch(name)                        -> value
    # ENV.fetch(name, default)               -> value
    # ENV.fetch(name) { |missing_name| ... } -> value
    #  
    # Retrieves the environment variable +name+.
    # 
    # If the given name does not exist and neither +default+ nor a block a
    # provided an IndexError is raised.  If a block is given it is called with
    # the missing name to provide a value.  If a default value is given it will
    # be returned when no block is given.
    def self.fetch(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV[name] = value
    # ENV.store(name, value) -> value
    #  
    # Sets the environment variable +name+ to +value+.  If the value given is
    # +nil+ the environment variable is deleted.
    def self.[]=(name, value)
        #This is a stub, used for indexing
    end
    # ENV[name] = value
    # ENV.store(name, value) -> value
    #  
    # Sets the environment variable +name+ to +value+.  If the value given is
    # +nil+ the environment variable is deleted.
    def self.store(name, value)
        #This is a stub, used for indexing
    end
    # ENV.each      { |name, value| } -> Hash
    # ENV.each                        -> Enumerator
    # ENV.each_pair { |name, value| } -> Hash
    # ENV.each_pair                   -> Enumerator
    #  
    # Yields each environment variable +name+ and +value+.
    # 
    # If no block is given an Enumerator is returned.
    def self.each(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.each      { |name, value| } -> Hash
    # ENV.each                        -> Enumerator
    # ENV.each_pair { |name, value| } -> Hash
    # ENV.each_pair                   -> Enumerator
    #  
    # Yields each environment variable +name+ and +value+.
    # 
    # If no block is given an Enumerator is returned.
    def self.each_pair(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.each_key { |name| } -> Hash
    # ENV.each_key            -> Enumerator
    #  
    # Yields each environment variable name.
    # 
    # An Enumerator is returned if no block is given.
    def self.each_key(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.each_value { |value| } -> Hash
    # ENV.each_value             -> Enumerator
    #  
    # Yields each environment variable +value+.
    # 
    # An Enumerator is returned if no block was given.
    def self.each_value(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.delete(name)            -> value
    # ENV.delete(name) { |name| } -> value
    #  
    # Deletes the environment variable with +name+ and returns the value of the
    # variable.  If a block is given it will be called when the named environment
    # does not exist.
    def self.delete(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.delete_if { |name, value| } -> Hash
    # ENV.delete_if                   -> Enumerator
    #  
    # Deletes every environment variable for which the block evaluates to +true+.
    # 
    # If no block is given an enumerator is returned instead.
    def self.delete_if(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.keep_if { |name, value| } -> Hash
    # ENV.keep_if                   -> Enumerator
    #  
    # Deletes every environment variable where the block evaluates to +false+.
    # 
    # Returns an enumerator if no block was given.
    def self.keep_if(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.clear
    #  
    # Removes every environment variable.
    def self.clear()
        #This is a stub, used for indexing
    end
    # ENV.reject { |name, value| } -> Hash
    # ENV.reject                   -> Enumerator
    #  
    # Same as ENV#delete_if, but works on (and returns) a copy of the
    # environment.
    def self.reject(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.reject! { |name, value| } -> Hash or nil
    # ENV.reject!                   -> Enumerator
    #  
    # Equivalent to ENV#delete_if but returns +nil+ if no changes were made.
    # 
    # Returns an Enumerator if no block was given.
    def self.reject!(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.select { |name, value| } -> Hash
    # ENV.select                   -> Enumerator
    #  
    # Returns a copy of the environment for entries where the block returns true.
    # 
    # Returns an Enumerator if no block was given.
    def self.select(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.select! { |name, value| } -> ENV or nil
    # ENV.select!                   -> Enumerator
    #  
    # Equivalent to ENV#keep_if but returns +nil+ if no changes were made.
    def self.select!(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.shift -> Array or nil
    #  
    # Removes an environment variable name-value pair from ENV and returns it as
    # an Array.  Returns +nil+ if when the environment is empty.
    def self.shift()
        #This is a stub, used for indexing
    end
    # ENV.invert -> Hash
    #  
    # Returns a new hash created by using environment variable names as values
    # and values as names.
    def self.invert()
        #This is a stub, used for indexing
    end
    # ENV.replace(hash) -> env
    #  
    # Replaces the contents of the environment variables with the contents of
    # +hash+.
    def self.replace(hash)
        #This is a stub, used for indexing
    end
    # ENV.update(hash)                                  -> Hash
    # ENV.update(hash) { |name, old_value, new_value| } -> Hash
    #  
    # Adds the contents of +hash+ to the environment variables.  If no block is
    # specified entries with duplicate keys are overwritten, otherwise the value
    # of each duplicate name is determined by calling the block with the key, its
    # value from the environment and its value from the hash.
    def self.update(*several_variants)
        #This is a stub, used for indexing
    end
    # ENV.inspect -> string
    #  
    # Returns the contents of the environment as a String.
    def self.inspect()
        #This is a stub, used for indexing
    end
    # ENV.rehash
    #  
    # Re-hashing the environment variables does nothing.  It is provided for
    # compatibility with Hash.
    def self.rehash()
        #This is a stub, used for indexing
    end
    # ENV.to_a -> Array
    #  
    # Converts the environment variables into an array of names and value arrays.
    # 
    #   ENV.to_a # => [["TERM" => "xterm-color"], ["SHELL" => "/bin/bash"], ...]
    def self.to_a()
        #This is a stub, used for indexing
    end
    # ENV.to_s -> "ENV"
    #  
    # Returns "ENV"
    def self.to_s()
        #This is a stub, used for indexing
    end
    # ENV.key(value) -> name
    #  
    # Returns the name of the environment variable with +value+.  If the value is
    # not found +nil+ is returned.
    def self.key(value)
        #This is a stub, used for indexing
    end
    # ENV.index(value) -> key
    #  
    # Deprecated method that is equivalent to ENV.key
    def self.index(value)
        #This is a stub, used for indexing
    end
    # ENV.length
    # ENV.size
    #  
    # Returns the number of environment variables.
    def self.size()
        #This is a stub, used for indexing
    end
    # ENV.length
    # ENV.size
    #  
    # Returns the number of environment variables.
    def self.length()
        #This is a stub, used for indexing
    end
    # ENV.empty? -> true or false
    #  
    # Returns true when there are no environment variables
    def self.empty?()
        #This is a stub, used for indexing
    end
    # ENV.keys -> Array
    #  
    # Returns every environment variable name in an Array
    def self.keys()
        #This is a stub, used for indexing
    end
    # ENV.values -> Array
    #  
    # Returns every environment variable value as an Array
    def self.values()
        #This is a stub, used for indexing
    end
    # ENV.values_at(name, ...) -> Array
    #  
    # Returns an array containing the environment variable values associated with
    # the given names.  See also ENV.select.
    def self.values_at(name, *smth)
        #This is a stub, used for indexing
    end
    # ENV.key?(name)     -> true or false
    # ENV.include?(name) -> true or false
    # ENV.has_key?(name) -> true or false
    # ENV.member?(name)  -> true or false
    #  
    # Returns +true+ if there is an environment variable with the given +name+.
    def self.include?(name)
        #This is a stub, used for indexing
    end
    # ENV.key?(name)     -> true or false
    # ENV.include?(name) -> true or false
    # ENV.has_key?(name) -> true or false
    # ENV.member?(name)  -> true or false
    #  
    # Returns +true+ if there is an environment variable with the given +name+.
    def self.member?(name)
        #This is a stub, used for indexing
    end
    # ENV.key?(name)     -> true or false
    # ENV.include?(name) -> true or false
    # ENV.has_key?(name) -> true or false
    # ENV.member?(name)  -> true or false
    #  
    # Returns +true+ if there is an environment variable with the given +name+.
    def self.has_key?(name)
        #This is a stub, used for indexing
    end
    # ENV.value?(value) -> true or false
    # ENV.has_value?(value) -> true or false
    #  
    # Returns +true+ if there is an environment variable with the given +value+.
    def self.has_value?(value)
        #This is a stub, used for indexing
    end
    # ENV.key?(name)     -> true or false
    # ENV.include?(name) -> true or false
    # ENV.has_key?(name) -> true or false
    # ENV.member?(name)  -> true or false
    #  
    # Returns +true+ if there is an environment variable with the given +name+.
    def self.key?(name)
        #This is a stub, used for indexing
    end
    # ENV.value?(value) -> true or false
    # ENV.has_value?(value) -> true or false
    #  
    # Returns +true+ if there is an environment variable with the given +value+.
    def self.value?(value)
        #This is a stub, used for indexing
    end
    # ENV.to_hash -> Hash
    #  
    # Creates a hash with a copy of the environment variables.
    def self.to_hash()
        #This is a stub, used for indexing
    end
    # ENV.assoc(name) -> Array or nil
    #  
    # Returns an Array of the name and value of the environment variable with
    # +name+ or +nil+ if the name cannot be found.
    def self.assoc(name)
        #This is a stub, used for indexing
    end
    # ENV.rassoc(value)
    #  
    # Returns an Array of the name and value of the environment variable with
    # +value+ or +nil+ if the value cannot be found.
    def self.rassoc(value)
        #This is a stub, used for indexing
    end
end
