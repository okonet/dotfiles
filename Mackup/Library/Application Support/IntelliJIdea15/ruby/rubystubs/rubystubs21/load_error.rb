=begin
 This is a machine generated stub using stdlib-doc for <b>class LoadError</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:26 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised when a file required (a Ruby script, extension library, ...)
# fails to load.
# 
#    require 'this/file/does/not/exist'
# 
# <em>raises the exception:</em>
# 
#    LoadError: no such file to load -- this/file/does/not/exist
class LoadError < ScriptError
end
