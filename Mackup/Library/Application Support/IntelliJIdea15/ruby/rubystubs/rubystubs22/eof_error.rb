=begin
 This is a machine generated stub using stdlib-doc for <b>class EOFError</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# Raised by some IO operations when reaching the end of file. Many IO
# methods exist in two forms,
# 
# one that returns +nil+ when the end of file is reached, the other
# raises EOFError +EOFError+.
# 
# +EOFError+ is a subclass of +IOError+.
# 
#    file = File.open("/etc/hosts")
#    file.read
#    file.gets     #=> nil
#    file.readline #=> EOFError: end of file reached
class EOFError < IOError
end
