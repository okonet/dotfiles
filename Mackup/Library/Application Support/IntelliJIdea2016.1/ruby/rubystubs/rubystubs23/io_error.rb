=begin
 This is a machine generated stub using stdlib-doc for <b>class IOError</b>
 Sources used:  Ruby 2.3.0-p0
 Created on 2015-12-23 19:20:55 +0300 by IntelliJ Ruby Stubs Generator.
=end

# Raised when an IO operation fails.
# 
#    File.open("/etc/hosts") {|f| f << "example"}
#      #=> IOError: not opened for writing
# 
#    File.open("/etc/hosts") {|f| f.close; f.read }
#      #=> IOError: closed stream
# 
# Note that some IO failures raise +SystemCallError+s and these are not
# subclasses of IOError:
# 
#    File.open("does/not/exist")
#      #=> Errno::ENOENT: No such file or directory - does/not/exist
class IOError < StandardError
end
