=begin
 This is a machine generated stub using stdlib-doc for <b>class TrueClass</b>
 Sources used:  Ruby 2.3.0-p0
 Created on 2015-12-23 19:20:55 +0300 by IntelliJ Ruby Stubs Generator.
=end

# The global value <code>true</code> is the only instance of class
# <code>TrueClass</code> and represents a logically true value in
# boolean expressions. The class provides operators allowing
# <code>true</code> to be used in logical expressions.
class TrueClass
    # true.to_s   ->  "true"
    #  
    # The string representation of <code>true</code> is "true".
    def to_s()
        #This is a stub, used for indexing
    end
    alias inspect to_s
    # true & obj    -> true or false
    #  
    # And---Returns <code>false</code> if <i>obj</i> is
    # <code>nil</code> or <code>false</code>, <code>true</code> otherwise.
    def & obj
        #This is a stub, used for indexing
    end
    # true | obj   -> true
    #  
    # Or---Returns <code>true</code>. As <i>obj</i> is an argument to
    # a method call, it is always evaluated; there is no short-circuit
    # evaluation in this case.
    # 
    #    true |  puts("or")
    #    true || puts("logical or")
    # 
    # <em>produces:</em>
    # 
    #    or
    def | obj
        #This is a stub, used for indexing
    end
    # true ^ obj   -> !obj
    #  
    # Exclusive Or---Returns <code>true</code> if <i>obj</i> is
    # <code>nil</code> or <code>false</code>, <code>false</code>
    # otherwise.
    def ^ obj
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
    def inspect()
        #This is a stub, used for indexing
    end
end
