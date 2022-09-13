=begin
 This is a machine generated stub using stdlib-doc for <b>class Object</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>Object</code> is the parent class of all classes in Ruby. Its
# methods are therefore available to all objects unless explicitly
# overridden.
# 
# <code>Object</code> mixes in the <code>Kernel</code> module, making
# the built-in kernel functions globally accessible. Although the
# instance methods of <code>Object</code> are defined by the
# <code>Kernel</code> module, we have chosen to document them here for
# clarity.
# 
# In the descriptions of Object's methods, the parameter <i>symbol</i> refers
# to a symbol, which is either a quoted string or a
# <code>Symbol</code> (such as <code>:name</code>).
class Object < BasicObject
    include Kernel
    # The top level binding object.
    TOPLEVEL_BINDING = Binding.new #value is unknown, used for indexing.
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
    MatchingData = nil #value is unknown, used for indexing.
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
    RUBY_DESCRIPTION = nil #value is unknown, used for indexing.
    RUBY_COPYRIGHT = nil #value is unknown, used for indexing.
    # Obsolete. Use RUBY_VERSION
    VERSION = "" #value is unknown, used for indexing.
    # Obsolete. Use RUBY_RELEASE_DATE
    RELEASE_DATE = "" #value is unknown, used for indexing.
    # Obsolete. Use RUBY_PLATFORM
    PLATFORM = "" #value is unknown, used for indexing.
    IPsocket = nil #value is unknown, used for indexing.
    TCPsocket = nil #value is unknown, used for indexing.
    SOCKSsocket = nil #value is unknown, used for indexing.
    TCPserver = nil #value is unknown, used for indexing.
    UDPsocket = nil #value is unknown, used for indexing.
    UNIXsocket = nil #value is unknown, used for indexing.
    UNIXserver = nil #value is unknown, used for indexing.
    # obj.to_enum(method = :each, *args)
    # obj.enum_for(method = :each, *args)
    #  
    # Returns Enumerable::Enumerator.new(self, method, *args).
    # 
    # e.g.:
    # 
    #    str = "xyz"
    # 
    #    enum = str.enum_for(:each_byte)
    #    a = enum.map {|b| '%02x' % b } #=> ["78", "79", "7a"]
    # 
    #    # protects an array from being modified
    #    a = [1, 2, 3]
    #    some_method(a.to_enum)
    def to_enum(method = :each, *args)
        #This is a stub, used for indexing
    end
    # obj.to_enum(method = :each, *args)
    # obj.enum_for(method = :each, *args)
    #  
    # Returns Enumerable::Enumerator.new(self, method, *args).
    # 
    # e.g.:
    # 
    #    str = "xyz"
    # 
    #    enum = str.enum_for(:each_byte)
    #    a = enum.map {|b| '%02x' % b } #=> ["78", "79", "7a"]
    # 
    #    # protects an array from being modified
    #    a = [1, 2, 3]
    #    some_method(a.to_enum)
    def enum_for(method = :each, *args)
        #This is a stub, used for indexing
    end
    # obj.respond_to?(symbol, include_private=false) => true or false
    #  
    # Returns +true+> if _obj_ responds to the given
    # method. Private methods are included in the search only if the
    # optional second parameter evaluates to +true+.
    def respond_to?(symbol, include_private=false)
        #This is a stub, used for indexing
    end
    # obj.send(symbol [, args...])        => obj
    # obj.__send__(symbol [, args...])    => obj
    #  
    # Invokes the method identified by _symbol_, passing it any
    # arguments specified. You can use <code>\_\_send__</code> if the name
    # +send+ clashes with an existing method in _obj_.
    # 
    #    class Klass
    #      def hello(*args)
    #        "Hello " + args.join(' ')
    #      end
    #    end
    #    k = Klass.new
    #    k.send :hello, "gentle", "readers"   #=> "Hello gentle readers"
    def send(symbol, *args)
        #This is a stub, used for indexing
    end
    # obj.send(symbol [, args...])        => obj
    # obj.__send__(symbol [, args...])    => obj
    #  
    # Invokes the method identified by _symbol_, passing it any
    # arguments specified. You can use <code>\_\_send__</code> if the name
    # +send+ clashes with an existing method in _obj_.
    # 
    #    class Klass
    #      def hello(*args)
    #        "Hello " + args.join(' ')
    #      end
    #    end
    #    k = Klass.new
    #    k.send :hello, "gentle", "readers"   #=> "Hello gentle readers"
    def __send__(symbol, *args)
        #This is a stub, used for indexing
    end
    # obj.instance_eval(string [, filename [, lineno]] )   => obj
    # obj.instance_eval {| | block }                       => obj
    #  
    # Evaluates a string containing Ruby source code, or the given block,
    # within the context of the receiver (_obj_). In order to set the
    # context, the variable +self+ is set to _obj_ while
    # the code is executing, giving the code access to _obj_'s
    # instance variables. In the version of <code>instance_eval</code>
    # that takes a +String+, the optional second and third
    # parameters supply a filename and starting line number that are used
    # when reporting compilation errors.
    # 
    #    class Klass
    #      def initialize
    #        @secret = 99
    #      end
    #    end
    #    k = Klass.new
    #    k.instance_eval { @secret }   #=> 99
    def instance_eval(*several_variants)
        #This is a stub, used for indexing
    end
    # obj.instance_exec(arg...) {|var...| block }                       => obj
    #  
    # Executes the given block within the context of the receiver
    # (_obj_). In order to set the context, the variable +self+ is set
    # to _obj_ while the code is executing, giving the code access to
    # _obj_'s instance variables.  Arguments are passed as block parameters.
    # 
    #    class KlassWithSecret
    #      def initialize
    #        @secret = 99
    #      end
    #    end
    #    k = KlassWithSecret.new
    #    k.instance_exec(5) {|x| @secret+x }   #=> 104
    def instance_exec(*args)
        #This is a stub, used for indexing
    end
    # obj.extend(module, ...)    => obj
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
    # obj.method(sym)    => method
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
    # obj.hash    => fixnum
    #  
    # Generates a <code>Fixnum</code> hash value for this object. This
    # function must have the property that <code>a.eql?(b)</code> implies
    # <code>a.hash == b.hash</code>. The hash value is used by class
    # <code>Hash</code>. Any hash value that exceeds the capacity of a
    # <code>Fixnum</code> will be truncated before being used.
    def hash()
        #This is a stub, used for indexing
    end
    # obj.__id__       => fixnum
    # obj.object_id    => fixnum
    #  
    # Returns an integer identifier for <i>obj</i>. The same number will
    # be returned on all calls to <code>id</code> for a given object, and
    # no two active objects will share an id.
    # <code>Object#object_id</code> is a different concept from the
    # <code>:name</code> notation, which returns the symbol id of
    # <code>name</code>. Replaces the deprecated <code>Object#id</code>.
    def __id__()
        #This is a stub, used for indexing
    end
    # obj.__id__       => fixnum
    # obj.object_id    => fixnum
    #  
    # Returns an integer identifier for <i>obj</i>. The same number will
    # be returned on all calls to <code>id</code> for a given object, and
    # no two active objects will share an id.
    # <code>Object#object_id</code> is a different concept from the
    # <code>:name</code> notation, which returns the symbol id of
    # <code>name</code>. Replaces the deprecated <code>Object#id</code>.
    def object_id()
        #This is a stub, used for indexing
    end
    # obj.display(port=$>)    => nil
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
    # Not documented
    def self.new()
        #This is a stub, used for indexing
    end
    # call_seq:
    #   nil.nil?               => true
    #   <anything_else>.nil?   => false
    # 
    # Only the object <i>nil</i> responds <code>true</code> to <code>nil?</code>.
    def nil?()
        #This is a stub, used for indexing
    end
    # obj == other        => true or false
    # obj.equal?(other)   => true or false
    # obj.eql?(other)     => true or false
    #  
    # Equality---At the <code>Object</code> level, <code>==</code> returns
    # <code>true</code> only if <i>obj</i> and <i>other</i> are the
    # same object. Typically, this method is overridden in descendent
    # classes to provide class-specific meaning.
    # 
    # Unlike <code>==</code>, the <code>equal?</code> method should never be
    # overridden by subclasses: it is used to determine object identity
    # (that is, <code>a.equal?(b)</code> iff <code>a</code> is the same
    # object as <code>b</code>).
    # 
    # The <code>eql?</code> method returns <code>true</code> if
    # <i>obj</i> and <i>anObject</i> have the
    # same value. Used by <code>Hash</code> to test members for equality.
    # For objects of class <code>Object</code>, <code>eql?</code> is
    # synonymous with <code>==</code>. Subclasses normally continue this
    # tradition, but there are exceptions. <code>Numeric</code> types, for
    # example, perform type conversion across <code>==</code>, but not
    # across <code>eql?</code>, so:
    # 
    #    1 == 1.0     #=> true
    #    1.eql? 1.0   #=> false
    def == other
        #This is a stub, used for indexing
    end
    # obj == other        => true or false
    # obj.equal?(other)   => true or false
    # obj.eql?(other)     => true or false
    #  
    # Equality---At the <code>Object</code> level, <code>==</code> returns
    # <code>true</code> only if <i>obj</i> and <i>other</i> are the
    # same object. Typically, this method is overridden in descendent
    # classes to provide class-specific meaning.
    # 
    # Unlike <code>==</code>, the <code>equal?</code> method should never be
    # overridden by subclasses: it is used to determine object identity
    # (that is, <code>a.equal?(b)</code> iff <code>a</code> is the same
    # object as <code>b</code>).
    # 
    # The <code>eql?</code> method returns <code>true</code> if
    # <i>obj</i> and <i>anObject</i> have the
    # same value. Used by <code>Hash</code> to test members for equality.
    # For objects of class <code>Object</code>, <code>eql?</code> is
    # synonymous with <code>==</code>. Subclasses normally continue this
    # tradition, but there are exceptions. <code>Numeric</code> types, for
    # example, perform type conversion across <code>==</code>, but not
    # across <code>eql?</code>, so:
    # 
    #    1 == 1.0     #=> true
    #    1.eql? 1.0   #=> false
    def equal?(other)
        #This is a stub, used for indexing
    end
    # obj === other   => true or false
    #  
    # Case Equality---For class <code>Object</code>, effectively the same
    # as calling  <code>#==</code>, but typically overridden by descendents
    # to provide meaningful semantics in <code>case</code> statements.
    def === other
        #This is a stub, used for indexing
    end
    # obj =~ other  => false
    #  
    # Pattern Match---Overridden by descendents (notably
    # <code>Regexp</code> and <code>String</code>) to provide meaningful
    # pattern-match semantics.
    def =~ other
        #This is a stub, used for indexing
    end
    # obj == other        => true or false
    # obj.equal?(other)   => true or false
    # obj.eql?(other)     => true or false
    #  
    # Equality---At the <code>Object</code> level, <code>==</code> returns
    # <code>true</code> only if <i>obj</i> and <i>other</i> are the
    # same object. Typically, this method is overridden in descendent
    # classes to provide class-specific meaning.
    # 
    # Unlike <code>==</code>, the <code>equal?</code> method should never be
    # overridden by subclasses: it is used to determine object identity
    # (that is, <code>a.equal?(b)</code> iff <code>a</code> is the same
    # object as <code>b</code>).
    # 
    # The <code>eql?</code> method returns <code>true</code> if
    # <i>obj</i> and <i>anObject</i> have the
    # same value. Used by <code>Hash</code> to test members for equality.
    # For objects of class <code>Object</code>, <code>eql?</code> is
    # synonymous with <code>==</code>. Subclasses normally continue this
    # tradition, but there are exceptions. <code>Numeric</code> types, for
    # example, perform type conversion across <code>==</code>, but not
    # across <code>eql?</code>, so:
    # 
    #    1 == 1.0     #=> true
    #    1.eql? 1.0   #=> false
    def eql?(other)
        #This is a stub, used for indexing
    end
    # obj.id    => fixnum
    #  
    # Soon-to-be deprecated version of <code>Object#object_id</code>.
    def id()
        #This is a stub, used for indexing
    end
    # obj.type   => class
    #  
    # Deprecated synonym for <code>Object#class</code>.
    def type()
        #This is a stub, used for indexing
    end
    # obj.class    => class
    #  
    # Returns the class of <i>obj</i>, now preferred over
    # <code>Object#type</code>, as an object's type in Ruby is only
    # loosely tied to that object's class. This method must always be
    # called with an explicit receiver, as <code>class</code> is also a
    # reserved word in Ruby.
    # 
    #    1.class      #=> Fixnum
    #    self.class   #=> Object
    def class()
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
    # in descendent classes. While <code>clone</code> is used to duplicate
    # an object, including its internal state, <code>dup</code> typically
    # uses the class of the descendent object to create the new instance.
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
    # obj.tainted?    => true or false
    #  
    # Returns <code>true</code> if the object is tainted.
    def tainted?()
        #This is a stub, used for indexing
    end
    # obj.untaint    => obj
    #  
    # Removes the taint from <i>obj</i>.
    def untaint()
        #This is a stub, used for indexing
    end
    # obj.freeze    => obj
    #  
    # Prevents further modifications to <i>obj</i>. A
    # <code>TypeError</code> will be raised if modification is attempted.
    # There is no way to unfreeze a frozen object. See also
    # <code>Object#frozen?</code>.
    # 
    #    a = [ "a", "b", "c" ]
    #    a.freeze
    #    a << "z"
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:3:in `<<': can't modify frozen array (TypeError)
    #     from prog.rb:3
    def freeze()
        #This is a stub, used for indexing
    end
    # obj.frozen?    => true or false
    #  
    # Returns the freeze status of <i>obj</i>.
    # 
    #    a = [ "a", "b", "c" ]
    #    a.freeze    #=> ["a", "b", "c"]
    #    a.frozen?   #=> true
    def frozen?()
        #This is a stub, used for indexing
    end
    # obj.to_a -> anArray
    #  
    # Returns an array representation of <i>obj</i>. For objects of class
    # <code>Object</code> and others that don't explicitly override the
    # method, the return value is an array containing <code>self</code>. 
    # However, this latter behavior will soon be obsolete.
    # 
    #    self.to_a       #=> -:1: warning: default `to_a' will be obsolete
    #    "hello".to_a    #=> ["hello"]
    #    Time.new.to_a   #=> [39, 54, 8, 9, 4, 2003, 3, 99, true, "CDT"]
    def to_a()
        #This is a stub, used for indexing
    end
    # obj.to_s    => string
    #  
    # Returns a string representing <i>obj</i>. The default
    # <code>to_s</code> prints the object's class and an encoding of the
    # object id. As a special case, the top-level object that is the
    # initial execution context of Ruby programs returns ``main.''
    def to_s()
        #This is a stub, used for indexing
    end
    # obj.inspect   => string
    #  
    # Returns a string containing a human-readable representation of
    # <i>obj</i>. If not overridden, uses the <code>to_s</code> method to
    # generate the string.
    # 
    #    [ 1, 2, 3..4, 'five' ].inspect   #=> "[1, 2, 3..4, \"five\"]"
    #    Time.new.inspect                 #=> "Wed Apr 09 08:54:39 CDT 2003"
    def inspect()
        #This is a stub, used for indexing
    end
    # obj.methods    => array
    #  
    # Returns a list of the names of methods publicly accessible in
    # <i>obj</i>. This will include all the methods accessible in
    # <i>obj</i>'s ancestors.
    # 
    #    class Klass
    #      def kMethod()
    #      end
    #    end
    #    k = Klass.new
    #    k.methods[0..9]    #=> ["kMethod", "freeze", "nil?", "is_a?", 
    #                            "class", "instance_variable_set",
    #                             "methods", "extend", "__send__", "instance_eval"]
    #    k.methods.length   #=> 42
    def methods()
        #This is a stub, used for indexing
    end
    # obj.singleton_methods(all=true)    => array
    #  
    # Returns an array of the names of singleton methods for <i>obj</i>.
    # If the optional <i>all</i> parameter is true, the list will include
    # methods in modules included in <i>obj</i>.
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
    #    Single.singleton_methods    #=> ["four"]
    #    a.singleton_methods(false)  #=> ["two", "one"]
    #    a.singleton_methods         #=> ["two", "one", "three"]
    def singleton_methods(all=true)
        #This is a stub, used for indexing
    end
    # obj.protected_methods(all=true)   => array
    #  
    # Returns the list of protected methods accessible to <i>obj</i>. If
    # the <i>all</i> parameter is set to <code>false</code>, only those methods
    # in the receiver will be listed.
    def protected_methods(all=true)
        #This is a stub, used for indexing
    end
    # obj.private_methods(all=true)   => array
    #  
    # Returns the list of private methods accessible to <i>obj</i>. If
    # the <i>all</i> parameter is set to <code>false</code>, only those methods
    # in the receiver will be listed.
    def private_methods(all=true)
        #This is a stub, used for indexing
    end
    # obj.public_methods(all=true)   => array
    #  
    # Returns the list of public methods accessible to <i>obj</i>. If
    # the <i>all</i> parameter is set to <code>false</code>, only those methods
    # in the receiver will be listed.
    def public_methods(all=true)
        #This is a stub, used for indexing
    end
    # obj.instance_variables    => array
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
    #    Fred.new.instance_variables   #=> ["@iv"]
    def instance_variables()
        #This is a stub, used for indexing
    end
    # obj.instance_variable_get(symbol)    => obj
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
    # obj.instance_variable_set(symbol, obj)    => obj
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
    # obj.instance_variable_defined?(symbol)    => true or false
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
    # obj.remove_instance_variable(symbol)    => obj
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
    # obj.instance_of?(class)    => true or false
    #  
    # Returns <code>true</code> if <i>obj</i> is an instance of the given
    # class. See also <code>Object#kind_of?</code>.
    def instance_of?(class1)
        #This is a stub, used for indexing
    end
    # obj.is_a?(class)       => true or false
    # obj.kind_of?(class)    => true or false
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
    #    b = B.new
    #    b.instance_of? A   #=> false
    #    b.instance_of? B   #=> true
    #    b.instance_of? C   #=> false
    #    b.instance_of? M   #=> false
    #    b.kind_of? A       #=> true
    #    b.kind_of? B       #=> true
    #    b.kind_of? C       #=> false
    #    b.kind_of? M       #=> true
    def kind_of?(class1)
        #This is a stub, used for indexing
    end
    # obj.is_a?(class)       => true or false
    # obj.kind_of?(class)    => true or false
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
    #    b = B.new
    #    b.instance_of? A   #=> false
    #    b.instance_of? B   #=> true
    #    b.instance_of? C   #=> false
    #    b.instance_of? M   #=> false
    #    b.kind_of? A       #=> true
    #    b.kind_of? B       #=> true
    #    b.kind_of? C       #=> false
    #    b.kind_of? M       #=> true
    def is_a?(class1)
        #This is a stub, used for indexing
    end
    # obj.tap{|x|...}    => obj
    #  
    # Yields <code>x</code> to the block, and then returns <code>x</code>.
    # The primary purpose of this method is to "tap into" a method chain,
    # in order to perform operations on intermediate results within the chain.
    # 
    #     (1..10).tap {
    #       |x| puts "original: #{x.inspect}"
    #     }.to_a.tap {
    #       |x| puts "array: #{x.inspect}"
    #     }.select {|x| x%2==0}.tap {
    #       |x| puts "evens: #{x.inspect}"
    #     }.map {|x| x*x}.tap {
    #       |x| puts "squares: #{x.inspect}"
    #     }
    def tap()
        #This is a stub, used for indexing
    end
    # singleton_method_added(symbol)
    #  
    # Invoked as a callback whenever a singleton method is added to the
    # receiver.
    # 
    #    module Chatty
    #      def Chatty.singleton_method_added(id)
    #        puts "Adding #{id.id2name}"
    #      end
    #      def self.one()     end
    #      def two()          end
    #      def Chatty.three() end
    #    end
    # 
    # <em>produces:</em>
    # 
    #    Adding singleton_method_added
    #    Adding one
    #    Adding three
    def singleton_method_added(symbol)
        #This is a stub, used for indexing
    end
    # singleton_method_removed(symbol)
    #  
    # Invoked as a callback whenever a singleton method is removed from
    # the receiver.
    # 
    #    module Chatty
    #      def Chatty.singleton_method_removed(id)
    #        puts "Removing #{id.id2name}"
    #      end
    #      def self.one()     end
    #      def two()          end
    #      def Chatty.three() end
    #      class <<self
    #        remove_method :three
    #        remove_method :one
    #      end
    #    end
    # 
    # <em>produces:</em>
    # 
    #    Removing three
    #    Removing one
    def singleton_method_removed(symbol)
        #This is a stub, used for indexing
    end
    # singleton_method_undefined(symbol)
    #  
    # Invoked as a callback whenever a singleton method is undefined in
    # the receiver.
    # 
    #    module Chatty
    #      def Chatty.singleton_method_undefined(id)
    #        puts "Undefining #{id.id2name}"
    #      end
    #      def Chatty.one()   end
    #      class << self
    #         undef_method(:one)
    #      end
    #    end
    # 
    # <em>produces:</em>
    # 
    #    Undefining one
    def singleton_method_undefined(symbol)
        #This is a stub, used for indexing
    end
end
