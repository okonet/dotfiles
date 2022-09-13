=begin
 This is a machine generated stub using stdlib-doc for <b>class Module</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

class Module
    # append_features(mod)   -> mod
    #  
    # When this module is included in another, Ruby calls
    # <code>append_features</code> in this module, passing it the
    # receiving module in _mod_. Ruby's default implementation is
    # to add the constants, methods, and module variables of this module
    # to _mod_ if this module has not already been added to
    # _mod_ or one of its ancestors. See also <code>Module#include</code>.
    def append_features(mod)
        #This is a stub, used for indexing
    end
    # extend_object(obj)    -> obj
    #  
    # Extends the specified object by adding this module's constants and
    # methods (which are added as singleton methods). This is the callback
    # method used by <code>Object#extend</code>.
    # 
    #    module Picky
    #      def Picky.extend_object(o)
    #        if String === o
    #          puts "Can't add Picky to a String"
    #        else
    #          puts "Picky added to #{o.class}"
    #          super
    #        end
    #      end
    #    end
    #    (s = Array.new).extend Picky  # Call Object.extend
    #    (s = "quick brown fox").extend Picky
    # 
    # <em>produces:</em>
    # 
    #    Picky added to Array
    #    Can't add Picky to a String
    def extend_object(obj)
        #This is a stub, used for indexing
    end
    # include(module, ...)    -> self
    #  
    # Invokes <code>Module.append_features</code> on each parameter in reverse order.
    def include(module1, *smth)
        #This is a stub, used for indexing
    end
    # Module.nesting    -> array
    #  
    # Returns the list of +Modules+ nested at the point of call.
    # 
    #    module M1
    #      module M2
    #        $a = Module.nesting
    #      end
    #    end
    #    $a           #=> [M1::M2, M1]
    #    $a[0].name   #=> "M1::M2"
    def self.nesting()
        #This is a stub, used for indexing
    end
    # Module.constants   -> array
    #  
    # Returns an array of the names of all constants defined in the
    # system. This list includes the names of all modules and classes.
    # 
    #    p Module.constants.sort[1..5]
    # 
    # <em>produces:</em>
    # 
    #    ["ARGV", "ArgumentError", "Array", "Bignum", "Binding"]
    def self.constants()
        #This is a stub, used for indexing
    end
    # mod.autoload(module, filename)   -> nil
    #  
    # Registers _filename_ to be loaded (using <code>Kernel::require</code>)
    # the first time that _module_ (which may be a <code>String</code> or
    # a symbol) is accessed in the namespace of _mod_.
    # 
    #    module A
    #    end
    #    A.autoload(:B, "b")
    #    A::B.doit            # autoloads "b"
    def autoload(p1, p2)
        #This is a stub, used for indexing
    end
    # mod.autoload?(name)   -> String or nil
    #  
    # Returns _filename_ to be loaded if _name_ is registered as
    # +autoload+ in the namespace of _mod_.
    # 
    #    module A
    #    end
    #    A.autoload(:B, "b")
    #    A.autoload?(:B)            #=> "b"
    def autoload?(name)
        #This is a stub, used for indexing
    end
    # included( othermod )
    #  
    # Callback invoked whenever the receiver is included in another
    # module or class. This should be used in preference to
    # <tt>Module.append_features</tt> if your code wants to perform some
    # action when a module is included in another.
    # 
    #        module A
    #          def A.included(mod)
    #            puts "#{self} included in #{mod}"
    #          end
    #        end
    #        module Enumerable
    #          include A
    #        end
    def included( othermod )
        #This is a stub, used for indexing
    end
    # Not documented
    def extended(p1)
        #This is a stub, used for indexing
    end
    # Not documented
    def method_added(p1)
        #This is a stub, used for indexing
    end
    # Not documented
    def method_removed(p1)
        #This is a stub, used for indexing
    end
    # Not documented
    def method_undefined(p1)
        #This is a stub, used for indexing
    end
    # mod.freeze       -> mod
    #  
    # Prevents further modifications to <i>mod</i>.
    # 
    # This method returns self.
    def freeze()
        #This is a stub, used for indexing
    end
    # mod === obj    -> true or false
    #  
    # Case Equality---Returns <code>true</code> if <i>anObject</i> is an
    # instance of <i>mod</i> or one of <i>mod</i>'s descendants. Of
    # limited use for modules, but can be used in <code>case</code>
    # statements to classify objects by class.
    def === obj
        #This is a stub, used for indexing
    end
    # obj == other        -> true or false
    # obj.equal?(other)   -> true or false
    # obj.eql?(other)     -> true or false
    #  
    # Equality---At the <code>Object</code> level, <code>==</code> returns
    # <code>true</code> only if <i>obj</i> and <i>other</i> are the
    # same object. Typically, this method is overridden in descendant
    # classes to provide class-specific meaning.
    # 
    # Unlike <code>==</code>, the <code>equal?</code> method should never be
    # overridden by subclasses: it is used to determine object identity
    # (that is, <code>a.equal?(b)</code> iff <code>a</code> is the same
    # object as <code>b</code>).
    # 
    # The <code>eql?</code> method returns <code>true</code> if
    # <i>obj</i> and <i>anObject</i> have the same value. Used by
    # <code>Hash</code> to test members for equality.  For objects of
    # class <code>Object</code>, <code>eql?</code> is synonymous with
    # <code>==</code>. Subclasses normally continue this tradition, but
    # there are exceptions. <code>Numeric</code> types, for example,
    # perform type conversion across <code>==</code>, but not across
    # <code>eql?</code>, so:
    # 
    #    1 == 1.0     #=> true
    #    1.eql? 1.0   #=> false
    def == other
        #This is a stub, used for indexing
    end
    # mod <=> other_mod   -> -1, 0, +1, or nil
    #  
    # Comparison---Returns -1 if <i>mod</i> includes <i>other_mod</i>, 0 if
    # <i>mod</i> is the same as <i>other_mod</i>, and +1 if <i>mod</i> is
    # included by <i>other_mod</i>. Returns <code>nil</code> if <i>mod</i>
    # has no relationship with <i>other_mod</i> or if <i>other_mod</i> is
    # not a module.
    def <=> other_mod
        #This is a stub, used for indexing
    end
    # mod < other   ->  true, false, or nil
    #  
    # Returns true if <i>mod</i> is a subclass of <i>other</i>. Returns
    # <code>nil</code> if there's no relationship between the two.
    # (Think of the relationship in terms of the class definition:
    # "class A<B" implies "A<B").
    def < other
        #This is a stub, used for indexing
    end
    # mod <= other   ->  true, false, or nil
    #  
    # Returns true if <i>mod</i> is a subclass of <i>other</i> or
    # is the same as <i>other</i>. Returns
    # <code>nil</code> if there's no relationship between the two.
    # (Think of the relationship in terms of the class definition:
    # "class A<B" implies "A<B").
    def <= other
        #This is a stub, used for indexing
    end
    # mod > other   ->  true, false, or nil
    #  
    # Returns true if <i>mod</i> is an ancestor of <i>other</i>. Returns
    # <code>nil</code> if there's no relationship between the two.
    # (Think of the relationship in terms of the class definition:
    # "class A<B" implies "B>A").
    def > other
        #This is a stub, used for indexing
    end
    # mod >= other   ->  true, false, or nil
    #  
    # Returns true if <i>mod</i> is an ancestor of <i>other</i>, or the
    # two modules are the same. Returns
    # <code>nil</code> if there's no relationship between the two.
    # (Think of the relationship in terms of the class definition:
    # "class A<B" implies "B>A").
    def >= other
        #This is a stub, used for indexing
    end
    # mod.to_s   -> string
    #  
    # Return a string representing this module or class. For basic
    # classes and modules, this is the name. For singletons, we
    # show information on the thing we're attached to as well.
    def to_s()
        #This is a stub, used for indexing
    end
    # mod.included_modules -> array
    #  
    # Returns the list of modules included in <i>mod</i>.
    # 
    #    module Mixin
    #    end
    # 
    #    module Outer
    #      include Mixin
    #    end
    # 
    #    Mixin.included_modules   #=> []
    #    Outer.included_modules   #=> [Mixin]
    def included_modules()
        #This is a stub, used for indexing
    end
    # mod.include?(module)    -> true or false
    #  
    # Returns <code>true</code> if <i>module</i> is included in
    # <i>mod</i> or one of <i>mod</i>'s ancestors.
    # 
    #    module A
    #    end
    #    class B
    #      include A
    #    end
    #    class C < B
    #    end
    #    B.include?(A)   #=> true
    #    C.include?(A)   #=> true
    #    A.include?(A)   #=> false
    def include?(module1)
        #This is a stub, used for indexing
    end
    # mod.name    -> string
    #  
    # Returns the name of the module <i>mod</i>.  Returns nil for anonymous modules.
    def name()
        #This is a stub, used for indexing
    end
    # mod.ancestors -> array
    #  
    # Returns a list of modules included in <i>mod</i> (including
    # <i>mod</i> itself).
    # 
    #    module Mod
    #      include Math
    #      include Comparable
    #    end
    # 
    #    Mod.ancestors    #=> [Mod, Comparable, Math]
    #    Math.ancestors   #=> [Math]
    def ancestors()
        #This is a stub, used for indexing
    end
    def attr(*args)
        #This is a stub, used for indexing
    end
    # attr_reader(symbol, ...)    -> nil
    # attr(symbol, ...)             -> nil
    #  
    # Creates instance variables and corresponding methods that return the
    # value of each instance variable. Equivalent to calling
    # ``<code>attr</code><i>:name</i>'' on each name in turn.
    def attr_reader(symbol, *smth)
        #This is a stub, used for indexing
    end
    # attr_writer(symbol, ...)    -> nil
    #  
    # Creates an accessor method to allow assignment to the attribute
    # <i>aSymbol</i><code>.id2name</code>.
    def attr_writer(symbol, *smth)
        #This is a stub, used for indexing
    end
    # attr_accessor(symbol, ...)    -> nil
    #  
    # Defines a named attribute for this module, where the name is
    # <i>symbol.</i><code>id2name</code>, creating an instance variable
    # (<code>@name</code>) and a corresponding access method to read it.
    # Also creates a method called <code>name=</code> to set the attribute.
    # 
    #    module Mod
    #      attr_accessor(:one, :two)
    #    end
    #    Mod.instance_methods.sort   #=> [:one, :one=, :two, :two=]
    def attr_accessor(symbol, *smth)
        #This is a stub, used for indexing
    end
    # Module.new                  -> mod
    # Module.new {|mod| block }   -> mod
    #  
    # Creates a new anonymous module. If a block is given, it is passed
    # the module object, and the block is evaluated in the context of this
    # module using <code>module_eval</code>.
    # 
    #    Fred = Module.new do
    #      def meth1
    #        "hello"
    #      end
    #      def meth2
    #        "bye"
    #      end
    #    end
    #    a = "my string"
    #    a.extend(Fred)   #=> "my string"
    #    a.meth1          #=> "hello"
    #    a.meth2          #=> "bye"
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.instance_methods(include_super=true)   -> array
    #  
    # Returns an array containing the names of the public and protected instance
    # methods in the receiver. For a module, these are the public and protected methods;
    # for a class, they are the instance (not singleton) methods. With no
    # argument, or with an argument that is <code>false</code>, the
    # instance methods in <i>mod</i> are returned, otherwise the methods
    # in <i>mod</i> and <i>mod</i>'s superclasses are returned.
    # 
    #    module A
    #      def method1()  end
    #    end
    #    class B
    #      def method2()  end
    #    end
    #    class C < B
    #      def method3()  end
    #    end
    # 
    #    A.instance_methods                #=> [:method1]
    #    B.instance_methods(false)         #=> [:method2]
    #    C.instance_methods(false)         #=> [:method3]
    #    C.instance_methods(true).length   #=> 43
    def instance_methods(include_super=true)
        #This is a stub, used for indexing
    end
    # mod.public_instance_methods(include_super=true)   -> array
    #  
    # Returns a list of the public instance methods defined in <i>mod</i>.
    # If the optional parameter is not <code>false</code>, the methods of
    # any ancestors are included.
    def public_instance_methods(include_super=true)
        #This is a stub, used for indexing
    end
    # mod.protected_instance_methods(include_super=true)   -> array
    #  
    # Returns a list of the protected instance methods defined in
    # <i>mod</i>. If the optional parameter is not <code>false</code>, the
    # methods of any ancestors are included.
    def protected_instance_methods(include_super=true)
        #This is a stub, used for indexing
    end
    # mod.private_instance_methods(include_super=true)    -> array
    #  
    # Returns a list of the private instance methods defined in
    # <i>mod</i>. If the optional parameter is not <code>false</code>, the
    # methods of any ancestors are included.
    # 
    #    module Mod
    #      def method1()  end
    #      private :method1
    #      def method2()  end
    #    end
    #    Mod.instance_methods           #=> [:method2]
    #    Mod.private_instance_methods   #=> [:method1]
    def private_instance_methods(include_super=true)
        #This is a stub, used for indexing
    end
    # mod.constants(inherit=true)    -> array
    #  
    # Returns an array of the names of the constants accessible in
    # <i>mod</i>. This includes the names of constants in any included
    # modules (example at start of section), unless the <i>all</i>
    # parameter is set to <code>false</code>.
    # 
    #   IO.constants.include?(:SYNC)        #=> true
    #   IO.constants(false).include?(:SYNC) #=> false
    # 
    # Also see <code>Module::const_defined?</code>.
    def constants(inherit=true)
        #This is a stub, used for indexing
    end
    # mod.const_get(sym, inherit=true)    -> obj
    #  
    # Returns the value of the named constant in <i>mod</i>.
    # 
    #    Math.const_get(:PI)   #=> 3.14159265358979
    # 
    # If the constant is not defined or is defined by the ancestors and
    # +inherit+ is false, +NameError+ will be raised.
    def const_get(sym, inherit=true)
        #This is a stub, used for indexing
    end
    # mod.const_set(sym, obj)    -> obj
    #  
    # Sets the named constant to the given object, returning that object.
    # Creates a new constant if no constant with the given name previously
    # existed.
    # 
    #    Math.const_set("HIGH_SCHOOL_PI", 22.0/7.0)   #=> 3.14285714285714
    #    Math::HIGH_SCHOOL_PI - Math::PI              #=> 0.00126448926734968
    def const_set(sym, obj)
        #This is a stub, used for indexing
    end
    # mod.const_defined?(sym, inherit=true)   -> true or false
    #  
    # Returns <code>true</code> if a constant with the given name is
    # defined by <i>mod</i>, or its ancestors if +inherit+ is not false.
    # 
    #    Math.const_defined? "PI"   #=> true
    #    IO.const_defined? "SYNC"   #=> true
    #    IO.const_defined? "SYNC", false   #=> false
    def const_defined?(sym, inherit=true)
        #This is a stub, used for indexing
    end
    # remove_const(sym)   -> obj
    #  
    # Removes the definition of the given constant, returning that
    # constant's value. Predefined classes and singleton objects (such as
    # <i>true</i>) cannot be removed.
    def remove_const(sym)
        #This is a stub, used for indexing
    end
    # mod.const_missing(sym)    -> obj
    #  
    # Invoked when a reference is made to an undefined constant in
    # <i>mod</i>. It is passed a symbol for the undefined constant, and
    # returns a value to be used for that constant. The
    # following code is a (very bad) example: if reference is made to
    # an undefined constant, it attempts to load a file whose name is
    # the lowercase version of the constant (thus class <code>Fred</code> is
    # assumed to be in file <code>fred.rb</code>). If found, it returns the
    # value of the loaded class. It therefore implements a perverse
    # kind of autoload facility.
    # 
    #   def Object.const_missing(name)
    #     @looked_for ||= {}
    #     str_name = name.to_s
    #     raise "Class not found: #{name}" if @looked_for[str_name]
    #     @looked_for[str_name] = 1
    #     file = str_name.downcase
    #     require file
    #     klass = const_get(name)
    #     return klass if klass
    #     raise "Class not found: #{name}"
    #   end
    def const_missing(sym)
        #This is a stub, used for indexing
    end
    # mod.class_variables   -> array
    #  
    # Returns an array of the names of class variables in <i>mod</i>.
    # 
    #    class One
    #      @@var1 = 1
    #    end
    #    class Two < One
    #      @@var2 = 2
    #    end
    #    One.class_variables   #=> [:@@var1]
    #    Two.class_variables   #=> [:@@var2]
    def class_variables()
        #This is a stub, used for indexing
    end
    # remove_class_variable(sym)    -> obj
    #  
    # Removes the definition of the <i>sym</i>, returning that
    # constant's value.
    # 
    #    class Dummy
    #      @@var = 99
    #      puts @@var
    #      remove_class_variable(:@@var)
    #      p(defined? @@var)
    #    end
    # 
    # <em>produces:</em>
    # 
    #    99
    #    nil
    def remove_class_variable(sym)
        #This is a stub, used for indexing
    end
    # mod.class_variable_get(symbol)    -> obj
    #  
    # Returns the value of the given class variable (or throws a
    # <code>NameError</code> exception). The <code>@@</code> part of the
    # variable name should be included for regular class variables
    # 
    #    class Fred
    #      @@foo = 99
    #    end
    #    Fred.class_variable_get(:@@foo)     #=> 99
    def class_variable_get(symbol)
        #This is a stub, used for indexing
    end
    # obj.class_variable_set(symbol, obj)    -> obj
    #  
    # Sets the class variable names by <i>symbol</i> to
    # <i>object</i>.
    # 
    #    class Fred
    #      @@foo = 99
    #      def foo
    #        @@foo
    #      end
    #    end
    #    Fred.class_variable_set(:@@foo, 101)     #=> 101
    #    Fred.new.foo                             #=> 101
    def class_variable_set(symbol, obj)
        #This is a stub, used for indexing
    end
    # obj.class_variable_defined?(symbol)    -> true or false
    #  
    # Returns <code>true</code> if the given class variable is defined
    # in <i>obj</i>.
    # 
    #    class Fred
    #      @@foo = 99
    #    end
    #    Fred.class_variable_defined?(:@@foo)    #=> true
    #    Fred.class_variable_defined?(:@@bar)    #=> false
    def class_variable_defined?(symbol)
        #This is a stub, used for indexing
    end
    # mod.instance_method(symbol)   -> unbound_method
    #  
    # Returns an +UnboundMethod+ representing the given
    # instance method in _mod_.
    # 
    #    class Interpreter
    #      def do_a() print "there, "; end
    #      def do_d() print "Hello ";  end
    #      def do_e() print "!\n";     end
    #      def do_v() print "Dave";    end
    #      Dispatcher = {
    #        "a" => instance_method(:do_a),
    #        "d" => instance_method(:do_d),
    #        "e" => instance_method(:do_e),
    #        "v" => instance_method(:do_v)
    #      }
    #      def interpret(string)
    #        string.each_char {|b| Dispatcher[b].bind(self).call }
    #      end
    #    end
    # 
    #    interpreter = Interpreter.new
    #    interpreter.interpret('dave')
    # 
    # <em>produces:</em>
    # 
    #    Hello there, Dave!
    def instance_method(symbol)
        #This is a stub, used for indexing
    end
    # mod.public_instance_method(symbol)   -> unbound_method
    #  
    # Similar to _instance_method_, searches public method only.
    def public_instance_method(symbol)
        #This is a stub, used for indexing
    end
    # define_method(symbol, method)     -> new_method
    # define_method(symbol) { block }   -> proc
    #  
    # Defines an instance method in the receiver. The _method_
    # parameter can be a +Proc+, a +Method+ or an +UnboundMethod+ object.
    # If a block is specified, it is used as the method body. This block
    # is evaluated using <code>instance_eval</code>, a point that is
    # tricky to demonstrate because <code>define_method</code> is private.
    # (This is why we resort to the +send+ hack in this example.)
    # 
    #    class A
    #      def fred
    #        puts "In Fred"
    #      end
    #      def create_method(name, &block)
    #        self.class.send(:define_method, name, &block)
    #      end
    #      define_method(:wilma) { puts "Charge it!" }
    #    end
    #    class B < A
    #      define_method(:barney, instance_method(:fred))
    #    end
    #    a = B.new
    #    a.barney
    #    a.wilma
    #    a.create_method(:betty) { p self }
    #    a.betty
    # 
    # <em>produces:</em>
    # 
    #    In Fred
    #    Charge it!
    #    #<B:0x401b39e8>
    def define_method(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.module_exec(arg...) {|var...| block }       -> obj
    # mod.class_exec(arg...) {|var...| block }        -> obj
    #  
    # Evaluates the given block in the context of the class/module.
    # The method defined in the block will belong to the receiver.
    # 
    #    class Thing
    #    end
    #    Thing.class_exec{
    #      def hello() "Hello there!" end
    #    }
    #    puts Thing.new.hello()
    # 
    # <em>produces:</em>
    # 
    #    Hello there!
    def module_exec(*args)
        #This is a stub, used for indexing
    end
    # mod.module_exec(arg...) {|var...| block }       -> obj
    # mod.class_exec(arg...) {|var...| block }        -> obj
    #  
    # Evaluates the given block in the context of the class/module.
    # The method defined in the block will belong to the receiver.
    # 
    #    class Thing
    #    end
    #    Thing.class_exec{
    #      def hello() "Hello there!" end
    #    }
    #    puts Thing.new.hello()
    # 
    # <em>produces:</em>
    # 
    #    Hello there!
    def class_exec(*args)
        #This is a stub, used for indexing
    end
    # mod.class_eval(string [, filename [, lineno]])  -> obj
    # mod.module_eval {|| block }                     -> obj
    #  
    # Evaluates the string or block in the context of _mod_. This can
    # be used to add methods to a class. <code>module_eval</code> returns
    # the result of evaluating its argument. The optional _filename_
    # and _lineno_ parameters set the text for error messages.
    # 
    #    class Thing
    #    end
    #    a = %q{def hello() "Hello there!" end}
    #    Thing.module_eval(a)
    #    puts Thing.new.hello()
    #    Thing.module_eval("invalid code", "dummy", 123)
    # 
    # <em>produces:</em>
    # 
    #    Hello there!
    #    dummy:123:in `module_eval': undefined local variable
    #        or method `code' for Thing:Class
    def module_eval(string=nil, filename=nil, lineno=nil)
        #This is a stub, used for indexing
    end
    # mod.class_eval(string [, filename [, lineno]])  -> obj
    # mod.module_eval {|| block }                     -> obj
    #  
    # Evaluates the string or block in the context of _mod_. This can
    # be used to add methods to a class. <code>module_eval</code> returns
    # the result of evaluating its argument. The optional _filename_
    # and _lineno_ parameters set the text for error messages.
    # 
    #    class Thing
    #    end
    #    a = %q{def hello() "Hello there!" end}
    #    Thing.module_eval(a)
    #    puts Thing.new.hello()
    #    Thing.module_eval("invalid code", "dummy", 123)
    # 
    # <em>produces:</em>
    # 
    #    Hello there!
    #    dummy:123:in `module_eval': undefined local variable
    #        or method `code' for Thing:Class
    def class_eval(string=nil, filename=nil, lineno=nil)
        #This is a stub, used for indexing
    end
    # remove_method(symbol)   -> self
    #  
    # Removes the method identified by _symbol_ from the current
    # class. For an example, see <code>Module.undef_method</code>.
    def remove_method(symbol)
        #This is a stub, used for indexing
    end
    # undef_method(symbol)    -> self
    #  
    # Prevents the current class from responding to calls to the named
    # method. Contrast this with <code>remove_method</code>, which deletes
    # the method from the particular class; Ruby will still search
    # superclasses and mixed-in modules for a possible receiver.
    # 
    #    class Parent
    #      def hello
    #        puts "In parent"
    #      end
    #    end
    #    class Child < Parent
    #      def hello
    #        puts "In child"
    #      end
    #    end
    # 
    #    c = Child.new
    #    c.hello
    # 
    #    class Child
    #      remove_method :hello  # remove from child, still in parent
    #    end
    #    c.hello
    # 
    #    class Child
    #      undef_method :hello   # prevent any calls to 'hello'
    #    end
    #    c.hello
    # 
    # <em>produces:</em>
    # 
    #    In child
    #    In parent
    #    prog.rb:23: undefined method `hello' for #<Child:0x401b3bb4> (NoMethodError)
    def undef_method(symbol)
        #This is a stub, used for indexing
    end
    # alias_method(new_name, old_name)   -> self
    #  
    # Makes <i>new_name</i> a new copy of the method <i>old_name</i>. This can
    # be used to retain access to methods that are overridden.
    # 
    #    module Mod
    #      alias_method :orig_exit, :exit
    #      def exit(code=0)
    #        puts "Exiting with code #{code}"
    #        orig_exit(code)
    #      end
    #    end
    #    include Mod
    #    exit(99)
    # 
    # <em>produces:</em>
    # 
    #    Exiting with code 99
    def alias_method(new_name, old_name)
        #This is a stub, used for indexing
    end
    # public                 -> self
    # public(symbol, ...)    -> self
    #  
    # With no arguments, sets the default visibility for subsequently
    # defined methods to public. With arguments, sets the named methods to
    # have public visibility.
    def public(*several_variants)
        #This is a stub, used for indexing
    end
    # protected                -> self
    # protected(symbol, ...)   -> self
    #  
    # With no arguments, sets the default visibility for subsequently
    # defined methods to protected. With arguments, sets the named methods
    # to have protected visibility.
    def protected(*several_variants)
        #This is a stub, used for indexing
    end
    # private                 -> self
    # private(symbol, ...)    -> self
    #  
    # With no arguments, sets the default visibility for subsequently
    # defined methods to private. With arguments, sets the named methods
    # to have private visibility.
    # 
    #    module Mod
    #      def a()  end
    #      def b()  end
    #      private
    #      def c()  end
    #      private :a
    #    end
    #    Mod.private_instance_methods   #=> [:a, :c]
    def private(*several_variants)
        #This is a stub, used for indexing
    end
    # module_function(symbol, ...)    -> self
    #  
    # Creates module functions for the named methods. These functions may
    # be called with the module as a receiver, and also become available
    # as instance methods to classes that mix in the module. Module
    # functions are copies of the original, and so may be changed
    # independently. The instance-method versions are made private. If
    # used with no arguments, subsequently defined methods become module
    # functions.
    # 
    #    module Mod
    #      def one
    #        "This is one"
    #      end
    #      module_function :one
    #    end
    #    class Cls
    #      include Mod
    #      def callOne
    #        one
    #      end
    #    end
    #    Mod.one     #=> "This is one"
    #    c = Cls.new
    #    c.callOne   #=> "This is one"
    #    module Mod
    #      def one
    #        "This is the new one"
    #      end
    #    end
    #    Mod.one     #=> "This is one"
    #    c.callOne   #=> "This is the new one"
    def module_function(*args)
        #This is a stub, used for indexing
    end
    # mod.method_defined?(symbol)    -> true or false
    #  
    # Returns +true+ if the named method is defined by
    # _mod_ (or its included modules and, if _mod_ is a class,
    # its ancestors). Public and protected methods are matched.
    # 
    #    module A
    #      def method1()  end
    #    end
    #    class B
    #      def method2()  end
    #    end
    #    class C < B
    #      include A
    #      def method3()  end
    #    end
    # 
    #    A.method_defined? :method1    #=> true
    #    C.method_defined? "method1"   #=> true
    #    C.method_defined? "method2"   #=> true
    #    C.method_defined? "method3"   #=> true
    #    C.method_defined? "method4"   #=> false
    def method_defined?(symbol)
        #This is a stub, used for indexing
    end
    # mod.public_method_defined?(symbol)   -> true or false
    #  
    # Returns +true+ if the named public method is defined by
    # _mod_ (or its included modules and, if _mod_ is a class,
    # its ancestors).
    # 
    #    module A
    #      def method1()  end
    #    end
    #    class B
    #      protected
    #      def method2()  end
    #    end
    #    class C < B
    #      include A
    #      def method3()  end
    #    end
    # 
    #    A.method_defined? :method1           #=> true
    #    C.public_method_defined? "method1"   #=> true
    #    C.public_method_defined? "method2"   #=> false
    #    C.method_defined? "method2"          #=> true
    def public_method_defined?(symbol)
        #This is a stub, used for indexing
    end
    # mod.private_method_defined?(symbol)    -> true or false
    #  
    # Returns +true+ if the named private method is defined by
    # _ mod_ (or its included modules and, if _mod_ is a class,
    # its ancestors).
    # 
    #    module A
    #      def method1()  end
    #    end
    #    class B
    #      private
    #      def method2()  end
    #    end
    #    class C < B
    #      include A
    #      def method3()  end
    #    end
    # 
    #    A.method_defined? :method1            #=> true
    #    C.private_method_defined? "method1"   #=> false
    #    C.private_method_defined? "method2"   #=> true
    #    C.method_defined? "method2"           #=> false
    def private_method_defined?(symbol)
        #This is a stub, used for indexing
    end
    # mod.protected_method_defined?(symbol)   -> true or false
    #  
    # Returns +true+ if the named protected method is defined
    # by _mod_ (or its included modules and, if _mod_ is a
    # class, its ancestors).
    # 
    #    module A
    #      def method1()  end
    #    end
    #    class B
    #      protected
    #      def method2()  end
    #    end
    #    class C < B
    #      include A
    #      def method3()  end
    #    end
    # 
    #    A.method_defined? :method1              #=> true
    #    C.protected_method_defined? "method1"   #=> false
    #    C.protected_method_defined? "method2"   #=> true
    #    C.method_defined? "method2"             #=> true
    def protected_method_defined?(symbol)
        #This is a stub, used for indexing
    end
    # mod.public_class_method(symbol, ...)    -> mod
    #  
    # Makes a list of existing class methods public.
    def public_class_method(symbol, *smth)
        #This is a stub, used for indexing
    end
    # mod.private_class_method(symbol, ...)   -> mod
    #  
    # Makes existing class methods private. Often used to hide the default
    # constructor <code>new</code>.
    # 
    #    class SimpleSingleton  # Not thread safe
    #      private_class_method :new
    #      def SimpleSingleton.create(*args, &block)
    #        @me = new(*args, &block) if ! @me
    #        @me
    #      end
    #    end
    def private_class_method(symbol, *smth)
        #This is a stub, used for indexing
    end
end
