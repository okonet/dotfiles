=begin
 This is a machine generated stub using stdlib-doc for <b>class KeyError</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised when the specified key is not found. It is a subclass of
# IndexError.
# 
#    h = {"foo" => :bar}
#    h.fetch("foo") #=> :bar
#    h.fetch("baz") #=> KeyError: key not found: "baz"
class KeyError < IndexError
end
