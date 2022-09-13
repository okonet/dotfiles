=begin
 This is a machine generated stub using stdlib-doc for <b>class LocalJumpError</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised when Ruby can't yield as requested.
# 
# A typical scenario is attempting to yield when no block is given:
# 
#    def call_block
#      yield 42
#    end
#    call_block
# 
# <em>raises the exception:</em>
# 
#    LocalJumpError: no block given (yield)
# 
# A more subtle example:
# 
#    def get_me_a_return
#      Proc.new { return 42 }
#    end
#    get_me_a_return.call
# 
# <em>raises the exception:</em>
# 
#    LocalJumpError: unexpected return
class LocalJumpError < StandardError
    # local_jump_error.exit_value  -> obj
    #  
    # Returns the exit value associated with this +LocalJumpError+.
    def exit_value()
        #This is a stub, used for indexing
    end
    # local_jump_error.reason   -> symbol
    #  
    # The reason this block was terminated:
    # :break, :redo, :retry, :next, :return, or :noreason.
    def reason()
        #This is a stub, used for indexing
    end
end
