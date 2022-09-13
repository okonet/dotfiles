=begin
 This is a machine generated stub using stdlib-doc for <b>module GC</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The <code>GC</code> module provides an interface to Ruby's mark and
# sweep garbage collection mechanism. Some of the underlying methods
# are also available via the ObjectSpace module.
# 
# You may obtain information about the operation of the GC through
# GC::Profiler.
module GC
    # GC.start                     -> nil
    # gc.garbage_collect           -> nil
    # ObjectSpace.garbage_collect  -> nil
    #  
    # Initiates garbage collection, unless manually disabled.
    def self.start()
        #This is a stub, used for indexing
    end
    # GC.enable    -> true or false
    #  
    # Enables garbage collection, returning <code>true</code> if garbage
    # collection was previously disabled.
    # 
    #    GC.disable   #=> false
    #    GC.enable    #=> true
    #    GC.enable    #=> false
    def self.enable()
        #This is a stub, used for indexing
    end
    # GC.disable    -> true or false
    #  
    # Disables garbage collection, returning <code>true</code> if garbage
    # collection was already disabled.
    # 
    #    GC.disable   #=> false
    #    GC.disable   #=> true
    def self.disable()
        #This is a stub, used for indexing
    end
    # GC.stress                 -> true or false
    #  
    # returns current status of GC stress mode.
    def self.stress()
        #This is a stub, used for indexing
    end
    # GC.stress = bool          -> bool
    #  
    # Updates the GC stress mode.
    # 
    # When stress mode is enabled the GC is invoked at every GC opportunity:
    # all memory and object allocations.
    # 
    # Enabling stress mode makes Ruby very slow, it is only for debugging.
    def self.stress= bool
        #This is a stub, used for indexing
    end
    # GC.count -> Integer
    #  
    # The number of times GC occurred.
    # 
    # It returns the number of times GC occurred since the process started.
    def self.count()
        #This is a stub, used for indexing
    end
    # GC.stat -> Hash
    #  
    # Returns a Hash containing information about the GC.
    # 
    # The hash includes information about internal statistics about GC such as:
    # 
    #   {
    #     :count          => 18,
    #     :heap_used      => 77,
    #     :heap_length    => 77,
    #     :heap_increment => 0,
    #     :heap_live_num  => 23287,
    #     :heap_free_num  => 8115,
    #     :heap_final_num => 0,
    #   }
    # 
    # The contents of the hash are implementation defined and may be changed in
    # the future.
    # 
    # This method is only expected to work on C Ruby.
    def self.stat()
        #This is a stub, used for indexing
    end
    # GC.start                     -> nil
    # gc.garbage_collect           -> nil
    # ObjectSpace.garbage_collect  -> nil
    #  
    # Initiates garbage collection, unless manually disabled.
    def garbage_collect(*several_variants)
        #This is a stub, used for indexing
    end
    # GC.malloc_allocated_size -> Integer
    #  
    # The allocated size by malloc().
    # 
    # It returns the allocated size by malloc().
    def self.malloc_allocated_size()
        #This is a stub, used for indexing
    end
    # GC.malloc_allocations -> Integer
    #  
    # The number of allocated memory object by malloc().
    # 
    # It returns the number of allocated memory object by malloc().
    def self.malloc_allocations()
        #This is a stub, used for indexing
    end
    # The GC profiler provides access to information on GC runs including time,
    # length and object space size.
    # 
    # Example:
    # 
    #   GC::Profiler.enable
    # 
    #   require 'rdoc/rdoc'
    # 
    #   puts GC::Profiler.result
    # 
    #   GC::Profiler.disable
    # 
    # See also GC.count, GC.malloc_allocated_size and GC.malloc_allocations
    module Profiler
        # GC::Profiler.enable?                 -> true or false
        #  
        # The current status of GC profile mode.
        def self.enabled?()
            #This is a stub, used for indexing
        end
        # GC::Profiler.enable          -> nil
        #  
        # Starts the GC profiler.
        def self.enable()
            #This is a stub, used for indexing
        end
        # GC::Profiler.disable          -> nil
        #  
        # Stops the GC profiler.
        def self.disable()
            #This is a stub, used for indexing
        end
        # GC::Profiler.clear          -> nil
        #  
        # Clears the GC profiler data.
        def self.clear()
            #This is a stub, used for indexing
        end
        # GC::Profiler.result -> String
        #  
        # Returns a profile data report such as:
        # 
        #   GC 1 invokes.
        #   Index    Invoke Time(sec)       Use Size(byte)     Total Size(byte)         Total Object                    GC time(ms)
        #       1               0.012               159240               212940                10647         0.00000000000001530000
        def self.result()
            #This is a stub, used for indexing
        end
        # GC::Profiler.report
        # GC::Profiler.report io
        #  
        # Writes the GC::Profiler#result to <tt>$stdout</tt> or the given IO object.
        def self.report(*several_variants)
            #This is a stub, used for indexing
        end
        # GC::Profiler.total_time -> float
        #  
        # The total time used for garbage collection in milliseconds
        def self.total_time()
            #This is a stub, used for indexing
        end
    end
end
