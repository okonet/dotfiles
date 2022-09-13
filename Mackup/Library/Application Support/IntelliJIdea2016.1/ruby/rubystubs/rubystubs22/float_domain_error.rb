=begin
 This is a machine generated stub using stdlib-doc for <b>class FloatDomainError</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# Raised when attempting to convert special float values (in particular
# +infinite+ or +NaN+) to numerical classes which don't support them.
# 
#    Float::INFINITY.to_r
#    #=> FloatDomainError: Infinity
class FloatDomainError < RangeError
end
