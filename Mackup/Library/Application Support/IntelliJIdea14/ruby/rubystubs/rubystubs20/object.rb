=begin
 This is a machine generated stub using stdlib-doc for <b>class Object</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Object is the default root of all Ruby objects.  Object inherits from
# BasicObject which allows creating alternate object hierarchies.  Methods
# on object are available to all classes unless explicitly overridden.
# 
# Object mixes in the Kernel module, making the built-in kernel functions
# globally accessible.  Although the instance methods of Object are defined
# by the Kernel module, we have chosen to document them here for clarity.
# 
# When referencing constants in classes inheriting from Object you do not
# need to use the full namespace.  For example, referencing +File+ inside
# +YourClass+ will find the top-level File class.
# 
# In the descriptions of Object's methods, the parameter <i>symbol</i> refers
# to a symbol, which is either a quoted string or a Symbol (such as
# <code>:name</code>).
class Object < BasicObject
    include Kernel
    # A hash-like object containing current environment variables.
    ENV = {} #value is unknown, used for indexing.
    # Current standard input stream, $stdin be default.
    STDIN = $stdin #value is unknown, used for indexing.
    # Current standard output stream, $stdout be default.
    STDOUT = $stdout
    # Current standard error output stream, $stderr be default
    STDERR = $stderr #value is unknown, used for indexing.
    # The alias to $<.
    ARGF = $< #value is unknown, used for indexing.
    # The alias to 'nil'.
    NIL = nil
    # The alias to 'true'.
    TRUE = true
    # The alias to 'false'.
    FALSE = false
    # When a Hash is assigned to +SCRIPT_LINES__+ the contents of files loaded
    # after the assignment will be added as an Array of lines with the file
    # name as the key.
    SCRIPT_LINES__ = nil #value is unknown, used for indexing.
    # Contains lines following after __END__.
    DATA = IO.new #value is unknown, used for indexing.
    # The alias to $*.
    ARGV = $* #value is unknown, used for indexing.
    # The version string of the ruby interpreter.
    RUBY_VERSION  = "" #value is unknown, used for indexing.
    # The release date string of the current ruby platform. 
    RUBY_RELEASE_DATE = "" #value is unknown, used for indexing.
    # The identifier string of the current ruby platform. 
    RUBY_PLATFORM = "" #value is unknown, used for indexing.
    # The identifier string of the current ruby platform patch number.
    RUBY_PATCHLEVEL  = "" #value is unknown, used for indexing.
    # The SVN revision for this ruby.
    RUBY_REVISION = nil #value is unknown, used for indexing.
    # The full ruby version string, like <tt>ruby -v</tt> prints'
    RUBY_DESCRIPTION = nil #value is unknown, used for indexing.
    # The copyright string for ruby
    RUBY_COPYRIGHT = nil #value is unknown, used for indexing.
    # The engine or interpreter this ruby uses.
    RUBY_ENGINE = nil #value is unknown, used for indexing.
    # The top level binding object.
    TOPLEVEL_BINDING = Binding.new #value is unknown, used for indexing.
    # obj.to_enum(method = :each, *args)                 -> enum
    # obj.enum_for(method = :each, *args)                -> enum
    # obj.to_enum(method = :each, *args) {|*args| block} -> enum
    # obj.enum_for(method = :each, *args){|*args| block} -> enum
    #  
    # Creates a new Enumerator which will enumerate by calling +method+ on
    # +obj+, passing +args+ if any.
    # 
    # If a block is given, it will be used to calculate the size of
    # the enumerator without the need to iterate it (see Enumerator#size).
    # 
    # === Examples
    # 
    #   str = "xyz"
    # 
    #   enum = str.enum_for(:each_byte)
    #   enum.each { |b| puts b }
    #   # => 120
    #   # => 121
    #   # => 122
    # 
    #   # protect an array from being modified by some_method
    #   a = [1, 2, 3]
    #   some_method(a.to_enum)
    # 
    # It is typical to call to_enum when defining methods for
    # a generic Enumerable, in case no block is passed.
    # 
    # Here is such an example, with parameter passing and a sizing block:
    # 
    #   module Enumerable
    #     # a generic method to repeat the values of any enumerable
    #     def repeat(n)
    #       raise ArgumentError, "#{n} is negative!" if n < 0
    #       unless block_given?
    #         return to_enum(__method__, n) do # __method__ is :repeat here
    #           sz = size     # Call size and multiply by n...
    #           sz * n if sz  # but return nil if size itself is nil
    #         end
    #       end
    #       each do |*val|
    #         n.times { yield *val }
    #       end
    #     end
    #   end
    # 
    #   %i[hello world].repeat(2) { |w| puts w }
    #     # => Prints 'hello', 'hello', 'world', 'world'
    #   enum = (1..14).repeat(3)
    #     # => returns an Enumerator when called without a block
    #   enum.first(4) # => [1, 1, 1, 2]
    #   enum.size # => 42
    def to_enum(*several_variants)
        #This is a stub, used for indexing
    end
    # obj.to_enum(method = :each, *args)                 -> enum
    # obj.enum_for(method = :each, *args)                -> enum
    # obj.to_enum(method = :each, *args) {|*args| block} -> enum
    # obj.enum_for(method = :each, *args){|*args| block} -> enum
    #  
    # Creates a new Enumerator which will enumerate by calling +method+ on
    # +obj+, passing +args+ if any.
    # 
    # If a block is given, it will be used to calculate the size of
    # the enumerator without the need to iterate it (see Enumerator#size).
    # 
    # === Examples
    # 
    #   str = "xyz"
    # 
    #   enum = str.enum_for(:each_byte)
    #   enum.each { |b| puts b }
    #   # => 120
    #   # => 121
    #   # => 122
    # 
    #   # protect an array from being modified by some_method
    #   a = [1, 2, 3]
    #   some_method(a.to_enum)
    # 
    # It is typical to call to_enum when defining methods for
    # a generic Enumerable, in case no block is passed.
    # 
    # Here is such an example, with parameter passing and a sizing block:
    # 
    #   module Enumerable
    #     # a generic method to repeat the values of any enumerable
    #     def repeat(n)
    #       raise ArgumentError, "#{n} is negative!" if n < 0
    #       unless block_given?
    #         return to_enum(__method__, n) do # __method__ is :repeat here
    #           sz = size     # Call size and multiply by n...
    #           sz * n if sz  # but return nil if size itself is nil
    #         end
    #       end
    #       each do |*val|
    #         n.times { yield *val }
    #       end
    #     end
    #   end
    # 
    #   %i[hello world].repeat(2) { |w| puts w }
    #     # => Prints 'hello', 'hello', 'world', 'world'
    #   enum = (1..14).repeat(3)
    #     # => returns an Enumerator when called without a block
    #   enum.first(4) # => [1, 1, 1, 2]
    #   enum.size # => 42
    def enum_for(*several_variants)
        #This is a stub, used for indexing
    end
    # obj.extend(module, ...)    -> obj
    #  
    # Adds to _obj_ the instance methods from each module given as a
    # parameter.
    # 
    #    module Mod
    #      def hello
    #        "Hello from Mod.\n"
    #      end
    #    end
    # 
    #    class Klass
    #      def hello
    #        "Hello from Klass.\n"
    #      end
    #    end
    # 
    #    k = Klass.new
    #    k.hello         #=> "Hello from Klass.\n"
    #    k.extend(Mod)   #=> #<Klass:0x401b3bc8>
    #    k.hello         #=> "Hello from Mod.\n"
    def extend(module1, *args)
        #This is a stub, used for indexing
    end
    # obj.__id__       -> integer
    # obj.object_id    -> integer
    #  
    # Returns an integer identifier for +obj+.
    # 
    # The same number will be returned on all calls to +id+ for a given object,
    # and no two active objects will share an id.
    # 
    # Object#object_id is a different concept from the +:name+ notation, which
    # returns the symbol id of +name+.
    # 
    # Replaces the deprecated Object#id.
    def object_id()
        #This is a stub, used for indexing
    end
    # obj.display(port=$>)    -> nil
    #  
    # Prints <i>obj</i> on the given port (default <code>$></code>).
    # Equivalent to:
    # 
    #    def display(port=$>)
    #      port.write self
    #    end
    # 
    # For example:
    # 
    #    1.display
    #    "cat".display
    #    [ 4, 5, 6 ].display
    #    puts
    # 
    # <em>produces:</em>
    # 
    #    1cat456
    def display(port=$>)
        #This is a stub, used for indexing
    end
    # call_seq:
    #   nil.nil?               -> true
    #   <anything_else>.nil?   -> false
    # 
    # Only the object <i>nil</i> responds <code>true</code> to <code>nil?</code>.
    def nil?()
        #This is a stub, used for indexing
    end
    # obj === other   -> true or false
    #  
    # Case Equality -- For class Object, effectively the same as calling
    # <code>#==</code>, but typically overridden by descendants to provide
    # meaningful semantics in +case+ statements.
    def === other
        #This is a stub, used for indexing
    end
    # obj =~ other  -> nil
    #  
    # Pattern Match---Overridden by descendants (notably
    # <code>Regexp</code> and <code>String</code>) to provide meaningful
    # pattern-match semantics.
    def =~ other
        #This is a stub, used for indexing
    end
    # obj !~ other  -> true or false
    #  
    # Returns true if two objects do not match (using the <i>=~</i>
    # method), otherwise false.
    def !~ other
        #This is a stub, used for indexing
    end
    # obj == other        -> true or false
    # obj.equal?(other)   -> true or false
    # obj.eql?(other)     -> true or false
    #  
    # Equality --- At the <code>Object</code> level, <code>==</code> returns
    # <code>true</code> only if +obj+ and +other+ are the same object.
    # Typically, this method is overridden in descendant classes to provide
    # class-specific meaning.
    # 
    # Unlike <code>==</code>, the <code>equal?</code> method should never be
    # overridden by subclasses as it is used to determine object identity
    # (that is, <code>a.equal?(b)</code> if and only if <code>a</code> is the
    # same object as <code>b</code>):
    # 
    #   obj = "a"
    #   other = obj.dup
    # 
    #   a == other      #=> true
    #   a.equal? other  #=> false
    #   a.equal? a      #=> true
    # 
    # The <code>eql?</code> method returns <code>true</code> if +obj+ and
    # +other+ refer to the same hash key.  This is used by Hash to test members
    # for equality.  For objects of class <code>Object</code>, <code>eql?</code>
    # is synonymous with <code>==</code>.  Subclasses normally continue this
    # tradition by aliasing <code>eql?</code> to their overridden <code>==</code>
    # method, but there are exceptions.  <code>Numeric</code> types, for
    # example, perform type conversion across <code>==</code>, but not across
    # <code>eql?</code>, so:
    # 
    #    1 == 1.0     #=> true
    #    1.eql? 1.0   #=> false
    def eql?(other)
        #This is a stub, used for indexing
    end
    # Generates a Fixnum hash value for this object.  This function must have the
    # property that <code>a.eql?(b)</code> implies <code>a.hash == b.hash</code>.
    # 
    # The hash value is used along with #eql? by the Hash class to determine if
    # two objects reference the same hash key.  Any hash value that exceeds the
    # capacity of a Fixnum will be truncated before being used.
    # 
    # The hash value for an object may not be identical across invocations or
    # implementations of ruby.  If you need a stable identifier across ruby
    # invocations and implementations you will need to generate one with a custom
    # method.
    def hash()
        #This is a stub, used for indexing
    end
    # obj <=> other -> 0 or nil
    #  
    # Returns 0 if +obj+ and +other+ are the same object
    # or <code>obj == other</code>, otherwise nil.
    # 
    # The <=> is used by various methods to compare objects, for example
    # Enumerable#sort, Enumerable#max etc.
    # 
    # Your implementation of <=> should return one of the following values: -1, 0,
    # 1 or nil. -1 means self is smaller than other. 0 means self is equal to other.
    # 1 means self is bigger than other. Nil means the two values could not be
    # compared.
    # 
    # When you define <=>, you can include Comparable to gain the methods <=, <,
    # ==, >=, > and between?.
    def <=> other
        #This is a stub, used for indexing
    end
    # obj.class    -> class
    #  
    # Returns the class of <i>obj</i>. This method must always be
    # called with an explicit receiver, as <code>class</code> is also a
    # reserved word in Ruby.
    # 
    #    1.class      #=> Fixnum
    #    self.class   #=> Object
    def class()
        #This is a stub, used for indexing
    end
    # obj.singleton_class    -> class
    #  
    # Returns the singleton class of <i>obj</i>.  This method creates
    # a new singleton class if <i>obj</i> does not have it.
    # 
    # If <i>obj</i> is <code>nil</code>, <code>true</code>, or
    # <code>false</code>, it returns NilClass, TrueClass, or FalseClass,
    # respectively.
    # If <i>obj</i> is a Fixnum or a Symbol, it raises a TypeError.
    # 
    #    Object.new.singleton_class  #=> #<Class:#<Object:0xb7ce1e24>>
    #    String.singleton_class      #=> #<Class:String>
    #    nil.singleton_class         #=> NilClass
    def singleton_class()
        #This is a stub, used for indexing
    end
    # obj.clone -> an_object
    #  
    # Produces a shallow copy of <i>obj</i>---the instance variables of
    # <i>obj</i> are copied, but not the objects they reference. Copies
    # the frozen and tainted state of <i>obj</i>. See also the discussion
    # under <code>Object#dup</code>.
    # 
    #    class Klass
    #       attr_accessor :str
    #    end
    #    s1 = Klass.new      #=> #<Klass:0x401b3a38>
    #    s1.str = "Hello"    #=> "Hello"
    #    s2 = s1.clone       #=> #<Klass:0x401b3998 @str="Hello">
    #    s2.str[1,4] = "i"   #=> "i"
    #    s1.inspect          #=> "#<Klass:0x401b3a38 @str=\"Hi\">"
    #    s2.inspect          #=> "#<Klass:0x401b3998 @str=\"Hi\">"
    # 
    # This method may have class-specific behavior.  If so, that
    # behavior will be documented under the #+initialize_copy+ method of
    # the class.
    def clone()
        #This is a stub, used for indexing
    end
    # obj.dup -> an_object
    #  
    # Produces a shallow copy of <i>obj</i>---the instance variables of
    # <i>obj</i> are copied, but not the objects they reference.
    # <code>dup</code> copies the tainted state of <i>obj</i>. See also
    # the discussion under <code>Object#clone</code>. In general,
    # <code>clone</code> and <code>dup</code> may have different semantics
    # in descendant classes. While <code>clone</code> is used to duplicate
    # an object, including its internal state, <code>dup</code> typically
    # uses the class of the descendant object to create the new instance.
    # 
    # This method may have class-specific behavior.  If so, that
    # behavior will be documented under the #+initialize_copy+ method of
    # the class.
    def dup()
        #This is a stub, used for indexing
    end
    # obj.taint -> obj
    #  
    # Marks <i>obj</i> as tainted---if the <code>$SAFE</code> level is
    # set appropriately, many method calls which might alter the running
    # programs environment will refuse to accept tainted strings.
    def taint()
        #This is a stub, used for indexing
    end
    # obj.tainted?    -> true or false
    #  
    # Returns <code>true</code> if the object is tainted.
    def tainted?()
        #This is a stub, used for indexing
    end
    # obj.untaint    -> obj
    #  
    # Removes the taint from <i>obj</i>.
    def untaint()
        #This is a stub, used for indexing
    end
    # obj.untrust -> obj
    #  
    # Marks <i>obj</i> as untrusted.
    def untrust()
        #This is a stub, used for indexing
    end
    # obj.untrusted?    -> true or false
    #  
    # Returns <code>true</code> if the object is untrusted.
    def untrusted?()
        #This is a stub, used for indexing
    end
    # obj.trust    -> obj
    #  
    # Removes the untrusted mark from <i>obj</i>.
    def trust()
        #This is a stub, used for indexing
    end
    # obj.freeze    -> obj
    #  
    # Prevents further modifications to <i>obj</i>. A
    # <code>RuntimeError</code> will be raised if modification is attempted.
    # There is no way to unfreeze a frozen object. See also
    # <code>Object#frozen?</code>.
    # 
    # This method returns self.
    # 
    #    a = [ "a", "b", "c" ]
    #    a.freeze
    #    a << "z"
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:3:in `<<': can't modify frozen array (RuntimeError)
    #     from prog.rb:3
    def freeze()
        #This is a stub, used for indexing
    end
    # obj.frozen?    -> true or false
    #  
    # Returns the freeze status of <i>obj</i>.
    # 
    #    a = [ "a", "b", "c" ]
    #    a.freeze    #=> ["a", "b", "c"]
    #    a.frozen?   #=> true
    def frozen?()
        #This is a stub, used for indexing
    end
    # obj.to_s    -> string
    #  
    # Returns a string representing <i>obj</i>. The default
    # <code>to_s</code> prints the object's class and an encoding of the
    # object id. As a special case, the top-level object that is the
    # initial execution context of Ruby programs returns ``main.''
    def to_s()
        #This is a stub, used for indexing
    end
    # obj.inspect   -> string
    #  
    # Returns a string containing a human-readable representation of <i>obj</i>.
    # By default, show the class name and the list of the instance variables and
    # their values (by calling #inspect on each of them).
    # User defined classes should override this method to make better
    # representation of <i>obj</i>.  When overriding this method, it should
    # return a string whose encoding is compatible with the default external
    # encoding.
    # 
    #     [ 1, 2, 3..4, 'five' ].inspect   #=> "[1, 2, 3..4, \"five\"]"
    #     Time.new.inspect                 #=> "2008-03-08 19:43:39 +0900"
    # 
    #     class Foo
    #     end
    #     Foo.new.inspect                  #=> "#<Foo:0x0300c868>"
    # 
    #     class Bar
    #       def initialize
    #         @bar = 1
    #       end
    #     end
    #     Bar.new.inspect                  #=> "#<Bar:0x0300c868 @bar=1>"
    # 
    #     class Baz
    #       def to_s
    #         "baz"
    #       end
    #     end
    #     Baz.new.inspect                  #=> "#<Baz:0x0300c868>"
    def inspect()
        #This is a stub, used for indexing
    end
    # obj.methods(all=true)    -> array
    #  
    # Returns a list of the names of public and protected methods of
    # <i>obj</i>. This will include all the methods accessible in
    # <i>obj</i>'s ancestors.
    # If the <i>all</i> parameter is set to <code>false</code>, only those methods
    # in the receiver will be listed.
    # 
    #    class Klass
    #      def klass_method()
    #      end
    #    end
    #    k = Klass.new
    #    k.methods[0..9]    #=> [:klass_method, :nil?, :===,
    #                       #    :==~, :!, :eql?
    #                       #    :hash, :<=>, :class, :singleton_class]
    #    k.methods.length   #=> 57
    def methods(all=true)
        #This is a stub, used for indexing
    end
    # obj.singleton_methods(all=true)    -> array
    #  
    # Returns an array of the names of singleton methods for <i>obj</i>.
    # If the optional <i>all</i> parameter is true, the list will include
    # methods in modules included in <i>obj</i>.
    # Only public and protected singleton methods are returned.
    # 
    #    module Other
    #      def three() end
    #    end
    # 
    #    class Single
    #      def Single.four() end
    #    end
    # 
    #    a = Single.new
    # 
    #    def a.one()
    #    end
    # 
    #    class << a
    #      include Other
    #      def two()
    #      end
    #    end
    # 
    #    Single.singleton_methods    #=> [:four]
    #    a.singleton_methods(false)  #=> [:two, :one]
    #    a.singleton_methods         #=> [:two, :one, :three]
    def singleton_methods(all=true)
        #This is a stub, used for indexing
    end
    # obj.protected_methods(all=true)   -> array
    #  
    # Returns the list of protected methods accessible to <i>obj</i>. If
    # the <i>all</i> parameter is set to <code>false</code>, only those methods
    # in the receiver will be listed.
    def protected_methods(all=true)
        #This is a stub, used for indexing
    end
    # obj.private_methods(all=true)   -> array
    #  
    # Returns the list of private methods accessible to <i>obj</i>. If
    # the <i>all</i> parameter is set to <code>false</code>, only those methods
    # in the receiver will be listed.
    def private_methods(all=true)
        #This is a stub, used for indexing
    end
    # obj.public_methods(all=true)   -> array
    #  
    # Returns the list of public methods accessible to <i>obj</i>. If
    # the <i>all</i> parameter is set to <code>false</code>, only those methods
    # in the receiver will be listed.
    def public_methods(all=true)
        #This is a stub, used for indexing
    end
    # obj.instance_variables    -> array
    #  
    # Returns an array of instance variable names for the receiver. Note
    # that simply defining an accessor does not create the corresponding
    # instance variable.
    # 
    #    class Fred
    #      attr_accessor :a1
    #      def initialize
    #        @iv = 3
    #      end
    #    end
    #    Fred.new.instance_variables   #=> [:@iv]
    def instance_variables()
        #This is a stub, used for indexing
    end
    # obj.instance_variable_get(symbol)    -> obj
    #  
    # Returns the value of the given instance variable, or nil if the
    # instance variable is not set. The <code>@</code> part of the
    # variable name should be included for regular instance
    # variables. Throws a <code>NameError</code> exception if the
    # supplied symbol is not valid as an instance variable name.
    # 
    #    class Fred
    #      def initialize(p1, p2)
    #        @a, @b = p1, p2
    #      end
    #    end
    #    fred = Fred.new('cat', 99)
    #    fred.instance_variable_get(:@a)    #=> "cat"
    #    fred.instance_variable_get("@b")   #=> 99
    def instance_variable_get(symbol)
        #This is a stub, used for indexing
    end
    # obj.instance_variable_set(symbol, obj)    -> obj
    #  
    # Sets the instance variable names by <i>symbol</i> to
    # <i>object</i>, thereby frustrating the efforts of the class's
    # author to attempt to provide proper encapsulation. The variable
    # did not have to exist prior to this call.
    # 
    #    class Fred
    #      def initialize(p1, p2)
    #        @a, @b = p1, p2
    #      end
    #    end
    #    fred = Fred.new('cat', 99)
    #    fred.instance_variable_set(:@a, 'dog')   #=> "dog"
    #    fred.instance_variable_set(:@c, 'cat')   #=> "cat"
    #    fred.inspect                             #=> "#<Fred:0x401b3da8 @a=\"dog\", @b=99, @c=\"cat\">"
    def instance_variable_set(symbol, obj)
        #This is a stub, used for indexing
    end
    # obj.instance_variable_defined?(symbol)    -> true or false
    #  
    # Returns <code>true</code> if the given instance variable is
    # defined in <i>obj</i>.
    # 
    #    class Fred
    #      def initialize(p1, p2)
    #        @a, @b = p1, p2
    #      end
    #    end
    #    fred = Fred.new('cat', 99)
    #    fred.instance_variable_defined?(:@a)    #=> true
    #    fred.instance_variable_defined?("@b")   #=> true
    #    fred.instance_variable_defined?("@c")   #=> false
    def instance_variable_defined?(symbol)
        #This is a stub, used for indexing
    end
    # obj.remove_instance_variable(symbol)    -> obj
    #  
    # Removes the named instance variable from <i>obj</i>, returning that
    # variable's value.
    # 
    #    class Dummy
    #      attr_reader :var
    #      def initialize
    #        @var = 99
    #      end
    #      def remove
    #        remove_instance_variable(:@var)
    #      end
    #    end
    #    d = Dummy.new
    #    d.var      #=> 99
    #    d.remove   #=> 99
    #    d.var      #=> nil
    def remove_instance_variable(symbol)
        #This is a stub, used for indexing
    end
    # obj.instance_of?(class)    -> true or false
    #  
    # Returns <code>true</code> if <i>obj</i> is an instance of the given
    # class. See also <code>Object#kind_of?</code>.
    # 
    #    class A;     end
    #    class B < A; end
    #    class C < B; end
    # 
    #    b = B.new
    #    b.instance_of? A   #=> false
    #    b.instance_of? B   #=> true
    #    b.instance_of? C   #=> false
    def instance_of?(class1)
        #This is a stub, used for indexing
    end
    # obj.is_a?(class)       -> true or false
    # obj.kind_of?(class)    -> true or false
    #  
    # Returns <code>true</code> if <i>class</i> is the class of
    # <i>obj</i>, or if <i>class</i> is one of the superclasses of
    # <i>obj</i> or modules included in <i>obj</i>.
    # 
    #    module M;    end
    #    class A
    #      include M
    #    end
    #    class B < A; end
    #    class C < B; end
    # 
    #    b = B.new
    #    b.is_a? A          #=> true
    #    b.is_a? B          #=> true
    #    b.is_a? C          #=> false
    #    b.is_a? M          #=> true
    # 
    #    b.kind_of? A       #=> true
    #    b.kind_of? B       #=> true
    #    b.kind_of? C       #=> false
    #    b.kind_of? M       #=> true
    def kind_of?(class1)
        #This is a stub, used for indexing
    end
    # obj.is_a?(class)       -> true or false
    # obj.kind_of?(class)    -> true or false
    #  
    # Returns <code>true</code> if <i>class</i> is the class of
    # <i>obj</i>, or if <i>class</i> is one of the superclasses of
    # <i>obj</i> or modules included in <i>obj</i>.
    # 
    #    module M;    end
    #    class A
    #      include M
    #    end
    #    class B < A; end
    #    class C < B; end
    # 
    #    b = B.new
    #    b.is_a? A          #=> true
    #    b.is_a? B          #=> true
    #    b.is_a? C          #=> false
    #    b.is_a? M          #=> true
    # 
    #    b.kind_of? A       #=> true
    #    b.kind_of? B       #=> true
    #    b.kind_of? C       #=> false
    #    b.kind_of? M       #=> true
    def is_a?(class1)
        #This is a stub, used for indexing
    end
    # obj.tap{|x|...}    -> obj
    #  
    # Yields <code>x</code> to the block, and then returns <code>x</code>.
    # The primary purpose of this method is to "tap into" a method chain,
    # in order to perform operations on intermediate results within the chain.
    # 
    #     (1..10)                .tap {|x| puts "original: #{x.inspect}"}
    #       .to_a                .tap {|x| puts "array: #{x.inspect}"}
    #       .select {|x| x%2==0} .tap {|x| puts "evens: #{x.inspect}"}
    #       .map { |x| x*x }     .tap {|x| puts "squares: #{x.inspect}"}
    def tap()
        #This is a stub, used for indexing
    end
    # obj.method(sym)    -> method
    #  
    # Looks up the named method as a receiver in <i>obj</i>, returning a
    # <code>Method</code> object (or raising <code>NameError</code>). The
    # <code>Method</code> object acts as a closure in <i>obj</i>'s object
    # instance, so instance variables and the value of <code>self</code>
    # remain available.
    # 
    #    class Demo
    #      def initialize(n)
    #        @iv = n
    #      end
    #      def hello()
    #        "Hello, @iv = #{@iv}"
    #      end
    #    end
    # 
    #    k = Demo.new(99)
    #    m = k.method(:hello)
    #    m.call   #=> "Hello, @iv = 99"
    # 
    #    l = Demo.new('Fred')
    #    m = l.method("hello")
    #    m.call   #=> "Hello, @iv = Fred"
    def method(sym)
        #This is a stub, used for indexing
    end
    # obj.public_method(sym)    -> method
    #  
    # Similar to _method_, searches public method only.
    def public_method(sym)
        #This is a stub, used for indexing
    end
    # define_singleton_method(symbol, method) -> new_method
    # define_singleton_method(symbol) { block } -> proc
    #  
    # Defines a singleton method in the receiver. The _method_
    # parameter can be a +Proc+, a +Method+ or an +UnboundMethod+ object.
    # If a block is specified, it is used as the method body.
    # 
    #    class A
    #      class << self
    #        def class_name
    #          to_s
    #        end
    #      end
    #    end
    #    A.define_singleton_method(:who_am_i) do
    #      "I am: #{class_name}"
    #    end
    #    A.who_am_i   # ==> "I am: A"
    # 
    #    guy = "Bob"
    #    guy.define_singleton_method(:hello) { "#{self}: Hello there!" }
    #    guy.hello    #=>  "Bob: Hello there!"
    def define_singleton_method(*several_variants)
        #This is a stub, used for indexing
    end
    # foo.send(symbol [, args...])        -> obj
    # foo.__send__(symbol [, args...])      -> obj
    #  
    # Invokes the method identified by _symbol_, passing it any
    # arguments specified. You can use <code>__send__</code> if the name
    # +send+ clashes with an existing method in _obj_.
    # 
    #    class Klass
    #      def hello(*args)
    #        "Hello " + args.join(' ')
    #      end
    #    end
    #    k = Klass.new
    #    k.send :hello, "gentle", "readers"   #=> "Hello gentle readers"
    def send(*args)
        #This is a stub, used for indexing
    end
    # obj.public_send(symbol [, args...])  -> obj
    #  
    # Invokes the method identified by _symbol_, passing it any
    # arguments specified. Unlike send, public_send calls public
    # methods only.
    # 
    #    1.public_send(:puts, "hello")  # causes NoMethodError
    def public_send(*args)
        #This is a stub, used for indexing
    end
    # obj.respond_to?(symbol, include_all=false) -> true or false
    #  
    # Returns +true+ if _obj_ responds to the given method.  Private and
    # protected methods are included in the search only if the optional
    # second parameter evaluates to +true+.
    # 
    # If the method is not implemented,
    # as Process.fork on Windows, File.lchmod on GNU/Linux, etc.,
    # false is returned.
    # 
    # If the method is not defined, <code>respond_to_missing?</code>
    # method is called and the result is returned.
    def respond_to?(symbol, include_all=false)
        #This is a stub, used for indexing
    end
    # obj.respond_to_missing?(symbol, include_all) -> true or false
    #  
    # DO NOT USE THIS DIRECTLY.
    # 
    # Hook method to return whether the _obj_ can respond to _id_ method
    # or not.
    # 
    # See #respond_to?.
    def respond_to_missing?(symbol, include_all)
        #This is a stub, used for indexing
    end
end
