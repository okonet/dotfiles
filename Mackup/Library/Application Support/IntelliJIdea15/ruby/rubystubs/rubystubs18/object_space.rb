=begin
 This is a machine generated stub using stdlib-doc for <b>module ObjectSpace</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
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
    # ObjectSpace.each_object([module]) {|obj| ... } => fixnum
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
    # GC.start                     => nil
    # gc.garbage_collect           => nil
    # ObjectSpace.garbage_collect  => nil
    #  
    # Initiates garbage collection, unless manually disabled.
    def self.garbage_collect(*several_variants)
        #This is a stub, used for indexing
    end
    # deprecated
    def self.add_finalizer(p1)
        #This is a stub, used for indexing
    end
    # deprecated
    def self.remove_finalizer(p1)
        #This is a stub, used for indexing
    end
    # deprecated
    def self.finalizers()
        #This is a stub, used for indexing
    end
    # deprecated
    def self.call_finalizer(p1)
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
end
