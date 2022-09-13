=begin
 This is a machine generated stub using stdlib-doc for <b>class RubyVM</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# ::RubyVM   
class RubyVM
    # OPTS, which shows vm build options   
    OPTS = nil #value is unknown, used for indexing.
    # INSTRUCTION_NAMES   
    INSTRUCTION_NAMES = nil #value is unknown, used for indexing.
    # DEFAULT_PARAMS
    # This constant variable shows VM's default parameters.
    # Note that changing these values does not affect VM execution.
    # Specification is not stable and you should not depend on this value.
    # Of course, this constant is MRI specific.
    DEFAULT_PARAMS = nil #value is unknown, used for indexing.
    # RubyVM.stat -> Hash
    # RubyVM.stat(hsh) -> hsh
    # RubyVM.stat(Symbol) -> Numeric
    #  
    # Returns a Hash containing implementation-dependent counters inside the VM.
    # 
    # This hash includes information about method/constant cache serials:
    # 
    #   {
    #     :global_method_state=>251,
    #     :global_constant_state=>481,
    #     :class_serial=>9029
    #   }
    # 
    # The contents of the hash are implementation specific and may be changed in
    # the future.
    # 
    # This method is only expected to work on C Ruby.
    def self.stat(*several_variants)
        #This is a stub, used for indexing
    end
    class Env
    end
    # The InstructionSequence class represents a compiled sequence of
    # instructions for the Ruby Virtual Machine.
    # 
    # With it, you can get a handle to the instructions that make up a method or
    # a proc, compile strings of Ruby code down to VM instructions, and
    # disassemble instruction sequences to strings for easy inspection. It is
    # mostly useful if you want to learn how the Ruby VM works, but it also lets
    # you control various settings for the Ruby iseq compiler.
    # 
    # You can find the source for the VM instructions in +insns.def+ in the Ruby
    # source.
    # 
    # The instruction sequence results will almost certainly change as Ruby
    # changes, so example output in this documentation may be different from what
    # you see.
    class InstructionSequence
        # Returns a human-readable string representation of this instruction
        # sequence, including the #label and #path.
        def inspect()
            #This is a stub, used for indexing
        end
        # iseq.disasm -> str
        # iseq.disassemble -> str
        #  
        # Returns the instruction sequence as a +String+ in human readable form.
        # 
        #   puts RubyVM::InstructionSequence.compile('1 + 2').disasm
        # 
        # Produces:
        # 
        #   == disasm: <RubyVM::InstructionSequence:<compiled>@<compiled>>==========
        #   0000 trace            1                                               (   1)
        #   0002 putobject        1
        #   0004 putobject        2
        #   0006 opt_plus         <ic:1>
        #   0008 leave
        def disasm()
            #This is a stub, used for indexing
        end
        # iseq.disasm -> str
        # iseq.disassemble -> str
        #  
        # Returns the instruction sequence as a +String+ in human readable form.
        # 
        #   puts RubyVM::InstructionSequence.compile('1 + 2').disasm
        # 
        # Produces:
        # 
        #   == disasm: <RubyVM::InstructionSequence:<compiled>@<compiled>>==========
        #   0000 trace            1                                               (   1)
        #   0002 putobject        1
        #   0004 putobject        2
        #   0006 opt_plus         <ic:1>
        #   0008 leave
        def disassemble()
            #This is a stub, used for indexing
        end
        # iseq.to_a -> ary
        #  
        # Returns an Array with 14 elements representing the instruction sequence
        # with the following data:
        # 
        # [magic]
        #   A string identifying the data format. <b>Always
        #   +YARVInstructionSequence/SimpleDataFormat+.</b>
        # 
        # [major_version]
        #   The major version of the instruction sequence.
        # 
        # [minor_version]
        #   The minor version of the instruction sequence.
        # 
        # [format_type]
        #   A number identifying the data format. <b>Always 1</b>.
        # 
        # [misc]
        #   A hash containing:
        # 
        #   [+:arg_size+]
        #     the total number of arguments taken by the method or the block (0 if
        #     _iseq_ doesn't represent a method or block)
        #   [+:local_size+]
        #     the number of local variables + 1
        #   [+:stack_max+]
        #     used in calculating the stack depth at which a SystemStackError is
        #     thrown.
        # 
        # [#label]
        #   The name of the context (block, method, class, module, etc.) that this
        #   instruction sequence belongs to.
        # 
        #   <code><main></code> if it's at the top level, <code><compiled></code> if
        #   it was evaluated from a string.
        # 
        # [#path]
        #   The relative path to the Ruby file where the instruction sequence was
        #   loaded from.
        # 
        #   <code><compiled></code> if the iseq was evaluated from a string.
        # 
        # [#absolute_path]
        #   The absolute path to the Ruby file where the instruction sequence was
        #   loaded from.
        # 
        #   +nil+ if the iseq was evaluated from a string.
        # 
        # [#first_lineno]
        #   The number of the first source line where the instruction sequence was
        #   loaded from.
        # 
        # [type]
        #   The type of the instruction sequence.
        # 
        #   Valid values are +:top+, +:method+, +:block+, +:class+, +:rescue+,
        #   +:ensure+, +:eval+, +:main+, and +:defined_guard+.
        # 
        # [locals]
        #   An array containing the names of all arguments and local variables as
        #   symbols.
        # 
        # [params]
        #   An Hash object containing parameter information.
        # 
        #   More info about these values can be found in +vm_core.h+.
        # 
        # [catch_table]
        #   A list of exceptions and control flow operators (rescue, next, redo,
        #   break, etc.).
        # 
        # [bytecode]
        #   An array of arrays containing the instruction names and operands that
        #   make up the body of the instruction sequence.
        # 
        # Note that this format is MRI specific and version dependent.
        def to_a()
            #This is a stub, used for indexing
        end
        # iseq.eval -> obj
        #  
        # Evaluates the instruction sequence and returns the result.
        # 
        #     RubyVM::InstructionSequence.compile("1 + 2").eval #=> 3
        def eval()
            #This is a stub, used for indexing
        end
        # Returns the path of this instruction sequence.
        # 
        # <code><compiled></code> if the iseq was evaluated from a string.
        # 
        # For example, using irb:
        # 
        #     iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
        #     #=> <RubyVM::InstructionSequence:<compiled>@<compiled>>
        #     iseq.path
        #     #=> "<compiled>"
        # 
        # Using ::compile_file:
        # 
        #     # /tmp/method.rb
        #     def hello
        #       puts "hello, world"
        #     end
        # 
        #     # in irb
        #     > iseq = RubyVM::InstructionSequence.compile_file('/tmp/method.rb')
        #     > iseq.path #=> /tmp/method.rb
        def path()
            #This is a stub, used for indexing
        end
        # Returns the absolute path of this instruction sequence.
        # 
        # +nil+ if the iseq was evaluated from a string.
        # 
        # For example, using ::compile_file:
        # 
        #     # /tmp/method.rb
        #     def hello
        #       puts "hello, world"
        #     end
        # 
        #     # in irb
        #     > iseq = RubyVM::InstructionSequence.compile_file('/tmp/method.rb')
        #     > iseq.absolute_path #=> /tmp/method.rb
        def absolute_path()
            #This is a stub, used for indexing
        end
        # Returns the label of this instruction sequence.
        # 
        # <code><main></code> if it's at the top level, <code><compiled></code> if it
        # was evaluated from a string.
        # 
        # For example, using irb:
        # 
        #     iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
        #     #=> <RubyVM::InstructionSequence:<compiled>@<compiled>>
        #     iseq.label
        #     #=> "<compiled>"
        # 
        # Using ::compile_file:
        # 
        #     # /tmp/method.rb
        #     def hello
        #       puts "hello, world"
        #     end
        # 
        #     # in irb
        #     > iseq = RubyVM::InstructionSequence.compile_file('/tmp/method.rb')
        #     > iseq.label #=> <main>
        def label()
            #This is a stub, used for indexing
        end
        # Returns the base label of this instruction sequence.
        # 
        # For example, using irb:
        # 
        #     iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
        #     #=> <RubyVM::InstructionSequence:<compiled>@<compiled>>
        #     iseq.base_label
        #     #=> "<compiled>"
        # 
        # Using ::compile_file:
        # 
        #     # /tmp/method.rb
        #     def hello
        #       puts "hello, world"
        #     end
        # 
        #     # in irb
        #     > iseq = RubyVM::InstructionSequence.compile_file('/tmp/method.rb')
        #     > iseq.base_label #=> <main>
        def base_label()
            #This is a stub, used for indexing
        end
        # Returns the number of the first source line where the instruction sequence
        # was loaded from.
        # 
        # For example, using irb:
        # 
        #     iseq = RubyVM::InstructionSequence.compile('num = 1 + 2')
        #     #=> <RubyVM::InstructionSequence:<compiled>@<compiled>>
        #     iseq.first_lineno
        #     #=> 1
        def first_lineno()
            #This is a stub, used for indexing
        end
        # <b>Experimental MRI specific feature, only available as C level api.</b>
        # 
        # Returns all +specified_line+ events.
        def line_trace_all()
            #This is a stub, used for indexing
        end
        # <b>Experimental MRI specific feature, only available as C level api.</b>
        # 
        # Set a +specified_line+ event at the given line position, if the +set+
        # parameter is +true+.
        # 
        # This method is useful for building a debugger breakpoint at a specific line.
        # 
        # A TypeError is raised if +set+ is not boolean.
        # 
        # If +pos+ is a negative integer a TypeError exception is raised.
        def line_trace_specify(p1, p2)
            #This is a stub, used for indexing
        end
        # InstructionSequence.compile(source[, file[, path[, line[, options]]]]) -> iseq
        # InstructionSequence.new(source[, file[, path[, line[, options]]]]) -> iseq
        #  
        # Takes +source+, a String of Ruby code and compiles it to an
        # InstructionSequence.
        # 
        # Optionally takes +file+, +path+, and +line+ which describe the filename,
        # absolute path and first line number of the ruby code in +source+ which are
        # metadata attached to the returned +iseq+.
        # 
        # +options+, which can be +true+, +false+ or a +Hash+, is used to
        # modify the default behavior of the Ruby iseq compiler.
        # 
        # For details regarding valid compile options see ::compile_option=.
        # 
        #    RubyVM::InstructionSequence.compile("a = 1 + 2")
        #    #=> <RubyVM::InstructionSequence:<compiled>@<compiled>>
        def self.compile(p1, p2 = v2, p3 = v3, p4 = v4, p5 = v5)
            #This is a stub, used for indexing
        end
        # InstructionSequence.compile(source[, file[, path[, line[, options]]]]) -> iseq
        # InstructionSequence.new(source[, file[, path[, line[, options]]]]) -> iseq
        #  
        # Takes +source+, a String of Ruby code and compiles it to an
        # InstructionSequence.
        # 
        # Optionally takes +file+, +path+, and +line+ which describe the filename,
        # absolute path and first line number of the ruby code in +source+ which are
        # metadata attached to the returned +iseq+.
        # 
        # +options+, which can be +true+, +false+ or a +Hash+, is used to
        # modify the default behavior of the Ruby iseq compiler.
        # 
        # For details regarding valid compile options see ::compile_option=.
        # 
        #    RubyVM::InstructionSequence.compile("a = 1 + 2")
        #    #=> <RubyVM::InstructionSequence:<compiled>@<compiled>>
        def self.new(p1, p2 = v2, p3 = v3, p4 = v4, p5 = v5)
            #This is a stub, used for indexing
        end
        # InstructionSequence.compile_file(file[, options]) -> iseq
        #  
        # Takes +file+, a String with the location of a Ruby source file, reads,
        # parses and compiles the file, and returns +iseq+, the compiled
        # InstructionSequence with source location metadata set.
        # 
        # Optionally takes +options+, which can be +true+, +false+ or a +Hash+, to
        # modify the default behavior of the Ruby iseq compiler.
        # 
        # For details regarding valid compile options see ::compile_option=.
        # 
        #     # /tmp/hello.rb
        #     puts "Hello, world!"
        # 
        #     # elsewhere
        #     RubyVM::InstructionSequence.compile_file("/tmp/hello.rb")
        #     #=> <RubyVM::InstructionSequence:<main>@/tmp/hello.rb>
        def self.compile_file(p1, p2 = v2)
            #This is a stub, used for indexing
        end
        # InstructionSequence.compile_option -> options
        #  
        # Returns a hash of default options used by the Ruby iseq compiler.
        # 
        # For details, see InstructionSequence.compile_option=.
        def self.compile_option()
            #This is a stub, used for indexing
        end
        # InstructionSequence.compile_option = options
        #  
        # Sets the default values for various optimizations in the Ruby iseq
        # compiler.
        # 
        # Possible values for +options+ include +true+, which enables all options,
        # +false+ which disables all options, and +nil+ which leaves all options
        # unchanged.
        # 
        # You can also pass a +Hash+ of +options+ that you want to change, any
        # options not present in the hash will be left unchanged.
        # 
        # Possible option names (which are keys in +options+) which can be set to
        # +true+ or +false+ include:
        # 
        # * +:inline_const_cache+
        # * +:instructions_unification+
        # * +:operands_unification+
        # * +:peephole_optimization+
        # * +:specialized_instruction+
        # * +:stack_caching+
        # * +:tailcall_optimization+
        # * +:trace_instruction+
        # 
        # Additionally, +:debug_level+ can be set to an integer.
        # 
        # These default options can be overwritten for a single run of the iseq
        # compiler by passing any of the above values as the +options+ parameter to
        # ::new, ::compile and ::compile_file.
        def self.compile_option= options
            #This is a stub, used for indexing
        end
        # InstructionSequence.disasm(body) -> str
        # InstructionSequence.disassemble(body) -> str
        #  
        # Takes +body+, a Method or Proc object, and returns a String with the
        # human readable instructions for +body+.
        # 
        # For a Method object:
        # 
        #   # /tmp/method.rb
        #   def hello
        #     puts "hello, world"
        #   end
        # 
        #   puts RubyVM::InstructionSequence.disasm(method(:hello))
        # 
        # Produces:
        # 
        #   == disasm: <RubyVM::InstructionSequence:hello@/tmp/method.rb>============
        #   0000 trace            8                                               (   1)
        #   0002 trace            1                                               (   2)
        #   0004 putself
        #   0005 putstring        "hello, world"
        #   0007 send             :puts, 1, nil, 8, <ic:0>
        #   0013 trace            16                                              (   3)
        #   0015 leave                                                            (   2)
        # 
        # For a Proc:
        # 
        #   # /tmp/proc.rb
        #   p = proc { num = 1 + 2 }
        #   puts RubyVM::InstructionSequence.disasm(p)
        # 
        # Produces:
        # 
        #   == disasm: <RubyVM::InstructionSequence:block in <main>@/tmp/proc.rb>===
        #   == catch table
        #   | catch type: redo   st: 0000 ed: 0012 sp: 0000 cont: 0000
        #   | catch type: next   st: 0000 ed: 0012 sp: 0000 cont: 0012
        #   |------------------------------------------------------------------------
        #   local table (size: 2, argc: 0 [opts: 0, rest: -1, post: 0, block: -1] s1)
        #   [ 2] num
        #   0000 trace            1                                               (   1)
        #   0002 putobject        1
        #   0004 putobject        2
        #   0006 opt_plus         <ic:1>
        #   0008 dup
        #   0009 setlocal         num, 0
        #   0012 leave
        def self.disasm(body)
            #This is a stub, used for indexing
        end
        # InstructionSequence.disasm(body) -> str
        # InstructionSequence.disassemble(body) -> str
        #  
        # Takes +body+, a Method or Proc object, and returns a String with the
        # human readable instructions for +body+.
        # 
        # For a Method object:
        # 
        #   # /tmp/method.rb
        #   def hello
        #     puts "hello, world"
        #   end
        # 
        #   puts RubyVM::InstructionSequence.disasm(method(:hello))
        # 
        # Produces:
        # 
        #   == disasm: <RubyVM::InstructionSequence:hello@/tmp/method.rb>============
        #   0000 trace            8                                               (   1)
        #   0002 trace            1                                               (   2)
        #   0004 putself
        #   0005 putstring        "hello, world"
        #   0007 send             :puts, 1, nil, 8, <ic:0>
        #   0013 trace            16                                              (   3)
        #   0015 leave                                                            (   2)
        # 
        # For a Proc:
        # 
        #   # /tmp/proc.rb
        #   p = proc { num = 1 + 2 }
        #   puts RubyVM::InstructionSequence.disasm(p)
        # 
        # Produces:
        # 
        #   == disasm: <RubyVM::InstructionSequence:block in <main>@/tmp/proc.rb>===
        #   == catch table
        #   | catch type: redo   st: 0000 ed: 0012 sp: 0000 cont: 0000
        #   | catch type: next   st: 0000 ed: 0012 sp: 0000 cont: 0012
        #   |------------------------------------------------------------------------
        #   local table (size: 2, argc: 0 [opts: 0, rest: -1, post: 0, block: -1] s1)
        #   [ 2] num
        #   0000 trace            1                                               (   1)
        #   0002 putobject        1
        #   0004 putobject        2
        #   0006 opt_plus         <ic:1>
        #   0008 dup
        #   0009 setlocal         num, 0
        #   0012 leave
        def self.disassemble(body)
            #This is a stub, used for indexing
        end
        # Returns the instruction sequence containing the given proc or method.
        # 
        # For example, using irb:
        # 
        #     # a proc
        #     > p = proc { num = 1 + 2 }
        #     > RubyVM::InstructionSequence.of(p)
        #     > #=> <RubyVM::InstructionSequence:block in irb_binding@(irb)>
        # 
        #     # for a method
        #     > def foo(bar); puts bar; end
        #     > RubyVM::InstructionSequence.of(method(:foo))
        #     > #=> <RubyVM::InstructionSequence:foo@(irb)>
        # 
        # Using ::compile_file:
        # 
        #     # /tmp/iseq_of.rb
        #     def hello
        #       puts "hello, world"
        #     end
        # 
        #     $a_global_proc = proc { str = 'a' + 'b' }
        # 
        #     # in irb
        #     > require '/tmp/iseq_of.rb'
        # 
        #     # first the method hello
        #     > RubyVM::InstructionSequence.of(method(:hello))
        #     > #=> #<RubyVM::InstructionSequence:0x007fb73d7cb1d0>
        # 
        #     # then the global proc
        #     > RubyVM::InstructionSequence.of($a_global_proc)
        #     > #=> #<RubyVM::InstructionSequence:0x007fb73d7caf78>
        def self.of(p1)
            #This is a stub, used for indexing
        end
    end
end
