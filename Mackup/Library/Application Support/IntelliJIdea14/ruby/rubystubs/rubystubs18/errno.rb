=begin
 This is a machine generated stub using stdlib-doc for <b>module Errno</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Ruby exception objects are subclasses of <code>Exception</code>.
# However, operating systems typically report errors using plain
# integers. Module <code>Errno</code> is created dynamically to map
# these operating system errors to Ruby classes, with each error
# number generating its own subclass of <code>SystemCallError</code>.
# As the subclass is created in module <code>Errno</code>, its name
# will start <code>Errno::</code>.
# 
# The names of the <code>Errno::</code> classes depend on
# the environment in which Ruby runs. On a typical Unix or Windows
# platform, there are <code>Errno</code> classes such as
# <code>Errno::EACCES</code>, <code>Errno::EAGAIN</code>,
# <code>Errno::EINTR</code>, and so on.
# 
# The integer operating system error number corresponding to a
# particular error is available as the class constant
# <code>Errno::</code><em>error</em><code>::Errno</code>.
# 
#    Errno::EACCES::Errno   #=> 13
#    Errno::EAGAIN::Errno   #=> 11
#    Errno::EINTR::Errno    #=> 4
# 
# The full list of operating system errors on your particular platform
# are available as the constants of <code>Errno</code>.
# 
#    Errno.constants   #=> E2BIG, EACCES, EADDRINUSE, EADDRNOTAVAIL, ...
module Errno
end
