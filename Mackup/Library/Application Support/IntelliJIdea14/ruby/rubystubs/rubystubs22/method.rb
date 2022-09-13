=begin
 This is a machine generated stub using stdlib-doc for <b>class Method</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# Proc   
class Method
    # meth.eql?(other_meth)  -> true or false
    # meth == other_meth  -> true or false
    #  
    # Two method objects are equal if they are bound to the same
    # object and refer to the same method definition and their owners are the
    # same class or module.
    def == other_meth
        #This is a stub, used for indexing
    end
    # meth.eql?(other_meth)  -> true or false
    # meth == other_meth  -> true or false
    #  
    # Two method objects are equal if they are bound to the same
    # object and refer to the same method definition and their owners are the
    # same class or module.
    def eql?(other_meth)
        #This is a stub, used for indexing
    end
    # meth.hash   -> integer
    #  
    # Returns a hash value corresponding to the method object.
    # 
    # See also Object#hash.
    def hash()
        #This is a stub, used for indexing
    end
    # method.clone -> new_method
    #  
    # Returns a clone of this method.
    # 
    #   class A
    #     def foo
    #       return "bar"
    #     end
    #   end
    # 
    #   m = A.new.method(:foo)
    #   m.call # => "bar"
    #   n = m.clone.call # => "bar"
    def clone()
        #This is a stub, used for indexing
    end
    # meth.call(args, ...)    -> obj
    # meth[args, ...]         -> obj
    #  
    # Invokes the <i>meth</i> with the specified arguments, returning the
    # method's return value.
    # 
    #    m = 12.method("+")
    #    m.call(3)    #=> 15
    #    m.call(20)   #=> 32
    def call(*args)
        #This is a stub, used for indexing
    end
    # meth.curry        -> proc
    # meth.curry(arity) -> proc
    #  
    # Returns a curried proc based on the method. When the proc is called with a number of
    # arguments that is lower than the method's arity, then another curried proc is returned.
    # Only when enough arguments have been supplied to satisfy the method signature, will the
    # method actually be called.
    # 
    # The optional <i>arity</i> argument should be supplied when currying methods with
    # variable arguments to determine how many arguments are needed before the method is
    # called.
    # 
    #    def foo(a,b,c)
    #      [a, b, c]
    #    end
    # 
    #    proc  = self.method(:foo).curry
    #    proc2 = proc.call(1, 2)          #=> #<Proc>
    #    proc2.call(3)                    #=> [1,2,3]
    # 
    #    def vararg(*args)
    #      args
    #    end
    # 
    #    proc = self.method(:vararg).curry(4)
    #    proc2 = proc.call(:x)      #=> #<Proc>
    #    proc3 = proc2.call(:y, :z) #=> #<Proc>
    #    proc3.call(:a)             #=> [:x, :y, :z, :a]
    def curry(*several_variants)
        #This is a stub, used for indexing
    end
    # meth.call(args, ...)    -> obj
    # meth[args, ...]         -> obj
    #  
    # Invokes the <i>meth</i> with the specified arguments, returning the
    # method's return value.
    # 
    #    m = 12.method("+")
    #    m.call(3)    #=> 15
    #    m.call(20)   #=> 32
    def [](*args)
        #This is a stub, used for indexing
    end
    # meth.arity    -> fixnum
    #  
    # Returns an indication of the number of arguments accepted by a
    # method. Returns a nonnegative integer for methods that take a fixed
    # number of arguments. For Ruby methods that take a variable number of
    # arguments, returns -n-1, where n is the number of required
    # arguments. For methods written in C, returns -1 if the call takes a
    # variable number of arguments.
    # 
    #    class C
    #      def one;    end
    #      def two(a); end
    #      def three(*a);  end
    #      def four(a, b); end
    #      def five(a, b, *c);    end
    #      def six(a, b, *c, &d); end
    #    end
    #    c = C.new
    #    c.method(:one).arity     #=> 0
    #    c.method(:two).arity     #=> 1
    #    c.method(:three).arity   #=> -1
    #    c.method(:four).arity    #=> 2
    #    c.method(:five).arity    #=> -3
    #    c.method(:six).arity     #=> -3
    # 
    #    "cat".method(:size).arity      #=> 0
    #    "cat".method(:replace).arity   #=> 1
    #    "cat".method(:squeeze).arity   #=> -1
    #    "cat".method(:count).arity     #=> -1
    def arity()
        #This is a stub, used for indexing
    end
    # meth.to_s      ->  string
    # meth.inspect   ->  string
    #  
    # Returns the name of the underlying method.
    # 
    #   "cat".method(:count).inspect   #=> "#<Method: String#count>"
    def inspect()
        #This is a stub, used for indexing
    end
    # meth.to_s      ->  string
    # meth.inspect   ->  string
    #  
    # Returns the name of the underlying method.
    # 
    #   "cat".method(:count).inspect   #=> "#<Method: String#count>"
    def to_s()
        #This is a stub, used for indexing
    end
    # meth.to_proc    -> proc
    #  
    # Returns a <code>Proc</code> object corresponding to this method.
    def to_proc()
        #This is a stub, used for indexing
    end
    # meth.receiver    -> object
    #  
    # Returns the bound receiver of the method object.
    def receiver()
        #This is a stub, used for indexing
    end
    # meth.name    -> symbol
    #  
    # Returns the name of the method.
    def name()
        #This is a stub, used for indexing
    end
    # meth.original_name    -> symbol
    #  
    # Returns the original name of the method.
    def original_name()
        #This is a stub, used for indexing
    end
    # meth.owner    -> class_or_module
    #  
    # Returns the class or module that defines the method.
    def owner()
        #This is a stub, used for indexing
    end
    # meth.unbind    -> unbound_method
    #  
    # Dissociates <i>meth</i> from its current receiver. The resulting
    # <code>UnboundMethod</code> can subsequently be bound to a new object
    # of the same class (see <code>UnboundMethod</code>).
    def unbind()
        #This is a stub, used for indexing
    end
    # meth.source_location  -> [String, Fixnum]
    #  
    # Returns the Ruby source filename and line number containing this method
    # or nil if this method was not defined in Ruby (i.e. native)
    def source_location()
        #This is a stub, used for indexing
    end
    # meth.parameters  -> array
    #  
    # Returns the parameter information of this method.
    def parameters()
        #This is a stub, used for indexing
    end
    # Returns a Method of superclass, which would be called when super is used.
    def super_method()
        #This is a stub, used for indexing
    end
end
