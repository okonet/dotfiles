=begin
 This is a machine generated stub using stdlib-doc for <b>class BasicObject</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# BasicObject is the parent class of all classes in Ruby.  It's an explicit
# blank class.
# 
# BasicObject can be used for creating object hierarchies independent of
# Ruby's object hierarchy, proxy objects like the Delegator class, or other
# uses where namespace pollution from Ruby's methods and classes must be
# avoided.
# 
# To avoid polluting BasicObject for other users an appropriately named
# subclass of BasicObject should be created instead of directly modifying
# BasicObject:
# 
#   class MyObjectSystem < BasicObject
#   end
# 
# BasicObject does not include Kernel (for methods like +puts+) and
# BasicObject is outside of the namespace of the standard library so common
# classes will not be found without using a full class path.
# 
# A variety of strategies can be used to provide useful portions of the
# standard library to subclasses of BasicObject.  A subclass could
# <code>include Kernel</code> to obtain +puts+, +exit+, etc.  A custom
# Kernel-like module could be created and included or delegation can be used
# via #method_missing:
# 
#   class MyObjectSystem < BasicObject
#     DELEGATE = [:puts, :p]
# 
#     def method_missing(name, *args, &block)
#       super unless DELEGATE.include? name
#       ::Kernel.send(name, *args, &block)
#     end
# 
#     def respond_to_missing?(name, include_private = false)
#       DELEGATE.include?(name) or super
#     end
#   end
# 
# Access to classes and modules from the Ruby standard library can be
# obtained in a BasicObject subclass by referencing the desired constant
# from the root like <code>::File</code> or <code>::Enumerator</code>.
# Like #method_missing, #const_missing can be used to delegate constant
# lookup to +Object+:
# 
#   class MyObjectSystem < BasicObject
#     def self.const_missing(name)
#       ::Object.const_get(name)
#     end
#   end
class BasicObject
    # obj.__id__       -> integer
    # obj.object_id    -> integer
    #  
    # Returns an integer identifier for +obj+.
    # 
    # The same number will be returned on all calls to +object_id+ for a given
    # object, and no two active objects will share an id.
    # 
    # Note: that some objects of builtin classes are reused for optimization.
    # This is the case for immediate values and frozen string literals.
    # 
    # Immediate values are not passed by reference but are passed by value:
    # +nil+, +true+, +false+, Fixnums, Symbols, and some Floats.
    # 
    #     Object.new.object_id  == Object.new.object_id  # => false
    #     (21 * 2).object_id    == (21 * 2).object_id    # => true
    #     "hello".object_id     == "hello".object_id     # => false
    #     "hi".freeze.object_id == "hi".freeze.object_id # => true
    def __id__()
        #This is a stub, used for indexing
    end
    # Not documented
    def self.new()
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
    def equal?(other)
        #This is a stub, used for indexing
    end
    # !obj    -> true or false
    #  
    # Boolean negate.
    def ! obj
        #This is a stub, used for indexing
    end
    # obj != other        -> true or false
    #  
    # Returns true if two objects are not-equal, otherwise false.
    def != other
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
    #      class << self
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
    # obj.instance_eval(string [, filename [, lineno]] )   -> obj
    # obj.instance_eval {|obj| block }                     -> obj
    #  
    # Evaluates a string containing Ruby source code, or the given block,
    # within the context of the receiver (_obj_). In order to set the
    # context, the variable +self+ is set to _obj_ while
    # the code is executing, giving the code access to _obj_'s
    # instance variables and private methods.
    # 
    # When <code>instance_eval</code> is given a block, _obj_ is also
    # passed in as the block's only argument.
    # 
    # When <code>instance_eval</code> is given a +String+, the optional
    # second and third parameters supply a filename and starting line number
    # that are used when reporting compilation errors.
    # 
    #    class KlassWithSecret
    #      def initialize
    #        @secret = 99
    #      end
    #      private
    #      def the_secret
    #        "Ssssh! The secret is #{@secret}."
    #      end
    #    end
    #    k = KlassWithSecret.new
    #    k.instance_eval { @secret }          #=> 99
    #    k.instance_eval { the_secret }       #=> "Ssssh! The secret is 99."
    #    k.instance_eval {|obj| obj == self } #=> true
    def instance_eval(*several_variants)
        #This is a stub, used for indexing
    end
    # obj.instance_exec(arg...) {|var...| block }                       -> obj
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
    # obj.method_missing(symbol [, *args] )   -> result
    #  
    # Invoked by Ruby when <i>obj</i> is sent a message it cannot handle.
    # <i>symbol</i> is the symbol for the method called, and <i>args</i>
    # are any arguments that were passed to it. By default, the interpreter
    # raises an error when this method is called. However, it is possible
    # to override the method to provide more dynamic behavior.
    # If it is decided that a particular method should not be handled, then
    # <i>super</i> should be called, so that ancestors can pick up the
    # missing method.
    # The example below creates
    # a class <code>Roman</code>, which responds to methods with names
    # consisting of roman numerals, returning the corresponding integer
    # values.
    # 
    #    class Roman
    #      def roman_to_int(str)
    #        # ...
    #      end
    #      def method_missing(methId)
    #        str = methId.id2name
    #        roman_to_int(str)
    #      end
    #    end
    # 
    #    r = Roman.new
    #    r.iv      #=> 4
    #    r.xxiii   #=> 23
    #    r.mm      #=> 2000
    def method_missing(symbol, *args)
        #This is a stub, used for indexing
    end
    # foo.send(symbol [, args...])       -> obj
    # foo.__send__(symbol [, args...])   -> obj
    # foo.send(string [, args...])       -> obj
    # foo.__send__(string [, args...])   -> obj
    #  
    # Invokes the method identified by _symbol_, passing it any
    # arguments specified. You can use <code>__send__</code> if the name
    # +send+ clashes with an existing method in _obj_.
    # When the method is identified by a string, the string is converted
    # to a symbol.
    # 
    #    class Klass
    #      def hello(*args)
    #        "Hello " + args.join(' ')
    #      end
    #    end
    #    k = Klass.new
    #    k.send :hello, "gentle", "readers"   #=> "Hello gentle readers"
    def __send__(*several_variants)
        #This is a stub, used for indexing
    end
end
