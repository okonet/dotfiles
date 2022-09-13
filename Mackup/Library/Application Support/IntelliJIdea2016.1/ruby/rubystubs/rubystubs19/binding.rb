=begin
 This is a machine generated stub using stdlib-doc for <b>class Binding</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
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
#      def getBinding
#        return binding()
#      end
#    end
# 
#    k1 = Demo.new(99)
#    b1 = k1.getBinding
#    k2 = Demo.new(-3)
#    b2 = k2.getBinding
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
    #    def getBinding(param)
    #      return binding
    #    end
    #    b = getBinding("hello")
    #    b.eval("param")   #=> "hello"
    def eval(p1, p2 = v2, p3 = v3)
        #This is a stub, used for indexing
    end
end
