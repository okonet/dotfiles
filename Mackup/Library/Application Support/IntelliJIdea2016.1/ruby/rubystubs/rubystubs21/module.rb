=begin
 This is a machine generated stub using stdlib-doc for <b>class Module</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:26 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A <code>Module</code> is a collection of methods and constants. The
# methods in a module may be instance methods or module methods.
# Instance methods appear as methods in a class when the module is
# included, module methods do not. Conversely, module methods may be
# called without creating an encapsulating object, while instance
# methods may not. (See <code>Module#module_function</code>)
# 
# In the descriptions that follow, the parameter <i>sym</i> refers
# to a symbol, which is either a quoted string or a
# <code>Symbol</code> (such as <code>:name</code>).
# 
#    module Mod
#      include Math
#      CONST = 1
#      def meth
#        #  ...
#      end
#    end
#    Mod.class              #=> Module
#    Mod.constants          #=> [:CONST, :PI, :E]
#    Mod.instance_methods   #=> [:meth]
class Module
    # include(module, ...)    -> self
    #  
    # Invokes <code>Module.append_features</code> on each parameter in reverse order.
    def include(module1, *smth)
        #This is a stub, used for indexing
    end
    # prepend(module, ...)    -> self
    #  
    # Invokes <code>Module.prepend_features</code> on each parameter in reverse order.
    def prepend(*args)
        #This is a stub, used for indexing
    end
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
    # prepend_features(mod)   -> mod
    #  
    # When this module is prepended in another, Ruby calls
    # <code>prepend_features</code> in this module, passing it the
    # receiving module in _mod_. Ruby's default implementation is
    # to overlay the constants, methods, and module variables of this module
    # to _mod_ if this module has not already been added to
    # _mod_ or one of its ancestors. See also <code>Module#prepend</code>.
    def prepend_features(mod)
        #This is a stub, used for indexing
    end
    # refine(klass) { block }   -> module
    #  
    # Refine <i>klass</i> in the receiver.
    # 
    # Returns an overlaid module.
    def refine(klass)
        #This is a stub, used for indexing
    end
    # using(module)    -> self
    #  
    # Import class refinements from <i>module</i> into the current class or
    # module definition.
    def using(p1)
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
    # Module.constants(inherited)   -> array
    #  
    # In the first form, returns an array of the names of all
    # constants accessible from the point of call.
    # This list includes the names of all modules and classes
    # defined in the global scope.
    # 
    #    Module.constants.first(4)
    #       # => [:ARGF, :ARGV, :ArgumentError, :Array]
    # 
    #    Module.constants.include?(:SEEK_SET)   # => false
    # 
    #    class IO
    #      Module.constants.include?(:SEEK_SET) # => true
    #    end
    # 
    # The second form calls the instance method +constants+.
    def self.constants(*several_variants)
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
    # included(othermod)
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
    #         # => prints "A included in Enumerable"
    def included(othermod)
        #This is a stub, used for indexing
    end
    # extended(othermod)
    #  
    # The equivalent of <tt>included</tt>, but for extended modules.
    # 
    #        module A
    #          def self.extended(mod)
    #            puts "#{self} extended in #{mod}"
    #          end
    #        end
    #        module Enumerable
    #          extend A
    #        end
    #         # => prints "A extended in Enumerable"
    def extended(othermod)
        #This is a stub, used for indexing
    end
    # prepended(othermod)
    #  
    # The equivalent of <tt>included</tt>, but for prepended modules.
    # 
    #        module A
    #          def self.prepended(mod)
    #            puts "#{self} prepended to #{mod}"
    #          end
    #        end
    #        module Enumerable
    #          prepend A
    #        end
    #         # => prints "A prepended to Enumerable"
    def prepended(othermod)
        #This is a stub, used for indexing
    end
    # method_added(method_name)
    #  
    # Invoked as a callback whenever an instance method is added to the
    # receiver.
    # 
    #   module Chatty
    #     def self.method_added(method_name)
    #       puts "Adding #{method_name.inspect}"
    #     end
    #     def self.some_class_method() end
    #     def some_instance_method() end
    #   end
    # 
    # produces:
    # 
    #   Adding :some_instance_method
    def method_added(method_name)
        #This is a stub, used for indexing
    end
    # method_removed(method_name)
    #  
    # Invoked as a callback whenever an instance method is removed from the
    # receiver.
    # 
    #   module Chatty
    #     def self.method_removed(method_name)
    #       puts "Removing #{method_name.inspect}"
    #     end
    #     def self.some_class_method() end
    #     def some_instance_method() end
    #     class << self
    #       remove_method :some_class_method
    #     end
    #     remove_method :some_instance_method
    #   end
    # 
    # produces:
    # 
    #   Removing :some_instance_method
    def method_removed(method_name)
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
    #   obj == other      #=> true
    #   obj.equal? other  #=> false
    #   obj.equal? obj    #=> true
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
    def == other
        #This is a stub, used for indexing
    end
    # module <=> other_module   -> -1, 0, +1, or nil
    #  
    # Comparison---Returns -1, 0, +1 or nil depending on whether +module+
    # includes +other_module+, they are the same, or if +module+ is included by
    # +other_module+. This is the basis for the tests in Comparable.
    # 
    # Returns +nil+ if +module+ has no relationship with +other_module+, if
    # +other_module+ is not a module, or if the two values are incomparable.
    def <=> other_module
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
    alias inspect to_s
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
    # attr_reader(symbol, ...)  -> nil
    # attr(symbol, ...)         -> nil
    # attr_reader(string, ...)  -> nil
    # attr(string, ...)         -> nil
    #  
    # Creates instance variables and corresponding methods that return the
    # value of each instance variable. Equivalent to calling
    # ``<code>attr</code><i>:name</i>'' on each name in turn.
    # String arguments are converted to symbols.
    def attr_reader(*several_variants)
        #This is a stub, used for indexing
    end
    # attr_writer(symbol, ...)    -> nil
    # attr_writer(string, ...)    -> nil
    #  
    # Creates an accessor method to allow assignment to the attribute
    # <i>symbol</i><code>.id2name</code>.
    # String arguments are converted to symbols.
    def attr_writer(*several_variants)
        #This is a stub, used for indexing
    end
    # attr_accessor(symbol, ...)    -> nil
    # attr_accessor(string, ...)    -> nil
    #  
    # Defines a named attribute for this module, where the name is
    # <i>symbol.</i><code>id2name</code>, creating an instance variable
    # (<code>@name</code>) and a corresponding access method to read it.
    # Also creates a method called <code>name=</code> to set the attribute.
    # String arguments are converted to symbols.
    # 
    #    module Mod
    #      attr_accessor(:one, :two)
    #    end
    #    Mod.instance_methods.sort   #=> [:one, :one=, :two, :two=]
    def attr_accessor(*several_variants)
        #This is a stub, used for indexing
    end
    # Module.new                  -> mod
    # Module.new {|mod| block }   -> mod
    #  
    # Creates a new anonymous module. If a block is given, it is passed
    # the module object, and the block is evaluated in the context of this
    # module using <code>module_eval</code>.
    # 
    #    fred = Module.new do
    #      def meth1
    #        "hello"
    #      end
    #      def meth2
    #        "bye"
    #      end
    #    end
    #    a = "my string"
    #    a.extend(fred)   #=> "my string"
    #    a.meth1          #=> "hello"
    #    a.meth2          #=> "bye"
    # 
    # Assign the module to a constant (name starting uppercase) if you
    # want to treat it like a regular module.
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
    # modules (example at start of section), unless the <i>inherit</i>
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
    # mod.const_get(str, inherit=true)    -> obj
    #  
    # Checks for a constant with the given name in <i>mod</i>
    # If +inherit+ is set, the lookup will also search
    # the ancestors (and +Object+ if <i>mod</i> is a +Module+.)
    # 
    # The value of the constant is returned if a definition is found,
    # otherwise a +NameError+ is raised.
    # 
    #    Math.const_get(:PI)   #=> 3.14159265358979
    # 
    # This method will recursively look up constant names if a namespaced
    # class name is provided.  For example:
    # 
    #    module Foo; class Bar; end end
    #    Object.const_get 'Foo::Bar'
    # 
    # The +inherit+ flag is respected on each lookup.  For example:
    # 
    #    module Foo
    #      class Bar
    #        VAL = 10
    #      end
    # 
    #      class Baz < Bar; end
    #    end
    # 
    #    Object.const_get 'Foo::Baz::VAL'         # => 10
    #    Object.const_get 'Foo::Baz::VAL', false  # => NameError
    # 
    # If neither +sym+ nor +str+ is not a valid constant name a NameError will be
    # raised with a warning "wrong constant name".
    # 
    #     Object.const_get 'foobar' #=> NameError: wrong constant name foobar
    def const_get(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.const_set(sym, obj)    -> obj
    # mod.const_set(str, obj)    -> obj
    #  
    # Sets the named constant to the given object, returning that object.
    # Creates a new constant if no constant with the given name previously
    # existed.
    # 
    #    Math.const_set("HIGH_SCHOOL_PI", 22.0/7.0)   #=> 3.14285714285714
    #    Math::HIGH_SCHOOL_PI - Math::PI              #=> 0.00126448926734968
    # 
    # If neither +sym+ nor +str+ is not a valid constant name a NameError will be
    # raised with a warning "wrong constant name".
    # 
    #     Object.const_set('foobar', 42) #=> NameError: wrong constant name foobar
    def const_set(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.const_defined?(sym, inherit=true)   -> true or false
    # mod.const_defined?(str, inherit=true)   -> true or false
    #  
    # Checks for a constant with the given name in <i>mod</i>
    # If +inherit+ is set, the lookup will also search
    # the ancestors (and +Object+ if <i>mod</i> is a +Module+.)
    # 
    # Returns whether or not a definition is found:
    # 
    #    Math.const_defined? "PI"   #=> true
    #    IO.const_defined? :SYNC   #=> true
    #    IO.const_defined? :SYNC, false   #=> false
    # 
    # If neither +sym+ nor +str+ is not a valid constant name a NameError will be
    # raised with a warning "wrong constant name".
    # 
    #     Hash.const_defined? 'foobar' #=> NameError: wrong constant name foobar
    def const_defined?(*several_variants)
        #This is a stub, used for indexing
    end
    # remove_const(sym)   -> obj
    #  
    # Removes the definition of the given constant, returning that
    # constant's previous value.  If that constant referred to
    # a module, this will not change that module's name and can lead
    # to confusion.
    def remove_const(sym)
        #This is a stub, used for indexing
    end
    # mod.const_missing(sym)    -> obj
    #  
    # Invoked when a reference is made to an undefined constant in
    # <i>mod</i>. It is passed a symbol for the undefined constant, and
    # returns a value to be used for that constant. The
    # following code is an example of the same:
    # 
    #   def Foo.const_missing(name)
    #     name # return the constant name as Symbol
    #   end
    # 
    #   Foo::UNDEFINED_CONST    #=> :UNDEFINED_CONST: symbol returned
    # 
    # In the next example when a reference is made to an undefined constant,
    # it attempts to load a file whose name is the lowercase version of the
    # constant (thus class <code>Fred</code> is assumed to be in file
    # <code>fred.rb</code>).  If found, it returns the loaded class. It
    # therefore implements an autoload feature similar to Kernel#autoload and
    # Module#autoload.
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
    # mod.class_variables(inherit=true)    -> array
    #  
    # Returns an array of the names of class variables in <i>mod</i>.
    # This includes the names of class variables in any included
    # modules, unless the <i>inherit</i> parameter is set to
    # <code>false</code>.
    # 
    #    class One
    #      @@var1 = 1
    #    end
    #    class Two < One
    #      @@var2 = 2
    #    end
    #    One.class_variables          #=> [:@@var1]
    #    Two.class_variables          #=> [:@@var2, :@@var1]
    #    Two.class_variables(false)   #=> [:@@var2]
    def class_variables(inherit=true)
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
    # mod.class_variable_get(string)    -> obj
    #  
    # Returns the value of the given class variable (or throws a
    # <code>NameError</code> exception). The <code>@@</code> part of the
    # variable name should be included for regular class variables
    # String arguments are converted to symbols.
    # 
    #    class Fred
    #      @@foo = 99
    #    end
    #    Fred.class_variable_get(:@@foo)     #=> 99
    def class_variable_get(*several_variants)
        #This is a stub, used for indexing
    end
    # obj.class_variable_set(symbol, obj)    -> obj
    # obj.class_variable_set(string, obj)    -> obj
    #  
    # Sets the class variable names by <i>symbol</i> to
    # <i>object</i>.
    # If the class variable name is passed as a string, that string
    # is converted to a symbol.
    # 
    #    class Fred
    #      @@foo = 99
    #      def foo
    #        @@foo
    #      end
    #    end
    #    Fred.class_variable_set(:@@foo, 101)     #=> 101
    #    Fred.new.foo                             #=> 101
    def class_variable_set(*several_variants)
        #This is a stub, used for indexing
    end
    # obj.class_variable_defined?(symbol)    -> true or false
    # obj.class_variable_defined?(string)    -> true or false
    #  
    # Returns <code>true</code> if the given class variable is defined
    # in <i>obj</i>.
    # String arguments are converted to symbols.
    # 
    #    class Fred
    #      @@foo = 99
    #    end
    #    Fred.class_variable_defined?(:@@foo)    #=> true
    #    Fred.class_variable_defined?(:@@bar)    #=> false
    def class_variable_defined?(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.public_constant(symbol, ...)    => mod
    #  
    # Makes a list of existing constants public.
    def public_constant(symbol, *smth)
        #This is a stub, used for indexing
    end
    # mod.private_constant(symbol, ...)    => mod
    #  
    # Makes a list of existing constants private.
    def private_constant(symbol, *smth)
        #This is a stub, used for indexing
    end
    # mod.singleton_class?    -> true or false
    #  
    # Returns <code>true</code> if <i>mod</i> is a singleton class or
    # <code>false</code> if it is an ordinary class or module.
    # 
    #    class C
    #    end
    #    C.singleton_class?                  #=> false
    #    C.singleton_class.singleton_class?  #=> true
    def singleton_class?()
        #This is a stub, used for indexing
    end
    def inspect()
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
    # define_method(symbol, method)     -> symbol
    # define_method(symbol) { block }   -> symbol
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
    # Any arguments passed to the method will be passed to the block.
    # This can be used if the block needs to access instance variables.
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
    # Any arguments passed to the method will be passed to the block.
    # This can be used if the block needs to access instance variables.
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
    # Evaluates the string or block in the context of _mod_, except that when
    # a block is given, constant/class variable lookup is not affected. This
    # can be used to add methods to a class. <code>module_eval</code> returns
    # the result of evaluating its argument. The optional _filename_ and
    # _lineno_ parameters set the text for error messages.
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
    # Evaluates the string or block in the context of _mod_, except that when
    # a block is given, constant/class variable lookup is not affected. This
    # can be used to add methods to a class. <code>module_eval</code> returns
    # the result of evaluating its argument. The optional _filename_ and
    # _lineno_ parameters set the text for error messages.
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
    # remove_method(string)   -> self
    #  
    # Removes the method identified by _symbol_ from the current
    # class. For an example, see <code>Module.undef_method</code>.
    # String arguments are converted to symbols.
    def remove_method(*several_variants)
        #This is a stub, used for indexing
    end
    # undef_method(symbol)    -> self
    # undef_method(string)    -> self
    #  
    # Prevents the current class from responding to calls to the named
    # method. Contrast this with <code>remove_method</code>, which deletes
    # the method from the particular class; Ruby will still search
    # superclasses and mixed-in modules for a possible receiver.
    # String arguments are converted to symbols.
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
    def undef_method(*several_variants)
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
    # public(string, ...)    -> self
    #  
    # With no arguments, sets the default visibility for subsequently
    # defined methods to public. With arguments, sets the named methods to
    # have public visibility.
    # String arguments are converted to symbols.
    def public(*several_variants)
        #This is a stub, used for indexing
    end
    # protected                -> self
    # protected(symbol, ...)   -> self
    # protected(string, ...)   -> self
    #  
    # With no arguments, sets the default visibility for subsequently
    # defined methods to protected. With arguments, sets the named methods
    # to have protected visibility.
    # String arguments are converted to symbols.
    def protected(*several_variants)
        #This is a stub, used for indexing
    end
    # private                 -> self
    # private(symbol, ...)    -> self
    # private(string, ...)    -> self
    #  
    # With no arguments, sets the default visibility for subsequently
    # defined methods to private. With arguments, sets the named methods
    # to have private visibility.
    # String arguments are converted to symbols.
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
    # module_function(string, ...)    -> self
    #  
    # Creates module functions for the named methods. These functions may
    # be called with the module as a receiver, and also become available
    # as instance methods to classes that mix in the module. Module
    # functions are copies of the original, and so may be changed
    # independently. The instance-method versions are made private. If
    # used with no arguments, subsequently defined methods become module
    # functions.
    # String arguments are converted to symbols.
    # 
    #    module Mod
    #      def one
    #        "This is one"
    #      end
    #      module_function :one
    #    end
    #    class Cls
    #      include Mod
    #      def call_one
    #        one
    #      end
    #    end
    #    Mod.one     #=> "This is one"
    #    c = Cls.new
    #    c.call_one  #=> "This is one"
    #    module Mod
    #      def one
    #        "This is the new one"
    #      end
    #    end
    #    Mod.one     #=> "This is one"
    #    c.call_one  #=> "This is the new one"
    def module_function(*args)
        #This is a stub, used for indexing
    end
    # mod.method_defined?(symbol)    -> true or false
    # mod.method_defined?(string)    -> true or false
    #  
    # Returns +true+ if the named method is defined by
    # _mod_ (or its included modules and, if _mod_ is a class,
    # its ancestors). Public and protected methods are matched.
    # String arguments are converted to symbols.
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
    def method_defined?(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.public_method_defined?(symbol)   -> true or false
    # mod.public_method_defined?(string)   -> true or false
    #  
    # Returns +true+ if the named public method is defined by
    # _mod_ (or its included modules and, if _mod_ is a class,
    # its ancestors).
    # String arguments are converted to symbols.
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
    def public_method_defined?(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.private_method_defined?(symbol)    -> true or false
    # mod.private_method_defined?(string)    -> true or false
    #  
    # Returns +true+ if the named private method is defined by
    # _ mod_ (or its included modules and, if _mod_ is a class,
    # its ancestors).
    # String arguments are converted to symbols.
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
    def private_method_defined?(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.protected_method_defined?(symbol)   -> true or false
    # mod.protected_method_defined?(string)   -> true or false
    #  
    # Returns +true+ if the named protected method is defined
    # by _mod_ (or its included modules and, if _mod_ is a
    # class, its ancestors).
    # String arguments are converted to symbols.
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
    def protected_method_defined?(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.public_class_method(symbol, ...)    -> mod
    # mod.public_class_method(string, ...)    -> mod
    #  
    # Makes a list of existing class methods public.
    # 
    # String arguments are converted to symbols.
    def public_class_method(*several_variants)
        #This is a stub, used for indexing
    end
    # mod.private_class_method(symbol, ...)   -> mod
    # mod.private_class_method(string, ...)   -> mod
    #  
    # Makes existing class methods private. Often used to hide the default
    # constructor <code>new</code>.
    # 
    # String arguments are converted to symbols.
    # 
    #    class SimpleSingleton  # Not thread safe
    #      private_class_method :new
    #      def SimpleSingleton.create(*args, &block)
    #        @me = new(*args, &block) if ! @me
    #        @me
    #      end
    #    end
    def private_class_method(*several_variants)
        #This is a stub, used for indexing
    end
end
