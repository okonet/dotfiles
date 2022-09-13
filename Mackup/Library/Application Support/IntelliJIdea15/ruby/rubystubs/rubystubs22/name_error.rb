=begin
 This is a machine generated stub using stdlib-doc for <b>class NameError</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# Raised when a given name is invalid or undefined.
# 
#    puts foo
# 
# <em>raises the exception:</em>
# 
#    NameError: undefined local variable or method `foo' for main:Object
# 
# Since constant names must start with a capital:
# 
#    Fixnum.const_set :answer, 42
# 
# <em>raises the exception:</em>
# 
#    NameError: wrong constant name answer
class NameError < StandardError
    # NameError.new(msg [, name])  -> name_error
    #  
    # Construct a new NameError exception. If given the <i>name</i>
    # parameter may subsequently be examined using the <code>NameError.name</code>
    # method.
    def self.new(msg, *name)
        #This is a stub, used for indexing
    end
    # name_error.name    ->  string or nil
    #  
    # Return the name associated with this NameError exception.
    def name()
        #This is a stub, used for indexing
    end
end
