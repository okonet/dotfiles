=begin
 This is a machine generated stub using stdlib-doc for <b>module Kernel</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

module Kernel
    # Complex(x[, y])  ->  numeric
    #  
    # Returns x+i*y;
    def Complex(*args)
        #This is a stub, used for indexing
    end
    # callcc {|cont| block }   ->  obj
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
    # warn(msg)   -> nil
    #  
    # Display the given message (followed by a newline) on STDERR unless
    # warnings are disabled (for example with the <code>-W0</code> flag).
    def warn(msg)
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
    # global_variables    -> array
    #  
    # Returns an array of the names of global variables.
    # 
    #    global_variables.grep /std/   #=> [:$stdin, :$stdout, :$stderr]
    def global_variables()
        #This is a stub, used for indexing
    end
    # __method__         -> symbol
    # __callee__         -> symbol
    #  
    # Returns the name of the current method as a Symbol.
    # If called outside of a method, it returns <code>nil</code>.
    def __method__()
        #This is a stub, used for indexing
    end
    # __method__         -> symbol
    # __callee__         -> symbol
    #  
    # Returns the name of the current method as a Symbol.
    # If called outside of a method, it returns <code>nil</code>.
    def __callee__()
        #This is a stub, used for indexing
    end
    # trace_var(symbol, cmd )             -> nil
    # trace_var(symbol) {|val| block }    -> nil
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
    # untrace_var(symbol [, cmd] )   -> array or nil
    #  
    # Removes tracing for the specified command on the given global
    # variable and returns +nil+. If no command is specified,
    # removes all tracing for that variable and returns an array
    # containing the commands actually removed.
    def untrace_var(symbol, *cmd)
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
    # test(int_cmd, file1 [, file2] ) -> obj
    #  
    #  Uses the integer <i>aCmd</i> to perform various tests on
    #  <i>file1</i> (first table below) or on <i>file1</i> and
    #  <i>file2</i> (second table).
    # 
    #  File tests on a single file:
    # 
    #    Test   Returns   Meaning
    #    "A"  | Time    | Last access time for file1
    #    "b"  | boolean | True if file1 is a block device
    #    "c"  | boolean | True if file1 is a character device
    #    "C"  | Time    | Last change time for file1
    #    "d"  | boolean | True if file1 exists and is a directory
    #    "e"  | boolean | True if file1 exists
    #    "f"  | boolean | True if file1 exists and is a regular file
    #    "g"  | boolean | True if file1 has the \CF{setgid} bit
    #         |         | set (false under NT)
    #    "G"  | boolean | True if file1 exists and has a group
    #         |         | ownership equal to the caller's group
    #    "k"  | boolean | True if file1 exists and has the sticky bit set
    #    "l"  | boolean | True if file1 exists and is a symbolic link
    #    "M"  | Time    | Last modification time for file1
    #    "o"  | boolean | True if file1 exists and is owned by
    #         |         | the caller's effective uid
    #    "O"  | boolean | True if file1 exists and is owned by
    #         |         | the caller's real uid
    #    "p"  | boolean | True if file1 exists and is a fifo
    #    "r"  | boolean | True if file1 is readable by the effective
    #         |         | uid/gid of the caller
    #    "R"  | boolean | True if file is readable by the real
    #         |         | uid/gid of the caller
    #    "s"  | int/nil | If file1 has nonzero size, return the size,
    #         |         | otherwise return nil
    #    "S"  | boolean | True if file1 exists and is a socket
    #    "u"  | boolean | True if file1 has the setuid bit set
    #    "w"  | boolean | True if file1 exists and is writable by
    #         |         | the effective uid/gid
    #    "W"  | boolean | True if file1 exists and is writable by
    #         |         | the real uid/gid
    #    "x"  | boolean | True if file1 exists and is executable by
    #         |         | the effective uid/gid
    #    "X"  | boolean | True if file1 exists and is executable by
    #         |         | the real uid/gid
    #    "z"  | boolean | True if file1 exists and has a zero length
    # 
    # Tests that take two files:
    # 
    #    "-"  | boolean | True if file1 and file2 are identical
    #    "="  | boolean | True if the modification times of file1
    #         |         | and file2 are equal
    #    "<"  | boolean | True if the modification time of file1
    #         |         | is prior to that of file2
    #    ">"  | boolean | True if the modification time of file1
    #         |         | is after that of file2
    def test(int_cmd, file1, *file2)
        #This is a stub, used for indexing
    end
    # syscall(num [, args...])   -> integer
    #  
    #  Calls the operating system function identified by _num_ and
    #  returns the result of the function or raises SystemCallError if
    #  it failed.
    # 
    #  Arguments for the function can follow _num_. They must be either
    #  +String+ objects or +Integer+ objects. A +String+ object is passed
    #  as a pointer to the byte sequence. An +Integer+ object is passed
    #  as an integer whose bit size is same as a pointer.
    #  Up to nine parameters may be passed (14 on the Atari-ST). 
    # 
    #  The function identified by _num_ is system
    #  dependent. On some Unix systems, the numbers may be obtained from a
    #  header file called <code>syscall.h</code>.
    # 
    #     syscall 4, 1, "hello\n", 6   # '4' is write(2) on our box
    # 
    #  <em>produces:</em>
    # 
    #     hello
    # 
    #  Calling +syscall+ on a platform which does not have any way to
    #  an arbitrary system function just fails with NotImplementedError.
    # 
    # Note::
    #   +syscall+ is essentially unsafe and unportable. Feel free to shoot your foot.
    #   DL (Fiddle) library is preferred for safer and a bit more portable programming.
    def syscall(*args)
        #This is a stub, used for indexing
    end
    # open(path [, mode_enc [, perm]] [, opt] )                -> io or nil
    # open(path [, mode_enc [, perm]] [, opt] ) {|io| block }  -> obj
    #  
    # Creates an <code>IO</code> object connected to the given stream,
    # file, or subprocess.
    # 
    # If <i>path</i> does not start with a pipe character
    # (``<code>|</code>''), treat it as the name of a file to open using
    # the specified mode (defaulting to ``<code>r</code>'').
    # 
    # The mode_enc is
    # either a string or an integer.  If it is an integer, it must be
    # bitwise-or of open(2) flags, such as File::RDWR or File::EXCL.
    # If it is a string, it is either "mode", "mode:ext_enc", or
    # "mode:ext_enc:int_enc".
    # The mode is one of the following:
    # 
    #  r: read (default)
    #  w: write
    #  a: append
    # 
    # The mode can be followed by "b" (means binary-mode), or "+"
    # (means both reading and writing allowed) or both.
    # If ext_enc (external encoding) is specified,
    # read string will be tagged by the encoding in reading,
    # and output string will be converted
    # to the specified encoding in writing.
    # If ext_enc starts with 'BOM|', check whether the input has a BOM. If
    # there is a BOM, strip it and set external encoding as
    # what the BOM tells. If there is no BOM, use ext_enc without 'BOM|'.
    # If two encoding names,
    # ext_enc and int_enc (external encoding and internal encoding),
    # are specified, the read string is converted from ext_enc
    # to int_enc then tagged with the int_enc in read mode,
    # and in write mode, the output string will be
    # converted from int_enc to ext_enc before writing.
    # 
    # If a file is being created, its initial permissions may be
    # set using the integer third parameter.
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
    # printf(io, string [, obj ... ] )    -> nil
    # printf(string [, obj ... ] )        -> nil
    #  
    # Equivalent to:
    #    io.write(sprintf(string, obj, ...)
    # or
    #    $stdout.write(sprintf(string, obj, ...)
    def printf(*several_variants)
        #This is a stub, used for indexing
    end
    # print(obj, ...)    -> nil
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
    # putc(int)   -> int
    #  
    #  Equivalent to:
    # 
    #    $stdout.putc(int)
    # 
    # Refer to the documentation for IO#putc for important information regarding
    # multi-byte characters.
    def putc(int)
        #This is a stub, used for indexing
    end
    # puts(obj, ...)    -> nil
    #  
    # Equivalent to
    # 
    #     $stdout.puts(obj, ...)
    def puts(obj='', *arg)
        #This is a stub, used for indexing
    end
    # gets(sep=$/)    -> string or nil
    # gets(limit)     -> string or nil
    # gets(sep,limit) -> string or nil
    #  
    # Returns (and assigns to <code>$_</code>) the next line from the list
    # of files in +ARGV+ (or <code>$*</code>), or from standard input if
    # no files are present on the command line. Returns +nil+ at end of
    # file. The optional argument specifies the record separator. The
    # separator is included with the contents of each record. A separator
    # of +nil+ reads the entire contents, and a zero-length separator
    # reads the input one paragraph at a time, where paragraphs are
    # divided by two consecutive newlines.  If the first argument is an
    # integer, or optional second argument is given, the returning string
    # would not be longer than the given value in bytes.  If multiple
    # filenames are present in +ARGV+, +gets(nil)+ will read the contents
    # one file at a time.
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
    def gets(*several_variants)
        #This is a stub, used for indexing
    end
    # readline(sep=$/)     -> string
    # readline(limit)      -> string
    # readline(sep, limit) -> string
    #  
    # Equivalent to <code>Kernel::gets</code>, except
    # +readline+ raises +EOFError+ at end of file.
    def readline(*several_variants)
        #This is a stub, used for indexing
    end
    # IO.select(read_array
    # [, write_array
    # [, error_array
    # [, timeout]]] )-> array  or  nil
    #  
    # See <code>Kernel#select</code>.
    def select(p1, p2 = v2, p3 = v3, p4 = v4)
        #This is a stub, used for indexing
    end
    # readlines(sep=$/)    -> array
    # readlines(limit)     -> array
    # readlines(sep,limit) -> array
    #  
    # Returns an array containing the lines returned by calling
    # <code>Kernel.gets(<i>sep</i>)</code> until the end of file.
    def readlines(*several_variants)
        #This is a stub, used for indexing
    end
    # `cmd`    -> string
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
    # p(obj)              -> obj
    # p(obj1, obj2, ...)  -> [obj, ...]
    # p()                 -> nil
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
    def p(*several_variants)
        #This is a stub, used for indexing
    end
    # load(filename, wrap=false)   -> true
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
    # require(string)    -> true or false
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
    # <code>$"</code>. A feature will not be loaded if its name already
    # appears in <code>$"</code>. The file name is converted to an absolute
    # path, so ``<code>require 'a'; require './a'</code>'' will not load
    # <code>a.rb</code> twice.
    # 
    #    require "my-library.rb"
    #    require "db-driver"
    def require(string)
        #This is a stub, used for indexing
    end
    def require_relative(p1)
        #This is a stub, used for indexing
    end
    # autoload(module, filename)   -> nil
    #  
    # Registers _filename_ to be loaded (using <code>Kernel::require</code>)
    # the first time that _module_ (which may be a <code>String</code> or
    # a symbol) is accessed.
    # 
    #    autoload(:MyModule, "/usr/local/lib/modules/my_module.rb")
    def autoload(module1, filename)
        #This is a stub, used for indexing
    end
    # autoload?(name)   -> String or nil
    #  
    # Returns _filename_ to be loaded if _name_ is registered as
    # +autoload+.
    # 
    #    autoload(:B, "b")
    #    autoload?(:B)            #=> "b"
    def autoload?(name)
        #This is a stub, used for indexing
    end
    # format(format_string [, arguments...] )   -> string
    # sprintf(format_string [, arguments...] )  -> string
    #  
    # Returns the string resulting from applying <i>format_string</i> to
    # any additional arguments.  Within the format string, any characters
    # other than format sequences are copied to the result.
    # 
    # The syntax of a format sequence is follows.
    # 
    #   %[flags][width][.precision]type
    # 
    # A format
    # sequence consists of a percent sign, followed by optional flags,
    # width, and precision indicators, then terminated with a field type
    # character.  The field type controls how the corresponding
    # <code>sprintf</code> argument is to be interpreted, while the flags
    # modify that interpretation.
    # 
    # The field type characters are:
    # 
    #     Field |  Integer Format
    #     ------+--------------------------------------------------------------
    #       b   | Convert argument as a binary number.
    #           | Negative numbers will be displayed as a two's complement
    #           | prefixed with `..1'.
    #       B   | Equivalent to `b', but uses an uppercase 0B for prefix
    #           | in the alternative format by #.
    #       d   | Convert argument as a decimal number.
    #       i   | Identical to `d'.
    #       o   | Convert argument as an octal number.
    #           | Negative numbers will be displayed as a two's complement
    #           | prefixed with `..7'.
    #       u   | Identical to `d'.
    #       x   | Convert argument as a hexadecimal number.
    #           | Negative numbers will be displayed as a two's complement
    #           | prefixed with `..f' (representing an infinite string of
    #           | leading 'ff's).
    #       X   | Equivalent to `x', but uses uppercase letters.
    # 
    #     Field |  Float Format
    #     ------+--------------------------------------------------------------
    #       e   | Convert floating point argument into exponential notation
    #           | with one digit before the decimal point as [-]d.dddddde[+-]dd.
    #           | The precision specifies the number of digits after the decimal
    #           | point (defaulting to six).
    #       E   | Equivalent to `e', but uses an uppercase E to indicate
    #           | the exponent.
    #       f   | Convert floating point argument as [-]ddd.dddddd,
    #           | where the precision specifies the number of digits after
    #           | the decimal point.
    #       g   | Convert a floating point number using exponential form
    #           | if the exponent is less than -4 or greater than or
    #           | equal to the precision, or in dd.dddd form otherwise.
    #           | The precision specifies the number of significant digits.
    #       G   | Equivalent to `g', but use an uppercase `E' in exponent form.
    #       a   | Convert floating point argument as [-]0xh.hhhhp[+-]dd,
    #           | which is consisted from optional sign, "0x", fraction part
    #           | as hexadecimal, "p", and exponential part as decimal.
    #       A   | Equivalent to `a', but use uppercase `X' and `P'.
    # 
    #     Field |  Other Format
    #     ------+--------------------------------------------------------------
    #       c   | Argument is the numeric code for a single character or
    #           | a single character string itself.
    #       p   | The valuing of argument.inspect.
    #       s   | Argument is a string to be substituted.  If the format
    #           | sequence contains a precision, at most that many characters
    #           | will be copied.
    #       %   | A percent sign itself will be displayed.  No argument taken.
    # 
    # The flags modifies the behavior of the formats.
    # The flag characters are:
    # 
    #   Flag     | Applies to    | Meaning
    #   ---------+---------------+-----------------------------------------
    #   space    | bBdiouxX      | Leave a space at the start of
    #            | aAeEfgG       | non-negative numbers.
    #            | (numeric fmt) | For `o', `x', `X', `b' and `B', use
    #            |               | a minus sign with absolute value for
    #            |               | negative values.
    #   ---------+---------------+-----------------------------------------
    #   (digit)$ | all           | Specifies the absolute argument number
    #            |               | for this field.  Absolute and relative
    #            |               | argument numbers cannot be mixed in a
    #            |               | sprintf string.
    #   ---------+---------------+-----------------------------------------
    #    #       | bBoxX         | Use an alternative format.
    #            | aAeEfgG       | For the conversions `o', increase the precision
    #            |               | until the first digit will be `0' if
    #            |               | it is not formatted as complements.
    #            |               | For the conversions `x', `X', `b' and `B'
    #            |               | on non-zero, prefix the result with ``0x'',
    #            |               | ``0X'', ``0b'' and ``0B'', respectively.
    #            |               | For `a', `A', `e', `E', `f', `g', and 'G',
    #            |               | force a decimal point to be added,
    #            |               | even if no digits follow.
    #            |               | For `g' and 'G', do not remove trailing zeros.
    #   ---------+---------------+-----------------------------------------
    #   +        | bBdiouxX      | Add a leading plus sign to non-negative
    #            | aAeEfgG       | numbers.
    #            | (numeric fmt) | For `o', `x', `X', `b' and `B', use
    #            |               | a minus sign with absolute value for
    #            |               | negative values.
    #   ---------+---------------+-----------------------------------------
    #   -        | all           | Left-justify the result of this conversion.
    #   ---------+---------------+-----------------------------------------
    #   0 (zero) | bBdiouxX      | Pad with zeros, not spaces.
    #            | aAeEfgG       | For `o', `x', `X', `b' and `B', radix-1
    #            | (numeric fmt) | is used for negative numbers formatted as
    #            |               | complements.
    #   ---------+---------------+-----------------------------------------
    #   *        | all           | Use the next argument as the field width.
    #            |               | If negative, left-justify the result. If the
    #            |               | asterisk is followed by a number and a dollar
    #            |               | sign, use the indicated argument as the width.
    # 
    # Examples of flags:
    # 
    #  # `+' and space flag specifies the sign of non-negative numbers.
    #  sprintf("%d", 123)  #=> "123"
    #  sprintf("%+d", 123) #=> "+123"
    #  sprintf("% d", 123) #=> " 123"
    # 
    #  # `#' flag for `o' increases number of digits to show `0'.
    #  # `+' and space flag changes format of negative numbers.
    #  sprintf("%o", 123)   #=> "173"
    #  sprintf("%#o", 123)  #=> "0173"
    #  sprintf("%+o", -123) #=> "-173"
    #  sprintf("%o", -123)  #=> "..7605"
    #  sprintf("%#o", -123) #=> "..7605"
    # 
    #  # `#' flag for `x' add a prefix `0x' for non-zero numbers.
    #  # `+' and space flag disables complements for negative numbers.
    #  sprintf("%x", 123)   #=> "7b"
    #  sprintf("%#x", 123)  #=> "0x7b"
    #  sprintf("%+x", -123) #=> "-7b"
    #  sprintf("%x", -123)  #=> "..f85"
    #  sprintf("%#x", -123) #=> "0x..f85"
    #  sprintf("%#x", 0)    #=> "0"
    # 
    #  # `#' for `X' uses the prefix `0X'.
    #  sprintf("%X", 123)  #=> "7B"
    #  sprintf("%#X", 123) #=> "0X7B"
    # 
    #  # `#' flag for `b' add a prefix `0b' for non-zero numbers.
    #  # `+' and space flag disables complements for negative numbers.
    #  sprintf("%b", 123)   #=> "1111011"
    #  sprintf("%#b", 123)  #=> "0b1111011"
    #  sprintf("%+b", -123) #=> "-1111011"
    #  sprintf("%b", -123)  #=> "..10000101"
    #  sprintf("%#b", -123) #=> "0b..10000101"
    #  sprintf("%#b", 0)    #=> "0"
    # 
    #  # `#' for `B' uses the prefix `0B'.
    #  sprintf("%B", 123)  #=> "1111011"
    #  sprintf("%#B", 123) #=> "0B1111011"
    # 
    #  # `#' for `e' forces to show the decimal point.
    #  sprintf("%.0e", 1)  #=> "1e+00"
    #  sprintf("%#.0e", 1) #=> "1.e+00"
    # 
    #  # `#' for `f' forces to show the decimal point.
    #  sprintf("%.0f", 1234)  #=> "1234"
    #  sprintf("%#.0f", 1234) #=> "1234."
    # 
    #  # `#' for `g' forces to show the decimal point.
    #  # It also disables stripping lowest zeros.
    #  sprintf("%g", 123.4)   #=> "123.4"
    #  sprintf("%#g", 123.4)  #=> "123.400"
    #  sprintf("%g", 123456)  #=> "123456"
    #  sprintf("%#g", 123456) #=> "123456."
    # 
    # The field width is an optional integer, followed optionally by a
    # period and a precision.  The width specifies the minimum number of
    # characters that will be written to the result for this field.
    # 
    # Examples of width:
    # 
    #  # padding is done by spaces,       width=20
    #  # 0 or radix-1.             <------------------>
    #  sprintf("%20d", 123)   #=> "                 123"
    #  sprintf("%+20d", 123)  #=> "                +123"
    #  sprintf("%020d", 123)  #=> "00000000000000000123"
    #  sprintf("%+020d", 123) #=> "+0000000000000000123"
    #  sprintf("% 020d", 123) #=> " 0000000000000000123"
    #  sprintf("%-20d", 123)  #=> "123                 "
    #  sprintf("%-+20d", 123) #=> "+123                "
    #  sprintf("%- 20d", 123) #=> " 123                "
    #  sprintf("%020x", -123) #=> "..ffffffffffffffff85"
    # 
    # For
    # numeric fields, the precision controls the number of decimal places
    # displayed.  For string fields, the precision determines the maximum
    # number of characters to be copied from the string.  (Thus, the format
    # sequence <code>%10.10s</code> will always contribute exactly ten
    # characters to the result.)
    # 
    # Examples of precisions:
    # 
    #  # precision for `d', 'o', 'x' and 'b' is
    #  # minimum number of digits               <------>
    #  sprintf("%20.8d", 123)  #=> "            00000123"
    #  sprintf("%20.8o", 123)  #=> "            00000173"
    #  sprintf("%20.8x", 123)  #=> "            0000007b"
    #  sprintf("%20.8b", 123)  #=> "            01111011"
    #  sprintf("%20.8d", -123) #=> "           -00000123"
    #  sprintf("%20.8o", -123) #=> "            ..777605"
    #  sprintf("%20.8x", -123) #=> "            ..ffff85"
    #  sprintf("%20.8b", -11)  #=> "            ..110101"
    # 
    #  # "0x" and "0b" for `#x' and `#b' is not counted for
    #  # precision but "0" for `#o' is counted.  <------>
    #  sprintf("%#20.8d", 123)  #=> "            00000123"
    #  sprintf("%#20.8o", 123)  #=> "            00000173"
    #  sprintf("%#20.8x", 123)  #=> "          0x0000007b"
    #  sprintf("%#20.8b", 123)  #=> "          0b01111011"
    #  sprintf("%#20.8d", -123) #=> "           -00000123"
    #  sprintf("%#20.8o", -123) #=> "            ..777605"
    #  sprintf("%#20.8x", -123) #=> "          0x..ffff85"
    #  sprintf("%#20.8b", -11)  #=> "          0b..110101"
    # 
    #  # precision for `e' is number of
    #  # digits after the decimal point           <------>
    #  sprintf("%20.8e", 1234.56789) #=> "      1.23456789e+03"
    # 
    #  # precision for `f' is number of
    #  # digits after the decimal point               <------>
    #  sprintf("%20.8f", 1234.56789) #=> "       1234.56789000"
    # 
    #  # precision for `g' is number of
    #  # significant digits                          <------->
    #  sprintf("%20.8g", 1234.56789) #=> "           1234.5679"
    # 
    #  #                                         <------->
    #  sprintf("%20.8g", 123456789)  #=> "       1.2345679e+08"
    # 
    #  # precision for `s' is
    #  # maximum number of characters                    <------>
    #  sprintf("%20.8s", "string test") #=> "            string t"
    # 
    # Examples:
    # 
    #    sprintf("%d %04x", 123, 123)               #=> "123 007b"
    #    sprintf("%08b '%4s'", 123, 123)            #=> "01111011 ' 123'"
    #    sprintf("%1$*2$s %2$d %1$s", "hello", 8)   #=> "   hello 8 hello"
    #    sprintf("%1$*2$s %2$d", "hello", -8)       #=> "hello    -8"
    #    sprintf("%+g:% g:%-g", 1.23, 1.23, 1.23)   #=> "+1.23: 1.23:1.23"
    #    sprintf("%u", -123)                        #=> "-123"
    # 
    # For more complex formatting, Ruby supports a reference by name.
    # %<name>s style uses format style, but %{name} style doesn't.
    # 
    # Exapmles:
    #   sprintf("%<foo>d : %<bar>f", { :foo => 1, :bar => 2 })
    #     #=> 1 : 2.000000
    #   sprintf("%{foo}f", { :foo => 1 })
    #     # => "1f"
    def sprintf(format_string, *args)
        #This is a stub, used for indexing
    end
    # format(format_string [, arguments...] )   -> string
    # sprintf(format_string [, arguments...] )  -> string
    #  
    # Returns the string resulting from applying <i>format_string</i> to
    # any additional arguments.  Within the format string, any characters
    # other than format sequences are copied to the result.
    # 
    # The syntax of a format sequence is follows.
    # 
    #   %[flags][width][.precision]type
    # 
    # A format
    # sequence consists of a percent sign, followed by optional flags,
    # width, and precision indicators, then terminated with a field type
    # character.  The field type controls how the corresponding
    # <code>sprintf</code> argument is to be interpreted, while the flags
    # modify that interpretation.
    # 
    # The field type characters are:
    # 
    #     Field |  Integer Format
    #     ------+--------------------------------------------------------------
    #       b   | Convert argument as a binary number.
    #           | Negative numbers will be displayed as a two's complement
    #           | prefixed with `..1'.
    #       B   | Equivalent to `b', but uses an uppercase 0B for prefix
    #           | in the alternative format by #.
    #       d   | Convert argument as a decimal number.
    #       i   | Identical to `d'.
    #       o   | Convert argument as an octal number.
    #           | Negative numbers will be displayed as a two's complement
    #           | prefixed with `..7'.
    #       u   | Identical to `d'.
    #       x   | Convert argument as a hexadecimal number.
    #           | Negative numbers will be displayed as a two's complement
    #           | prefixed with `..f' (representing an infinite string of
    #           | leading 'ff's).
    #       X   | Equivalent to `x', but uses uppercase letters.
    # 
    #     Field |  Float Format
    #     ------+--------------------------------------------------------------
    #       e   | Convert floating point argument into exponential notation
    #           | with one digit before the decimal point as [-]d.dddddde[+-]dd.
    #           | The precision specifies the number of digits after the decimal
    #           | point (defaulting to six).
    #       E   | Equivalent to `e', but uses an uppercase E to indicate
    #           | the exponent.
    #       f   | Convert floating point argument as [-]ddd.dddddd,
    #           | where the precision specifies the number of digits after
    #           | the decimal point.
    #       g   | Convert a floating point number using exponential form
    #           | if the exponent is less than -4 or greater than or
    #           | equal to the precision, or in dd.dddd form otherwise.
    #           | The precision specifies the number of significant digits.
    #       G   | Equivalent to `g', but use an uppercase `E' in exponent form.
    #       a   | Convert floating point argument as [-]0xh.hhhhp[+-]dd,
    #           | which is consisted from optional sign, "0x", fraction part
    #           | as hexadecimal, "p", and exponential part as decimal.
    #       A   | Equivalent to `a', but use uppercase `X' and `P'.
    # 
    #     Field |  Other Format
    #     ------+--------------------------------------------------------------
    #       c   | Argument is the numeric code for a single character or
    #           | a single character string itself.
    #       p   | The valuing of argument.inspect.
    #       s   | Argument is a string to be substituted.  If the format
    #           | sequence contains a precision, at most that many characters
    #           | will be copied.
    #       %   | A percent sign itself will be displayed.  No argument taken.
    # 
    # The flags modifies the behavior of the formats.
    # The flag characters are:
    # 
    #   Flag     | Applies to    | Meaning
    #   ---------+---------------+-----------------------------------------
    #   space    | bBdiouxX      | Leave a space at the start of
    #            | aAeEfgG       | non-negative numbers.
    #            | (numeric fmt) | For `o', `x', `X', `b' and `B', use
    #            |               | a minus sign with absolute value for
    #            |               | negative values.
    #   ---------+---------------+-----------------------------------------
    #   (digit)$ | all           | Specifies the absolute argument number
    #            |               | for this field.  Absolute and relative
    #            |               | argument numbers cannot be mixed in a
    #            |               | sprintf string.
    #   ---------+---------------+-----------------------------------------
    #    #       | bBoxX         | Use an alternative format.
    #            | aAeEfgG       | For the conversions `o', increase the precision
    #            |               | until the first digit will be `0' if
    #            |               | it is not formatted as complements.
    #            |               | For the conversions `x', `X', `b' and `B'
    #            |               | on non-zero, prefix the result with ``0x'',
    #            |               | ``0X'', ``0b'' and ``0B'', respectively.
    #            |               | For `a', `A', `e', `E', `f', `g', and 'G',
    #            |               | force a decimal point to be added,
    #            |               | even if no digits follow.
    #            |               | For `g' and 'G', do not remove trailing zeros.
    #   ---------+---------------+-----------------------------------------
    #   +        | bBdiouxX      | Add a leading plus sign to non-negative
    #            | aAeEfgG       | numbers.
    #            | (numeric fmt) | For `o', `x', `X', `b' and `B', use
    #            |               | a minus sign with absolute value for
    #            |               | negative values.
    #   ---------+---------------+-----------------------------------------
    #   -        | all           | Left-justify the result of this conversion.
    #   ---------+---------------+-----------------------------------------
    #   0 (zero) | bBdiouxX      | Pad with zeros, not spaces.
    #            | aAeEfgG       | For `o', `x', `X', `b' and `B', radix-1
    #            | (numeric fmt) | is used for negative numbers formatted as
    #            |               | complements.
    #   ---------+---------------+-----------------------------------------
    #   *        | all           | Use the next argument as the field width.
    #            |               | If negative, left-justify the result. If the
    #            |               | asterisk is followed by a number and a dollar
    #            |               | sign, use the indicated argument as the width.
    # 
    # Examples of flags:
    # 
    #  # `+' and space flag specifies the sign of non-negative numbers.
    #  sprintf("%d", 123)  #=> "123"
    #  sprintf("%+d", 123) #=> "+123"
    #  sprintf("% d", 123) #=> " 123"
    # 
    #  # `#' flag for `o' increases number of digits to show `0'.
    #  # `+' and space flag changes format of negative numbers.
    #  sprintf("%o", 123)   #=> "173"
    #  sprintf("%#o", 123)  #=> "0173"
    #  sprintf("%+o", -123) #=> "-173"
    #  sprintf("%o", -123)  #=> "..7605"
    #  sprintf("%#o", -123) #=> "..7605"
    # 
    #  # `#' flag for `x' add a prefix `0x' for non-zero numbers.
    #  # `+' and space flag disables complements for negative numbers.
    #  sprintf("%x", 123)   #=> "7b"
    #  sprintf("%#x", 123)  #=> "0x7b"
    #  sprintf("%+x", -123) #=> "-7b"
    #  sprintf("%x", -123)  #=> "..f85"
    #  sprintf("%#x", -123) #=> "0x..f85"
    #  sprintf("%#x", 0)    #=> "0"
    # 
    #  # `#' for `X' uses the prefix `0X'.
    #  sprintf("%X", 123)  #=> "7B"
    #  sprintf("%#X", 123) #=> "0X7B"
    # 
    #  # `#' flag for `b' add a prefix `0b' for non-zero numbers.
    #  # `+' and space flag disables complements for negative numbers.
    #  sprintf("%b", 123)   #=> "1111011"
    #  sprintf("%#b", 123)  #=> "0b1111011"
    #  sprintf("%+b", -123) #=> "-1111011"
    #  sprintf("%b", -123)  #=> "..10000101"
    #  sprintf("%#b", -123) #=> "0b..10000101"
    #  sprintf("%#b", 0)    #=> "0"
    # 
    #  # `#' for `B' uses the prefix `0B'.
    #  sprintf("%B", 123)  #=> "1111011"
    #  sprintf("%#B", 123) #=> "0B1111011"
    # 
    #  # `#' for `e' forces to show the decimal point.
    #  sprintf("%.0e", 1)  #=> "1e+00"
    #  sprintf("%#.0e", 1) #=> "1.e+00"
    # 
    #  # `#' for `f' forces to show the decimal point.
    #  sprintf("%.0f", 1234)  #=> "1234"
    #  sprintf("%#.0f", 1234) #=> "1234."
    # 
    #  # `#' for `g' forces to show the decimal point.
    #  # It also disables stripping lowest zeros.
    #  sprintf("%g", 123.4)   #=> "123.4"
    #  sprintf("%#g", 123.4)  #=> "123.400"
    #  sprintf("%g", 123456)  #=> "123456"
    #  sprintf("%#g", 123456) #=> "123456."
    # 
    # The field width is an optional integer, followed optionally by a
    # period and a precision.  The width specifies the minimum number of
    # characters that will be written to the result for this field.
    # 
    # Examples of width:
    # 
    #  # padding is done by spaces,       width=20
    #  # 0 or radix-1.             <------------------>
    #  sprintf("%20d", 123)   #=> "                 123"
    #  sprintf("%+20d", 123)  #=> "                +123"
    #  sprintf("%020d", 123)  #=> "00000000000000000123"
    #  sprintf("%+020d", 123) #=> "+0000000000000000123"
    #  sprintf("% 020d", 123) #=> " 0000000000000000123"
    #  sprintf("%-20d", 123)  #=> "123                 "
    #  sprintf("%-+20d", 123) #=> "+123                "
    #  sprintf("%- 20d", 123) #=> " 123                "
    #  sprintf("%020x", -123) #=> "..ffffffffffffffff85"
    # 
    # For
    # numeric fields, the precision controls the number of decimal places
    # displayed.  For string fields, the precision determines the maximum
    # number of characters to be copied from the string.  (Thus, the format
    # sequence <code>%10.10s</code> will always contribute exactly ten
    # characters to the result.)
    # 
    # Examples of precisions:
    # 
    #  # precision for `d', 'o', 'x' and 'b' is
    #  # minimum number of digits               <------>
    #  sprintf("%20.8d", 123)  #=> "            00000123"
    #  sprintf("%20.8o", 123)  #=> "            00000173"
    #  sprintf("%20.8x", 123)  #=> "            0000007b"
    #  sprintf("%20.8b", 123)  #=> "            01111011"
    #  sprintf("%20.8d", -123) #=> "           -00000123"
    #  sprintf("%20.8o", -123) #=> "            ..777605"
    #  sprintf("%20.8x", -123) #=> "            ..ffff85"
    #  sprintf("%20.8b", -11)  #=> "            ..110101"
    # 
    #  # "0x" and "0b" for `#x' and `#b' is not counted for
    #  # precision but "0" for `#o' is counted.  <------>
    #  sprintf("%#20.8d", 123)  #=> "            00000123"
    #  sprintf("%#20.8o", 123)  #=> "            00000173"
    #  sprintf("%#20.8x", 123)  #=> "          0x0000007b"
    #  sprintf("%#20.8b", 123)  #=> "          0b01111011"
    #  sprintf("%#20.8d", -123) #=> "           -00000123"
    #  sprintf("%#20.8o", -123) #=> "            ..777605"
    #  sprintf("%#20.8x", -123) #=> "          0x..ffff85"
    #  sprintf("%#20.8b", -11)  #=> "          0b..110101"
    # 
    #  # precision for `e' is number of
    #  # digits after the decimal point           <------>
    #  sprintf("%20.8e", 1234.56789) #=> "      1.23456789e+03"
    # 
    #  # precision for `f' is number of
    #  # digits after the decimal point               <------>
    #  sprintf("%20.8f", 1234.56789) #=> "       1234.56789000"
    # 
    #  # precision for `g' is number of
    #  # significant digits                          <------->
    #  sprintf("%20.8g", 1234.56789) #=> "           1234.5679"
    # 
    #  #                                         <------->
    #  sprintf("%20.8g", 123456789)  #=> "       1.2345679e+08"
    # 
    #  # precision for `s' is
    #  # maximum number of characters                    <------>
    #  sprintf("%20.8s", "string test") #=> "            string t"
    # 
    # Examples:
    # 
    #    sprintf("%d %04x", 123, 123)               #=> "123 007b"
    #    sprintf("%08b '%4s'", 123, 123)            #=> "01111011 ' 123'"
    #    sprintf("%1$*2$s %2$d %1$s", "hello", 8)   #=> "   hello 8 hello"
    #    sprintf("%1$*2$s %2$d", "hello", -8)       #=> "hello    -8"
    #    sprintf("%+g:% g:%-g", 1.23, 1.23, 1.23)   #=> "+1.23: 1.23:1.23"
    #    sprintf("%u", -123)                        #=> "-123"
    # 
    # For more complex formatting, Ruby supports a reference by name.
    # %<name>s style uses format style, but %{name} style doesn't.
    # 
    # Exapmles:
    #   sprintf("%<foo>d : %<bar>f", { :foo => 1, :bar => 2 })
    #     #=> 1 : 2.000000
    #   sprintf("%{foo}f", { :foo => 1 })
    #     # => "1f"
    def format(format_string, *args)
        #This is a stub, used for indexing
    end
    # Integer(arg,base=0)    -> integer
    #  
    # Converts <i>arg</i> to a <code>Fixnum</code> or <code>Bignum</code>.
    # Numeric types are converted directly (with floating point numbers
    # being truncated).    <i>base</i> (0, or between 2 and 36) is a base for
    # integer string representation.  If <i>arg</i> is a <code>String</code>,
    # when <i>base</i> is omitted or equals to zero, radix indicators
    # (<code>0</code>, <code>0b</code>, and <code>0x</code>) are honored.
    # In any case, strings should be strictly conformed to numeric
    # representation. This behavior is different from that of
    # <code>String#to_i</code>.  Non string values will be converted using
    # <code>to_int</code>, and <code>to_i</code>.
    # 
    #    Integer(123.999)    #=> 123
    #    Integer("0x1a")     #=> 26
    #    Integer(Time.new)   #=> 1204973019
    def Integer(arg,base=0)
        #This is a stub, used for indexing
    end
    # Float(arg)    -> float
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
    # String(arg)   -> string
    #  
    # Converts <i>arg</i> to a <code>String</code> by calling its
    # <code>to_s</code> method.
    # 
    #    String(self)        #=> "main"
    #    String(self.class)  #=> "Object"
    #    String(123456)      #=> "123456"
    def String(arg)
        #This is a stub, used for indexing
    end
    # Array(arg)    -> array
    #  
    # Returns <i>arg</i> as an <code>Array</code>. First tries to call
    # <i>arg</i><code>.to_ary</code>, then <i>arg</i><code>.to_a</code>.
    # 
    #    Array(1..5)   #=> [1, 2, 3, 4, 5]
    def Array(arg)
        #This is a stub, used for indexing
    end
    # proc   { |...| block }  -> a_proc
    #  
    # Equivalent to <code>Proc.new</code>.
    def proc()
        #This is a stub, used for indexing
    end
    # lambda { |...| block }  -> a_proc
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
    # exec([env,] command... [,options])
    #  
    # Replaces the current process by running the given external _command_.
    # _command..._ is one of following forms.
    # 
    #   commandline                 : command line string which is passed to the standard shell
    #   cmdname, arg1, ...          : command name and one or more arguments (no shell)
    #   [cmdname, argv0], arg1, ... : command name, argv[0] and zero or more arguments (no shell)
    # 
    # If single string is given as the command,
    # it is taken as a command line that is subject to shell expansion before being executed.
    # 
    # The standard shell means always <code>"/bin/sh"</code> on Unix-like systems,
    # <code>ENV["RUBYSHELL"]</code> or <code>ENV["COMSPEC"]</code> on Windows NT series, and
    # similar.
    # 
    # If two or more +string+ given,
    # the first is taken as a command name and
    # the rest are passed as parameters to command with no shell expansion.
    # 
    # If a two-element array at the beginning of the command,
    # the first element is the command to be executed,
    # and the second argument is used as the <code>argv[0]</code> value,
    # which may show up in process listings.
    # 
    # In order to execute the command, one of the <code>exec(2)</code>
    # system calls is used, so the running command may inherit some of the environment
    # of the original program (including open file descriptors).
    # This behavior is modified by env and options.
    # See <code>spawn</code> for details.
    # 
    # Raises SystemCallError if the command couldn't execute (typically
    # <code>Errno::ENOENT</code> when it was not found).
    # 
    #    exec "echo *"       # echoes list of files in current directory
    #    # never get here
    # 
    #    exec "echo", "*"    # echoes an asterisk
    #    # never get here
    def exec(*args)
        #This is a stub, used for indexing
    end
    # Kernel.fork  [{ block }]   -> fixnum or nil
    # Process.fork [{ block }]   -> fixnum or nil
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
    # 
    # If fork is not usable, Process.respond_to?(:fork) returns false.
    def fork()
        #This is a stub, used for indexing
    end
    # Process.exit!(status=false)
    #  
    # Exits the process immediately. No exit handlers are
    # run. <em>status</em> is returned to the underlying system as the
    # exit status.
    # 
    #    Process.exit!(true)
    def exit!(status=false)
        #This is a stub, used for indexing
    end
    # system([env,] command... [,options])    -> true, false or nil
    #  
    # Executes _command..._ in a subshell.
    # _command..._ is one of following forms.
    # 
    #   commandline                 : command line string which is passed to the standard shell
    #   cmdname, arg1, ...          : command name and one or more arguments (no shell)
    #   [cmdname, argv0], arg1, ... : command name, argv[0] and zero or more arguments (no shell)
    # 
    # system returns +true+ if the command gives zero exit status,
    # +false+ for non zero exit status.
    # Returns +nil+ if command execution fails.
    # An error status is available in <code>$?</code>.
    # The arguments are processed in the same way as
    # for <code>Kernel.spawn</code>.
    # 
    # The hash arguments, env and options, are same as
    # <code>exec</code> and <code>spawn</code>.
    # See <code>Kernel.spawn</code> for details.
    # 
    #    system("echo *")
    #    system("echo", "*")
    # 
    # <em>produces:</em>
    # 
    #    config.h main.rb
    #    *
    # 
    # See <code>Kernel.exec</code> for the standard shell.
    def system(*args)
        #This is a stub, used for indexing
    end
    # spawn([env,] command... [,options])     -> pid
    # Process.spawn([env,] command... [,options])     -> pid
    #  
    # spawn executes specified command and return its pid.
    # 
    # This method doesn't wait for end of the command.
    # The parent process should
    # use <code>Process.wait</code> to collect
    # the termination status of its child or
    # use <code>Process.detach</code> to register
    # disinterest in their status;
    # otherwise, the operating system may accumulate zombie processes.
    # 
    # spawn has bunch of options to specify process attributes:
    # 
    #   env: hash
    #     name => val : set the environment variable
    #     name => nil : unset the environment variable
    #   command...:
    #     commandline                 : command line string which is passed to the standard shell
    #     cmdname, arg1, ...          : command name and one or more arguments (no shell)
    #     [cmdname, argv0], arg1, ... : command name, argv[0] and zero or more arguments (no shell)
    #   options: hash
    #     clearing environment variables:
    #       :unsetenv_others => true   : clear environment variables except specified by env
    #       :unsetenv_others => false  : don't clear (default)
    #     process group:
    #       :pgroup => true or 0 : make a new process group
    #       :pgroup => pgid      : join to specified process group
    #       :pgroup => nil       : don't change the process group (default)
    #     resource limit: resourcename is core, cpu, data, etc.  See Process.setrlimit.
    #       :rlimit_resourcename => limit
    #       :rlimit_resourcename => [cur_limit, max_limit]
    #     current directory:
    #       :chdir => str
    #     umask:
    #       :umask => int
    #     redirection:
    #       key:
    #         FD              : single file descriptor in child process
    #         [FD, FD, ...]   : multiple file descriptor in child process
    #       value:
    #         FD                        : redirect to the file descriptor in parent process
    #         string                    : redirect to file with open(string, "r" or "w")
    #         [string]                  : redirect to file with open(string, File::RDONLY)
    #         [string, open_mode]       : redirect to file with open(string, open_mode, 0644)
    #         [string, open_mode, perm] : redirect to file with open(string, open_mode, perm)
    #         [:child, FD]              : redirect to the redirected file descriptor
    #         :close                    : close the file descriptor in child process
    #       FD is one of follows
    #         :in     : the file descriptor 0 which is the standard input
    #         :out    : the file descriptor 1 which is the standard output
    #         :err    : the file descriptor 2 which is the standard error
    #         integer : the file descriptor of specified the integer
    #         io      : the file descriptor specified as io.fileno
    #     file descriptor inheritance: close non-redirected non-standard fds (3, 4, 5, ...) or not
    #       :close_others => false : inherit fds (default for system and exec)
    #       :close_others => true  : don't inherit (default for spawn and IO.popen)
    # 
    # If a hash is given as +env+, the environment is
    # updated by +env+ before <code>exec(2)</code> in the child process.
    # If a pair in +env+ has nil as the value, the variable is deleted.
    # 
    #   # set FOO as BAR and unset BAZ.
    #   pid = spawn({"FOO"=>"BAR", "BAZ"=>nil}, command)
    # 
    # If a hash is given as +options+,
    # it specifies
    # process group,
    # resource limit,
    # current directory,
    # umask and
    # redirects for the child process.
    # Also, it can be specified to clear environment variables.
    # 
    # The <code>:unsetenv_others</code> key in +options+ specifies
    # to clear environment variables, other than specified by +env+.
    # 
    #   pid = spawn(command, :unsetenv_others=>true) # no environment variable
    #   pid = spawn({"FOO"=>"BAR"}, command, :unsetenv_others=>true) # FOO only
    # 
    # The <code>:pgroup</code> key in +options+ specifies a process group.
    # The corresponding value should be true, zero or positive integer.
    # true and zero means the process should be a process leader of a new
    # process group.
    # Other values specifies a process group to be belongs.
    # 
    #   pid = spawn(command, :pgroup=>true) # process leader
    #   pid = spawn(command, :pgroup=>10) # belongs to the process group 10
    # 
    # The <code>:rlimit_</code><em>foo</em> key specifies a resource limit.
    # <em>foo</em> should be one of resource types such as <code>core</code>.
    # The corresponding value should be an integer or an array which have one or
    # two integers: same as cur_limit and max_limit arguments for
    # Process.setrlimit.
    # 
    #   cur, max = Process.getrlimit(:CORE)
    #   pid = spawn(command, :rlimit_core=>[0,max]) # disable core temporary.
    #   pid = spawn(command, :rlimit_core=>max) # enable core dump
    #   pid = spawn(command, :rlimit_core=>0) # never dump core.
    # 
    # The <code>:chdir</code> key in +options+ specifies the current directory.
    # 
    #   pid = spawn(command, :chdir=>"/var/tmp")
    # 
    # The <code>:umask</code> key in +options+ specifies the umask.
    # 
    #   pid = spawn(command, :umask=>077)
    # 
    # The :in, :out, :err, a fixnum, an IO and an array key specifies a redirection.
    # The redirection maps a file descriptor in the child process.
    # 
    # For example, stderr can be merged into stdout as follows:
    # 
    #   pid = spawn(command, :err=>:out)
    #   pid = spawn(command, 2=>1)
    #   pid = spawn(command, STDERR=>:out)
    #   pid = spawn(command, STDERR=>STDOUT)
    # 
    # The hash keys specifies a file descriptor
    # in the child process started by <code>spawn</code>.
    # :err, 2 and STDERR specifies the standard error stream (stderr).
    # 
    # The hash values specifies a file descriptor
    # in the parent process which invokes <code>spawn</code>.
    # :out, 1 and STDOUT specifies the standard output stream (stdout).
    # 
    # In the above example,
    # the standard output in the child process is not specified.
    # So it is inherited from the parent process.
    # 
    # The standard input stream (stdin) can be specified by :in, 0 and STDIN.
    # 
    # A filename can be specified as a hash value.
    # 
    #   pid = spawn(command, :in=>"/dev/null") # read mode
    #   pid = spawn(command, :out=>"/dev/null") # write mode
    #   pid = spawn(command, :err=>"log") # write mode
    #   pid = spawn(command, 3=>"/dev/null") # read mode
    # 
    # For stdout and stderr,
    # it is opened in write mode.
    # Otherwise read mode is used.
    # 
    # For specifying flags and permission of file creation explicitly,
    # an array is used instead.
    # 
    #   pid = spawn(command, :in=>["file"]) # read mode is assumed
    #   pid = spawn(command, :in=>["file", "r"])
    #   pid = spawn(command, :out=>["log", "w"]) # 0644 assumed
    #   pid = spawn(command, :out=>["log", "w", 0600])
    #   pid = spawn(command, :out=>["log", File::WRONLY|File::EXCL|File::CREAT, 0600])
    # 
    # The array specifies a filename, flags and permission.
    # The flags can be a string or an integer.
    # If the flags is omitted or nil, File::RDONLY is assumed.
    # The permission should be an integer.
    # If the permission is omitted or nil, 0644 is assumed.
    # 
    # If an array of IOs and integers are specified as a hash key,
    # all the elements are redirected.
    # 
    #   # stdout and stderr is redirected to log file.
    #   # The file "log" is opened just once.
    #   pid = spawn(command, [:out, :err]=>["log", "w"])
    # 
    # Another way to merge multiple file descriptors is [:child, fd].
    # \[:child, fd] means the file descriptor in the child process.
    # This is different from fd.
    # For example, :err=>:out means redirecting child stderr to parent stdout.
    # But :err=>[:child, :out] means redirecting child stderr to child stdout.
    # They differs if stdout is redirected in the child process as follows.
    # 
    #   # stdout and stderr is redirected to log file.
    #   # The file "log" is opened just once.
    #   pid = spawn(command, :out=>["log", "w"], :err=>[:child, :out])
    # 
    # \[:child, :out] can be used to merge stderr into stdout in IO.popen.
    # In this case, IO.popen redirects stdout to a pipe in the child process
    # and [:child, :out] refers the redirected stdout.
    # 
    #   io = IO.popen(["sh", "-c", "echo out; echo err >&2", :err=>[:child, :out]])
    #   p io.read #=> "out\nerr\n"
    # 
    # spawn closes all non-standard unspecified descriptors by default.
    # The "standard" descriptors are 0, 1 and 2.
    # This behavior is specified by :close_others option.
    # :close_others doesn't affect the standard descriptors which are
    # closed only if :close is specified explicitly.
    # 
    #   pid = spawn(command, :close_others=>true)  # close 3,4,5,... (default)
    #   pid = spawn(command, :close_others=>false) # don't close 3,4,5,...
    # 
    # :close_others is true by default for spawn and IO.popen.
    # 
    # So IO.pipe and spawn can be used as IO.popen.
    # 
    #   # similar to r = IO.popen(command)
    #   r, w = IO.pipe
    #   pid = spawn(command, :out=>w)   # r, w is closed in the child process.
    #   w.close
    # 
    # :close is specified as a hash value to close a fd individually.
    # 
    #   f = open(foo)
    #   system(command, f=>:close)        # don't inherit f.
    # 
    # If a file descriptor need to be inherited,
    # io=>io can be used.
    # 
    #   # valgrind has --log-fd option for log destination.
    #   # log_w=>log_w indicates log_w.fileno inherits to child process.
    #   log_r, log_w = IO.pipe
    #   pid = spawn("valgrind", "--log-fd=#{log_w.fileno}", "echo", "a", log_w=>log_w)
    #   log_w.close
    #   p log_r.read
    # 
    # It is also possible to exchange file descriptors.
    # 
    #   pid = spawn(command, :out=>:err, :err=>:out)
    # 
    # The hash keys specify file descriptors in the child process.
    # The hash values specifies file descriptors in the parent process.
    # So the above specifies exchanging stdout and stderr.
    # Internally, +spawn+ uses an extra file descriptor to resolve such cyclic
    # file descriptor mapping.
    # 
    # See <code>Kernel.exec</code> for the standard shell.
    def spawn(*several_variants)
        #This is a stub, used for indexing
    end
    # sleep([duration])    -> fixnum
    #  
    # Suspends the current thread for _duration_ seconds (which may be any number,
    # including a +Float+ with fractional seconds). Returns the actual number of
    # seconds slept (rounded), which may be less than that asked for if another
    # thread calls <code>Thread#run</code>. Called without an argument, sleep()
    # will sleep forever.
    # 
    #    Time.new    #=> 2008-03-08 19:56:19 +0900
    #    sleep 1.2   #=> 1
    #    Time.new    #=> 2008-03-08 19:56:20 +0900
    #    sleep 1.9   #=> 2
    #    Time.new    #=> 2008-03-08 19:56:22 +0900
    def sleep(*duration)
        #This is a stub, used for indexing
    end
    # exit(status=true)
    # Kernel::exit(status=true)
    # Process::exit(status=true)
    #  
    # Initiates the termination of the Ruby script by raising the
    # <code>SystemExit</code> exception. This exception may be caught. The
    # optional parameter is used to return a status code to the invoking
    # environment.
    # +true+ and +FALSE+ of _status_ means success and failure
    # respectively.  The interpretation of other integer values are
    # system dependent.
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
    def exit(status=true)
        #This is a stub, used for indexing
    end
    # abort
    # Kernel::abort([msg])
    # Process::abort([msg])
    #  
    # Terminate execution immediately, effectively by calling
    # <code>Kernel.exit(false)</code>. If _msg_ is given, it is written
    # to STDERR prior to terminating.
    def abort(message='')
        #This is a stub, used for indexing
    end
    # srand(number=0)    -> old_seed
    #  
    # Seeds the pseudorandom number generator to the value of
    # <i>number</i>. If <i>number</i> is omitted
    # or zero, seeds the generator using a combination of the time, the
    # process id, and a sequence number. (This is also the behavior if
    # <code>Kernel::rand</code> is called without previously calling
    # <code>srand</code>, but without the sequence.) By setting the seed
    # to a known value, scripts can be made deterministic during testing.
    # The previous seed value is returned. Also see <code>Kernel::rand</code>.
    def srand(number=0)
        #This is a stub, used for indexing
    end
    # rand(max=0)    -> number
    #  
    # Converts <i>max</i> to an integer using max1 =
    # max<code>.to_i.abs</code>. If _max_ is +nil+ the result is zero, returns a
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
    # Rational(x[, y])  ->  numeric
    #  
    # Returns x/y;
    def Rational(*args)
        #This is a stub, used for indexing
    end
    # sub(pattern, replacement)   -> $_
    # sub(pattern) { block }      -> $_
    #  
    # Equivalent to <code>$_.sub(<i>args</i>)</code>, except that
    # <code>$_</code> will be updated if substitution occurs.
    # Available only when -p/-n command line option specified.
    def sub(*several_variants)
        #This is a stub, used for indexing
    end
    # gsub(pattern, replacement)    -> string
    # gsub(pattern) {|...| block }  -> string
    #  
    # Equivalent to <code>$_.gsub...</code>, except that <code>$_</code>
    # receives the modified result.
    # Available only when -p/-n command line option specified.
    def gsub(*several_variants)
        #This is a stub, used for indexing
    end
    # chop   -> string
    #  
    # Equivalent to <code>($_.dup).chop!</code>, except <code>nil</code>
    # is never returned. See <code>String#chop!</code>.
    # Available only when -p/-n command line option specified.
    def chop()
        #This is a stub, used for indexing
    end
    # chomp            -> $_
    # chomp(string)    -> $_
    #  
    # Equivalent to <code>$_ = $_.chomp(<em>string</em>)</code>. See
    # <code>String#chomp</code>.
    # Available only when -p/-n command line option specified.
    def chomp(*several_variants)
        #This is a stub, used for indexing
    end
    # Signal.trap( signal, command ) -> obj
    # Signal.trap( signal ) {| | block } -> obj
    #  
    # Specifies the handling of signals. The first parameter is a signal
    # name (a string such as ``SIGALRM'', ``SIGUSR1'', and so on) or a
    # signal number. The characters ``SIG'' may be omitted from the
    # signal name. The command or block specifies code to be run when the
    # signal is raised.
    # If the command is the string ``IGNORE'' or ``SIG_IGN'', the signal
    # will be ignored.
    # If the command is ``DEFAULT'' or ``SIG_DFL'', the Ruby's default handler
    # will be invoked.
    # If the command is ``EXIT'', the script will be terminated by the signal.
    # If the command is ``SYSTEM_DEFAULT'', the operating system's default
    # handler will be invoked.
    # Otherwise, the given command or block will be run.
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
    # set_trace_func(proc)    -> proc
    # set_trace_func(nil)     -> nil
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
    # eval(string [, binding [, filename [,lineno]]])  -> obj
    #  
    # Evaluates the Ruby expression(s) in <em>string</em>. If
    # <em>binding</em> is given, which must be a <code>Binding</code>
    # object, the evaluation is performed in its context. If the
    # optional <em>filename</em> and <em>lineno</em> parameters are
    # present, they will be used when reporting syntax errors.
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
    # local_variables    -> array
    #  
    # Returns the names of the current local variables.
    # 
    #    fred = 1
    #    for i in 1..10
    #       # ...
    #    end
    #    local_variables   #=> [:fred, :i]
    def local_variables()
        #This is a stub, used for indexing
    end
    # block_given?   -> true or false
    # iterator?      -> true or false
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
    # block_given?   -> true or false
    # iterator?      -> true or false
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
    # catch([arg]) {|tag| block }  -> obj
    #  
    # +catch+ executes its block. If a +throw+ is
    # executed, Ruby searches up its stack for a +catch+ block
    # with a tag corresponding to the +throw+'s
    # _tag_. If found, that block is terminated, and
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
    # 
    # when _arg_ is given, +catch+ yields it as is, or when no
    # _arg_ is given, +catch+ assigns a new unique object to
    # +throw+.  this is useful for nested +catch+.  _arg_ can
    # be an arbitrary object, not only Symbol.
    def catch(*arg)
        #This is a stub, used for indexing
    end
    # throw(tag [, obj])
    #  
    # Transfers control to the end of the active +catch+ block
    # waiting for _tag_. Raises +ArgumentError+ if there
    # is no +catch+ block for the _tag_. The optional second
    # parameter supplies a return value for the +catch+ block,
    # which otherwise defaults to +nil+. For examples, see
    # <code>Kernel::catch</code>.
    def throw(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # loop { block }
    # loop            -> an_enumerator
    #  
    # Repeatedly executes the block.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    loop do
    #      print "Input: "
    #      line = gets
    #      break if !line or line =~ /^qQ/
    #      # ...
    #    end
    # 
    # StopIteration raised in the block breaks the loop.
    def loop(*several_variants)
        #This is a stub, used for indexing
    end
    # caller(start=1)    -> array or nil
    #  
    # Returns the current execution stack---an array containing strings in
    # the form ``<em>file:line</em>'' or ``<em>file:line: in
    # `method'</em>''. The optional _start_ parameter
    # determines the number of initial stack entries to omit from the
    # result.
    # 
    # Returns +nil+ if _start_ is greater than the size of
    # current execution stack.
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
    #    c(0)   #=> ["prog:2:in `a'", "prog:5:in `b'", "prog:8:in `c'", "prog:10:in `<main>'"]
    #    c(1)   #=> ["prog:5:in `b'", "prog:8:in `c'", "prog:11:in `<main>'"]
    #    c(2)   #=> ["prog:8:in `c'", "prog:12:in `<main>'"]
    #    c(3)   #=> ["prog:13:in `<main>'"]
    #    c(4)   #=> []
    #    c(5)   #=> nil
    def caller(start=1)
        #This is a stub, used for indexing
    end
    def BigDecimal(p1, p2 = v2)
        #This is a stub, used for indexing
    end
end
