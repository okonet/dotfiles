=begin
 This is a machine generated stub using stdlib-doc for <b>module ObjectSpace</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# The ObjectSpace module contains a number of routines
# that interact with the garbage collection facility and allow you to
# traverse all living objects with an iterator.
# 
# ObjectSpace also provides support for object finalizers, procs that will be
# called when a specific object is about to be destroyed by garbage
# collection.
# 
#    a = "A"
#    b = "B"
# 
#    ObjectSpace.define_finalizer(a, proc {|id| puts "Finalizer one on #{id}" })
#    ObjectSpace.define_finalizer(b, proc {|id| puts "Finalizer two on #{id}" })
# 
# _produces:_
# 
#    Finalizer two on 537763470
#    Finalizer one on 537763480
# ---
# The objspace library extends the ObjectSpace module and adds several
# methods to get internal statistic information about
# object/memory management.
# 
# You need to <code>require 'objspace'</code> to use this extension module.
# 
# Generally, you *SHOULD NOT* use this library if you do not know
# about the MRI implementation.  Mainly, this library is for (memory)
# profiler developers and MRI developers who need to know about MRI
# memory usage.
module ObjectSpace
    # ObjectSpace.each_object([module]) {|obj| ... } -> fixnum
    # ObjectSpace.each_object([module])              -> an_enumerator
    #  
    # Calls the block once for each living, nonimmediate object in this
    # Ruby process. If <i>module</i> is specified, calls the block
    # for only those classes or modules that match (or are a subclass of)
    # <i>module</i>. Returns the number of objects found. Immediate
    # objects (<code>Fixnum</code>s, <code>Symbol</code>s
    # <code>true</code>, <code>false</code>, and <code>nil</code>) are
    # never returned. In the example below, <code>each_object</code>
    # returns both the numbers we defined and several constants defined in
    # the <code>Math</code> module.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    a = 102.7
    #    b = 95       # Won't be returned
    #    c = 12345678987654321
    #    count = ObjectSpace.each_object(Numeric) {|x| p x }
    #    puts "Total count: #{count}"
    # 
    # <em>produces:</em>
    # 
    #    12345678987654321
    #    102.7
    #    2.71828182845905
    #    3.14159265358979
    #    2.22044604925031e-16
    #    1.7976931348623157e+308
    #    2.2250738585072e-308
    #    Total count: 7
    def self.each_object(*module1)
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
    def self.garbage_collect(*several_variants)
        #This is a stub, used for indexing
    end
    # ObjectSpace.define_finalizer(obj, aProc=proc())
    #  
    # Adds <i>aProc</i> as a finalizer, to be called after <i>obj</i>
    # was destroyed.
    def self.define_finalizer(obj, aProc=proc())
        #This is a stub, used for indexing
    end
    # ObjectSpace.undefine_finalizer(obj)
    #  
    # Removes all finalizers for <i>obj</i>.
    def self.undefine_finalizer(obj)
        #This is a stub, used for indexing
    end
    # ObjectSpace._id2ref(object_id) -> an_object
    #  
    # Converts an object id to a reference to the object. May not be
    # called on an object id passed as a parameter to a finalizer.
    # 
    #    s = "I am a string"                    #=> "I am a string"
    #    r = ObjectSpace._id2ref(s.object_id)   #=> "I am a string"
    #    r == s                                 #=> true
    def self._id2ref(object_id)
        #This is a stub, used for indexing
    end
    # ObjectSpace.count_objects([result_hash]) -> hash
    #  
    # Counts objects for each type.
    # 
    # It returns a hash, such as:
    #     {
    #       :TOTAL=>10000,
    #       :FREE=>3011,
    #       :T_OBJECT=>6,
    #       :T_CLASS=>404,
    #       # ...
    #     }
    # 
    # The contents of the returned hash are implementation specific.
    # It may be changed in future.
    # 
    # If the optional argument +result_hash+ is given,
    # it is overwritten and returned. This is intended to avoid probe effect.
    # 
    # This method is only expected to work on C Ruby.
    def self.count_objects(*result_hash)
        #This is a stub, used for indexing
    end
    # ObjectSpace.memsize_of(obj) -> Integer
    #  
    # Return consuming memory size of obj.
    # 
    # Note that the return size is incomplete.  You need to deal with this
    # information as only a *HINT*. Especially, the size of +T_DATA+ may not be
    # correct.
    # 
    # This method is only expected to work with C Ruby.
    # 
    # From Ruby 2.2, memsize_of(obj) returns a memory size includes
    # sizeof(RVALUE).
    def self.memsize_of(obj)
        #This is a stub, used for indexing
    end
    # ObjectSpace.memsize_of_all([klass]) -> Integer
    #  
    # Return consuming memory size of all living objects.
    # 
    # If +klass+ (should be Class object) is given, return the total memory size
    # of instances of the given class.
    # 
    # Note that the returned size is incomplete. You need to deal with this
    # information as only a *HINT*. Especially, the size of +T_DATA+ may not be
    # correct.
    # 
    # Note that this method does *NOT* return total malloc'ed memory size.
    # 
    # This method can be defined by the following Ruby code:
    # 
    #     def memsize_of_all klass = false
    #       total = 0
    #       ObjectSpace.each_object{|e|
    #         total += ObjectSpace.memsize_of(e) if klass == false || e.kind_of?(klass)
    #       }
    #       total
    #     end
    # 
    # This method is only expected to work with C Ruby.
    def self.memsize_of_all(*klass)
        #This is a stub, used for indexing
    end
    # ObjectSpace.count_objects_size([result_hash]) -> hash
    #  
    # Counts objects size (in bytes) for each type.
    # 
    # Note that this information is incomplete.  You need to deal with
    # this information as only a *HINT*.  Especially, total size of
    # T_DATA may not right size.
    # 
    # It returns a hash as:
    #   {:TOTAL=>1461154, :T_CLASS=>158280, :T_MODULE=>20672, :T_STRING=>527249, ...}
    # 
    # If the optional argument, result_hash, is given,
    # it is overwritten and returned.
    # This is intended to avoid probe effect.
    # 
    # The contents of the returned hash is implementation defined.
    # It may be changed in future.
    # 
    # This method is only expected to work with C Ruby.
    def self.count_objects_size(*result_hash)
        #This is a stub, used for indexing
    end
    # ObjectSpace.count_nodes([result_hash]) -> hash
    #  
    # Counts nodes for each node type.
    # 
    # This method is only for MRI developers interested in performance and memory
    # usage of Ruby programs.
    # 
    # It returns a hash as:
    # 
    #     {:NODE_METHOD=>2027, :NODE_FBODY=>1927, :NODE_CFUNC=>1798, ...}
    # 
    # If the optional argument, result_hash, is given, it is overwritten and
    # returned. This is intended to avoid probe effect.
    # 
    # Note:
    # The contents of the returned hash is implementation defined.
    # It may be changed in future.
    # 
    # This method is only expected to work with C Ruby.
    def self.count_nodes(*result_hash)
        #This is a stub, used for indexing
    end
    # ObjectSpace.count_tdata_objects([result_hash]) -> hash
    #  
    # Counts objects for each +T_DATA+ type.
    # 
    # This method is only for MRI developers interested in performance and memory
    # usage of Ruby programs.
    # 
    # It returns a hash as:
    # 
    #     {RubyVM::InstructionSequence=>504, :parser=>5, :barrier=>6,
    #      :mutex=>6, Proc=>60, RubyVM::Env=>57, Mutex=>1, Encoding=>99,
    #      ThreadGroup=>1, Binding=>1, Thread=>1, RubyVM=>1, :iseq=>1,
    #      Random=>1, ARGF.class=>1, Data=>1, :autoload=>3, Time=>2}
    #     # T_DATA objects existing at startup on r32276.
    # 
    # If the optional argument, result_hash, is given, it is overwritten and
    # returned. This is intended to avoid probe effect.
    # 
    # The contents of the returned hash is implementation specific and may change
    # in the future.
    # 
    # In this version, keys are Class object or Symbol object.
    # 
    # If object is kind of normal (accessible) object, the key is Class object.
    # If object is not a kind of normal (internal) object, the key is symbol
    # name, registered by rb_data_type_struct.
    # 
    # This method is only expected to work with C Ruby.
    def self.count_tdata_objects(*result_hash)
        #This is a stub, used for indexing
    end
    # ObjectSpace.reachable_objects_from(obj) -> array or nil
    #  
    # [MRI specific feature] Return all reachable objects from `obj'.
    # 
    # This method returns all reachable objects from `obj'.
    # 
    # If `obj' has two or more references to the same object `x', then returned
    # array only includes one `x' object.
    # 
    # If `obj' is a non-markable (non-heap management) object such as true,
    # false, nil, symbols and Fixnums (and Flonum) then it simply returns nil.
    # 
    # If `obj' has references to an internal object, then it returns instances of
    # ObjectSpace::InternalObjectWrapper class. This object contains a reference
    # to an internal object and you can check the type of internal object with
    # `type' method.
    # 
    # If `obj' is instance of ObjectSpace::InternalObjectWrapper class, then this
    # method returns all reachable object from an internal object, which is
    # pointed by `obj'.
    # 
    # With this method, you can find memory leaks.
    # 
    # This method is only expected to work except with C Ruby.
    # 
    # Example:
    #   ObjectSpace.reachable_objects_from(['a', 'b', 'c'])
    #   #=> [Array, 'a', 'b', 'c']
    # 
    #   ObjectSpace.reachable_objects_from(['a', 'a', 'a'])
    #   #=> [Array, 'a', 'a', 'a'] # all 'a' strings have different object id
    # 
    #   ObjectSpace.reachable_objects_from([v = 'a', v, v])
    #   #=> [Array, 'a']
    # 
    #   ObjectSpace.reachable_objects_from(1)
    #   #=> nil # 1 is not markable (heap managed) object
    def self.reachable_objects_from(obj)
        #This is a stub, used for indexing
    end
    # ObjectSpace.reachable_objects_from_root -> hash
    #  
    # [MRI specific feature] Return all reachable objects from root.
    def self.reachable_objects_from_root()
        #This is a stub, used for indexing
    end
    # ObjectSpace.dump(obj[, output: :string]) # => "{ ... }"
    # ObjectSpace.dump(obj, output: :file)     # => #<File:/tmp/rubyobj20131125-88733-1xkfmpv.json>
    # ObjectSpace.dump(obj, output: :stdout)   # => nil
    #  
    # Dump the contents of a ruby object as JSON.
    # 
    # This method is only expected to work with C Ruby.
    # This is an experimental method and is subject to change.
    # In particular, the function signature and output format are
    # not guaranteed to be compatible in future versions of ruby.
    def self.dump(p1, p2 = {})
        #This is a stub, used for indexing
    end
    # ObjectSpace.dump_all([output: :file]) # => #<File:/tmp/rubyheap20131125-88469-laoj3v.json>
    # ObjectSpace.dump_all(output: :stdout) # => nil
    # ObjectSpace.dump_all(output: :string) # => "{...}\n{...}\n..."
    # ObjectSpace.dump_all(output:
    # File.open('heap.json','w'))         # => #<File:heap.json>
    #  
    # Dump the contents of the ruby heap as JSON.
    # 
    # This method is only expected to work with C Ruby.
    # This is an experimental method and is subject to change.
    # In particular, the function signature and output format are
    # not guaranteed to be compatible in future versions of ruby.
    def self.dump_all(p1 = {})
        #This is a stub, used for indexing
    end
    # trace_object_allocations { block }
    #  
    # Starts tracing object allocations from the ObjectSpace extension module.
    # 
    # For example:
    # 
    #      require 'objspace'
    # 
    #      class C
    #        include ObjectSpace
    # 
    #        def foo
    #          trace_object_allocations do
    #            obj = Object.new
    #            p "#{allocation_sourcefile(obj)}:#{allocation_sourceline(obj)}"
    #          end
    #        end
    #      end
    # 
    #      C.new.foo #=> "objtrace.rb:8"
    # 
    # This example has included the ObjectSpace module to make it easier to read,
    # but you can also use the ::trace_object_allocations notation (recommended).
    # 
    # Note that this feature introduces a huge performance decrease and huge
    # memory consumption.
    def self.trace_object_allocations()
        #This is a stub, used for indexing
    end
    # trace_object_allocations_start
    #  
    # Starts tracing object allocations.
    def self.trace_object_allocations_start()
        #This is a stub, used for indexing
    end
    # trace_object_allocations_stop
    #  
    # Stop tracing object allocations.
    # 
    # Note that if ::trace_object_allocations_start is called n-times, then
    # tracing will stop after calling ::trace_object_allocations_stop n-times.
    def self.trace_object_allocations_stop()
        #This is a stub, used for indexing
    end
    # trace_object_allocations_clear
    #  
    # Clear recorded tracing information.
    def self.trace_object_allocations_clear()
        #This is a stub, used for indexing
    end
    def self.trace_object_allocations_debug_start()
        #This is a stub, used for indexing
    end
    # allocation_sourcefile(object) -> string
    #  
    # Returns the source file origin from the given +object+.
    # 
    # See ::trace_object_allocations for more information and examples.
    def self.allocation_sourcefile(object)
        #This is a stub, used for indexing
    end
    # allocation_sourceline(object) -> string
    #  
    # Returns the original line from source for from the given +object+.
    # 
    # See ::trace_object_allocations for more information and examples.
    def self.allocation_sourceline(object)
        #This is a stub, used for indexing
    end
    # allocation_class_path(object) -> string
    #  
    # Returns the class for the given +object+.
    # 
    #      class A
    #        def foo
    #          ObjectSpace::trace_object_allocations do
    #            obj = Object.new
    #            p "#{ObjectSpace::allocation_class_path(obj)}"
    #          end
    #        end
    #      end
    # 
    #      A.new.foo #=> "Class"
    # 
    # See ::trace_object_allocations for more information and examples.
    def self.allocation_class_path(object)
        #This is a stub, used for indexing
    end
    # allocation_method_id(object) -> string
    #  
    # Returns the method identifier for the given +object+.
    # 
    #      class A
    #        include ObjectSpace
    # 
    #        def foo
    #          trace_object_allocations do
    #            obj = Object.new
    #            p "#{allocation_class_path(obj)}##{allocation_method_id(obj)}"
    #          end
    #        end
    #      end
    # 
    #      A.new.foo #=> "Class#new"
    # 
    # See ::trace_object_allocations for more information and examples.
    def self.allocation_method_id(object)
        #This is a stub, used for indexing
    end
    # allocation_generation(object) -> Fixnum
    #  
    # Returns garbage collector generation for the given +object+.
    # 
    #      class B
    #        include ObjectSpace
    # 
    #        def foo
    #          trace_object_allocations do
    #            obj = Object.new
    #            p "Generation is #{allocation_generation(obj)}"
    #          end
    #        end
    #      end
    # 
    #      B.new.foo #=> "Generation is 3"
    # 
    # See ::trace_object_allocations for more information and examples.
    def self.allocation_generation(object)
        #This is a stub, used for indexing
    end
    class InternalObjectWrapper
        # Returns the type of the internal object.   
        def type()
            #This is a stub, used for indexing
        end
        # See Object#inspect.   
        def inspect()
            #This is a stub, used for indexing
        end
        # Returns the Object#object_id of the internal object.   
        def internal_object_id()
            #This is a stub, used for indexing
        end
    end
    # An ObjectSpace::WeakMap object holds references to
    # any objects, but those objects can get garbage collected.
    # 
    # This class is mostly used internally by WeakRef, please use
    # +lib/weakref.rb+ for the public interface.
    class WeakMap
        include Enumerable
        # Creates a weak reference from the given key to the given value   
        def []=(p1, p2)
            #This is a stub, used for indexing
        end
        # Retrieves a weakly referenced object with the given key   
        def [](p1)
            #This is a stub, used for indexing
        end
        # Returns +true+ if +key+ is registered   
        def include?(p1)
            #This is a stub, used for indexing
        end
        # Returns +true+ if +key+ is registered   
        def member?(p1)
            #This is a stub, used for indexing
        end
        # Returns +true+ if +key+ is registered   
        def key?(p1)
            #This is a stub, used for indexing
        end
        def inspect()
            #This is a stub, used for indexing
        end
        # Iterates over keys and objects in a weakly referenced object   
        def each()
            #This is a stub, used for indexing
        end
        # Iterates over keys and objects in a weakly referenced object   
        def each_pair()
            #This is a stub, used for indexing
        end
        # Iterates over keys and objects in a weakly referenced object   
        def each_key()
            #This is a stub, used for indexing
        end
        # Iterates over keys and objects in a weakly referenced object   
        def each_value()
            #This is a stub, used for indexing
        end
        # Iterates over keys and objects in a weakly referenced object   
        def keys()
            #This is a stub, used for indexing
        end
        # Iterates over values and objects in a weakly referenced object   
        def values()
            #This is a stub, used for indexing
        end
        def size()
            #This is a stub, used for indexing
        end
        def length()
            #This is a stub, used for indexing
        end
        def finalize(p1)
            #This is a stub, used for indexing
        end
    end
end
