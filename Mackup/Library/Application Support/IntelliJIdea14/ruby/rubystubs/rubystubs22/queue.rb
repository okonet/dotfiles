=begin
 This is a machine generated stub using stdlib-doc for <b>class Queue</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# This class provides a way to synchronize communication between threads.
# 
# Example:
# 
#     require 'thread'
#     queue = Queue.new
# 
#     producer = Thread.new do
#       5.times do |i|
#          sleep rand(i) # simulate expense
#          queue << i
#          puts "#{i} produced"
#       end
#     end
# 
#     consumer = Thread.new do
#       5.times do |i|
#          value = queue.pop
#          sleep rand(i/2) # simulate expense
#          puts "consumed #{value}"
#       end
#     end
class Queue
    # Creates a new queue instance.
    def self.new()
        #This is a stub, used for indexing
    end
    # push(object)
    # enq(object)
    # <<(object)
    #  
    # Pushes the given +object+ to the queue.
    def push(object)
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
    # empty?
    #  
    # Returns +true+ if the queue is empty.
    def empty?()
        #This is a stub, used for indexing
    end
    # Removes all objects from the queue.
    def clear()
        #This is a stub, used for indexing
    end
    # length
    # size
    #  
    # Returns the length of the queue.
    def length()
        #This is a stub, used for indexing
    end
    alias size length
    # Returns the number of threads waiting on the queue.
    def num_waiting()
        #This is a stub, used for indexing
    end
    # Alias for #push.   
    def enq(p1)
        #This is a stub, used for indexing
    end
    # Alias for #push.   
    def <<(p1)
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
    # Alias for #length.   
    def size()
        #This is a stub, used for indexing
    end
end
