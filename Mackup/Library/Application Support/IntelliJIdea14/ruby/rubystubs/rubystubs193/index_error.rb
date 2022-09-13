=begin
 This is a machine generated stub using stdlib-doc for <b>class IndexError</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:43 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised when the given index is invalid.
# 
#    a = [:foo, :bar]
#    a.fetch(0)   #=> :foo
#    a[4]         #=> nil
#    a.fetch(4)   #=> IndexError: index 4 outside of array bounds: -2...2
class IndexError < StandardError
end
