=begin
 This is a machine generated stub using stdlib-doc for <b>module GC</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# The GC module provides an interface to Ruby's mark and
# sweep garbage collection mechanism.
# 
# Some of the underlying methods are also available via the ObjectSpace
# module.
# 
# You may obtain information about the operation of the GC through
# GC::Profiler.
module GC
    INTERNAL_CONSTANTS = nil #value is unknown, used for indexing.
    OPTS = nil #value is unknown, used for indexing.
    # GC.start                     -> nil
    # GC.garbage_collect           -> nil
    # GC.start(full_mark: true, immediate_sweep: true)           -> nil
    # GC.garbage_collect(full_mark: true, immediate_sweep: true) -> nil
    #  
    # Initiates garbage collection, unless manually disabled.
    # 
    # This method is defined with keyword arguments that default to true:
    # 
    #    def GC.start(full_mark: true, immediate_sweep: true); end
    # 
    # Use full_mark: false to perform a minor GC.
    # Use immediate_sweep: false to defer sweeping (use lazy sweep).
    # 
    # Note: These keyword arguments are implementation and version dependent. They
    # are not guaranteed to be future-compatible, and may be ignored if the
    # underlying implementation does not support them.
    def self.start(*several_variants)
        #This is a stub, used for indexing
    end
    # GC.enable    -> true or false
    #  
    # Enables garbage collection, returning +true+ if garbage
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
    # Disables garbage collection, returning +true+ if garbage
    # collection was already disabled.
    # 
    #    GC.disable   #=> false
    #    GC.disable   #=> true
    def self.disable()
        #This is a stub, used for indexing
    end
    # GC.stress     -> fixnum, true or false
    #  
    # Returns current status of GC stress mode.
    def self.stress()
        #This is a stub, used for indexing
    end
    # GC.stress = flag          -> flag
    #  
    # Updates the GC stress mode.
    # 
    # When stress mode is enabled, the GC is invoked at every GC opportunity:
    # all memory and object allocations.
    # 
    # Enabling stress mode will degrade performance, it is only for debugging.
    # 
    # flag can be true, false, or a fixnum bit-ORed following flags.
    #   0x01:: no major GC
    #   0x02:: no immediate sweep
    #   0x04:: full mark after malloc/calloc/realloc
    def self.stress= flag
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
    # GC.stat(hash) -> hash
    # GC.stat(:key) -> Numeric
    #  
    # Returns a Hash containing information about the GC.
    # 
    # The hash includes information about internal statistics about GC such as:
    # 
    #     {
    #         :count=>0,
    #         :heap_allocated_pages=>24,
    #         :heap_sorted_length=>24,
    #         :heap_allocatable_pages=>0,
    #         :heap_available_slots=>9783,
    #         :heap_live_slots=>7713,
    #         :heap_free_slots=>2070,
    #         :heap_final_slots=>0,
    #         :heap_marked_slots=>0,
    #         :heap_swept_slots=>0,
    #         :heap_eden_pages=>24,
    #         :heap_tomb_pages=>0,
    #         :total_allocated_pages=>24,
    #         :total_freed_pages=>0,
    #         :total_allocated_objects=>7796,
    #         :total_freed_objects=>83,
    #         :malloc_increase_bytes=>2389312,
    #         :malloc_increase_bytes_limit=>16777216,
    #         :minor_gc_count=>0,
    #         :major_gc_count=>0,
    #         :remembered_wb_unprotected_objects=>0,
    #         :remembered_wb_unprotected_objects_limit=>0,
    #         :old_objects=>0,
    #         :old_objects_limit=>0,
    #         :oldmalloc_increase_bytes=>2389760,
    #         :oldmalloc_increase_bytes_limit=>16777216
    #     }
    # 
    # The contents of the hash are implementation specific and may be changed in
    # the future.
    # 
    # This method is only expected to work on C Ruby.
    def self.stat(*several_variants)
        #This is a stub, used for indexing
    end
    # GC.latest_gc_info -> {:gc_by=>:newobj}
    # GC.latest_gc_info(hash) -> hash
    # GC.latest_gc_info(:major_by) -> :malloc
    #  
    # Returns information about the most recent garbage collection.
    def self.latest_gc_info(*several_variants)
        #This is a stub, used for indexing
    end
    # GC.start                     -> nil
    # GC.garbage_collect           -> nil
    # GC.start(full_mark: true, immediate_sweep: true)           -> nil
    # GC.garbage_collect(full_mark: true, immediate_sweep: true) -> nil
    #  
    # Initiates garbage collection, unless manually disabled.
    # 
    # This method is defined with keyword arguments that default to true:
    # 
    #    def GC.start(full_mark: true, immediate_sweep: true); end
    # 
    # Use full_mark: false to perform a minor GC.
    # Use immediate_sweep: false to defer sweeping (use lazy sweep).
    # 
    # Note: These keyword arguments are implementation and version dependent. They
    # are not guaranteed to be future-compatible, and may be ignored if the
    # underlying implementation does not support them.
    def garbage_collect(*several_variants)
        #This is a stub, used for indexing
    end
    # GC.verify_internal_consistency                  -> nil
    #  
    # Verify internal consistency.
    # 
    # This method is implementation specific.
    # Now this method checks generational consistency
    # if RGenGC is supported.
    def self.verify_internal_consistency()
        #This is a stub, used for indexing
    end
    # GC.malloc_allocated_size -> Integer
    #  
    # Returns the size of memory allocated by malloc().
    # 
    # Only available if ruby was built with +CALC_EXACT_MALLOC_SIZE+.
    def self.malloc_allocated_size()
        #This is a stub, used for indexing
    end
    # GC.malloc_allocations -> Integer
    #  
    # Returns the number of malloc() allocations.
    # 
    # Only available if ruby was built with +CALC_EXACT_MALLOC_SIZE+.
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
    #   GC::Profiler.report
    # 
    #   GC::Profiler.disable
    # 
    # See also GC.count, GC.malloc_allocated_size and GC.malloc_allocations
    module Profiler
        # GC::Profiler.enabled?     -> true or false
        #  
        # The current status of GC profile mode.
        def self.enabled?()
            #This is a stub, used for indexing
        end
        # GC::Profiler.enable       -> nil
        #  
        # Starts the GC profiler.
        def self.enable()
            #This is a stub, used for indexing
        end
        # GC::Profiler.raw_data    -> [Hash, ...]
        #  
        # Returns an Array of individual raw profile data Hashes ordered
        # from earliest to latest by +:GC_INVOKE_TIME+.
        # 
        # For example:
        # 
        #   [
        #     {
        #        :GC_TIME=>1.3000000000000858e-05,
        #        :GC_INVOKE_TIME=>0.010634999999999999,
        #        :HEAP_USE_SIZE=>289640,
        #        :HEAP_TOTAL_SIZE=>588960,
        #        :HEAP_TOTAL_OBJECTS=>14724,
        #        :GC_IS_MARKED=>false
        #     },
        #     # ...
        #   ]
        # 
        # The keys mean:
        # 
        # +:GC_TIME+::
        #     Time elapsed in seconds for this GC run
        # +:GC_INVOKE_TIME+::
        #     Time elapsed in seconds from startup to when the GC was invoked
        # +:HEAP_USE_SIZE+::
        #     Total bytes of heap used
        # +:HEAP_TOTAL_SIZE+::
        #     Total size of heap in bytes
        # +:HEAP_TOTAL_OBJECTS+::
        #     Total number of objects
        # +:GC_IS_MARKED+::
        #     Returns +true+ if the GC is in mark phase
        # 
        # If ruby was built with +GC_PROFILE_MORE_DETAIL+, you will also have access
        # to the following hash keys:
        # 
        # +:GC_MARK_TIME+::
        # +:GC_SWEEP_TIME+::
        # +:ALLOCATE_INCREASE+::
        # +:ALLOCATE_LIMIT+::
        # +:HEAP_USE_PAGES+::
        # +:HEAP_LIVE_OBJECTS+::
        # +:HEAP_FREE_OBJECTS+::
        # +:HAVE_FINALIZE+::
        def self.raw_data()
            #This is a stub, used for indexing
        end
        # GC::Profiler.disable      -> nil
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
        # GC::Profiler.result  -> String
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
        # GC::Profiler.report(io)
        #  
        # Writes the GC::Profiler.result to <tt>$stdout</tt> or the given IO object.
        def self.report(*several_variants)
            #This is a stub, used for indexing
        end
        # GC::Profiler.total_time  -> float
        #  
        # The total time used for garbage collection in seconds
        def self.total_time()
            #This is a stub, used for indexing
        end
    end
end
