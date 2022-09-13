=begin
 This is a machine generated stub using stdlib-doc for <b>class SignalException</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised when a signal is received.
# 
#    begin
#      Process.kill('HUP',Process.pid)
#      sleep # wait for receiver to handle signal sent by Process.kill
#    rescue SignalException => e
#      puts "received Exception #{e}"
#    end
# 
# <em>produces:</em>
# 
#    received Exception SIGHUP
class SignalException < Exception
    # SignalException.new(sig_name)              ->  signal_exception
    # SignalException.new(sig_number [, name])   ->  signal_exception
    #  
    # Construct a new SignalException object.  +sig_name+ should be a known
    # signal name.
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # signal_exception.signo   ->  num
    #  
    # Returns a signal number.
    def signo()
        #This is a stub, used for indexing
    end
end
