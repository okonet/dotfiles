=begin
 This is a machine generated stub using stdlib-doc for <b>class Exception</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Descendants of class <code>Exception</code> are used to communicate
# between <code>raise</code> methods and <code>rescue</code>
# statements in <code>begin/end</code> blocks. <code>Exception</code>
# objects carry information about the exception---its type (the
# exception's class name), an optional descriptive string, and
# optional traceback information. Programs may subclass
# <code>Exception</code>, or more typically <code>StandardError</code>
# to provide custom classes and add additional information.
class Exception
    # exc.exception(string)  ->  an_exception or exc
    #  
    # With no argument, or if the argument is the same as the receiver,
    # return the receiver. Otherwise, create a new
    # exception object of the same class as the receiver, but with a
    # message equal to <code>string.to_str</code>.
    def self.exception(string)
        #This is a stub, used for indexing
    end
    # exc.exception(string)  ->  an_exception or exc
    #  
    # With no argument, or if the argument is the same as the receiver,
    # return the receiver. Otherwise, create a new
    # exception object of the same class as the receiver, but with a
    # message equal to <code>string.to_str</code>.
    def exception(string)
        #This is a stub, used for indexing
    end
    # Exception.new(msg = nil)   ->  exception
    #  
    # Construct a new Exception object, optionally passing in
    # a message.
    def self.new(msg = nil)
        #This is a stub, used for indexing
    end
    # exc == obj   -> true or false
    #  
    # Equality---If <i>obj</i> is not an <code>Exception</code>, returns
    # <code>false</code>. Otherwise, returns <code>true</code> if <i>exc</i> and
    # <i>obj</i> share same class, messages, and backtrace.
    def == obj
        #This is a stub, used for indexing
    end
    # exception.to_s   ->  string
    #  
    # Returns exception's message (or the name of the exception if
    # no message is set).
    def to_s()
        #This is a stub, used for indexing
    end
    # exception.message   ->  string
    #  
    # Returns the result of invoking <code>exception.to_s</code>.
    # Normally this returns the exception's message or name. By
    # supplying a to_str method, exceptions are agreeing to
    # be used where Strings are expected.
    def message()
        #This is a stub, used for indexing
    end
    # exception.inspect   -> string
    #  
    # Return this exception's class name an message
    def inspect()
        #This is a stub, used for indexing
    end
    # exception.backtrace    -> array
    #  
    # Returns any backtrace associated with the exception. The backtrace
    # is an array of strings, each containing either ``filename:lineNo: in
    # `method''' or ``filename:lineNo.''
    # 
    #    def a
    #      raise "boom"
    #    end
    # 
    #    def b
    #      a()
    #    end
    # 
    #    begin
    #      b()
    #    rescue => detail
    #      print detail.backtrace.join("\n")
    #    end
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:2:in `a'
    #    prog.rb:6:in `b'
    #    prog.rb:10
    def backtrace()
        #This is a stub, used for indexing
    end
    # exc.set_backtrace(array)   ->  array
    #  
    # Sets the backtrace information associated with <i>exc</i>. The
    # argument must be an array of <code>String</code> objects in the
    # format described in <code>Exception#backtrace</code>.
    def set_backtrace(array)
        #This is a stub, used for indexing
    end
end
