=begin
 This is a machine generated stub using stdlib-doc for <b>class ArgumentError</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# Raised when the arguments are wrong and there isn't a more specific
# Exception class.
# 
# Ex: passing the wrong number of arguments
# 
#    [1, 2, 3].first(4, 5)
# 
# <em>raises the exception:</em>
# 
#    ArgumentError: wrong number of arguments (2 for 1)
# 
# Ex: passing an argument that is not acceptable:
# 
#    [1, 2, 3].first(-4)
# 
# <em>raises the exception:</em>
# 
#    ArgumentError: negative array size
class ArgumentError < StandardError
end
