=begin
 This is a machine generated stub using stdlib-doc for <b>class StandardError</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The most standard error types are subclasses of StandardError. A
# rescue clause without an explicit Exception class will rescue all
# StandardErrors (and only those).
# 
#    def foo
#      raise "Oups"
#    end
#    foo rescue "Hello"   #=> "Hello"
# 
# On the other hand:
# 
#    require 'does/not/exist' rescue "Hi"
# 
# <em>raises the exception:</em>
# 
#    LoadError: no such file to load -- does/not/exist
class StandardError < Exception
end
