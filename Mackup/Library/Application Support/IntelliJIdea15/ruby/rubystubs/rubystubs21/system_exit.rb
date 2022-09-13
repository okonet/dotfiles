=begin
 This is a machine generated stub using stdlib-doc for <b>class SystemExit</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:26 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised by +exit+ to initiate the termination of the script.
class SystemExit < Exception
    # SystemExit.new              -> system_exit
    # SystemExit.new(status)      -> system_exit
    # SystemExit.new(status, msg) -> system_exit
    # SystemExit.new(msg)         -> system_exit
    #  
    # Create a new +SystemExit+ exception with the given status and message.
    # Status is true, false, or an integer.
    # If status is not given, true is used.
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # system_exit.status   -> fixnum
    #  
    # Return the status value associated with this system exit.
    def status()
        #This is a stub, used for indexing
    end
    # system_exit.success?  -> true or false
    #  
    # Returns +true+ if exiting successful, +false+ if not.
    def success?()
        #This is a stub, used for indexing
    end
end
