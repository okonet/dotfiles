=begin
 This is a machine generated stub using stdlib-doc for <b>class ConditionVariable</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# ConditionVariable objects augment class Mutex. Using condition variables,
# it is possible to suspend while in the middle of a critical section until a
# resource becomes available.
# 
# Example:
# 
#   require 'thread'
# 
#   mutex = Mutex.new
#   resource = ConditionVariable.new
# 
#   a = Thread.new {
#      mutex.synchronize {
#        # Thread 'a' now needs the resource
#        resource.wait(mutex)
#        # 'a' can now have the resource
#      }
#   }
# 
#   b = Thread.new {
#      mutex.synchronize {
#        # Thread 'b' has finished using the resource
#        resource.signal
#      }
#   }
class ConditionVariable
    # Creates a new condition variable instance.
    def self.new()
        #This is a stub, used for indexing
    end
    # wait(mutex, timeout=nil)
    #  
    # Releases the lock held in +mutex+ and waits; reacquires the lock on wakeup.
    # 
    # If +timeout+ is given, this method returns after +timeout+ seconds passed,
    # even if no other thread doesn't signal.
    def wait(mutex, timeout=nil)
        #This is a stub, used for indexing
    end
    # Wakes up the first thread in line waiting for this lock.
    def signal()
        #This is a stub, used for indexing
    end
    # Wakes up all threads waiting for this lock.
    def broadcast()
        #This is a stub, used for indexing
    end
end
