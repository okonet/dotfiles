=begin
 This is a machine generated stub using stdlib-doc for <b>class RuntimeError</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:43 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A generic error class raised when an invalid operation is attempted.
# 
#    [1, 2, 3].freeze << 4
# 
# <em>raises the exception:</em>
# 
#    RuntimeError: can't modify frozen array
# 
# Kernel.raise will raise a RuntimeError if no Exception class is
# specified.
# 
#    raise "ouch"
# 
# <em>raises the exception:</em>
# 
#    RuntimeError: ouch
class RuntimeError < StandardError
end
