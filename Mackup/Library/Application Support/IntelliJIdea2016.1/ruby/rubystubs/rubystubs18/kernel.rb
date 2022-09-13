=begin
 This is a machine generated stub using stdlib-doc for <b>module Kernel</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

module Kernel
    # warn(msg)   => nil
    #  
    # Display the given message (followed by a newline) on STDERR unless
    # warnings are disabled (for example with the <code>-W0</code> flag).
    def warn(msg)
        #This is a stub, used for indexing
    end
    # eval(string [, binding [, filename [,lineno]]])  => obj
    #  
    # Evaluates the Ruby expression(s) in <em>string</em>. If
    # <em>binding</em> is given, the evaluation is performed in its
    # context. The binding may be a <code>Binding</code> object or a
    # <code>Proc</code> object. If the optional <em>filename</em> and
    # <em>lineno</em> parameters are present, they will be used when
    # reporting syntax errors.
    # 
    #    def getBinding(str)
    #      return binding
    #    end
    #    str = "hello"
    #    eval "str + ' Fred'"                      #=> "hello Fred"
    #    eval "str + ' Fred'", getBinding("bye")   #=> "bye Fred"
    def eval(string, *binding_filename_lineno)
        #This is a stub, used for indexing
    end
    # block_given?   => true or false
    # iterator?      => true or false
    #  
    # Returns <code>true</code> if <code>yield</code> would execute a
    # block in the current context. The <code>iterator?</code> form
    # is mildly deprecated.
    # 
    #    def try
    #      if block_given?
    #        yield
    #      else
    #        "no block"
    #      end
    #    end
    #    try                  #=> "no block"
    #    try { "hello" }      #=> "hello"
    #    try do "hello" end   #=> "hello"
    def iterator?()
        #This is a stub, used for indexing
    end
    # block_given?   => true or false
    # iterator?      => true or false
    #  
    # Returns <code>true</code> if <code>yield</code> would execute a
    # block in the current context. The <code>iterator?</code> form
    # is mildly deprecated.
    # 
    #    def try
    #      if block_given?
    #        yield
    #      else
    #        "no block"
    #      end
    #    end
    #    try                  #=> "no block"
    #    try { "hello" }      #=> "hello"
    #    try do "hello" end   #=> "hello"
    def block_given?()
        #This is a stub, used for indexing
    end
    # obj.method_missing(symbol [, *args] )   => result
    #  
    # Invoked by Ruby when <i>obj</i> is sent a message it cannot handle.
    # <i>symbol</i> is the symbol for the method called, and <i>args</i>
    # are any arguments that were passed to it. By default, the interpreter
    # raises an error when this method is called. However, it is possible
    # to override the method to provide more dynamic behavior.
    # The example below creates
    # a class <code>Roman</code>, which responds to methods with names
    # consisting of roman numerals, returning the corresponding integer
    # values.
    # 
    #    class Roman
    #      def romanToInt(str)
    #        # ...
    #      end
    #      def method_missing(methId)
    #        str = methId.id2name
    #        romanToInt(str)
    #      end
    #    end
    # 
    #    r = Roman.new
    #    r.iv      #=> 4
    #    r.xxiii   #=> 23
    #    r.mm      #=> 2000
    def method_missing(symbol, *args)
        #This is a stub, used for indexing
    end
    # loop {|| block } 
    #  
    # Repeatedly executes the block.
    # 
    #    loop do
    #      print "Input: "
    #      line = gets
    #      break if !line or line =~ /^qQ/
    #      # ...
    #    end
    # 
    # StopIteration raised in the block breaks the loop.
    def loop()
        #This is a stub, used for indexing
    end
    # raise
    # raise(string)
    # raise(exception [, string [, array]])
    # fail
    # fail(string)
    # fail(exception [, string [, array]])
    #  
    # With no arguments, raises the exception in <code>$!</code> or raises
    # a <code>RuntimeError</code> if <code>$!</code> is +nil+.
    # With a single +String+ argument, raises a
    # +RuntimeError+ with the string as a message. Otherwise,
    # the first parameter should be the name of an +Exception+
    # class (or an object that returns an +Exception+ object when sent
    # an +exception+ message). The optional second parameter sets the
    # message associated with the exception, and the third parameter is an
    # array of callback information. Exceptions are caught by the
    # +rescue+ clause of <code>begin...end</code> blocks.
    # 
    #    raise "Failed to create socket"
    #    raise ArgumentError, "No parameters", caller
    def raise(*several_variants)
        #This is a stub, used for indexing
    end
    # raise
    # raise(string)
    # raise(exception [, string [, array]])
    # fail
    # fail(string)
    # fail(exception [, string [, array]])
    #  
    # With no arguments, raises the exception in <code>$!</code> or raises
    # a <code>RuntimeError</code> if <code>$!</code> is +nil+.
    # With a single +String+ argument, raises a
    # +RuntimeError+ with the string as a message. Otherwise,
    # the first parameter should be the name of an +Exception+
    # class (or an object that returns an +Exception+ object when sent
    # an +exception+ message). The optional second parameter sets the
    # message associated with the exception, and the third parameter is an
    # array of callback information. Exceptions are caught by the
    # +rescue+ clause of <code>begin...end</code> blocks.
    # 
    #    raise "Failed to create socket"
    #    raise ArgumentError, "No parameters", caller
    def fail(*several_variants)
        #This is a stub, used for indexing
    end
    # caller(start=1)    => array
    #  
    # Returns the current execution stack---an array containing strings in
    # the form ``<em>file:line</em>'' or ``<em>file:line: in
    # `method'</em>''. The optional _start_ parameter
    # determines the number of initial stack entries to omit from the
    # result.
    # 
    #    def a(skip)
    #      caller(skip)
    #    end
    #    def b(skip)
    #      a(skip)
    #    end
    #    def c(skip)
    #      b(skip)
    #    end
    #    c(0)   #=> ["prog:2:in `a'", "prog:5:in `b'", "prog:8:in `c'", "prog:10"]
    #    c(1)   #=> ["prog:5:in `b'", "prog:8:in `c'", "prog:11"]
    #    c(2)   #=> ["prog:8:in `c'", "prog:12"]
    #    c(3)   #=> ["prog:13"]
    def caller(start=1)
        #This is a stub, used for indexing
    end
    # exit(integer=0)
    # Kernel::exit(integer=0)
    # Process::exit(integer=0)
    #  
    # Initiates the termination of the Ruby script by raising the
    # <code>SystemExit</code> exception. This exception may be caught. The
    # optional parameter is used to return a status code to the invoking
    # environment.
    # 
    #    begin
    #      exit
    #      puts "never get here"
    #    rescue SystemExit
    #      puts "rescued a SystemExit exception"
    #    end
    #    puts "after begin block"
    # 
    # <em>produces:</em>
    # 
    #    rescued a SystemExit exception
    #    after begin block
    # 
    # Just prior to termination, Ruby executes any <code>at_exit</code> functions
    # (see Kernel::at_exit) and runs any object finalizers (see
    # ObjectSpace::define_finalizer).
    # 
    #    at_exit { puts "at_exit function" }
    #    ObjectSpace.define_finalizer("string",  proc { puts "in finalizer" })
    #    exit
    # 
    # <em>produces:</em>
    # 
    #    at_exit function
    #    in finalizer
    def exit(integer=0)
        #This is a stub, used for indexing
    end
    # abort
    # Kernel::abort
    # Process::abort
    #  
    # Terminate execution immediately, effectively by calling
    # <code>Kernel.exit(1)</code>. If _msg_ is given, it is written
    # to STDERR prior to terminating.
    def abort(message='')
        #This is a stub, used for indexing
    end
    # at_exit { block } -> proc
    #  
    # Converts _block_ to a +Proc+ object (and therefore
    # binds it at the point of call) and registers it for execution when
    # the program exits. If multiple handlers are registered, they are
    # executed in reverse order of registration.
    # 
    #    def do_at_exit(str1)
    #      at_exit { print str1 }
    #    end
    #    at_exit { puts "cruel world" }
    #    do_at_exit("goodbye ")
    #    exit
    # 
    # <em>produces:</em>
    # 
    #    goodbye cruel world
    def at_exit()
        #This is a stub, used for indexing
    end
    # catch(symbol) {| | block }  > obj
    #  
    # +catch+ executes its block. If a +throw+ is
    # executed, Ruby searches up its stack for a +catch+ block
    # with a tag corresponding to the +throw+'s
    # _symbol_. If found, that block is terminated, and
    # +catch+ returns the value given to +throw+. If
    # +throw+ is not called, the block terminates normally, and
    # the value of +catch+ is the value of the last expression
    # evaluated. +catch+ expressions may be nested, and the
    # +throw+ call need not be in lexical scope.
    # 
    #    def routine(n)
    #      puts n
    #      throw :done if n <= 0
    #      routine(n-1)
    #    end
    # 
    #    catch(:done) { routine(3) }
    # 
    # <em>produces:</em>
    # 
    #    3
    #    2
    #    1
    #    0
    def catch(symbol)
        #This is a stub, used for indexing
    end
    # throw(symbol [, obj])
    #  
    # Transfers control to the end of the active +catch+ block
    # waiting for _symbol_. Raises +NameError+ if there
    # is no +catch+ block for the symbol. The optional second
    # parameter supplies a return value for the +catch+ block,
    # which otherwise defaults to +nil+. For examples, see
    # <code>Kernel::catch</code>.
    def throw(symbol, *obj)
        #This is a stub, used for indexing
    end
    # global_variables    => array
    #  
    # Returns an array of the names of global variables.
    # 
    #    global_variables.grep /std/   #=> ["$stderr", "$stdout", "$stdin"]
    def global_variables()
        #This is a stub, used for indexing
    end
    # local_variables    => array
    #  
    # Returns the names of the current local variables.
    # 
    #    fred = 1
    #    for i in 1..10
    #       # ...
    #    end
    #    local_variables   #=> ["fred", "i"]
    def local_variables()
        #This is a stub, used for indexing
    end
    # __method__         => symbol
    #  
    # Returns the name of the current method as a Symbol.
    # If called from inside of an aliased method it will return the original
    # nonaliased name.
    # If called outside of a method, it returns <code>nil</code>.
    # 
    #   def foo
    #     __method__
    #   end
    #   alias bar foo
    # 
    #   foo                # => :foo
    #   bar                # => :foo
    def __method__()
        #This is a stub, used for indexing
    end
    # trace_var(symbol, cmd )             => nil
    # trace_var(symbol) {|val| block }    => nil
    #  
    # Controls tracing of assignments to global variables. The parameter
    # +symbol_ identifies the variable (as either a string name or a
    # symbol identifier). _cmd_ (which may be a string or a
    # +Proc+ object) or block is executed whenever the variable
    # is assigned. The block or +Proc+ object receives the
    # variable's new value as a parameter. Also see
    # <code>Kernel::untrace_var</code>.
    # 
    #    trace_var :$_, proc {|v| puts "$_ is now '#{v}'" }
    #    $_ = "hello"
    #    $_ = ' there'
    # 
    # <em>produces:</em>
    # 
    #    $_ is now 'hello'
    #    $_ is now ' there'
    def trace_var(*several_variants)
        #This is a stub, used for indexing
    end
    # untrace_var(symbol [, cmd] )   => array or nil
    #  
    # Removes tracing for the specified command on the given global
    # variable and returns +nil+. If no command is specified,
    # removes all tracing for that variable and returns an array
    # containing the commands actually removed.
    def untrace_var(symbol, *cmd)
        #This is a stub, used for indexing
    end
    # set_trace_func(proc)    => proc
    # set_trace_func(nil)     => nil
    #  
    # Establishes _proc_ as the handler for tracing, or disables
    # tracing if the parameter is +nil+. _proc_ takes up
    # to six parameters: an event name, a filename, a line number, an
    # object id, a binding, and the name of a class. _proc_ is
    # invoked whenever an event occurs. Events are: <code>c-call</code>
    # (call a C-language routine), <code>c-return</code> (return from a
    # C-language routine), <code>call</code> (call a Ruby method),
    # <code>class</code> (start a class or module definition),
    # <code>end</code> (finish a class or module definition),
    # <code>line</code> (execute code on a new line), <code>raise</code>
    # (raise an exception), and <code>return</code> (return from a Ruby
    # method). Tracing is disabled within the context of _proc_.
    # 
    #     class Test
    #     def test
    #       a = 1
    #       b = 2
    #     end
    #     end
    # 
    #     set_trace_func proc { |event, file, line, id, binding, classname|
    #        printf "%8s %s:%-2d %10s %8s\n", event, file, line, id, classname
    #     }
    #     t = Test.new
    #     t.test
    # 
    #       line prog.rb:11               false
    #     c-call prog.rb:11        new    Class
    #     c-call prog.rb:11 initialize   Object
    #   c-return prog.rb:11 initialize   Object
    #   c-return prog.rb:11        new    Class
    #       line prog.rb:12               false
    #       call prog.rb:2        test     Test
    #       line prog.rb:3        test     Test
    #       line prog.rb:4        test     Test
    #     return prog.rb:4        test     Test
    def set_trace_func(*several_variants)
        #This is a stub, used for indexing
    end
    # load(filename, wrap=false)   => true
    #  
    # Loads and executes the Ruby
    # program in the file _filename_. If the filename does not
    # resolve to an absolute path, the file is searched for in the library
    # directories listed in <code>$:</code>. If the optional _wrap_
    # parameter is +true+, the loaded script will be executed
    # under an anonymous module, protecting the calling program's global
    # namespace. In no circumstance will any local variables in the loaded
    # file be propagated to the loading environment.
    def load(filename, wrap=false)
        #This is a stub, used for indexing
    end
    # require(string)    => true or false
    #  
    # Ruby tries to load the library named _string_, returning
    # +true+ if successful. If the filename does not resolve to
    # an absolute path, it will be searched for in the directories listed
    # in <code>$:</code>. If the file has the extension ``.rb'', it is
    # loaded as a source file; if the extension is ``.so'', ``.o'', or
    # ``.dll'', or whatever the default shared library extension is on
    # the current platform, Ruby loads the shared library as a Ruby
    # extension. Otherwise, Ruby tries adding ``.rb'', ``.so'', and so on
    # to the name. The name of the loaded feature is added to the array in
    # <code>$"</code>. A feature will not be loaded if it's name already
    # appears in <code>$"</code>. However, the file name is not converted
    # to an absolute path, so that ``<code>require 'a';require
    # './a'</code>'' will load <code>a.rb</code> twice.
    # 
    #    require "my-library.rb"
    #    require "db-driver"
    def require(string)
        #This is a stub, used for indexing
    end
    # autoload(module, filename)   => nil
    #  
    # Registers _filename_ to be loaded (using <code>Kernel::require</code>) 
    # the first time that _module_ (which may be a <code>String</code> or
    # a symbol) is accessed.
    # 
    #    autoload(:MyModule, "/usr/local/lib/modules/my_module.rb")
    def autoload(module1, filename)
        #This is a stub, used for indexing
    end
    # autoload(module, filename)   => nil
    #  
    # Registers _filename_ to be loaded (using <code>Kernel::require</code>)
    # the first time that _module_ (which may be a <code>String</code> or
    # a symbol) is accessed.
    # 
    #    autoload(:MyModule, "/usr/local/lib/modules/my_module.rb")
    def autoload?(p1)
        #This is a stub, used for indexing
    end
    # proc   { |...| block }  => a_proc
    # lambda { |...| block }  => a_proc
    #  
    # Equivalent to <code>Proc.new</code>, except the resulting Proc objects
    # check the number of parameters passed when called.
    def proc()
        #This is a stub, used for indexing
    end
    # proc   { |...| block }  => a_proc
    # lambda { |...| block }  => a_proc
    #  
    # Equivalent to <code>Proc.new</code>, except the resulting Proc objects
    # check the number of parameters passed when called.
    def lambda()
        #This is a stub, used for indexing
    end
    # binding -> a_binding
    #  
    # Returns a +Binding+ object, describing the variable and
    # method bindings at the point of call. This object can be used when
    # calling +eval+ to execute the evaluated command in this
    # environment. Also see the description of class +Binding+.
    # 
    #    def getBinding(param)
    #      return binding
    #    end
    #    b = getBinding("hello")
    #    eval("param", b)   #=> "hello"
    def binding()
        #This is a stub, used for indexing
    end
    # callcc {|cont| block }   =>  obj
    #  
    # Generates a <code>Continuation</code> object, which it passes to the
    # associated block. Performing a <em>cont</em><code>.call</code> will
    # cause the <code>callcc</code> to return (as will falling through the
    # end of the block). The value returned by the <code>callcc</code> is
    # the value of the block, or the value passed to
    # <em>cont</em><code>.call</code>. See class <code>Continuation</code> 
    # for more details. Also see <code>Kernel::throw</code> for
    # an alternative mechanism for unwinding a call stack.
    def callcc()
        #This is a stub, used for indexing
    end
    # test(int_cmd, file1 [, file2] ) => obj
    #  
    #  Uses the integer <i>aCmd</i> to perform various tests on
    #  <i>file1</i> (first table below) or on <i>file1</i> and
    #  <i>file2</i> (second table).
    # 
    #  File tests on a single file:
    # 
    #    Test   Returns   Meaning
    #     ?A  | Time    | Last access time for file1
    #     ?b  | boolean | True if file1 is a block device
    #     ?c  | boolean | True if file1 is a character device
    #     ?C  | Time    | Last change time for file1
    #     ?d  | boolean | True if file1 exists and is a directory
    #     ?e  | boolean | True if file1 exists
    #     ?f  | boolean | True if file1 exists and is a regular file
    #     ?g  | boolean | True if file1 has the \CF{setgid} bit
    #         |         | set (false under NT)
    #     ?G  | boolean | True if file1 exists and has a group
    #         |         | ownership equal to the caller's group
    #     ?k  | boolean | True if file1 exists and has the sticky bit set
    #     ?l  | boolean | True if file1 exists and is a symbolic link
    #     ?M  | Time    | Last modification time for file1
    #     ?o  | boolean | True if file1 exists and is owned by 
    #         |         | the caller's effective uid
    #     ?O  | boolean | True if file1 exists and is owned by
    #         |         | the caller's real uid
    #     ?p  | boolean | True if file1 exists and is a fifo
    #     ?r  | boolean | True if file1 is readable by the effective
    #         |         | uid/gid of the caller
    #     ?R  | boolean | True if file is readable by the real
    #         |         | uid/gid of the caller
    #     ?s  | int/nil | If file1 has nonzero size, return the size,
    #         |         | otherwise return nil
    #     ?S  | boolean | True if file1 exists and is a socket
    #     ?u  | boolean | True if file1 has the setuid bit set
    #     ?w  | boolean | True if file1 exists and is writable by
    #         |         | the effective uid/gid
    #     ?W  | boolean | True if file1 exists and is writable by
    #         |         | the real uid/gid
    #     ?x  | boolean | True if file1 exists and is executable by
    #         |         | the effective uid/gid
    #     ?X  | boolean | True if file1 exists and is executable by
    #         |         | the real uid/gid
    #     ?z  | boolean | True if file1 exists and has a zero length
    # 
    # Tests that take two files:
    # 
    #     ?-  | boolean | True if file1 and file2 are identical
    #     ?=  | boolean | True if the modification times of file1
    #         |         | and file2 are equal
    #     ?<  | boolean | True if the modification time of file1
    #         |         | is prior to that of file2
    #     ?>  | boolean | True if the modification time of file1
    #         |         | is after that of file2
    def test(int_cmd, file1, *file2)
        #This is a stub, used for indexing
    end
    # syscall(fixnum [, args...])   => integer
    #  
    # Calls the operating system function identified by _fixnum_,
    # passing in the arguments, which must be either +String+
    # objects, or +Integer+ objects that ultimately fit within
    # a native +long+. Up to nine parameters may be passed (14
    # on the Atari-ST). The function identified by _fixnum_ is system
    # dependent. On some Unix systems, the numbers may be obtained from a
    # header file called <code>syscall.h</code>.
    # 
    #    syscall 4, 1, "hello\n", 6   # '4' is write(2) on our box
    # 
    # <em>produces:</em>
    # 
    #    hello
    def syscall(fixnum, *args)
        #This is a stub, used for indexing
    end
    # open(path [, mode [, perm]] )                => io or nil
    # open(path [, mode [, perm]] ) {|io| block }  => obj
    #  
    # Creates an <code>IO</code> object connected to the given stream,
    # file, or subprocess.
    # 
    # If <i>path</i> does not start with a pipe character
    # (``<code>|</code>''), treat it as the name of a file to open using
    # the specified mode (defaulting to ``<code>r</code>''). (See the table
    # of valid modes on page 331.) If a file is being created, its initial
    # permissions may be set using the integer third parameter.
    # 
    # If a block is specified, it will be invoked with the
    # <code>File</code> object as a parameter, and the file will be
    # automatically closed when the block terminates. The call
    # returns the value of the block.
    # 
    # If <i>path</i> starts with a pipe character, a subprocess is
    # created, connected to the caller by a pair of pipes. The returned
    # <code>IO</code> object may be used to write to the standard input
    # and read from the standard output of this subprocess. If the command
    # following the ``<code>|</code>'' is a single minus sign, Ruby forks,
    # and this subprocess is connected to the parent. In the subprocess,
    # the <code>open</code> call returns <code>nil</code>. If the command
    # is not ``<code>-</code>'', the subprocess runs the command. If a
    # block is associated with an <code>open("|-")</code> call, that block
    # will be run twice---once in the parent and once in the child. The
    # block parameter will be an <code>IO</code> object in the parent and
    # <code>nil</code> in the child. The parent's <code>IO</code> object
    # will be connected to the child's <code>$stdin</code> and
    # <code>$stdout</code>. The subprocess will be terminated at the end
    # of the block.
    # 
    #    open("testfile") do |f|
    #      print f.gets
    #    end
    # 
    # <em>produces:</em>
    # 
    #    This is line one
    # 
    # Open a subprocess and read its output:
    # 
    #    cmd = open("|date")
    #    print cmd.gets
    #    cmd.close
    # 
    # <em>produces:</em>
    # 
    #    Wed Apr  9 08:56:31 CDT 2003
    # 
    # Open a subprocess running the same Ruby program:
    # 
    #    f = open("|-", "w+")
    #    if f == nil
    #      puts "in Child"
    #      exit
    #    else
    #      puts "Got: #{f.gets}"
    #    end
    # 
    # <em>produces:</em>
    # 
    #    Got: in Child
    # 
    # Open a subprocess using a block to receive the I/O object:
    # 
    #    open("|-") do |f|
    #      if f == nil
    #        puts "in Child"
    #      else
    #        puts "Got: #{f.gets}"
    #      end
    #    end
    # 
    # <em>produces:</em>
    # 
    #    Got: in Child
    def open(*several_variants)
        #This is a stub, used for indexing
    end
    # printf(io, string [, obj ... ] )    => nil
    # printf(string [, obj ... ] )        => nil
    #  
    # Equivalent to:
    #    io.write(sprintf(string, obj, ...)
    # or
    #    $stdout.write(sprintf(string, obj, ...)
    def printf(*several_variants)
        #This is a stub, used for indexing
    end
    # print(obj, ...)    => nil
    #  
    # Prints each object in turn to <code>$stdout</code>. If the output
    # field separator (<code>$,</code>) is not +nil+, its
    # contents will appear between each field. If the output record
    # separator (<code>$\\</code>) is not +nil+, it will be
    # appended to the output. If no arguments are given, prints
    # <code>$_</code>. Objects that aren't strings will be converted by
    # calling their <code>to_s</code> method.
    # 
    #    print "cat", [1,2,3], 99, "\n"
    #    $, = ", "
    #    $\ = "\n"
    #    print "cat", [1,2,3], 99
    # 
    # <em>produces:</em>
    # 
    #    cat12399
    #    cat, 1, 2, 3, 99
    def print(obj, *smth)
        #This is a stub, used for indexing
    end
    # putc(int)   => int
    #  
    # Equivalent to:
    # 
    #   $stdout.putc(int)
    def putc(int)
        #This is a stub, used for indexing
    end
    # puts(obj, ...)    => nil
    #  
    # Equivalent to 
    # 
    #     $stdout.puts(obj, ...)
    def puts(obj='', *arg)
        #This is a stub, used for indexing
    end
    # gets(separator=$/)    => string or nil
    #  
    # Returns (and assigns to <code>$_</code>) the next line from the list
    # of files in +ARGV+ (or <code>$*</code>), or from standard
    # input if no files are present on the command line. Returns
    # +nil+ at end of file. The optional argument specifies the
    # record separator. The separator is included with the contents of
    # each record. A separator of +nil+ reads the entire
    # contents, and a zero-length separator reads the input one paragraph
    # at a time, where paragraphs are divided by two consecutive newlines.
    # If multiple filenames are present in +ARGV+,
    # +gets(nil)+ will read the contents one file at a time.
    # 
    #    ARGV << "testfile"
    #    print while gets
    # 
    # <em>produces:</em>
    # 
    #    This is line one
    #    This is line two
    #    This is line three
    #    And so on...
    # 
    # The style of programming using <code>$_</code> as an implicit
    # parameter is gradually losing favor in the Ruby community.
    def gets(separator=$/)
        #This is a stub, used for indexing
    end
    # readline(separator=$/)   => string
    #  
    # Equivalent to <code>Kernel::gets</code>, except
    # +readline+ raises +EOFError+ at end of file.
    def readline(separator=$/)
        #This is a stub, used for indexing
    end
    # obsolete
    def getc()
        #This is a stub, used for indexing
    end
    # IO.select(read_array 
    # [, write_array 
    # [, error_array 
    # [, timeout]]] ) =>  array  or  nil
    #  
    # See <code>Kernel#select</code>.
    def select(read_array, *write_error_arrays_timeout)
        #This is a stub, used for indexing
    end
    # readlines(separator=$/)    => array
    #  
    # Returns an array containing the lines returned by calling
    # <code>Kernel.gets(<i>separator</i>)</code> until the end of file.
    def readlines(separator=$/)
        #This is a stub, used for indexing
    end
    # `cmd`    => string
    #  
    # Returns the standard output of running _cmd_ in a subshell.
    # The built-in syntax <code>%x{...}</code> uses
    # this method. Sets <code>$?</code> to the process status.
    # 
    #    `date`                   #=> "Wed Apr  9 08:56:30 CDT 2003\n"
    #    `ls testdir`.split[1]    #=> "main.rb"
    #    `echo oops && exit 99`   #=> "oops\n"
    #    $?.exitstatus            #=> 99
    def ` cmd
        #This is a stub, used for indexing
    end
    # p(obj, ...)    => nil
    #  
    # For each object, directly writes
    # _obj_.+inspect+ followed by the current output
    # record separator to the program's standard output.
    # 
    #    S = Struct.new(:name, :state)
    #    s = S['dave', 'TX']
    #    p s
    # 
    # <em>produces:</em>
    # 
    #    #<S name="dave", state="TX">
    def p(obj, *smth)
        #This is a stub, used for indexing
    end
    # format(format_string [, arguments...] )   => string
    # sprintf(format_string [, arguments...] )  => string
    #  
    # Returns the string resulting from applying <i>format_string</i> to
    # any additional arguments. Within the format string, any characters
    # other than format sequences are copied to the result. A format
    # sequence consists of a percent sign, followed by optional flags,
    # width, and precision indicators, then terminated with a field type
    # character. The field type controls how the corresponding
    # <code>sprintf</code> argument is to be interpreted, while the flags
    # modify that interpretation. The field type characters are listed
    # in the table at the end of this section. The flag characters are:
    # 
    #   Flag     | Applies to   | Meaning
    #   ---------+--------------+-----------------------------------------
    #   space    | bdeEfgGiouxX | Leave a space at the start of 
    #            |              | positive numbers.
    #   ---------+--------------+-----------------------------------------
    #   (digit)$ | all          | Specifies the absolute argument number
    #            |              | for this field. Absolute and relative
    #            |              | argument numbers cannot be mixed in a
    #            |              | sprintf string.
    #   ---------+--------------+-----------------------------------------
    #    #       | beEfgGoxX    | Use an alternative format. For the
    #            |              | conversions `o', `x', `X', and `b', 
    #            |              | prefix the result with ``0'', ``0x'', ``0X'',
    #            |              |  and ``0b'', respectively. For `e',
    #            |              | `E', `f', `g', and 'G', force a decimal
    #            |              | point to be added, even if no digits follow.
    #            |              | For `g' and 'G', do not remove trailing zeros.
    #   ---------+--------------+-----------------------------------------
    #   +        | bdeEfgGiouxX | Add a leading plus sign to positive numbers.
    #   ---------+--------------+-----------------------------------------
    #   -        | all          | Left-justify the result of this conversion.
    #   ---------+--------------+-----------------------------------------
    #   0 (zero) | bdeEfgGiouxX | Pad with zeros, not spaces.
    #   ---------+--------------+-----------------------------------------
    #   *        | all          | Use the next argument as the field width. 
    #            |              | If negative, left-justify the result. If the
    #            |              | asterisk is followed by a number and a dollar 
    #            |              | sign, use the indicated argument as the width.
    # 
    # The field width is an optional integer, followed optionally by a
    # period and a precision. The width specifies the minimum number of
    # characters that will be written to the result for this field. For
    # numeric fields, the precision controls the number of decimal places
    # displayed. For string fields, the precision determines the maximum
    # number of characters to be copied from the string. (Thus, the format
    # sequence <code>%10.10s</code> will always contribute exactly ten
    # characters to the result.)
    # 
    # The field types are:
    # 
    #     Field |  Conversion
    #     ------+--------------------------------------------------------------
    #       b   | Convert argument as a binary number.
    #       c   | Argument is the numeric code for a single character.
    #       d   | Convert argument as a decimal number.
    #       E   | Equivalent to `e', but uses an uppercase E to indicate
    #           | the exponent.
    #       e   | Convert floating point argument into exponential notation 
    #           | with one digit before the decimal point. The precision
    #           | determines the number of fractional digits (defaulting to six).
    #       f   | Convert floating point argument as [-]ddd.ddd, 
    #           |  where the precision determines the number of digits after
    #           | the decimal point.
    #       G   | Equivalent to `g', but use an uppercase `E' in exponent form.
    #       g   | Convert a floating point number using exponential form
    #           | if the exponent is less than -4 or greater than or
    #           | equal to the precision, or in d.dddd form otherwise.
    #       i   | Identical to `d'.
    #       o   | Convert argument as an octal number.
    #       p   | The valuing of argument.inspect.
    #       s   | Argument is a string to be substituted. If the format
    #           | sequence contains a precision, at most that many characters
    #           | will be copied.
    #       u   | Treat argument as an unsigned decimal number. Negative integers
    #           | are displayed as a 32 bit two's complement plus one for the
    #           | underlying architecture; that is, 2 ** 32 + n.  However, since
    #           | Ruby has no inherent limit on bits used to represent the
    #           | integer, this value is preceded by two dots (..) in order to
    #           | indicate a infinite number of leading sign bits.
    #       X   | Convert argument as a hexadecimal number using uppercase
    #           | letters. Negative numbers will be displayed with two
    #           | leading periods (representing an infinite string of
    #           | leading 'FF's.
    #       x   | Convert argument as a hexadecimal number.
    #           | Negative numbers will be displayed with two
    #           | leading periods (representing an infinite string of
    #           | leading 'ff's.
    # 
    # Examples:
    # 
    #    sprintf("%d %04x", 123, 123)               #=> "123 007b"
    #    sprintf("%08b '%4s'", 123, 123)            #=> "01111011 ' 123'"
    #    sprintf("%1$*2$s %2$d %1$s", "hello", 8)   #=> "   hello 8 hello"
    #    sprintf("%1$*2$s %2$d", "hello", -8)       #=> "hello    -8"
    #    sprintf("%+g:% g:%-g", 1.23, 1.23, 1.23)   #=> "+1.23: 1.23:1.23"
    #    sprintf("%u", -123)                        #=> "..4294967173"
    def sprintf(format_string, *args)
        #This is a stub, used for indexing
    end
    # format(format_string [, arguments...] )   => string
    # sprintf(format_string [, arguments...] )  => string
    #  
    # Returns the string resulting from applying <i>format_string</i> to
    # any additional arguments. Within the format string, any characters
    # other than format sequences are copied to the result. A format
    # sequence consists of a percent sign, followed by optional flags,
    # width, and precision indicators, then terminated with a field type
    # character. The field type controls how the corresponding
    # <code>sprintf</code> argument is to be interpreted, while the flags
    # modify that interpretation. The field type characters are listed
    # in the table at the end of this section. The flag characters are:
    # 
    #   Flag     | Applies to   | Meaning
    #   ---------+--------------+-----------------------------------------
    #   space    | bdeEfgGiouxX | Leave a space at the start of 
    #            |              | positive numbers.
    #   ---------+--------------+-----------------------------------------
    #   (digit)$ | all          | Specifies the absolute argument number
    #            |              | for this field. Absolute and relative
    #            |              | argument numbers cannot be mixed in a
    #            |              | sprintf string.
    #   ---------+--------------+-----------------------------------------
    #    #       | beEfgGoxX    | Use an alternative format. For the
    #            |              | conversions `o', `x', `X', and `b', 
    #            |              | prefix the result with ``0'', ``0x'', ``0X'',
    #            |              |  and ``0b'', respectively. For `e',
    #            |              | `E', `f', `g', and 'G', force a decimal
    #            |              | point to be added, even if no digits follow.
    #            |              | For `g' and 'G', do not remove trailing zeros.
    #   ---------+--------------+-----------------------------------------
    #   +        | bdeEfgGiouxX | Add a leading plus sign to positive numbers.
    #   ---------+--------------+-----------------------------------------
    #   -        | all          | Left-justify the result of this conversion.
    #   ---------+--------------+-----------------------------------------
    #   0 (zero) | bdeEfgGiouxX | Pad with zeros, not spaces.
    #   ---------+--------------+-----------------------------------------
    #   *        | all          | Use the next argument as the field width. 
    #            |              | If negative, left-justify the result. If the
    #            |              | asterisk is followed by a number and a dollar 
    #            |              | sign, use the indicated argument as the width.
    # 
    # The field width is an optional integer, followed optionally by a
    # period and a precision. The width specifies the minimum number of
    # characters that will be written to the result for this field. For
    # numeric fields, the precision controls the number of decimal places
    # displayed. For string fields, the precision determines the maximum
    # number of characters to be copied from the string. (Thus, the format
    # sequence <code>%10.10s</code> will always contribute exactly ten
    # characters to the result.)
    # 
    # The field types are:
    # 
    #     Field |  Conversion
    #     ------+--------------------------------------------------------------
    #       b   | Convert argument as a binary number.
    #       c   | Argument is the numeric code for a single character.
    #       d   | Convert argument as a decimal number.
    #       E   | Equivalent to `e', but uses an uppercase E to indicate
    #           | the exponent.
    #       e   | Convert floating point argument into exponential notation 
    #           | with one digit before the decimal point. The precision
    #           | determines the number of fractional digits (defaulting to six).
    #       f   | Convert floating point argument as [-]ddd.ddd, 
    #           |  where the precision determines the number of digits after
    #           | the decimal point.
    #       G   | Equivalent to `g', but use an uppercase `E' in exponent form.
    #       g   | Convert a floating point number using exponential form
    #           | if the exponent is less than -4 or greater than or
    #           | equal to the precision, or in d.dddd form otherwise.
    #       i   | Identical to `d'.
    #       o   | Convert argument as an octal number.
    #       p   | The valuing of argument.inspect.
    #       s   | Argument is a string to be substituted. If the format
    #           | sequence contains a precision, at most that many characters
    #           | will be copied.
    #       u   | Treat argument as an unsigned decimal number. Negative integers
    #           | are displayed as a 32 bit two's complement plus one for the
    #           | underlying architecture; that is, 2 ** 32 + n.  However, since
    #           | Ruby has no inherent limit on bits used to represent the
    #           | integer, this value is preceded by two dots (..) in order to
    #           | indicate a infinite number of leading sign bits.
    #       X   | Convert argument as a hexadecimal number using uppercase
    #           | letters. Negative numbers will be displayed with two
    #           | leading periods (representing an infinite string of
    #           | leading 'FF's.
    #       x   | Convert argument as a hexadecimal number.
    #           | Negative numbers will be displayed with two
    #           | leading periods (representing an infinite string of
    #           | leading 'ff's.
    # 
    # Examples:
    # 
    #    sprintf("%d %04x", 123, 123)               #=> "123 007b"
    #    sprintf("%08b '%4s'", 123, 123)            #=> "01111011 ' 123'"
    #    sprintf("%1$*2$s %2$d %1$s", "hello", 8)   #=> "   hello 8 hello"
    #    sprintf("%1$*2$s %2$d", "hello", -8)       #=> "hello    -8"
    #    sprintf("%+g:% g:%-g", 1.23, 1.23, 1.23)   #=> "+1.23: 1.23:1.23"
    #    sprintf("%u", -123)                        #=> "..4294967173"
    def format(format_string, *args)
        #This is a stub, used for indexing
    end
    # Integer(arg)    => integer
    #  
    # Converts <i>arg</i> to a <code>Fixnum</code> or <code>Bignum</code>.
    # Numeric types are converted directly (with floating point numbers
    # being truncated). If <i>arg</i> is a <code>String</code>, leading
    # radix indicators (<code>0</code>, <code>0b</code>, and
    # <code>0x</code>) are honored. Others are converted using
    # <code>to_int</code> and <code>to_i</code>. This behavior is
    # different from that of <code>String#to_i</code>.
    # 
    #    Integer(123.999)    #=> 123
    #    Integer("0x1a")     #=> 26
    #    Integer(Time.new)   #=> 1049896590
    def Integer(arg)
        #This is a stub, used for indexing
    end
    # Float(arg)    => float
    #  
    # Returns <i>arg</i> converted to a float. Numeric types are converted
    # directly, the rest are converted using <i>arg</i>.to_f. As of Ruby
    # 1.8, converting <code>nil</code> generates a <code>TypeError</code>.
    # 
    #    Float(1)           #=> 1.0
    #    Float("123.456")   #=> 123.456
    def Float(arg)
        #This is a stub, used for indexing
    end
    # String(arg)   => string
    #  
    # Converts <i>arg</i> to a <code>String</code> by calling its
    # <code>to_s</code> method.
    # 
    #    String(self)        #=> "main"
    #    String(self.class   #=> "Object"
    #    String(123456)      #=> "123456"
    def String(arg)
        #This is a stub, used for indexing
    end
    # Array(arg)    => array
    #  
    # Returns <i>arg</i> as an <code>Array</code>. First tries to call
    # <i>arg</i><code>.to_ary</code>, then <i>arg</i><code>.to_a</code>.
    # If both fail, creates a single element array containing <i>arg</i>
    # (unless <i>arg</i> is <code>nil</code>).
    # 
    #    Array(1..5)   #=> [1, 2, 3, 4, 5]
    def Array(arg)
        #This is a stub, used for indexing
    end
    # exec(command [, arg, ...])
    #  
    # Replaces the current process by running the given external _command_.
    # If +exec+ is given a single argument, that argument is
    # taken as a line that is subject to shell expansion before being
    # executed. If multiple arguments are given, the second and subsequent
    # arguments are passed as parameters to _command_ with no shell
    # expansion. If the first argument is a two-element array, the first
    # element is the command to be executed, and the second argument is
    # used as the <code>argv[0]</code> value, which may show up in process
    # listings. In MSDOS environments, the command is executed in a
    # subshell; otherwise, one of the <code>exec(2)</code> system calls is
    # used, so the running command may inherit some of the environment of
    # the original program (including open file descriptors).
    # 
    #    exec "echo *"       # echoes list of files in current directory
    #    # never get here
    # 
    #    exec "echo", "*"    # echoes an asterisk
    #    # never get here
    def exec(command, *arg)
        #This is a stub, used for indexing
    end
    # Kernel.fork  [{ block }]   => fixnum or nil
    # Process.fork [{ block }]   => fixnum or nil
    #  
    # Creates a subprocess. If a block is specified, that block is run
    # in the subprocess, and the subprocess terminates with a status of
    # zero. Otherwise, the +fork+ call returns twice, once in
    # the parent, returning the process ID of the child, and once in
    # the child, returning _nil_. The child process can exit using
    # <code>Kernel.exit!</code> to avoid running any
    # <code>at_exit</code> functions. The parent process should
    # use <code>Process.wait</code> to collect the termination statuses
    # of its children or use <code>Process.detach</code> to register
    # disinterest in their status; otherwise, the operating system
    # may accumulate zombie processes.
    # 
    # The thread calling fork is the only thread in the created child process.
    # fork doesn't copy other threads.
    def fork()
        #This is a stub, used for indexing
    end
    # Process.exit!(fixnum=-1)
    #  
    # Exits the process immediately. No exit handlers are
    # run. <em>fixnum</em> is returned to the underlying system as the
    # exit status.
    # 
    #    Process.exit!(0)
    def exit!(fixnum=-1)
        #This is a stub, used for indexing
    end
    # system(cmd [, arg, ...])    => true or false
    #  
    # Executes _cmd_ in a subshell, returning +true+ if
    # the command was found and ran successfully, +false+
    # otherwise. An error status is available in <code>$?</code>. The
    # arguments are processed in the same way as for
    # <code>Kernel::exec</code>.
    # 
    #    system("echo *")
    #    system("echo", "*")
    # 
    # <em>produces:</em>
    # 
    #    config.h main.rb
    #    *
    def system(cmd, *arg)
        #This is a stub, used for indexing
    end
    # sleep([duration])    => fixnum
    #  
    # Suspends the current thread for _duration_ seconds (which may be any number,
    # including a +Float+ with fractional seconds). Returns the actual number of
    # seconds slept (rounded), which may be less than that asked for if another
    # thread calls <code>Thread#run</code>. Zero arguments causes +sleep+ to sleep
    # forever.
    # 
    #    Time.new    #=> Wed Apr 09 08:56:32 CDT 2003
    #    sleep 1.2   #=> 1
    #    Time.new    #=> Wed Apr 09 08:56:33 CDT 2003
    #    sleep 1.9   #=> 2
    #    Time.new    #=> Wed Apr 09 08:56:35 CDT 2003
    def sleep(*duration)
        #This is a stub, used for indexing
    end
    # srand(number=0)    => old_seed
    #  
    # Seeds the pseudorandom number generator to the value of
    # <i>number</i>.<code>to_i.abs</code>. If <i>number</i> is omitted,
    # seeds the generator using a combination of the time, the
    # process id, and a sequence number. (This is also the behavior if
    # <code>Kernel::rand</code> is called without previously calling
    # <code>srand</code>, but without the sequence.) By setting the seed
    # to a known value, scripts can be made deterministic during testing.
    # The previous seed value is returned. Also see <code>Kernel::rand</code>.
    def srand(number=0)
        #This is a stub, used for indexing
    end
    # rand(max=0)    => number
    #  
    # Converts <i>max</i> to an integer using max1 =
    # max<code>.to_i.abs</code>. If the result is zero, returns a
    # pseudorandom floating point number greater than or equal to 0.0 and
    # less than 1.0. Otherwise, returns a pseudorandom integer greater
    # than or equal to zero and less than max1. <code>Kernel::srand</code>
    # may be used to ensure repeatable sequences of random numbers between
    # different runs of the program. Ruby currently uses a modified
    # Mersenne Twister with a period of 2**19937-1.
    # 
    #    srand 1234                 #=> 0
    #    [ rand,  rand ]            #=> [0.191519450163469, 0.49766366626136]
    #    [ rand(10), rand(1000) ]   #=> [6, 817]
    #    srand 1234                 #=> 1234
    #    [ rand,  rand ]            #=> [0.191519450163469, 0.49766366626136]
    def rand(max=0)
        #This is a stub, used for indexing
    end
    # Signal.trap( signal, proc ) => obj
    # Signal.trap( signal ) {| | block } => obj
    #  
    # Specifies the handling of signals. The first parameter is a signal
    # name (a string such as ``SIGALRM'', ``SIGUSR1'', and so on) or a
    # signal number. The characters ``SIG'' may be omitted from the
    # signal name. The command or block specifies code to be run when the
    # signal is raised. If the command is the string ``IGNORE'' or
    # ``SIG_IGN'', the signal will be ignored. If the command is
    # ``DEFAULT'' or ``SIG_DFL'', the operating system's default handler
    # will be invoked. If the command is ``EXIT'', the script will be
    # terminated by the signal. Otherwise, the given command or block
    # will be run.
    # The special signal name ``EXIT'' or signal number zero will be
    # invoked just prior to program termination.
    # trap returns the previous handler for the given signal.
    # 
    #     Signal.trap(0, proc { puts "Terminating: #{$$}" })
    #     Signal.trap("CLD")  { puts "Child died" }
    #     fork && Process.wait
    # 
    # produces:
    #     Terminating: 27461
    #     Child died
    #     Terminating: 27460
    def trap(*several_variants)
        #This is a stub, used for indexing
    end
    # sub(pattern, replacement)   => $_
    # sub(pattern) { block }      => $_
    #  
    # Equivalent to <code>$_.sub(<i>args</i>)</code>, except that
    # <code>$_</code> will be updated if substitution occurs.
    def sub(*several_variants)
        #This is a stub, used for indexing
    end
    # gsub(pattern, replacement)    => string
    # gsub(pattern) {|...| block }  => string
    #  
    # Equivalent to <code>$_.gsub...</code>, except that <code>$_</code>
    # receives the modified result.
    # 
    #    $_ = "quick brown fox"
    #    gsub /[aeiou]/, '*'   #=> "q**ck br*wn f*x"
    #    $_                    #=> "q**ck br*wn f*x"
    def gsub(*several_variants)
        #This is a stub, used for indexing
    end
    # sub!(pattern, replacement)    => $_ or nil
    # sub!(pattern) {|...| block }  => $_ or nil
    #  
    # Equivalent to <code>$_.sub!(<i>args</i>)</code>.
    def sub!(*several_variants)
        #This is a stub, used for indexing
    end
    # gsub!(pattern, replacement)    => string or nil
    # gsub!(pattern) {|...| block }  => string or nil
    #  
    # Equivalent to <code>Kernel::gsub</code>, except <code>nil</code> is
    # returned if <code>$_</code> is not modified.
    # 
    #    $_ = "quick brown fox"
    #    gsub! /cat/, '*'   #=> nil
    #    $_                 #=> "quick brown fox"
    def gsub!(*several_variants)
        #This is a stub, used for indexing
    end
    # chop   => string
    #  
    # Equivalent to <code>($_.dup).chop!</code>, except <code>nil</code>
    # is never returned. See <code>String#chop!</code>.
    # 
    #    a  =  "now\r\n"
    #    $_ = a
    #    chop   #=> "now"
    #    $_     #=> "now"
    #    chop   #=> "no"
    #    chop   #=> "n"
    #    chop   #=> ""
    #    chop   #=> ""
    #    a      #=> "now\r\n"
    def chop()
        #This is a stub, used for indexing
    end
    # chop!    => $_ or nil
    #  
    # Equivalent to <code>$_.chop!</code>.
    # 
    #    a  = "now\r\n"
    #    $_ = a
    #    chop!   #=> "now"
    #    chop!   #=> "no"
    #    chop!   #=> "n"
    #    chop!   #=> ""
    #    chop!   #=> nil
    #    $_      #=> ""
    #    a       #=> ""
    def chop!()
        #This is a stub, used for indexing
    end
    # chomp            => $_
    # chomp(string)    => $_
    #  
    # Equivalent to <code>$_ = $_.chomp(<em>string</em>)</code>. See
    # <code>String#chomp</code>.
    # 
    #    $_ = "now\n"
    #    chomp         #=> "now"
    #    $_            #=> "now"
    #    chomp "ow"    #=> "n"
    #    $_            #=> "n"
    #    chomp "xxx"   #=> "n"
    #    $_            #=> "n"
    def chomp(*several_variants)
        #This is a stub, used for indexing
    end
    # chomp!             => $_ or nil
    # chomp!(string)     => $_ or nil
    #  
    # Equivalent to <code>$_.chomp!(<em>string</em>)</code>. See
    # <code>String#chomp!</code>
    # 
    #    $_ = "now\n"
    #    chomp!       #=> "now"
    #    $_           #=> "now"
    #    chomp! "x"   #=> nil
    #    $_           #=> "now"
    def chomp!(*several_variants)
        #This is a stub, used for indexing
    end
    # split([pattern [, limit]])    => array
    #  
    # Equivalent to <code>$_.split(<i>pattern</i>, <i>limit</i>)</code>.
    # See <code>String#split</code>.
    def split*pattern_limit
        #This is a stub, used for indexing
    end
    # scan(pattern)                   => array
    # scan(pattern) {|///| block }    => $_
    #  
    # Equivalent to calling <code>$_.scan</code>. See
    # <code>String#scan</code>.
    def scan(*several_variants)
        #This is a stub, used for indexing
    end
end
