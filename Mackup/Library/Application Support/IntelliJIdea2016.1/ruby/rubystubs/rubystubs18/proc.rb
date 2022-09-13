=begin
 This is a machine generated stub using stdlib-doc for <b>class Proc</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
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
    # Proc.new {|...| block } => a_proc 
    # Proc.new                => a_proc 
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
    # MISSING: documentation
    def clone()
        #This is a stub, used for indexing
    end
    def dup()
        #This is a stub, used for indexing
    end
    # prc.call(params,...)   => obj
    # prc[params,...]        => obj
    #  
    # Invokes the block, setting the block's parameters to the values in
    # <i>params</i> using something close to method calling semantics.
    # Generates a warning if multiple values are passed to a proc that
    # expects just one (previously this silently converted the parameters
    # to an array). 
    # 
    # For procs created using <code>Kernel.proc</code>, generates an 
    # error if the wrong number of parameters
    # are passed to a proc with multiple parameters. For procs created using
    # <code>Proc.new</code>, extra parameters are silently discarded.
    # 
    # Returns the value of the last expression evaluated in the block. See
    # also <code>Proc#yield</code>.
    # 
    #    a_proc = Proc.new {|a, *b| b.collect {|i| i*a }}
    #    a_proc.call(9, 1, 2, 3)   #=> [9, 18, 27]
    #    a_proc[9, 1, 2, 3]        #=> [9, 18, 27]
    #    a_proc = Proc.new {|a,b| a}
    #    a_proc.call(1,2,3)
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:5: wrong number of arguments (3 for 2) (ArgumentError)
    #     from prog.rb:4:in `call'
    #     from prog.rb:5
    def call(*params)
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
    #    Proc.new {}.arity          #=>  0
    #    Proc.new {||}.arity        #=>  0
    #    Proc.new {|a|}.arity       #=>  1
    #    Proc.new {|a,b|}.arity     #=>  2
    #    Proc.new {|a,b,c|}.arity   #=>  3
    #    Proc.new {|*a|}.arity      #=> -1
    #    Proc.new {|a,*b|}.arity    #=> -2
    def arity()
        #This is a stub, used for indexing
    end
    # prc.call(params,...)   => obj
    # prc[params,...]        => obj
    #  
    # Invokes the block, setting the block's parameters to the values in
    # <i>params</i> using something close to method calling semantics.
    # Generates a warning if multiple values are passed to a proc that
    # expects just one (previously this silently converted the parameters
    # to an array). 
    # 
    # For procs created using <code>Kernel.proc</code>, generates an 
    # error if the wrong number of parameters
    # are passed to a proc with multiple parameters. For procs created using
    # <code>Proc.new</code>, extra parameters are silently discarded.
    # 
    # Returns the value of the last expression evaluated in the block. See
    # also <code>Proc#yield</code>.
    # 
    #    a_proc = Proc.new {|a, *b| b.collect {|i| i*a }}
    #    a_proc.call(9, 1, 2, 3)   #=> [9, 18, 27]
    #    a_proc[9, 1, 2, 3]        #=> [9, 18, 27]
    #    a_proc = Proc.new {|a,b| a}
    #    a_proc.call(1,2,3)
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:5: wrong number of arguments (3 for 2) (ArgumentError)
    #     from prog.rb:4:in `call'
    #     from prog.rb:5
    def [](*params)
        #This is a stub, used for indexing
    end
    # prc == other_proc   =>  true or false
    #  
    # Return <code>true</code> if <i>prc</i> is the same object as
    # <i>other_proc</i>, or if they are both procs with the same body.
    def == other_proc
        #This is a stub, used for indexing
    end
    # prc.to_s   => string
    #  
    # Shows the unique identifier for this proc, along with
    # an indication of where the proc was defined.
    def to_s()
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
    # prc.binding    => binding
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
    #    eval("param", b)           #=> 99
    def binding()
        #This is a stub, used for indexing
    end
end
