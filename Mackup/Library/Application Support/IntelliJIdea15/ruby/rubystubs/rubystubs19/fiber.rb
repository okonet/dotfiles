=begin
 This is a machine generated stub using stdlib-doc for <b>class Fiber</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Fibers are primitives for implementing light weight cooperative
# concurrency in Ruby. Basically they are a means of creating code blocks
# that can be paused and resumed, much like threads. The main difference
# is that they are never preempted and that the scheduling must be done by
# the programmer and not the VM.
# 
# As opposed to other stackless light weight concurrency models, each fiber
# comes with a small 4KB stack. This enables the fiber to be paused from deeply
# nested function calls within the fiber block.
# 
# When a fiber is created it will not run automatically. Rather it must be
# be explicitly asked to run using the <code>Fiber#resume</code> method.
# The code running inside the fiber can give up control by calling
# <code>Fiber.yield</code> in which case it yields control back to caller
# (the caller of the <code>Fiber#resume</code>).
# 
# Upon yielding or termination the Fiber returns the value of the last
# executed expression
# 
# For instance:
# 
#   fiber = Fiber.new do
#     Fiber.yield 1
#     2
#   end
# 
#   puts fiber.resume
#   puts fiber.resume
#   puts fiber.resume
# 
# <em>produces</em>
# 
#   1
#   2
#   FiberError: dead fiber called
# 
# The <code>Fiber#resume</code> method accepts an arbitrary number of
# parameters, if it is the first call to <code>resume</code> then they
# will be passed as block arguments. Otherwise they will be the return
# value of the call to <code>Fiber.yield</code>
# 
# Example:
# 
#   fiber = Fiber.new do |first|
#     second = Fiber.yield first + 2
#   end
# 
#   puts fiber.resume 10
#   puts fiber.resume 14
#   puts fiber.resume 18
# 
# <em>produces</em>
# 
#   12
#   14
#   FiberError: dead fiber called
class Fiber
    # Fiber.yield(args, ...) -> obj
    #  
    # Yields control back to the context that resumed the fiber, passing
    # along any arguments that were passed to it. The fiber will resume
    # processing at this point when <code>resume</code> is called next.
    # Any arguments passed to the next <code>resume</code> will be the
    # value that this <code>Fiber.yield</code> expression evaluates to.
    def self.yield(*smth)
        #This is a stub, used for indexing
    end
    # fiber.resume(args, ...) -> obj
    #  
    # Resumes the fiber from the point at which the last <code>Fiber.yield</code>
    # was called, or starts running it if it is the first call to
    # <code>resume</code>. Arguments passed to resume will be the value of
    # the <code>Fiber.yield</code> expression or will be passed as block
    # parameters to the fiber's block if this is the first <code>resume</code>.
    # 
    # Alternatively, when resume is called it evaluates to the arguments passed
    # to the next <code>Fiber.yield</code> statement inside the fiber's block
    # or to the block value if it runs to completion without any
    # <code>Fiber.yield</code>
    def resume(*smth)
        #This is a stub, used for indexing
    end
    # fiber.transfer(args, ...) -> obj
    #  
    # Transfer control to another fiber, resuming it from where it last
    # stopped or starting it if it was not resumed before. The calling
    # fiber will be suspended much like in a call to <code>Fiber.yield</code>.
    # 
    # The fiber which receives the transfer call is treats it much like
    # a resume call. Arguments passed to transfer are treated like those
    # passed to resume.
    # 
    # You cannot resume a fiber that transferred control to another one.
    # This will cause a double resume error. You need to transfer control
    # back to this fiber before it can yield and resume.
    def transfer(*smth)
        #This is a stub, used for indexing
    end
    # fiber.alive? -> true or false
    #  
    # Returns true if the fiber can still be resumed (or transferred to).
    # After finishing execution of the fiber block this method will always
    # return false.
    def alive?()
        #This is a stub, used for indexing
    end
    # Fiber.current() -> fiber
    #  
    # Returns the current fiber. You need to <code>require 'fiber'</code>
    # before using this method. If you are not running in the context of
    # a fiber this method will return the root fiber.
    def self.current()
        #This is a stub, used for indexing
    end
end
