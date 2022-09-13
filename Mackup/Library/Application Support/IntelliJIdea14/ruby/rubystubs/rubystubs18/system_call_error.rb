=begin
 This is a machine generated stub using stdlib-doc for <b>class SystemCallError</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

class SystemCallError < StandardError
    # SystemCallError.new(msg, errno)  => system_call_error_subclass
    #  
    # If _errno_ corresponds to a known system error code, constructs
    # the appropriate <code>Errno</code> class for that error, otherwise
    # constructs a generic <code>SystemCallError</code> object. The
    # error number is subsequently available via the <code>errno</code>
    # method.
    def self.new(msg, errno)
        #This is a stub, used for indexing
    end
    # system_call_error.errno   => fixnum
    #  
    # Return this SystemCallError's error number.
    def errno()
        #This is a stub, used for indexing
    end
    # system_call_error === other  => true or false
    #  
    # Return +true+ if the receiver is a generic +SystemCallError+, or
    # if the error numbers _self_ and _other_ are the same.
    def self.=== other
        #This is a stub, used for indexing
    end
end
