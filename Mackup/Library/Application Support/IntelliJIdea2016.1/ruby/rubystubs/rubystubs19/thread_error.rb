=begin
 This is a machine generated stub using stdlib-doc for <b>class ThreadError</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised when an invalid operation is attempted on a thread.
# 
# For example, when no other thread has been started:
# 
#    Thread.stop
# 
# <em>raises the exception:</em>
# 
#    ThreadError: stopping only thread
class ThreadError < StandardError
end
