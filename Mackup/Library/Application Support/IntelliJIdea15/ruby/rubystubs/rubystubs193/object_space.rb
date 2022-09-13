=begin
 This is a machine generated stub using stdlib-doc for <b>module ObjectSpace</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The <code>ObjectSpace</code> module contains a number of routines
# that interact with the garbage collection facility and allow you to
# traverse all living objects with an iterator.
# 
# <code>ObjectSpace</code> also provides support for object
# finalizers, procs that will be called when a specific object is
# about to be destroyed by garbage collection.
# 
#    include ObjectSpace
# 
#    a = "A"
#    b = "B"
#    c = "C"
# 
#    define_finalizer(a, proc {|id| puts "Finalizer one on #{id}" })
#    define_finalizer(a, proc {|id| puts "Finalizer two on #{id}" })
#    define_finalizer(b, proc {|id| puts "Finalizer three on #{id}" })
# 
# <em>produces:</em>
# 
#    Finalizer three on 537763470
#    Finalizer one on 537763480
#    Finalizer two on 537763480
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
    # gc.garbage_collect           -> nil
    # ObjectSpace.garbage_collect  -> nil
    #  
    # Initiates garbage collection, unless manually disabled.
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
    # It returns a hash as:
    # {:TOTAL=>10000, :FREE=>3011, :T_OBJECT=>6, :T_CLASS=>404, ...}
    # 
    # If the optional argument, result_hash, is given,
    # it is overwritten and returned.
    # This is intended to avoid probe effect.
    # 
    # The contents of the returned hash is implementation defined.
    # It may be changed in future.
    # 
    # This method is not expected to work except C Ruby.
    def self.count_objects(*result_hash)
        #This is a stub, used for indexing
    end
    # ObjectSpace.memsize_of(obj) -> Integer
    #  
    # Return consuming memory size of obj.
    # 
    # Note that the return size is incomplete.  You need to deal with
    # this information as only a *HINT*.  Especially, the size of
    # T_DATA may not be correct.
    # 
    # This method is not expected to work except C Ruby.
    def self.memsize_of(obj)
        #This is a stub, used for indexing
    end
    # ObjectSpace.memsize_of_all([klass]) -> Integer
    #  
    # Return consuming memory size of all living objects.
    # If klass (should be Class object) is given, return the total
    # memory size of instances of the given class.
    # 
    # Note that the returned size is incomplete.  You need to deal with
    # this information as only a *HINT*.  Especially, the size of
    # T_DATA may not be correct.
    # 
    # Note that this method does *NOT* return total malloc'ed memory size.
    # 
    # This method can be defined by the following Ruby code:
    # 
    # def memsize_of_all klass = false
    #   total = 0
    #   ObjectSpace.each_objects{|e|
    #     total += ObjectSpace.memsize_of(e) if klass == false || e.kind_of?(klass)
    #   }
    #   total
    # end
    # 
    # This method is not expected to work except C Ruby.
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
    # This method is not expected to work except C Ruby.
    def self.count_objects_size(*result_hash)
        #This is a stub, used for indexing
    end
    # ObjectSpace.count_nodes([result_hash]) -> hash
    #  
    # Counts nodes for each node type.
    # 
    # This method is not for ordinary Ruby programmers, but for MRI developers
    # who have interest in MRI performance and memory usage.
    # 
    # It returns a hash as:
    # {:NODE_METHOD=>2027, :NODE_FBODY=>1927, :NODE_CFUNC=>1798, ...}
    # 
    # If the optional argument, result_hash, is given,
    # it is overwritten and returned.
    # This is intended to avoid probe effect.
    # 
    # The contents of the returned hash is implementation defined.
    # It may be changed in future.
    # 
    # This method is not expected to work except C Ruby.
    def self.count_nodes(*result_hash)
        #This is a stub, used for indexing
    end
    # ObjectSpace.count_tdata_objects([result_hash]) -> hash
    #  
    # Counts objects for each T_DATA type.
    # 
    # This method is not for ordinary Ruby programmers, but for MRI developers
    # who interest on MRI performance.
    # 
    # It returns a hash as:
    # {RubyVM::InstructionSequence=>504, :parser=>5, :barrier=>6,
    #  :mutex=>6, Proc=>60, RubyVM::Env=>57, Mutex=>1, Encoding=>99,
    #  ThreadGroup=>1, Binding=>1, Thread=>1, RubyVM=>1, :iseq=>1,
    #  Random=>1, ARGF.class=>1, Data=>1, :autoload=>3, Time=>2}
    # # T_DATA objects existing at startup on r32276.
    # 
    # If the optional argument, result_hash, is given,
    # it is overwritten and returned.
    # This is intended to avoid probe effect.
    # 
    # The contents of the returned hash is implementation defined.
    # It may be changed in future.
    # 
    # In this version, keys are Class object or Symbol object.
    # If object is kind of normal (accessible) object, the key is Class object.
    # If object is not a kind of normal (internal) object, the key is symbol
    # name, registered by rb_data_type_struct.
    # 
    # This method is not expected to work except C Ruby.
    def self.count_tdata_objects(*result_hash)
        #This is a stub, used for indexing
    end
end
