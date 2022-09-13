=begin
 This is a machine generated stub using stdlib-doc for <b>class Binding</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Objects of class <code>Binding</code> encapsulate the execution
# context at some particular place in the code and retain this context
# for future use. The variables, methods, value of <code>self</code>,
# and possibly an iterator block that can be accessed in this context
# are all retained. Binding objects can be created using
# <code>Kernel#binding</code>, and are made available to the callback
# of <code>Kernel#set_trace_func</code>.
# 
# These binding objects can be passed as the second argument of the
# <code>Kernel#eval</code> method, establishing an environment for the
# evaluation.
# 
#    class Demo
#      def initialize(n)
#        @secret = n
#      end
#      def get_binding
#        return binding()
#      end
#    end
# 
#    k1 = Demo.new(99)
#    b1 = k1.get_binding
#    k2 = Demo.new(-3)
#    b2 = k2.get_binding
# 
#    eval("@secret", b1)   #=> 99
#    eval("@secret", b2)   #=> -3
#    eval("@secret")       #=> nil
# 
# Binding objects have no class-specific methods.
class Binding
    # binding.eval(string [, filename [,lineno]])  -> obj
    #  
    # Evaluates the Ruby expression(s) in <em>string</em>, in the
    # <em>binding</em>'s context.  If the optional <em>filename</em> and
    # <em>lineno</em> parameters are present, they will be used when
    # reporting syntax errors.
    # 
    #    def get_binding(param)
    #      return binding
    #    end
    #    b = get_binding("hello")
    #    b.eval("param")   #=> "hello"
    def eval(p1, p2 = v2, p3 = v3)
        #This is a stub, used for indexing
    end
    # binding.local_variable_get(symbol) -> obj
    #  
    # Returns a +value+ of local variable +symbol+.
    # 
    #     def foo
    #       a = 1
    #       binding.local_variable_get(:a) #=> 1
    #       binding.local_variable_get(:b) #=> NameError
    #     end
    # 
    # This method is short version of the following code.
    # 
    #     binding.eval("#{symbol}")
    def local_variable_get(symbol)
        #This is a stub, used for indexing
    end
    # binding.local_variable_set(symbol, obj) -> obj
    #  
    # Set local variable named +symbol+ as +obj+.
    # 
    #     def foo
    #       a = 1
    #       b = binding
    #       b.local_variable_set(:a, 2) # set existing local variable `a'
    #       b.local_variable_set(:b, 3) # create new local variable `b'
    #                                   # `b' exists only in binding.
    #       b.local_variable_get(:a) #=> 2
    #       b.local_variable_get(:b) #=> 3
    #       p a #=> 2
    #       p b #=> NameError
    #     end
    # 
    # This method is a similar behavior of the following code
    # 
    #   binding.eval("#{symbol} = #{obj}")
    # 
    # if obj can be dumped in Ruby code.
    def local_variable_set(symbol, obj)
        #This is a stub, used for indexing
    end
    # binding.local_variable_defined?(symbol) -> obj
    #  
    # Returns a +true+ if a local variable +symbol+ exists.
    # 
    #     def foo
    #       a = 1
    #       binding.local_variable_defined?(:a) #=> true
    #       binding.local_variable_defined?(:b) #=> false
    #     end
    # 
    # This method is short version of the following code.
    # 
    #     binding.eval("defined?(#{symbol}) == 'local-variable'")
    def local_variable_defined?(symbol)
        #This is a stub, used for indexing
    end
end
