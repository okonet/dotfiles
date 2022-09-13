=begin
 This is a machine generated stub using stdlib-doc for <b>class UncaughtThrowError</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

require 'arg_error'
# Raised when +throw+ is called with a _tag_ which does not have
# corresponding +catch+ block.
# 
#    throw "foo", "bar"
# 
# <em>raises the exception:</em>
# 
#    UncaughtThrowError: uncaught throw "foo"
class UncaughtThrowError < ArgError
    # Document-class: UncaughtThrowError
    # 
    # Raised when +throw+ is called with a _tag_ which does not have
    # corresponding +catch+ block.
    # 
    #    throw "foo", "bar"
    # 
    # <em>raises the exception:</em>
    # 
    #    UncaughtThrowError: uncaught throw "foo"
    def self.new(*args)
        #This is a stub, used for indexing
    end
    # uncaught_throw.tag   -> obj
    #  
    # Return the tag object which was called for.
    def tag()
        #This is a stub, used for indexing
    end
    # uncaught_throw.value   -> obj
    #  
    # Return the return value which was called for.
    def value()
        #This is a stub, used for indexing
    end
    # uncaught_throw.to_s   ->  string
    #  
    # Returns formatted message with the inspected tag.
    def to_s()
        #This is a stub, used for indexing
    end
end
