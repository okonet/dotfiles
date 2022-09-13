=begin
 This is a machine generated stub using stdlib-doc for <b>class SizedQueue</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# This class represents queues of specified size capacity.  The push operation
# may be blocked if the capacity is full.
# 
# See Queue for an example of how a SizedQueue works.
class SizedQueue
    # new(max)
    #  
    # Creates a fixed-length queue with a maximum size of +max+.
    def self.new(max)
        #This is a stub, used for indexing
    end
    # Returns the maximum size of the queue.
    def max()
        #This is a stub, used for indexing
    end
    # max=(number)
    #  
    # Sets the maximum size of the queue to the given +number+.
    def max=(number)
        #This is a stub, used for indexing
    end
    # push(object, non_block=false)
    # enq(object, non_block=false)
    # <<(object)
    #  
    # Pushes +object+ to the queue.
    # 
    # If there is no space left in the queue, waits until space becomes
    # available, unless +non_block+ is true.  If +non_block+ is true, the
    # thread isn't suspended, and an exception is raised.
    def push(object, non_block=false)
        #This is a stub, used for indexing
    end
    alias enq push
    alias << push
    # pop(non_block=false)
    # deq(non_block=false)
    # shift(non_block=false)
    #  
    # Retrieves data from the queue.
    # 
    # If the queue is empty, the calling thread is suspended until data is pushed
    # onto the queue. If +non_block+ is true, the thread isn't suspended, and an
    # exception is raised.
    def pop(non_block=false)
        #This is a stub, used for indexing
    end
    alias deq pop
    alias shift pop
    # Removes all objects from the queue.
    def clear()
        #This is a stub, used for indexing
    end
    # Returns the number of threads waiting on the queue.
    def num_waiting()
        #This is a stub, used for indexing
    end
    # Alias for #push.   
    def enq(*args)
        #This is a stub, used for indexing
    end
    # Alias for #push.   
    def <<(*args)
        #This is a stub, used for indexing
    end
    # Alias for #pop.   
    def deq(*args)
        #This is a stub, used for indexing
    end
    # Alias for #pop.   
    def shift(*args)
        #This is a stub, used for indexing
    end
end
