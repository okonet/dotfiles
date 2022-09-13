=begin
 This is a machine generated stub using stdlib-doc for <b>class Hash</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:26 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A Hash is a dictionary-like collection of unique keys and their values.
# Also called associative arrays, they are similar to Arrays, but where an
# Array uses integers as its index, a Hash allows you to use any object
# type.
# 
# Hashes enumerate their values in the order that the corresponding keys
# were inserted.
# 
# A Hash can be easily created by using its implicit form:
# 
#   grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
# 
# Hashes allow an alternate syntax form when your keys are always symbols.
# Instead of
# 
#   options = { :font_size => 10, :font_family => "Arial" }
# 
# You could write it as:
# 
#   options = { font_size: 10, font_family: "Arial" }
# 
# Each named key is a symbol you can access in hash:
# 
#   options[:font_size]  # => 10
# 
# A Hash can also be created through its ::new method:
# 
#   grades = Hash.new
#   grades["Dorothy Doe"] = 9
# 
# Hashes have a <em>default value</em> that is returned when accessing
# keys that do not exist in the hash. If no default is set +nil+ is used.
# You can set the default value by sending it as an argument to Hash.new:
# 
#   grades = Hash.new(0)
# 
# Or by using the #default= method:
# 
#   grades = {"Timmy Doe" => 8}
#   grades.default = 0
# 
# Accessing a value in a Hash requires using its key:
# 
#   puts grades["Jane Doe"] # => 0
# 
# === Common Uses
# 
# Hashes are an easy way to represent data structures, such as
# 
#   books         = {}
#   books[:matz]  = "The Ruby Language"
#   books[:black] = "The Well-Grounded Rubyist"
# 
# Hashes are also commonly used as a way to have named parameters in
# functions. Note that no brackets are used below. If a hash is the last
# argument on a method call, no braces are needed, thus creating a really
# clean interface:
# 
#   Person.create(name: "John Doe", age: 27)
# 
#   def self.create(params)
#     @name = params[:name]
#     @age  = params[:age]
#   end
# 
# === Hash Keys
# 
# Two objects refer to the same hash key when their <code>hash</code> value
# is identical and the two objects are <code>eql?</code> to each other.
# 
# A user-defined class may be used as a hash key if the <code>hash</code>
# and <code>eql?</code> methods are overridden to provide meaningful
# behavior.  By default, separate instances refer to separate hash keys.
# 
# A typical implementation of <code>hash</code> is based on the
# object's data while <code>eql?</code> is usually aliased to the overridden
# <code>==</code> method:
# 
#   class Book
#     attr_reader :author, :title
# 
#     def initialize(author, title)
#       @author = author
#       @title = title
#     end
# 
#     def ==(other)
#       self.class === other and
#         other.author == @author and
#         other.title == @title
#     end
# 
#     alias eql? ==
# 
#     def hash
#       @author.hash ^ @title.hash # XOR
#     end
#   end
# 
#   book1 = Book.new 'matz', 'Ruby in a Nutshell'
#   book2 = Book.new 'matz', 'Ruby in a Nutshell'
# 
#   reviews = {}
# 
#   reviews[book1] = 'Great reference!'
#   reviews[book2] = 'Nice and compact!'
# 
#   reviews.length #=> 1
# 
# See also Object#hash and Object#eql?
class Hash
    include Enumerable
    # Hash[ key, value, ... ]         -> new_hash
    # Hash[ [ [key, value], ... ] ]   -> new_hash
    # Hash[ object ]                  -> new_hash
    #  
    # Creates a new hash populated with the given objects.
    # 
    # Similar to the literal <code>{ _key_ => _value_, ... }</code>. In the first
    # form, keys and values occur in pairs, so there must be an even number of
    # arguments.
    # 
    # The second and third form take a single argument which is either an array
    # of key-value pairs or an object convertible to a hash.
    # 
    #    Hash["a", 100, "b", 200]             #=> {"a"=>100, "b"=>200}
    #    Hash[ [ ["a", 100], ["b", 200] ] ]   #=> {"a"=>100, "b"=>200}
    #    Hash["a" => 100, "b" => 200]         #=> {"a"=>100, "b"=>200}
    def self.[](*several_variants)
        #This is a stub, used for indexing
    end
    # Hash.try_convert(obj) -> hash or nil
    #  
    # Try to convert <i>obj</i> into a hash, using to_hash method.
    # Returns converted hash or nil if <i>obj</i> cannot be converted
    # for any reason.
    # 
    #    Hash.try_convert({1=>2})   # => {1=>2}
    #    Hash.try_convert("1=>2")   # => nil
    def self.try_convert(obj)
        #This is a stub, used for indexing
    end
    # Hash.new                          -> new_hash
    # Hash.new(obj)                     -> new_hash
    # Hash.new {|hash, key| block }     -> new_hash
    #  
    # Returns a new, empty hash. If this hash is subsequently accessed by
    # a key that doesn't correspond to a hash entry, the value returned
    # depends on the style of <code>new</code> used to create the hash. In
    # the first form, the access returns <code>nil</code>. If
    # <i>obj</i> is specified, this single object will be used for
    # all <em>default values</em>. If a block is specified, it will be
    # called with the hash object and the key, and should return the
    # default value. It is the block's responsibility to store the value
    # in the hash if required.
    # 
    #    h = Hash.new("Go Fish")
    #    h["a"] = 100
    #    h["b"] = 200
    #    h["a"]           #=> 100
    #    h["c"]           #=> "Go Fish"
    #    # The following alters the single default object
    #    h["c"].upcase!   #=> "GO FISH"
    #    h["d"]           #=> "GO FISH"
    #    h.keys           #=> ["a", "b"]
    # 
    #    # While this creates a new default object each time
    #    h = Hash.new { |hash, key| hash[key] = "Go Fish: #{key}" }
    #    h["c"]           #=> "Go Fish: c"
    #    h["c"].upcase!   #=> "GO FISH: C"
    #    h["d"]           #=> "Go Fish: d"
    #    h.keys           #=> ["c", "d"]
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.rehash -> hsh
    #  
    # Rebuilds the hash based on the current hash values for each key. If
    # values of key objects have changed since they were inserted, this
    # method will reindex <i>hsh</i>. If <code>Hash#rehash</code> is
    # called while an iterator is traversing the hash, an
    # <code>RuntimeError</code> will be raised in the iterator.
    # 
    #    a = [ "a", "b" ]
    #    c = [ "c", "d" ]
    #    h = { a => 100, c => 300 }
    #    h[a]       #=> 100
    #    a[0] = "z"
    #    h[a]       #=> nil
    #    h.rehash   #=> {["z", "b"]=>100, ["c", "d"]=>300}
    #    h[a]       #=> 100
    def rehash()
        #This is a stub, used for indexing
    end
    # hsh.to_hash   => hsh
    #  
    # Returns +self+.
    def to_hash()
        #This is a stub, used for indexing
    end
    # hsh.to_h     -> hsh or new_hash
    #  
    # Returns +self+. If called on a subclass of Hash, converts
    # the receiver to a Hash object.
    def to_h()
        #This is a stub, used for indexing
    end
    # hsh.to_a -> array
    #  
    # Converts <i>hsh</i> to a nested array of <code>[</code> <i>key,
    # value</i> <code>]</code> arrays.
    # 
    #    h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
    #    h.to_a   #=> [["c", 300], ["a", 100], ["d", 400]]
    def to_a()
        #This is a stub, used for indexing
    end
    # hsh.to_s     -> string
    # hsh.inspect  -> string
    #  
    # Return the contents of this hash as a string.
    # 
    #     h = { "c" => 300, "a" => 100, "d" => 400, "c" => 300  }
    #     h.to_s   #=> "{\"c\"=>300, \"a\"=>100, \"d\"=>400}"
    def inspect()
        #This is a stub, used for indexing
    end
    alias to_s inspect
    # hsh == other_hash    -> true or false
    #  
    # Equality---Two hashes are equal if they each contain the same number
    # of keys and if each key-value pair is equal to (according to
    # <code>Object#==</code>) the corresponding elements in the other
    # hash.
    # 
    #    h1 = { "a" => 1, "c" => 2 }
    #    h2 = { 7 => 35, "c" => 2, "a" => 1 }
    #    h3 = { "a" => 1, "c" => 2, 7 => 35 }
    #    h4 = { "a" => 1, "d" => 2, "f" => 35 }
    #    h1 == h2   #=> false
    #    h2 == h3   #=> true
    #    h3 == h4   #=> false
    def == other_hash
        #This is a stub, used for indexing
    end
    # hsh[key]    ->  value
    #  
    # Element Reference---Retrieves the <i>value</i> object corresponding
    # to the <i>key</i> object. If not found, returns the default value (see
    # <code>Hash::new</code> for details).
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h["a"]   #=> 100
    #    h["c"]   #=> nil
    def [] key
        #This is a stub, used for indexing
    end
    # hsh.hash   -> fixnum
    #  
    # Compute a hash-code for this hash. Two hashes with the same content
    # will have the same hash code (and will compare using <code>eql?</code>).
    def hash()
        #This is a stub, used for indexing
    end
    # hash.eql?(other)  -> true or false
    #  
    # Returns <code>true</code> if <i>hash</i> and <i>other</i> are
    # both hashes with the same content.
    def eql?(other)
        #This is a stub, used for indexing
    end
    # hsh.fetch(key [, default] )       -> obj
    # hsh.fetch(key) {| key | block }   -> obj
    #  
    # Returns a value from the hash for the given key. If the key can't be
    # found, there are several options: With no other arguments, it will
    # raise an <code>KeyError</code> exception; if <i>default</i> is
    # given, then that will be returned; if the optional code block is
    # specified, then that will be run and its result returned.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.fetch("a")                            #=> 100
    #    h.fetch("z", "go fish")                 #=> "go fish"
    #    h.fetch("z") { |el| "go fish, #{el}"}   #=> "go fish, z"
    # 
    # The following example shows that an exception is raised if the key
    # is not found and a default value is not supplied.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.fetch("z")
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:2:in `fetch': key not found (KeyError)
    #     from prog.rb:2
    def fetch(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh[key] = value        -> value
    # hsh.store(key, value)   -> value
    #  
    # == Element Assignment
    # 
    # Associates the value given by +value+ with the key given by +key+.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h["a"] = 9
    #    h["c"] = 4
    #    h   #=> {"a"=>9, "b"=>200, "c"=>4}
    #    h.store("d", 42) #=> {"a"=>9, "b"=>200, "c"=>4, "d"=>42}
    # 
    # +key+ should not have its value changed while it is in use as a key (an
    # <tt>unfrozen String</tt> passed as a key will be duplicated and frozen).
    # 
    #    a = "a"
    #    b = "b".freeze
    #    h = { a => 100, b => 200 }
    #    h.key(100).equal? a #=> false
    #    h.key(200).equal? b #=> true
    def []=(key, value)
        #This is a stub, used for indexing
    end
    # hsh[key] = value        -> value
    # hsh.store(key, value)   -> value
    #  
    # == Element Assignment
    # 
    # Associates the value given by +value+ with the key given by +key+.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h["a"] = 9
    #    h["c"] = 4
    #    h   #=> {"a"=>9, "b"=>200, "c"=>4}
    #    h.store("d", 42) #=> {"a"=>9, "b"=>200, "c"=>4, "d"=>42}
    # 
    # +key+ should not have its value changed while it is in use as a key (an
    # <tt>unfrozen String</tt> passed as a key will be duplicated and frozen).
    # 
    #    a = "a"
    #    b = "b".freeze
    #    h = { a => 100, b => 200 }
    #    h.key(100).equal? a #=> false
    #    h.key(200).equal? b #=> true
    def store(key, value)
        #This is a stub, used for indexing
    end
    # hsh.default(key=nil)   -> obj
    #  
    # Returns the default value, the value that would be returned by
    # <i>hsh</i>[<i>key</i>] if <i>key</i> did not exist in <i>hsh</i>.
    # See also <code>Hash::new</code> and <code>Hash#default=</code>.
    # 
    #    h = Hash.new                            #=> {}
    #    h.default                               #=> nil
    #    h.default(2)                            #=> nil
    # 
    #    h = Hash.new("cat")                     #=> {}
    #    h.default                               #=> "cat"
    #    h.default(2)                            #=> "cat"
    # 
    #    h = Hash.new {|h,k| h[k] = k.to_i*10}   #=> {}
    #    h.default                               #=> nil
    #    h.default(2)                            #=> 20
    def default(key=nil)
        #This is a stub, used for indexing
    end
    # hsh.default = obj     -> obj
    #  
    # Sets the default value, the value returned for a key that does not
    # exist in the hash. It is not possible to set the default to a
    # <code>Proc</code> that will be executed on each key lookup.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.default = "Go fish"
    #    h["a"]     #=> 100
    #    h["z"]     #=> "Go fish"
    #    # This doesn't do what you might hope...
    #    h.default = proc do |hash, key|
    #      hash[key] = key + key
    #    end
    #    h[2]       #=> #<Proc:0x401b3948@-:6>
    #    h["cat"]   #=> #<Proc:0x401b3948@-:6>
    def default= obj
        #This is a stub, used for indexing
    end
    # hsh.default_proc -> anObject
    #  
    # If <code>Hash::new</code> was invoked with a block, return that
    # block, otherwise return <code>nil</code>.
    # 
    #    h = Hash.new {|h,k| h[k] = k*k }   #=> {}
    #    p = h.default_proc                 #=> #<Proc:0x401b3d08@-:1>
    #    a = []                             #=> []
    #    p.call(a, 2)
    #    a                                  #=> [nil, nil, 4]
    def default_proc()
        #This is a stub, used for indexing
    end
    # hsh.default_proc = proc_obj or nil
    #  
    # Sets the default proc to be executed on each failed key lookup.
    # 
    #    h.default_proc = proc do |hash, key|
    #      hash[key] = key + key
    #    end
    #    h[2]       #=> 4
    #    h["cat"]   #=> "catcat"
    def default_proc=(p1)
        #This is a stub, used for indexing
    end
    # hsh.key(value)    -> key
    #  
    # Returns the key of an occurrence of a given value. If the value is
    # not found, returns <code>nil</code>.
    # 
    #    h = { "a" => 100, "b" => 200, "c" => 300, "d" => 300 }
    #    h.key(200)   #=> "b"
    #    h.key(300)   #=> "c"
    #    h.key(999)   #=> nil
    def key(value)
        #This is a stub, used for indexing
    end
    # hsh.length    ->  fixnum
    # hsh.size      ->  fixnum
    #  
    # Returns the number of key-value pairs in the hash.
    # 
    #    h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
    #    h.length        #=> 4
    #    h.delete("a")   #=> 200
    #    h.length        #=> 3
    def size()
        #This is a stub, used for indexing
    end
    # hsh.length    ->  fixnum
    # hsh.size      ->  fixnum
    #  
    # Returns the number of key-value pairs in the hash.
    # 
    #    h = { "d" => 100, "a" => 200, "v" => 300, "e" => 400 }
    #    h.length        #=> 4
    #    h.delete("a")   #=> 200
    #    h.length        #=> 3
    def length()
        #This is a stub, used for indexing
    end
    # hsh.empty?    -> true or false
    #  
    # Returns <code>true</code> if <i>hsh</i> contains no key-value pairs.
    # 
    #    {}.empty?   #=> true
    def empty?()
        #This is a stub, used for indexing
    end
    # hsh.each_value {| value | block } -> hsh
    # hsh.each_value                    -> an_enumerator
    #  
    # Calls <i>block</i> once for each key in <i>hsh</i>, passing the
    # value as a parameter.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.each_value {|value| puts value }
    # 
    # <em>produces:</em>
    # 
    #    100
    #    200
    def each_value(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.each_key {| key | block } -> hsh
    # hsh.each_key                  -> an_enumerator
    #  
    # Calls <i>block</i> once for each key in <i>hsh</i>, passing the key
    # as a parameter.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.each_key {|key| puts key }
    # 
    # <em>produces:</em>
    # 
    #    a
    #    b
    def each_key(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.each      {| key, value | block } -> hsh
    # hsh.each_pair {| key, value | block } -> hsh
    # hsh.each                              -> an_enumerator
    # hsh.each_pair                         -> an_enumerator
    #  
    # Calls <i>block</i> once for each key in <i>hsh</i>, passing the key-value
    # pair as parameters.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.each {|key, value| puts "#{key} is #{value}" }
    # 
    # <em>produces:</em>
    # 
    #    a is 100
    #    b is 200
    def each_pair(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.each      {| key, value | block } -> hsh
    # hsh.each_pair {| key, value | block } -> hsh
    # hsh.each                              -> an_enumerator
    # hsh.each_pair                         -> an_enumerator
    #  
    # Calls <i>block</i> once for each key in <i>hsh</i>, passing the key-value
    # pair as parameters.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.each {|key, value| puts "#{key} is #{value}" }
    # 
    # <em>produces:</em>
    # 
    #    a is 100
    #    b is 200
    def each(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.keys    -> array
    #  
    # Returns a new array populated with the keys from this hash. See also
    # <code>Hash#values</code>.
    # 
    #    h = { "a" => 100, "b" => 200, "c" => 300, "d" => 400 }
    #    h.keys   #=> ["a", "b", "c", "d"]
    def keys()
        #This is a stub, used for indexing
    end
    # hsh.values    -> array
    #  
    # Returns a new array populated with the values from <i>hsh</i>. See
    # also <code>Hash#keys</code>.
    # 
    #    h = { "a" => 100, "b" => 200, "c" => 300 }
    #    h.values   #=> [100, 200, 300]
    def values()
        #This is a stub, used for indexing
    end
    # hsh.values_at(key, ...)   -> array
    #  
    # Return an array containing the values associated with the given keys.
    # Also see <code>Hash.select</code>.
    # 
    #   h = { "cat" => "feline", "dog" => "canine", "cow" => "bovine" }
    #   h.values_at("cow", "cat")  #=> ["bovine", "feline"]
    def values_at(key, *smth)
        #This is a stub, used for indexing
    end
    # hsh.shift -> anArray or obj
    #  
    # Removes a key-value pair from <i>hsh</i> and returns it as the
    # two-item array <code>[</code> <i>key, value</i> <code>]</code>, or
    # the hash's default value if the hash is empty.
    # 
    #    h = { 1 => "a", 2 => "b", 3 => "c" }
    #    h.shift   #=> [1, "a"]
    #    h         #=> {2=>"b", 3=>"c"}
    def shift()
        #This is a stub, used for indexing
    end
    # hsh.delete(key)                   -> value
    # hsh.delete(key) {| key | block }  -> value
    #  
    # Deletes the key-value pair and returns the value from <i>hsh</i> whose
    # key is equal to <i>key</i>. If the key is not found, returns the
    # <em>default value</em>. If the optional code block is given and the
    # key is not found, pass in the key and return the result of
    # <i>block</i>.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.delete("a")                              #=> 100
    #    h.delete("z")                              #=> nil
    #    h.delete("z") { |el| "#{el} not found" }   #=> "z not found"
    def delete(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.delete_if {| key, value | block }  -> hsh
    # hsh.delete_if                          -> an_enumerator
    #  
    # Deletes every key-value pair from <i>hsh</i> for which <i>block</i>
    # evaluates to <code>true</code>.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    h = { "a" => 100, "b" => 200, "c" => 300 }
    #    h.delete_if {|key, value| key >= "b" }   #=> {"a"=>100}
    def delete_if(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.keep_if {| key, value | block }  -> hsh
    # hsh.keep_if                          -> an_enumerator
    #  
    # Deletes every key-value pair from <i>hsh</i> for which <i>block</i>
    # evaluates to false.
    # 
    # If no block is given, an enumerator is returned instead.
    def keep_if(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.select {|key, value| block}   -> a_hash
    # hsh.select                        -> an_enumerator
    #  
    # Returns a new hash consisting of entries for which the block returns true.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    h = { "a" => 100, "b" => 200, "c" => 300 }
    #    h.select {|k,v| k > "a"}  #=> {"b" => 200, "c" => 300}
    #    h.select {|k,v| v < 200}  #=> {"a" => 100}
    def select(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.select! {| key, value | block }  -> hsh or nil
    # hsh.select!                          -> an_enumerator
    #  
    # Equivalent to <code>Hash#keep_if</code>, but returns
    # <code>nil</code> if no changes were made.
    def select!(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.reject {|key, value| block}   -> a_hash
    # hsh.reject                        -> an_enumerator
    #  
    # Returns a new hash consisting of entries for which the block returns false.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    h = { "a" => 100, "b" => 200, "c" => 300 }
    #    h.reject {|k,v| k < "b"}  #=> {"b" => 200, "c" => 300}
    #    h.reject {|k,v| v > 100}  #=> {"a" => 100}
    def reject(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.reject! {| key, value | block }  -> hsh or nil
    # hsh.reject!                          -> an_enumerator
    #  
    # Equivalent to <code>Hash#delete_if</code>, but returns
    # <code>nil</code> if no changes were made.
    def reject!(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.clear -> hsh
    #  
    # Removes all key-value pairs from <i>hsh</i>.
    # 
    #    h = { "a" => 100, "b" => 200 }   #=> {"a"=>100, "b"=>200}
    #    h.clear                          #=> {}
    def clear()
        #This is a stub, used for indexing
    end
    # hsh.invert -> new_hash
    #  
    # Returns a new hash created by using <i>hsh</i>'s values as keys, and
    # the keys as values.
    # 
    #    h = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
    #    h.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}
    def invert()
        #This is a stub, used for indexing
    end
    # hsh.merge!(other_hash)                                 -> hsh
    # hsh.update(other_hash)                                 -> hsh
    # hsh.merge!(other_hash){|key, oldval, newval| block}    -> hsh
    # hsh.update(other_hash){|key, oldval, newval| block}    -> hsh
    #  
    # Adds the contents of _other_hash_ to _hsh_.  If no block is specified,
    # entries with duplicate keys are overwritten with the values from
    # _other_hash_, otherwise the value of each duplicate key is determined by
    # calling the block with the key, its value in _hsh_ and its value in
    # _other_hash_.
    # 
    #    h1 = { "a" => 100, "b" => 200 }
    #    h2 = { "b" => 254, "c" => 300 }
    #    h1.merge!(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}
    # 
    #    h1 = { "a" => 100, "b" => 200 }
    #    h2 = { "b" => 254, "c" => 300 }
    #    h1.merge!(h2) { |key, v1, v2| v1 }
    #                    #=> {"a"=>100, "b"=>200, "c"=>300}
    def update(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.replace(other_hash) -> hsh
    #  
    # Replaces the contents of <i>hsh</i> with the contents of
    # <i>other_hash</i>.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.replace({ "c" => 300, "d" => 400 })   #=> {"c"=>300, "d"=>400}
    def replace(other_hash)
        #This is a stub, used for indexing
    end
    # hsh.merge!(other_hash)                                 -> hsh
    # hsh.update(other_hash)                                 -> hsh
    # hsh.merge!(other_hash){|key, oldval, newval| block}    -> hsh
    # hsh.update(other_hash){|key, oldval, newval| block}    -> hsh
    #  
    # Adds the contents of _other_hash_ to _hsh_.  If no block is specified,
    # entries with duplicate keys are overwritten with the values from
    # _other_hash_, otherwise the value of each duplicate key is determined by
    # calling the block with the key, its value in _hsh_ and its value in
    # _other_hash_.
    # 
    #    h1 = { "a" => 100, "b" => 200 }
    #    h2 = { "b" => 254, "c" => 300 }
    #    h1.merge!(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}
    # 
    #    h1 = { "a" => 100, "b" => 200 }
    #    h2 = { "b" => 254, "c" => 300 }
    #    h1.merge!(h2) { |key, v1, v2| v1 }
    #                    #=> {"a"=>100, "b"=>200, "c"=>300}
    def merge!(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.merge(other_hash)                              -> new_hash
    # hsh.merge(other_hash){|key, oldval, newval| block} -> new_hash
    #  
    # Returns a new hash containing the contents of <i>other_hash</i> and
    # the contents of <i>hsh</i>. If no block is specified, the value for
    # entries with duplicate keys will be that of <i>other_hash</i>. Otherwise
    # the value for each duplicate key is determined by calling the block
    # with the key, its value in <i>hsh</i> and its value in <i>other_hash</i>.
    # 
    #    h1 = { "a" => 100, "b" => 200 }
    #    h2 = { "b" => 254, "c" => 300 }
    #    h1.merge(h2)   #=> {"a"=>100, "b"=>254, "c"=>300}
    #    h1.merge(h2){|key, oldval, newval| newval - oldval}
    #                   #=> {"a"=>100, "b"=>54,  "c"=>300}
    #    h1             #=> {"a"=>100, "b"=>200}
    def merge(*several_variants)
        #This is a stub, used for indexing
    end
    # hash.assoc(obj)   ->  an_array  or  nil
    #  
    # Searches through the hash comparing _obj_ with the key using <code>==</code>.
    # Returns the key-value pair (two elements array) or +nil+
    # if no match is found.  See <code>Array#assoc</code>.
    # 
    #    h = {"colors"  => ["red", "blue", "green"],
    #         "letters" => ["a", "b", "c" ]}
    #    h.assoc("letters")  #=> ["letters", ["a", "b", "c"]]
    #    h.assoc("foo")      #=> nil
    def assoc(obj)
        #This is a stub, used for indexing
    end
    # hash.rassoc(obj) -> an_array or nil
    #  
    # Searches through the hash comparing _obj_ with the value using <code>==</code>.
    # Returns the first key-value pair (two-element array) that matches. See
    # also <code>Array#rassoc</code>.
    # 
    #    a = {1=> "one", 2 => "two", 3 => "three", "ii" => "two"}
    #    a.rassoc("two")    #=> [2, "two"]
    #    a.rassoc("four")   #=> nil
    def rassoc(obj)
        #This is a stub, used for indexing
    end
    # hash.flatten -> an_array
    # hash.flatten(level) -> an_array
    #  
    # Returns a new array that is a one-dimensional flattening of this
    # hash. That is, for every key or value that is an array, extract
    # its elements into the new array.  Unlike Array#flatten, this
    # method does not flatten recursively by default.  The optional
    # <i>level</i> argument determines the level of recursion to flatten.
    # 
    #    a =  {1=> "one", 2 => [2,"two"], 3 => "three"}
    #    a.flatten    # => [1, "one", 2, [2, "two"], 3, "three"]
    #    a.flatten(2) # => [1, "one", 2, 2, "two", 3, "three"]
    def flatten(*several_variants)
        #This is a stub, used for indexing
    end
    # hsh.has_key?(key)    -> true or false
    # hsh.include?(key)    -> true or false
    # hsh.key?(key)        -> true or false
    # hsh.member?(key)     -> true or false
    #  
    # Returns <code>true</code> if the given key is present in <i>hsh</i>.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.has_key?("a")   #=> true
    #    h.has_key?("z")   #=> false
    def include?(key)
        #This is a stub, used for indexing
    end
    # hsh.has_key?(key)    -> true or false
    # hsh.include?(key)    -> true or false
    # hsh.key?(key)        -> true or false
    # hsh.member?(key)     -> true or false
    #  
    # Returns <code>true</code> if the given key is present in <i>hsh</i>.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.has_key?("a")   #=> true
    #    h.has_key?("z")   #=> false
    def member?(key)
        #This is a stub, used for indexing
    end
    # hsh.has_key?(key)    -> true or false
    # hsh.include?(key)    -> true or false
    # hsh.key?(key)        -> true or false
    # hsh.member?(key)     -> true or false
    #  
    # Returns <code>true</code> if the given key is present in <i>hsh</i>.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.has_key?("a")   #=> true
    #    h.has_key?("z")   #=> false
    def has_key?(key)
        #This is a stub, used for indexing
    end
    # hsh.has_value?(value)    -> true or false
    # hsh.value?(value)        -> true or false
    #  
    # Returns <code>true</code> if the given value is present for some key
    # in <i>hsh</i>.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.has_value?(100)   #=> true
    #    h.has_value?(999)   #=> false
    def has_value?(value)
        #This is a stub, used for indexing
    end
    # hsh.has_key?(key)    -> true or false
    # hsh.include?(key)    -> true or false
    # hsh.key?(key)        -> true or false
    # hsh.member?(key)     -> true or false
    #  
    # Returns <code>true</code> if the given key is present in <i>hsh</i>.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.has_key?("a")   #=> true
    #    h.has_key?("z")   #=> false
    def key?(key)
        #This is a stub, used for indexing
    end
    # hsh.has_value?(value)    -> true or false
    # hsh.value?(value)        -> true or false
    #  
    # Returns <code>true</code> if the given value is present for some key
    # in <i>hsh</i>.
    # 
    #    h = { "a" => 100, "b" => 200 }
    #    h.has_value?(100)   #=> true
    #    h.has_value?(999)   #=> false
    def value?(value)
        #This is a stub, used for indexing
    end
    # hsh.compare_by_identity -> hsh
    #  
    # Makes <i>hsh</i> compare its keys by their identity, i.e. it
    # will consider exact same objects as same keys.
    # 
    #    h1 = { "a" => 100, "b" => 200, :c => "c" }
    #    h1["a"]        #=> 100
    #    h1.compare_by_identity
    #    h1.compare_by_identity? #=> true
    #    h1["a"]        #=> nil  # different objects.
    #    h1[:c]         #=> "c"  # same symbols are all same.
    def compare_by_identity()
        #This is a stub, used for indexing
    end
    # hsh.compare_by_identity? -> true or false
    #  
    # Returns <code>true</code> if <i>hsh</i> will compare its keys by
    # their identity.  Also see <code>Hash#compare_by_identity</code>.
    def compare_by_identity?()
        #This is a stub, used for indexing
    end
    def to_s()
        #This is a stub, used for indexing
    end
end
