=begin
 This is a machine generated stub using stdlib-doc for <b>class Struct</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

class Struct
    include Enumerable
    Tms = nil #value is unknown, used for indexing.
    # account expiration time(integer) must be compiled with +HAVE_STRUCT_PASSWD_PW_EXPIRE+
    Passwd = nil #value is unknown, used for indexing.
    # is an Array of Strings containing the short login names of the
    #      members of the group.
    Group = nil #value is unknown, used for indexing.
    # Struct.new([class_name] [, member_name]+>)                        -> StructClass
    # Struct.new([class_name] [, member_name]+>) {|StructClass| block } -> StructClass
    # StructClass.new(value, ...)                                       -> obj
    # StructClass[value, ...]                                           -> obj
    #  
    # The first two forms are used to create a new Struct subclass +class_name+
    # that can contain a value for each +member_name+.  This subclass can be
    # used to create instances of the structure like any other Class.
    # 
    # If the +class_name+ is omitted an anonymous structure class will be
    # created.  Otherwise, the name of this struct will appear as a constant in
    # class Struct, so it must be unique for all Structs in the system and
    # must start with a capital letter.  Assigning a structure class to a
    # constant also gives the class the name of the constant.
    # 
    #    # Create a structure with a name under Struct
    #    Struct.new("Customer", :name, :address)
    #    #=> Struct::Customer
    #    Struct::Customer.new("Dave", "123 Main")
    #    #=> #<struct Struct::Customer name="Dave", address="123 Main">
    # 
    # If a block is given it will be evaluated in the context of
    # +StructClass+, passing the created class as a parameter:
    # 
    #    Customer = Struct.new(:name, :address) do
    #      def greeting
    #        "Hello #{name}!"
    #      end
    #    end
    #    Customer.new("Dave", "123 Main").greeting  # => "Hello Dave!"
    # 
    # This is the recommended way to customize a struct.  Subclassing an
    # anonymous struct creates an extra anonymous class that will never be used.
    # 
    # The last two forms create a new instance of a struct subclass.  The number
    # of +value+ parameters must be less than or equal to the number of
    # attributes defined for the structure.  Unset parameters default to +nil+.
    # Passing more parameters than number of attributes will raise
    # an ArgumentError.
    # 
    #    # Create a structure named by its constant
    #    Customer = Struct.new(:name, :address)
    #    #=> Customer
    #    Customer.new("Dave", "123 Main")
    #    #=> #<struct Customer name="Dave", address="123 Main">
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # struct == other     -> true or false
    #  
    # Equality---Returns +true+ if +other+ has the same struct subclass and has
    # equal member values (according to Object#==).
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe   = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joejr = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    jane  = Customer.new("Jane Doe", "456 Elm, Anytown NC", 12345)
    #    joe == joejr   #=> true
    #    joe == jane    #=> false
    def == other
        #This is a stub, used for indexing
    end
    # struct.eql?(other)   -> true or false
    #  
    # Hash equality---+other+ and +struct+ refer to the same hash key if they
    # have the same struct subclass and have equal member values (according to
    # Object#eql?).
    def eql?(other)
        #This is a stub, used for indexing
    end
    # struct.hash   -> fixnum
    #  
    # Returns a hash value based on this struct's contents (see Object#hash).
    # 
    # See also Object#hash.
    def hash()
        #This is a stub, used for indexing
    end
    # struct.to_s      -> string
    # struct.inspect   -> string
    #  
    # Describe the contents of this struct in a string.
    def inspect()
        #This is a stub, used for indexing
    end
    alias to_s inspect
    # struct.to_a     -> array
    # struct.values   -> array
    #  
    # Returns the values for this struct as an Array.
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joe.to_a[1]   #=> "123 Maple, Anytown NC"
    def to_a()
        #This is a stub, used for indexing
    end
    # struct.to_h     -> hash
    #  
    # Returns a Hash containing the names and values for the struct's members.
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joe.to_h[:address]   #=> "123 Maple, Anytown NC"
    def to_h()
        #This is a stub, used for indexing
    end
    # struct.to_a     -> array
    # struct.values   -> array
    #  
    # Returns the values for this struct as an Array.
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joe.to_a[1]   #=> "123 Maple, Anytown NC"
    def values()
        #This is a stub, used for indexing
    end
    # struct.length    -> fixnum
    # struct.size      -> fixnum
    #  
    # Returns the number of struct members.
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joe.length   #=> 3
    def size()
        #This is a stub, used for indexing
    end
    # struct.length    -> fixnum
    # struct.size      -> fixnum
    #  
    # Returns the number of struct members.
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joe.length   #=> 3
    def length()
        #This is a stub, used for indexing
    end
    # struct.each {|obj| block }  -> struct
    # struct.each                 -> an_enumerator
    #  
    # Yields the value of each struct member in order.  If no block is given an
    # enumerator is returned.
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joe.each {|x| puts(x) }
    # 
    # Produces:
    # 
    #    Joe Smith
    #    123 Maple, Anytown NC
    #    12345
    def each(*several_variants)
        #This is a stub, used for indexing
    end
    # struct.each_pair {|sym, obj| block }     -> struct
    # struct.each_pair                         -> an_enumerator
    #  
    # Yields the name and value of each struct member in order.  If no block is
    # given an enumerator is returned.
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joe.each_pair {|name, value| puts("#{name} => #{value}") }
    # 
    # Produces:
    # 
    #    name => Joe Smith
    #    address => 123 Maple, Anytown NC
    #    zip => 12345
    def each_pair(*several_variants)
        #This is a stub, used for indexing
    end
    # struct[member]   -> anObject
    # struct[index]    -> anObject
    #  
    # Attribute Reference---Returns the value of the given struct +member+ or
    # the member at the given +index+.   Raises NameError if the +member+ does
    # not exist and IndexError if the +index+ is out of range.
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    # 
    #    joe["name"]   #=> "Joe Smith"
    #    joe[:name]    #=> "Joe Smith"
    #    joe[0]        #=> "Joe Smith"
    def [](*several_variants)
        #This is a stub, used for indexing
    end
    # struct[name]  = obj    -> obj
    # struct[index] = obj    -> obj
    #  
    # Attribute Assignment---Sets the value of the given struct +member+ or
    # the member at the given +index+.  Raises NameError if the +name+ does not
    # exist and IndexError if the +index+ is out of range.
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    # 
    #    joe["name"] = "Luke"
    #    joe[:zip]   = "90210"
    # 
    #    joe.name   #=> "Luke"
    #    joe.zip    #=> "90210"
    def []=(*several_variants)
        #This is a stub, used for indexing
    end
    # struct.select {|i| block }    -> array
    # struct.select                 -> an_enumerator
    #  
    # Yields each member value from the struct to the block and returns an Array
    # containing the member values from the +struct+ for which the given block
    # returns a true value (equivalent to Enumerable#select).
    # 
    #    Lots = Struct.new(:a, :b, :c, :d, :e, :f)
    #    l = Lots.new(11, 22, 33, 44, 55, 66)
    #    l.select {|v| (v % 2).zero? }   #=> [22, 44, 66]
    def select(*several_variants)
        #This is a stub, used for indexing
    end
    # struct.values_at(selector, ...)  -> an_array
    #  
    # Returns the struct member values for each +selector+ as an Array.  A
    # +selector+ may be either an Integer offset or a Range of offsets (as in
    # Array#values_at).
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joe.values_at 0, 2 #=> ["Joe Smith", 12345]
    def values_at(selector, *smth)
        #This is a stub, used for indexing
    end
    # struct.members    -> array
    #  
    # Returns the struct members as an array of symbols:
    # 
    #    Customer = Struct.new(:name, :address, :zip)
    #    joe = Customer.new("Joe Smith", "123 Maple, Anytown NC", 12345)
    #    joe.members   #=> [:name, :address, :zip]
    def members()
        #This is a stub, used for indexing
    end
    def to_s()
        #This is a stub, used for indexing
    end
end
