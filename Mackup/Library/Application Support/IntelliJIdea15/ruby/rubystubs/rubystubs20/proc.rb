=begin
 This is a machine generated stub using stdlib-doc for <b>class Proc</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>Proc</code> objects are blocks of code that have been bound to
# a set of local variables. Once bound, the code may be called in
# different contexts and still access those variables.
# 
#    def gen_times(factor)
#      return Proc.new {|n| n*factor }
#    end
# 
#    times3 = gen_times(3)
#    times5 = gen_times(5)
# 
#    times3.call(12)               #=> 36
#    times5.call(5)                #=> 25
#    times3.call(times5.call(4))   #=> 60
class Proc
    # Proc.new {|...| block } -> a_proc
    # Proc.new                -> a_proc
    #  
    # Creates a new <code>Proc</code> object, bound to the current
    # context. <code>Proc::new</code> may be called without a block only
    # within a method with an attached block, in which case that block is
    # converted to the <code>Proc</code> object.
    # 
    #    def proc_from
    #      Proc.new
    #    end
    #    proc = proc_from { "hello" }
    #    proc.call   #=> "hello"
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # prc.call(params,...)   -> obj
    # prc[params,...]        -> obj
    # prc.(params,...)       -> obj
    #  
    # Invokes the block, setting the block's parameters to the values in
    # <i>params</i> using something close to method calling semantics.
    # Generates a warning if multiple values are passed to a proc that
    # expects just one (previously this silently converted the parameters
    # to an array).  Note that prc.() invokes prc.call() with the parameters
    # given.  It's a syntax sugar to hide "call".
    # 
    # For procs created using <code>lambda</code> or <code>->()</code> an error
    # is generated if the wrong number of parameters are passed to a Proc with
    # multiple parameters.  For procs created using <code>Proc.new</code> or
    # <code>Kernel.proc</code>, extra parameters are silently discarded.
    # 
    # Returns the value of the last expression evaluated in the block. See
    # also <code>Proc#yield</code>.
    # 
    #    a_proc = Proc.new {|a, *b| b.collect {|i| i*a }}
    #    a_proc.call(9, 1, 2, 3)   #=> [9, 18, 27]
    #    a_proc[9, 1, 2, 3]        #=> [9, 18, 27]
    #    a_proc = lambda {|a,b| a}
    #    a_proc.call(1,2,3)
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:4:in `block in <main>': wrong number of arguments (3 for 2) (ArgumentError)
    #     from prog.rb:5:in `call'
    #     from prog.rb:5:in `<main>'
    def call(*params)
        #This is a stub, used for indexing
    end
    # prc.call(params,...)   -> obj
    # prc[params,...]        -> obj
    # prc.(params,...)       -> obj
    #  
    # Invokes the block, setting the block's parameters to the values in
    # <i>params</i> using something close to method calling semantics.
    # Generates a warning if multiple values are passed to a proc that
    # expects just one (previously this silently converted the parameters
    # to an array).  Note that prc.() invokes prc.call() with the parameters
    # given.  It's a syntax sugar to hide "call".
    # 
    # For procs created using <code>lambda</code> or <code>->()</code> an error
    # is generated if the wrong number of parameters are passed to a Proc with
    # multiple parameters.  For procs created using <code>Proc.new</code> or
    # <code>Kernel.proc</code>, extra parameters are silently discarded.
    # 
    # Returns the value of the last expression evaluated in the block. See
    # also <code>Proc#yield</code>.
    # 
    #    a_proc = Proc.new {|a, *b| b.collect {|i| i*a }}
    #    a_proc.call(9, 1, 2, 3)   #=> [9, 18, 27]
    #    a_proc[9, 1, 2, 3]        #=> [9, 18, 27]
    #    a_proc = lambda {|a,b| a}
    #    a_proc.call(1,2,3)
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:4:in `block in <main>': wrong number of arguments (3 for 2) (ArgumentError)
    #     from prog.rb:5:in `call'
    #     from prog.rb:5:in `<main>'
    def [](*params)
        #This is a stub, used for indexing
    end
    # proc === obj   -> result_of_proc
    #  
    # Invokes the block with +obj+ as the proc's parameter like Proc#call.  It
    # is to allow a proc object to be a target of +when+ clause in a case
    # statement.
    def === obj
        #This is a stub, used for indexing
    end
    # prc.call(params,...)   -> obj
    # prc[params,...]        -> obj
    # prc.(params,...)       -> obj
    #  
    # Invokes the block, setting the block's parameters to the values in
    # <i>params</i> using something close to method calling semantics.
    # Generates a warning if multiple values are passed to a proc that
    # expects just one (previously this silently converted the parameters
    # to an array).  Note that prc.() invokes prc.call() with the parameters
    # given.  It's a syntax sugar to hide "call".
    # 
    # For procs created using <code>lambda</code> or <code>->()</code> an error
    # is generated if the wrong number of parameters are passed to a Proc with
    # multiple parameters.  For procs created using <code>Proc.new</code> or
    # <code>Kernel.proc</code>, extra parameters are silently discarded.
    # 
    # Returns the value of the last expression evaluated in the block. See
    # also <code>Proc#yield</code>.
    # 
    #    a_proc = Proc.new {|a, *b| b.collect {|i| i*a }}
    #    a_proc.call(9, 1, 2, 3)   #=> [9, 18, 27]
    #    a_proc[9, 1, 2, 3]        #=> [9, 18, 27]
    #    a_proc = lambda {|a,b| a}
    #    a_proc.call(1,2,3)
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:4:in `block in <main>': wrong number of arguments (3 for 2) (ArgumentError)
    #     from prog.rb:5:in `call'
    #     from prog.rb:5:in `<main>'
    def yield(*args)
        #This is a stub, used for indexing
    end
    # prc.to_proc -> prc
    #  
    # Part of the protocol for converting objects to <code>Proc</code>
    # objects. Instances of class <code>Proc</code> simply return
    # themselves.
    def to_proc()
        #This is a stub, used for indexing
    end
    # prc.arity -> fixnum
    #  
    # Returns the number of arguments that would not be ignored. If the block
    # is declared to take no arguments, returns 0. If the block is known
    # to take exactly n arguments, returns n. If the block has optional
    # arguments, return -n-1, where n is the number of mandatory
    # arguments. A <code>proc</code> with no argument declarations
    # is the same a block declaring <code>||</code> as its arguments.
    # 
    #    proc {}.arity          #=>  0
    #    proc {||}.arity        #=>  0
    #    proc {|a|}.arity       #=>  1
    #    proc {|a,b|}.arity     #=>  2
    #    proc {|a,b,c|}.arity   #=>  3
    #    proc {|*a|}.arity      #=> -1
    #    proc {|a,*b|}.arity    #=> -2
    #    proc {|a,*b, c|}.arity #=> -3
    # 
    #    proc   { |x = 0| }.arity       #=> 0
    #    lambda { |a = 0| }.arity       #=> -1
    #    proc   { |x=0, y| }.arity      #=> 0
    #    lambda { |x=0, y| }.arity      #=> -2
    #    proc   { |x=0, y=0| }.arity    #=> 0
    #    lambda { |x=0, y=0| }.arity    #=> -1
    #    proc   { |x, y=0| }.arity      #=> 1
    #    lambda { |x, y=0| }.arity      #=> -2
    #    proc   { |(x, y), z=0| }.arity #=> 1
    #    lambda { |(x, y), z=0| }.arity #=> -2
    def arity()
        #This is a stub, used for indexing
    end
    # prc.hash   ->  integer
    #  
    # Returns a hash value corresponding to proc body.
    def hash()
        #This is a stub, used for indexing
    end
    # prc.to_s   -> string
    #  
    # Returns the unique identifier for this proc, along with
    # an indication of where the proc was defined.
    def to_s()
        #This is a stub, used for indexing
    end
    alias inspect to_s
    # prc.lambda? -> true or false
    #  
    # Returns +true+ for a Proc object for which argument handling is rigid.
    # Such procs are typically generated by +lambda+.
    # 
    # A Proc object generated by +proc+ ignores extra arguments.
    # 
    #   proc {|a,b| [a,b] }.call(1,2,3)    #=> [1,2]
    # 
    # It provides +nil+ for missing arguments.
    # 
    #   proc {|a,b| [a,b] }.call(1)        #=> [1,nil]
    # 
    # It expands a single array argument.
    # 
    #   proc {|a,b| [a,b] }.call([1,2])    #=> [1,2]
    # 
    # A Proc object generated by +lambda+ doesn't have such tricks.
    # 
    #   lambda {|a,b| [a,b] }.call(1,2,3)  #=> ArgumentError
    #   lambda {|a,b| [a,b] }.call(1)      #=> ArgumentError
    #   lambda {|a,b| [a,b] }.call([1,2])  #=> ArgumentError
    # 
    # Proc#lambda? is a predicate for the tricks.
    # It returns +true+ if no tricks apply.
    # 
    #   lambda {}.lambda?            #=> true
    #   proc {}.lambda?              #=> false
    # 
    # Proc.new is the same as +proc+.
    # 
    #   Proc.new {}.lambda?          #=> false
    # 
    # +lambda+, +proc+ and Proc.new preserve the tricks of
    # a Proc object given by <code>&</code> argument.
    # 
    #   lambda(&lambda {}).lambda?   #=> true
    #   proc(&lambda {}).lambda?     #=> true
    #   Proc.new(&lambda {}).lambda? #=> true
    # 
    #   lambda(&proc {}).lambda?     #=> false
    #   proc(&proc {}).lambda?       #=> false
    #   Proc.new(&proc {}).lambda?   #=> false
    # 
    # A Proc object generated by <code>&</code> argument has the tricks
    # 
    #   def n(&b) b.lambda? end
    #   n {}                         #=> false
    # 
    # The <code>&</code> argument preserves the tricks if a Proc object
    # is given by <code>&</code> argument.
    # 
    #   n(&lambda {})                #=> true
    #   n(&proc {})                  #=> false
    #   n(&Proc.new {})              #=> false
    # 
    # A Proc object converted from a method has no tricks.
    # 
    #   def m() end
    #   method(:m).to_proc.lambda?   #=> true
    # 
    #   n(&method(:m))               #=> true
    #   n(&method(:m).to_proc)       #=> true
    # 
    # +define_method+ is treated the same as method definition.
    # The defined method has no tricks.
    # 
    #   class C
    #     define_method(:d) {}
    #   end
    #   C.new.d(1,2)       #=> ArgumentError
    #   C.new.method(:d).to_proc.lambda?   #=> true
    # 
    # +define_method+ always defines a method without the tricks,
    # even if a non-lambda Proc object is given.
    # This is the only exception for which the tricks are not preserved.
    # 
    #   class C
    #     define_method(:e, &proc {})
    #   end
    #   C.new.e(1,2)       #=> ArgumentError
    #   C.new.method(:e).to_proc.lambda?   #=> true
    # 
    # This exception insures that methods never have tricks
    # and makes it easy to have wrappers to define methods that behave as usual.
    # 
    #   class C
    #     def self.def2(name, &body)
    #       define_method(name, &body)
    #     end
    # 
    #     def2(:f) {}
    #   end
    #   C.new.f(1,2)       #=> ArgumentError
    # 
    # The wrapper <i>def2</i> defines a method which has no tricks.
    def lambda?()
        #This is a stub, used for indexing
    end
    # prc.binding    -> binding
    #  
    # Returns the binding associated with <i>prc</i>. Note that
    # <code>Kernel#eval</code> accepts either a <code>Proc</code> or a
    # <code>Binding</code> object as its second parameter.
    # 
    #    def fred(param)
    #      proc {}
    #    end
    # 
    #    b = fred(99)
    #    eval("param", b.binding)   #=> 99
    def binding()
        #This is a stub, used for indexing
    end
    # prc.curry         -> a_proc
    # prc.curry(arity)  -> a_proc
    #  
    # Returns a curried proc. If the optional <i>arity</i> argument is given,
    # it determines the number of arguments.
    # A curried proc receives some arguments. If a sufficient number of
    # arguments are supplied, it passes the supplied arguments to the original
    # proc and returns the result. Otherwise, returns another curried proc that
    # takes the rest of arguments.
    # 
    #    b = proc {|x, y, z| (x||0) + (y||0) + (z||0) }
    #    p b.curry[1][2][3]           #=> 6
    #    p b.curry[1, 2][3, 4]        #=> 6
    #    p b.curry(5)[1][2][3][4][5]  #=> 6
    #    p b.curry(5)[1, 2][3, 4][5]  #=> 6
    #    p b.curry(1)[1]              #=> 1
    # 
    #    b = proc {|x, y, z, *w| (x||0) + (y||0) + (z||0) + w.inject(0, &:+) }
    #    p b.curry[1][2][3]           #=> 6
    #    p b.curry[1, 2][3, 4]        #=> 10
    #    p b.curry(5)[1][2][3][4][5]  #=> 15
    #    p b.curry(5)[1, 2][3, 4][5]  #=> 15
    #    p b.curry(1)[1]              #=> 1
    # 
    #    b = lambda {|x, y, z| (x||0) + (y||0) + (z||0) }
    #    p b.curry[1][2][3]           #=> 6
    #    p b.curry[1, 2][3, 4]        #=> wrong number of arguments (4 for 3)
    #    p b.curry(5)                 #=> wrong number of arguments (5 for 3)
    #    p b.curry(1)                 #=> wrong number of arguments (1 for 3)
    # 
    #    b = lambda {|x, y, z, *w| (x||0) + (y||0) + (z||0) + w.inject(0, &:+) }
    #    p b.curry[1][2][3]           #=> 6
    #    p b.curry[1, 2][3, 4]        #=> 10
    #    p b.curry(5)[1][2][3][4][5]  #=> 15
    #    p b.curry(5)[1, 2][3, 4][5]  #=> 15
    #    p b.curry(1)                 #=> wrong number of arguments (1 for 3)
    # 
    #    b = proc { :foo }
    #    p b.curry[]                  #=> :foo
    def curry(*several_variants)
        #This is a stub, used for indexing
    end
    # prc.source_location  -> [String, Fixnum]
    #  
    # Returns the Ruby source filename and line number containing this proc
    # or +nil+ if this proc was not defined in Ruby (i.e. native)
    def source_location()
        #This is a stub, used for indexing
    end
    # prc.parameters  -> array
    #  
    # Returns the parameter information of this proc.
    # 
    #    prc = lambda{|x, y=42, *other|}
    #    prc.parameters  #=> [[:req, :x], [:opt, :y], [:rest, :other]]
    def parameters()
        #This is a stub, used for indexing
    end
    def inspect()
        #This is a stub, used for indexing
    end
end
