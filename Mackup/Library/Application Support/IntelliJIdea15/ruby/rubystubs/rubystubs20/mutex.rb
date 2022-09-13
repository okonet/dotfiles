=begin
 This is a machine generated stub using stdlib-doc for <b>class Mutex</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Mutex implements a simple semaphore that can be used to coordinate access to
# shared data from multiple concurrent threads.
# 
# Example:
# 
#   require 'thread'
#   semaphore = Mutex.new
# 
#   a = Thread.new {
#     semaphore.synchronize {
#       # access shared resource
#     }
#   }
# 
#   b = Thread.new {
#     semaphore.synchronize {
#       # access shared resource
#     }
#   }
class Mutex
    # Mutex.new   -> mutex
    #  
    # Creates a new Mutex
    def self.new()
        #This is a stub, used for indexing
    end
    # mutex.locked?  -> true or false
    #  
    # Returns +true+ if this lock is currently held by some thread.
    def locked?()
        #This is a stub, used for indexing
    end
    # mutex.try_lock  -> true or false
    #  
    # Attempts to obtain the lock and returns immediately. Returns +true+ if the
    # lock was granted.
    def try_lock()
        #This is a stub, used for indexing
    end
    # mutex.lock  -> self
    #  
    # Attempts to grab the lock and waits if it isn't available.
    # Raises +ThreadError+ if +mutex+ was locked by the current thread.
    def lock()
        #This is a stub, used for indexing
    end
    # mutex.unlock    -> self
    #  
    # Releases the lock.
    # Raises +ThreadError+ if +mutex+ wasn't locked by the current thread.
    def unlock()
        #This is a stub, used for indexing
    end
    # mutex.sleep(timeout = nil)    -> number
    #  
    # Releases the lock and sleeps +timeout+ seconds if it is given and
    # non-nil or forever.  Raises +ThreadError+ if +mutex+ wasn't locked by
    # the current thread.
    # 
    # Note that this method can wakeup without explicit Thread#wakeup call.
    # For example, receiving signal and so on.
    def sleep(timeout = nil)
        #This is a stub, used for indexing
    end
    # mutex.synchronize { ... }    -> result of the block
    #  
    # Obtains a lock, runs the block, and releases the lock when the block
    # completes.  See the example under +Mutex+.
    def synchronize()
        #This is a stub, used for indexing
    end
    # mutex.owned?  -> true or false
    #  
    # Returns +true+ if this lock is currently held by current thread.
    # <em>This API is experimental, and subject to change.</em>
    def owned?()
        #This is a stub, used for indexing
    end
end
