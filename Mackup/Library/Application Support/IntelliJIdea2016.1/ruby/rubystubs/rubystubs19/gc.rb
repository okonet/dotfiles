=begin
 This is a machine generated stub using stdlib-doc for <b>module GC</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The <code>GC</code> module provides an interface to Ruby's mark and
# sweep garbage collection mechanism. Some of the underlying methods
# are also available via the <code>ObjectSpace</code> module.
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
    # updates GC stress mode.
    # 
    # When GC.stress = true, GC is invoked for all GC opportunity:
    # all memory and object allocation.
    # 
    # Since it makes Ruby very slow, it is only for debugging.
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
    module Profiler
        # GC::Profiler.enable?                 -> true or false
        #  
        # returns current status of GC profile mode.
        def self.enabled?()
            #This is a stub, used for indexing
        end
        # GC::Profiler.enable          -> nil
        #  
        # updates GC profile mode.
        # start profiler for GC.
        def self.enable()
            #This is a stub, used for indexing
        end
        # GC::Profiler.disable          -> nil
        #  
        # updates GC profile mode.
        # stop profiler for GC.
        def self.disable()
            #This is a stub, used for indexing
        end
        # GC::Profiler.clear          -> nil
        #  
        # clear before profile data.
        def self.clear()
            #This is a stub, used for indexing
        end
        # GC::Profiler.result -> string
        #  
        # Report profile data to string.
        # 
        # It returns a string as:
        #  GC 1 invokes.
        #  Index    Invoke Time(sec)       Use Size(byte)     Total Size(byte)         Total Object                    GC time(ms)
        #      1               0.012               159240               212940                10647         0.00000000000001530000
        def self.result()
            #This is a stub, used for indexing
        end
        # GC::Profiler.report
        #  
        # GC::Profiler.result display
        def self.report()
            #This is a stub, used for indexing
        end
        # GC::Profiler.total_time -> float
        #  
        # return total time that GC used. (msec)
        def self.total_time()
            #This is a stub, used for indexing
        end
    end
end
