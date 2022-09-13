=begin
 This is a machine generated stub using stdlib-doc for <b>class SecurityError</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:26 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised when attempting a potential unsafe operation, typically when
# the $SAFE level is raised above 0.
# 
#    foo = "bar"
#    proc = Proc.new do
#      $SAFE = 3
#      foo.untaint
#    end
#    proc.call
# 
# <em>raises the exception:</em>
# 
#    SecurityError: Insecure: Insecure operation `untaint' at level 3
class SecurityError < Exception
end
