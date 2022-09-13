=begin
 This is a machine generated stub using stdlib-doc for <b>class Exception</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# Descendants of class Exception are used to communicate between
# Kernel#raise and +rescue+ statements in <code>begin ... end</code> blocks.
# Exception objects carry information about the exception -- its type (the
# exception's class name), an optional descriptive string, and optional
# traceback information.  Exception subclasses may add additional
# information like NameError#name.
# 
# Programs may make subclasses of Exception, typically of StandardError or
# RuntimeError, to provide custom classes and add additional information.
# See the subclass list below for defaults for +raise+ and +rescue+.
# 
# When an exception has been raised but not yet handled (in +rescue+,
# +ensure+, +at_exit+ and +END+ blocks) the global variable <code>$!</code>
# will contain the current exception and <code>$@</code> contains the
# current exception's backtrace.
# 
# It is recommended that a library should have one subclass of StandardError
# or RuntimeError and have specific exception types inherit from it.  This
# allows the user to rescue a generic exception type to catch all exceptions
# the library may raise even if future versions of the library add new
# exception subclasses.
# 
# For example:
# 
#   class MyLibrary
#     class Error < RuntimeError
#     end
# 
#     class WidgetError < Error
#     end
# 
#     class FrobError < Error
#     end
# 
#   end
# 
# To handle both WidgetError and FrobError the library user can rescue
# MyLibrary::Error.
# 
# The built-in subclasses of Exception are:
# 
# * NoMemoryError
# * ScriptError
#   * LoadError
#   * NotImplementedError
#   * SyntaxError
# * SecurityError
# * SignalException
#   * Interrupt
# * StandardError -- default for +rescue+
#   * ArgumentError
#     * UncaughtThrowError
#   * EncodingError
#   * FiberError
#   * IOError
#     * EOFError
#   * IndexError
#     * KeyError
#     * StopIteration
#   * LocalJumpError
#   * NameError
#     * NoMethodError
#   * RangeError
#     * FloatDomainError
#   * RegexpError
#   * RuntimeError -- default for +raise+
#   * SystemCallError
#     * Errno::*
#   * ThreadError
#   * TypeError
#   * ZeroDivisionError
# * SystemExit
# * SystemStackError
# * fatal -- impossible to rescue
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
    # Return this exception's class name and message
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
    # exception.backtrace_locations    -> array
    #  
    # Returns any backtrace associated with the exception. This method is
    # similar to Exception#backtrace, but the backtrace is an array of
    #  Thread::Backtrace::Location.
    # 
    # Now, this method is not affected by Exception#set_backtrace().
    def backtrace_locations()
        #This is a stub, used for indexing
    end
    # exc.set_backtrace(backtrace)   ->  array
    #  
    # Sets the backtrace information associated with +exc+. The +backtrace+ must
    # be an array of String objects or a single String in the format described
    # in Exception#backtrace.
    def set_backtrace(backtrace)
        #This is a stub, used for indexing
    end
    # exception.cause   -> an_exception or nil
    #  
    # Returns the previous exception ($!) at the time this exception was raised.
    # This is useful for wrapping exceptions and retaining the original exception
    # information.
    def cause()
        #This is a stub, used for indexing
    end
end
