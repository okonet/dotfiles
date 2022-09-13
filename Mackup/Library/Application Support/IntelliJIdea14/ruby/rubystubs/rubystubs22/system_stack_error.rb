=begin
 This is a machine generated stub using stdlib-doc for <b>class SystemStackError</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# Raised in case of a stack overflow.
# 
#    def me_myself_and_i
#      me_myself_and_i
#    end
#    me_myself_and_i
# 
# <em>raises the exception:</em>
# 
#   SystemStackError: stack level too deep
class SystemStackError < Exception
end
