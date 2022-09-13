=begin
 This is a machine generated stub using stdlib-doc for <b>class IO</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

require 'constants'
# Class <code>IO</code> is the basis for all input and output in Ruby.
# An I/O stream may be <em>duplexed</em> (that is, bidirectional), and
# so may use more than one native operating system stream.
# 
# Many of the examples in this section use class <code>File</code>,
# the only standard subclass of <code>IO</code>. The two classes are
# closely associated.
# 
# As used in this section, <em>portname</em> may take any of the
# following forms.
# 
# * A plain string represents a filename suitable for the underlying
#   operating system.
# 
# * A string starting with ``<code>|</code>'' indicates a subprocess.
#   The remainder of the string following the ``<code>|</code>'' is
#   invoked as a process with appropriate input/output channels
#   connected to it.
# 
# * A string equal to ``<code>|-</code>'' will create another Ruby
#   instance as a subprocess.
# 
# Ruby will convert pathnames between different operating system
# conventions if possible. For instance, on a Windows system the
# filename ``<code>/gumby/ruby/test.rb</code>'' will be opened as
# ``<code>\gumby\ruby\test.rb</code>''. When specifying a
# Windows-style filename in a Ruby string, remember to escape the
# backslashes:
# 
#    "c:\\gumby\\ruby\\test.rb"
# 
# Our examples here will use the Unix-style forward slashes;
# <code>File::SEPARATOR</code> can be used to get the
# platform-specific separator character.
# 
# I/O ports may be opened in any one of several different modes, which
# are shown in this section as <em>mode</em>. The mode may
# either be a Fixnum or a String. If numeric, it should be
# one of the operating system specific constants (O_RDONLY,
# O_WRONLY, O_RDWR, O_APPEND and so on). See man open(2) for
# more information.
# 
# If the mode is given as a String, it must be one of the
# values listed in the following table.
# 
#   Mode |  Meaning
#   -----+--------------------------------------------------------
#   "r"  |  Read-only, starts at beginning of file  (default mode).
#   -----+--------------------------------------------------------
#   "r+" |  Read-write, starts at beginning of file.
#   -----+--------------------------------------------------------
#   "w"  |  Write-only, truncates existing file 
#        |  to zero length or creates a new file for writing.
#   -----+--------------------------------------------------------
#   "w+" |  Read-write, truncates existing file to zero length
#        |  or creates a new file for reading and writing.
#   -----+--------------------------------------------------------
#   "a"  |  Write-only, starts at end of file if file exists,
#        |  otherwise creates a new file for writing.
#   -----+--------------------------------------------------------
#   "a+" |  Read-write, starts at end of file if file exists,
#        |  otherwise creates a new file for reading and 
#        |  writing.
#   -----+--------------------------------------------------------
#    "b" |  (DOS/Windows only) Binary file mode (may appear with 
#        |  any of the key letters listed above).
# 
# The global constant ARGF (also accessible as $<) provides an
# IO-like stream which allows access to all files mentioned on the
# command line (or STDIN if no files are mentioned). ARGF provides
# the methods <code>#path</code> and <code>#filename</code> to access
# the name of the file currently being read.
class IO
    include File::Constants
    include Enumerable
    SEEK_SET = nil #value is unknown, used for indexing.
    SEEK_CUR = nil #value is unknown, used for indexing.
    SEEK_END = nil #value is unknown, used for indexing.
    # ios.stat    => stat
    #  
    # Returns status information for <em>ios</em> as an object of type
    # <code>File::Stat</code>.
    # 
    #    f = File.new("testfile")
    #    s = f.stat
    #    "%o" % s.mode   #=> "100644"
    #    s.blksize       #=> 4096
    #    s.atime         #=> Wed Apr 09 08:53:54 CDT 2003
    def stat()
        #This is a stub, used for indexing
    end
    # IO.new(fd, mode_string)   => io
    #  
    # Returns a new <code>IO</code> object (a stream) for the given
    # integer file descriptor and mode string. See also
    # <code>IO#fileno</code> and <code>IO::for_fd</code>.
    # 
    #    a = IO.new(2,"w")      # '2' is standard error
    #    $stderr.puts "Hello"
    #    a.puts "World"
    # 
    # <em>produces:</em>
    # 
    #    Hello
    #    World
    def self.new(fd, mode_string)
        #This is a stub, used for indexing
    end
    # IO.open(fd, mode_string="r" )               => io
    # IO.open(fd, mode_string="r" ) {|io| block } => obj
    #  
    # With no associated block, <code>open</code> is a synonym for
    # <code>IO::new</code>. If the optional code block is given, it will
    # be passed <i>io</i> as an argument, and the IO object will
    # automatically be closed when the block terminates. In this instance,
    # <code>IO::open</code> returns the value of the block.
    def self.open(*several_variants)
        #This is a stub, used for indexing
    end
    # IO.sysopen(path, [mode, [perm]])  => fixnum
    #  
    # Opens the given path, returning the underlying file descriptor as a
    # <code>Fixnum</code>.
    # 
    #    IO.sysopen("testfile")   #=> 3
    def self.sysopen(path, *mode_perm)
        #This is a stub, used for indexing
    end
    # IO.for_fd(fd, mode)    => io
    #  
    # Synonym for <code>IO::new</code>.
    def self.for_fd(fd, mode)
        #This is a stub, used for indexing
    end
    # IO.popen(cmd_string, mode="r" )               => io
    # IO.popen(cmd_string, mode="r" ) {|io| block } => obj
    #  
    # Runs the specified command string as a subprocess; the subprocess's
    # standard input and output will be connected to the returned
    # <code>IO</code> object. If <i>cmd_string</i> starts with a
    # ``<code>-</code>'', then a new instance of Ruby is started as the
    # subprocess. The default mode for the new file object is ``r'', but
    # <i>mode</i> may be set to any of the modes listed in the description
    # for class IO.
    # 
    # If a block is given, Ruby will run the command as a child connected
    # to Ruby with a pipe. Ruby's end of the pipe will be passed as a
    # parameter to the block.
    # At the end of block, Ruby close the pipe and sets <code>$?</code>.
    # In this case <code>IO::popen</code> returns
    # the value of the block.
    # 
    # If a block is given with a <i>cmd_string</i> of ``<code>-</code>'',
    # the block will be run in two separate processes: once in the parent,
    # and once in a child. The parent process will be passed the pipe
    # object as a parameter to the block, the child version of the block
    # will be passed <code>nil</code>, and the child's standard in and
    # standard out will be connected to the parent through the pipe. Not
    # available on all platforms.
    # 
    #    f = IO.popen("uname")
    #    p f.readlines
    #    puts "Parent is #{Process.pid}"
    #    IO.popen ("date") { |f| puts f.gets }
    #    IO.popen("-") {|f| $stderr.puts "#{Process.pid} is here, f is #{f}"}
    #    p $?
    # 
    # <em>produces:</em>
    # 
    #    ["Linux\n"]
    #    Parent is 26166
    #    Wed Apr  9 08:53:52 CDT 2003
    #    26169 is here, f is
    #    26166 is here, f is #<IO:0x401b3d44>
    #    #<Process::Status: pid=26166,exited(0)>
    def self.popen(*several_variants)
        #This is a stub, used for indexing
    end
    # IO.foreach(name, sep_string=$/) {|line| block }   => nil
    #  
    # Executes the block for every line in the named I/O port, where lines
    # are separated by <em>sep_string</em>.
    # 
    #    IO.foreach("testfile") {|x| print "GOT ", x }
    # 
    # <em>produces:</em>
    # 
    #    GOT This is line one
    #    GOT This is line two
    #    GOT This is line three
    #    GOT And so on...
    def self.foreach(name, sep_string=$/)
        #This is a stub, used for indexing
    end
    # IO.readlines(name, sep_string=$/)   => array
    #  
    # Reads the entire file specified by <i>name</i> as individual
    # lines, and returns those lines in an array. Lines are separated by
    # <i>sep_string</i>.
    # 
    #    a = IO.readlines("testfile")
    #    a[0]   #=> "This is line one\n"
    def self.readlines(name, sep_string=$/)
        #This is a stub, used for indexing
    end
    # IO.read(name, [length [, offset]] )   => string
    #  
    # Opens the file, optionally seeks to the given offset, then returns
    # <i>length</i> bytes (defaulting to the rest of the file).
    # <code>read</code> ensures the file is closed before returning.
    # 
    #    IO.read("testfile")           #=> "This is line one\nThis is line two\nThis is line three\nAnd so on...\n"
    #    IO.read("testfile", 20)       #=> "This is line one\nThi"
    #    IO.read("testfile", 20, 10)   #=> "ne one\nThis is line "
    def self.read(name, *length_offset)
        #This is a stub, used for indexing
    end
    # IO.select(read_array 
    # [, write_array 
    # [, error_array 
    # [, timeout]]] ) =>  array  or  nil
    #  
    # See <code>Kernel#select</code>.
    def self.select(read_array, *write_error_arrays_timeout)
        #This is a stub, used for indexing
    end
    # IO.pipe -> array
    #  
    # Creates a pair of pipe endpoints (connected to each other) and
    # returns them as a two-element array of <code>IO</code> objects:
    # <code>[</code> <i>read_file</i>, <i>write_file</i> <code>]</code>. Not
    # available on all platforms.
    # 
    # In the example below, the two processes close the ends of the pipe
    # that they are not using. This is not just a cosmetic nicety. The
    # read end of a pipe will not generate an end of file condition if
    # there are any writers with the pipe still open. In the case of the
    # parent process, the <code>rd.read</code> will never return if it
    # does not first issue a <code>wr.close</code>.
    # 
    #    rd, wr = IO.pipe
    # 
    #    if fork
    #      wr.close
    #      puts "Parent got: <#{rd.read}>"
    #      rd.close
    #      Process.wait
    #    else
    #      rd.close
    #      puts "Sending message to parent"
    #      wr.write "Hi Dad"
    #      wr.close
    #    end
    # 
    # <em>produces:</em>
    # 
    #    Sending message to parent
    #    Parent got: <Hi Dad>
    def self.pipe()
        #This is a stub, used for indexing
    end
    # ios.reopen(other_IO)         => ios 
    # ios.reopen(path, mode_str)   => ios
    #  
    # Reassociates <em>ios</em> with the I/O stream given in
    # <i>other_IO</i> or to a new stream opened on <i>path</i>. This may
    # dynamically change the actual class of this stream.
    # 
    #    f1 = File.new("testfile")
    #    f2 = File.new("testfile")
    #    f2.readlines[0]   #=> "This is line one\n"
    #    f2.reopen(f1)     #=> #<File:testfile>
    #    f2.readlines[0]   #=> "This is line one\n"
    def reopen(*several_variants)
        #This is a stub, used for indexing
    end
    # ios.print()             => nil
    # ios.print(obj, ...)     => nil
    #  
    # Writes the given object(s) to <em>ios</em>. The stream must be
    # opened for writing. If the output record separator (<code>$\\</code>)
    # is not <code>nil</code>, it will be appended to the output. If no
    # arguments are given, prints <code>$_</code>. Objects that aren't
    # strings will be converted by calling their <code>to_s</code> method.
    # With no argument, prints the contents of the variable <code>$_</code>.
    # Returns <code>nil</code>.
    # 
    #    $stdout.print("This is ", 100, " percent.\n")
    # 
    # <em>produces:</em>
    # 
    #    This is 100 percent.
    def print(*several_variants)
        #This is a stub, used for indexing
    end
    # ios.putc(obj)    => obj
    #  
    # If <i>obj</i> is <code>Numeric</code>, write the character whose
    # code is <i>obj</i>, otherwise write the first character of the
    # string representation of  <i>obj</i> to <em>ios</em>.
    # 
    #    $stdout.putc "A"
    #    $stdout.putc 65
    # 
    # <em>produces:</em>
    # 
    #    AA
    def putc(obj)
        #This is a stub, used for indexing
    end
    # ios.puts(obj, ...)    => nil
    #  
    # Writes the given objects to <em>ios</em> as with
    # <code>IO#print</code>. Writes a record separator (typically a
    # newline) after any that do not already end with a newline sequence.
    # If called with an array argument, writes each element on a new line.
    # If called without arguments, outputs a single record separator.
    # 
    #    $stdout.puts("this", "is", "a", "test")
    # 
    # <em>produces:</em>
    # 
    #    this
    #    is
    #    a
    #    test
    def puts(obj='', *arg)
        #This is a stub, used for indexing
    end
    # ios.printf(format_string [, obj, ...] )   => nil
    #  
    # Formats and writes to <em>ios</em>, converting parameters under
    # control of the format string. See <code>Kernel#sprintf</code>
    # for details.
    def printf(format_string, *objects)
        #This is a stub, used for indexing
    end
    # ios.each(sep_string=$/)      {|line| block }  => ios
    # ios.each_line(sep_string=$/) {|line| block }  => ios
    #  
    # Executes the block for every line in <em>ios</em>, where lines are
    # separated by <i>sep_string</i>. <em>ios</em> must be opened for
    # reading or an <code>IOError</code> will be raised.
    # 
    #    f = File.new("testfile")
    #    f.each {|line| puts "#{f.lineno}: #{line}" }
    # 
    # <em>produces:</em>
    # 
    #    1: This is line one
    #    2: This is line two
    #    3: This is line three
    #    4: And so on...
    def each(sep_string=$/)
        #This is a stub, used for indexing
    end
    # ios.each(sep_string=$/)      {|line| block }  => ios
    # ios.each_line(sep_string=$/) {|line| block }  => ios
    #  
    # Executes the block for every line in <em>ios</em>, where lines are
    # separated by <i>sep_string</i>. <em>ios</em> must be opened for
    # reading or an <code>IOError</code> will be raised.
    # 
    #    f = File.new("testfile")
    #    f.each {|line| puts "#{f.lineno}: #{line}" }
    # 
    # <em>produces:</em>
    # 
    #    1: This is line one
    #    2: This is line two
    #    3: This is line three
    #    4: And so on...
    def each_line(sep_string=$/)
        #This is a stub, used for indexing
    end
    # ios.each_byte {|byte| block }  => ios
    #  
    # Calls the given block once for each byte (0..255) in <em>ios</em>,
    # passing the byte as an argument. The stream must be opened for
    # reading or an <code>IOError</code> will be raised.
    # 
    #    f = File.new("testfile")
    #    checksum = 0
    #    f.each_byte {|x| checksum ^= x }   #=> #<File:testfile>
    #    checksum                           #=> 12
    def each_byte()
        #This is a stub, used for indexing
    end
    # ios.each_char {|c| block }  => ios
    #  
    # Calls the given block once for each character in <em>ios</em>,
    # passing the character as an argument. The stream must be opened for
    # reading or an <code>IOError</code> will be raised.  Multibyte
    # characters are dealt with according to $KCODE.
    # 
    #    f = File.new("testfile")
    #    f.each_char {|c| print c, ' ' }   #=> #<File:testfile>
    def each_char()
        #This is a stub, used for indexing
    end
    # ios.lines(sep=$/)     => anEnumerator
    # ios.lines(limit)      => anEnumerator
    # ios.lines(sep, limit) => anEnumerator
    #  
    # Returns an enumerator that gives each line in <em>ios</em>.
    # The stream must be opened for reading or an <code>IOError</code>
    # will be raised.
    # 
    #    f = File.new("testfile")
    #    f.lines.to_a  #=> ["foo\n", "bar\n"]
    #    f.rewind
    #    f.lines.sort  #=> ["bar\n", "foo\n"]
    def lines(*several_variants)
        #This is a stub, used for indexing
    end
    # ios.bytes   => anEnumerator
    #  
    # Returns an enumerator that gives each byte (0..255) in <em>ios</em>.
    # The stream must be opened for reading or an <code>IOError</code>
    # will be raised.
    # 
    #    f = File.new("testfile")
    #    f.bytes.to_a  #=> [104, 101, 108, 108, 111]
    #    f.rewind
    #    f.bytes.sort  #=> [101, 104, 108, 108, 111]
    def bytes()
        #This is a stub, used for indexing
    end
    # ios.each_char {|c| block }  => ios
    #  
    # Calls the given block once for each character in <em>ios</em>,
    # passing the character as an argument. The stream must be opened for
    # reading or an <code>IOError</code> will be raised.  Multibyte
    # characters are dealt with according to $KCODE.
    # 
    #    f = File.new("testfile")
    #    f.each_char {|c| print c, ' ' }   #=> #<File:testfile>
    def chars()
        #This is a stub, used for indexing
    end
    # ios.syswrite(string)   => integer
    #  
    # Writes the given string to <em>ios</em> using a low-level write.
    # Returns the number of bytes written. Do not mix with other methods
    # that write to <em>ios</em> or you may get unpredictable results.
    # Raises <code>SystemCallError</code> on error.
    # 
    #    f = File.new("out", "w")
    #    f.syswrite("ABCDEF")   #=> 6
    def syswrite(string)
        #This is a stub, used for indexing
    end
    # ios.sysread(integer )    => string
    #  
    # Reads <i>integer</i> bytes from <em>ios</em> using a low-level
    # read and returns them as a string. Do not mix with other methods
    # that read from <em>ios</em> or you may get unpredictable results.
    # Raises <code>SystemCallError</code> on error and
    # <code>EOFError</code> at end of file.
    # 
    #    f = File.new("testfile")
    #    f.sysread(16)   #=> "This is line one"
    def sysread(integer )
        #This is a stub, used for indexing
    end
    # ios.fileno    => fixnum
    # ios.to_i      => fixnum
    #  
    # Returns an integer representing the numeric file descriptor for
    # <em>ios</em>.
    # 
    #    $stdin.fileno    #=> 0
    #    $stdout.fileno   #=> 1
    def fileno()
        #This is a stub, used for indexing
    end
    alias to_i fileno
    # ios.to_io -> ios
    #  
    # Returns <em>ios</em>.
    def to_io()
        #This is a stub, used for indexing
    end
    # ios.fsync   => 0 or nil
    #  
    # Immediately writes all buffered data in <em>ios</em> to disk.
    # Returns <code>nil</code> if the underlying operating system does not
    # support <em>fsync(2)</em>. Note that <code>fsync</code> differs from
    # using <code>IO#sync=</code>. The latter ensures that data is flushed
    # from Ruby's buffers, but doesn't not guarantee that the underlying
    # operating system actually writes it to disk.
    def fsync()
        #This is a stub, used for indexing
    end
    # ios.sync    => true or false
    #  
    # Returns the current ``sync mode'' of <em>ios</em>. When sync mode is
    # true, all output is immediately flushed to the underlying operating
    # system and is not buffered by Ruby internally. See also
    # <code>IO#fsync</code>.
    # 
    #    f = File.new("testfile")
    #    f.sync   #=> false
    def sync()
        #This is a stub, used for indexing
    end
    # ios.sync = boolean   => boolean
    #  
    # Sets the ``sync mode'' to <code>true</code> or <code>false</code>.
    # When sync mode is true, all output is immediately flushed to the
    # underlying operating system and is not buffered internally. Returns
    # the new state. See also <code>IO#fsync</code>.
    # 
    #    f = File.new("testfile")
    #    f.sync = true
    # 
    # <em>(produces no output)</em>
    def sync= boolean
        #This is a stub, used for indexing
    end
    # ios.lineno    => integer
    #  
    # Returns the current line number in <em>ios</em>. The stream must be
    # opened for reading. <code>lineno</code> counts the number of times
    # <code>gets</code> is called, rather than the number of newlines
    # encountered. The two values will differ if <code>gets</code> is
    # called with a separator other than newline. See also the
    # <code>$.</code> variable.
    # 
    #    f = File.new("testfile")
    #    f.lineno   #=> 0
    #    f.gets     #=> "This is line one\n"
    #    f.lineno   #=> 1
    #    f.gets     #=> "This is line two\n"
    #    f.lineno   #=> 2
    def lineno()
        #This is a stub, used for indexing
    end
    # ios.lineno = integer    => integer
    #  
    # Manually sets the current line number to the given value.
    # <code>$.</code> is updated only on the next read.
    # 
    #    f = File.new("testfile")
    #    f.gets                     #=> "This is line one\n"
    #    $.                         #=> 1
    #    f.lineno = 1000
    #    f.lineno                   #=> 1000
    #    $. # lineno of last read   #=> 1
    #    f.gets                     #=> "This is line two\n"
    #    $. # lineno of last read   #=> 1001
    def lineno= integer
        #This is a stub, used for indexing
    end
    # ios.readlines(sep_string=$/)  =>   array
    #  
    # Reads all of the lines in <em>ios</em>, and returns them in
    # <i>anArray</i>. Lines are separated by the optional
    # <i>sep_string</i>. If <i>sep_string</i> is <code>nil</code>, the
    # rest of the stream is returned as a single record.
    # The stream must be opened for reading or an
    # <code>IOError</code> will be raised.
    # 
    #    f = File.new("testfile")
    #    f.readlines[0]   #=> "This is line one\n"
    def readlines(sep_string=$/)
        #This is a stub, used for indexing
    end
    # ios.read_nonblock(maxlen)              => string
    # ios.read_nonblock(maxlen, outbuf)      => outbuf
    #  
    # Reads at most <i>maxlen</i> bytes from <em>ios</em> using
    # read(2) system call after O_NONBLOCK is set for
    # the underlying file descriptor.
    # 
    # If the optional <i>outbuf</i> argument is present,
    # it must reference a String, which will receive the data.
    # 
    # read_nonblock just calls read(2).
    # It causes all errors read(2) causes: EAGAIN, EINTR, etc.
    # The caller should care such errors.
    # 
    # read_nonblock causes EOFError on EOF.
    # 
    # If the read buffer is not empty,
    # read_nonblock reads from the buffer like readpartial.
    # In this case, read(2) is not called.
    def read_nonblock(*several_variants)
        #This is a stub, used for indexing
    end
    # ios.write_nonblock(string)   => integer
    #  
    # Writes the given string to <em>ios</em> using
    # write(2) system call after O_NONBLOCK is set for
    # the underlying file descriptor.
    # 
    # write_nonblock just calls write(2).
    # It causes all errors write(2) causes: EAGAIN, EINTR, etc.
    # The result may also be smaller than string.length (partial write).
    # The caller should care such errors and partial write.
    def write_nonblock(string)
        #This is a stub, used for indexing
    end
    # ios.readpartial(maxlen)              => string
    # ios.readpartial(maxlen, outbuf)      => outbuf
    #  
    # Reads at most <i>maxlen</i> bytes from the I/O stream.
    # It blocks only if <em>ios</em> has no data immediately available.
    # It doesn't block if some data available.
    # If the optional <i>outbuf</i> argument is present,
    # it must reference a String, which will receive the data.
    # It raises <code>EOFError</code> on end of file.
    # 
    # readpartial is designed for streams such as pipe, socket, tty, etc.
    # It blocks only when no data immediately available.
    # This means that it blocks only when following all conditions hold.
    # * the buffer in the IO object is empty.
    # * the content of the stream is empty.
    # * the stream is not reached to EOF.
    # 
    # When readpartial blocks, it waits data or EOF on the stream.
    # If some data is reached, readpartial returns with the data.
    # If EOF is reached, readpartial raises EOFError.
    # 
    # When readpartial doesn't blocks, it returns or raises immediately.
    # If the buffer is not empty, it returns the data in the buffer.
    # Otherwise if the stream has some content,
    # it returns the data in the stream. 
    # Otherwise if the stream is reached to EOF, it raises EOFError.
    # 
    #    r, w = IO.pipe           #               buffer          pipe content
    #    w << "abc"               #               ""              "abc".
    #    r.readpartial(4096)      #=> "abc"       ""              ""
    #    r.readpartial(4096)      # blocks because buffer and pipe is empty.
    # 
    #    r, w = IO.pipe           #               buffer          pipe content
    #    w << "abc"               #               ""              "abc"
    #    w.close                  #               ""              "abc" EOF
    #    r.readpartial(4096)      #=> "abc"       ""              EOF
    #    r.readpartial(4096)      # raises EOFError
    # 
    #    r, w = IO.pipe           #               buffer          pipe content
    #    w << "abc\ndef\n"        #               ""              "abc\ndef\n"
    #    r.gets                   #=> "abc\n"     "def\n"         ""
    #    w << "ghi\n"             #               "def\n"         "ghi\n"
    #    r.readpartial(4096)      #=> "def\n"     ""              "ghi\n"
    #    r.readpartial(4096)      #=> "ghi\n"     ""              ""
    # 
    # Note that readpartial behaves similar to sysread.
    # The differences are:
    # * If the buffer is not empty, read from the buffer instead of "sysread for buffered IO (IOError)".
    # * It doesn't cause Errno::EAGAIN and Errno::EINTR.  When readpartial meets EAGAIN and EINTR by read system call, readpartial retry the system call.
    # 
    # The later means that readpartial is nonblocking-flag insensitive.
    # It blocks on the situation IO#sysread causes Errno::EAGAIN as if the fd is blocking mode.
    def readpartial(*several_variants)
        #This is a stub, used for indexing
    end
    # ios.read([length [, buffer]])    => string, buffer, or nil
    #  
    # Reads at most <i>length</i> bytes from the I/O stream, or to the
    # end of file if <i>length</i> is omitted or is <code>nil</code>.
    # <i>length</i> must be a non-negative integer or nil.
    # If the optional <i>buffer</i> argument is present, it must reference
    # a String, which will receive the data.
    # 
    # At end of file, it returns <code>nil</code> or <code>""</code>
    # depend on <i>length</i>.
    # <code><i>ios</i>.read()</code> and
    # <code><i>ios</i>.read(nil)</code> returns <code>""</code>.
    # <code><i>ios</i>.read(<i>positive-integer</i>)</code> returns nil.
    # 
    #    f = File.new("testfile")
    #    f.read(16)   #=> "This is line one"
    def read(*args)
        #This is a stub, used for indexing
    end
    # ios.write(string)    => integer
    #  
    # Writes the given string to <em>ios</em>. The stream must be opened
    # for writing. If the argument is not a string, it will be converted
    # to a string using <code>to_s</code>. Returns the number of bytes
    # written.
    # 
    #    count = $stdout.write( "This is a test\n" )
    #    puts "That was #{count} bytes of data"
    # 
    # <em>produces:</em>
    # 
    #    This is a test
    #    That was 15 bytes of data
    def write(string)
        #This is a stub, used for indexing
    end
    # ios.gets(sep_string=$/)   => string or nil
    #  
    # Reads the next ``line'' from the I/O stream; lines are separated by
    # <i>sep_string</i>. A separator of <code>nil</code> reads the entire
    # contents, and a zero-length separator reads the input a paragraph at
    # a time (two successive newlines in the input separate paragraphs).
    # The stream must be opened for reading or an <code>IOError</code>
    # will be raised. The line read in will be returned and also assigned
    # to <code>$_</code>. Returns <code>nil</code> if called at end of
    # file.
    # 
    #    File.new("testfile").gets   #=> "This is line one\n"
    #    $_                          #=> "This is line one\n"
    def gets(sep_string=$/)
        #This is a stub, used for indexing
    end
    # ios.readline(sep_string=$/)   => string
    #  
    # Reads a line as with <code>IO#gets</code>, but raises an
    # <code>EOFError</code> on end of file.
    def readline(sep_string=$/)
        #This is a stub, used for indexing
    end
    # ios.getc   => fixnum or nil
    #  
    # Gets the next 8-bit byte (0..255) from <em>ios</em>. Returns
    # <code>nil</code> if called at end of file.
    # 
    #    f = File.new("testfile")
    #    f.getc   #=> 84
    #    f.getc   #=> 104
    def getc()
        #This is a stub, used for indexing
    end
    # ios.getc   => fixnum or nil
    #  
    # Gets the next 8-bit byte (0..255) from <em>ios</em>. Returns
    # <code>nil</code> if called at end of file.
    # 
    #    f = File.new("testfile")
    #    f.getc   #=> 84
    #    f.getc   #=> 104
    def getbyte()
        #This is a stub, used for indexing
    end
    # ios.readchar   => fixnum
    #  
    # Reads a character as with <code>IO#getc</code>, but raises an
    # <code>EOFError</code> on end of file.
    def readchar()
        #This is a stub, used for indexing
    end
    # ios.readchar   => fixnum
    #  
    # Reads a character as with <code>IO#getc</code>, but raises an
    # <code>EOFError</code> on end of file.
    def readbyte()
        #This is a stub, used for indexing
    end
    # ios.ungetc(integer)   => nil
    #  
    # Pushes back one character (passed as a parameter) onto <em>ios</em>,
    # such that a subsequent buffered read will return it. Only one character
    # may be pushed back before a subsequent read operation (that is,
    # you will be able to read only the last of several characters that have been pushed
    # back). Has no effect with unbuffered reads (such as <code>IO#sysread</code>).
    # 
    #    f = File.new("testfile")   #=> #<File:testfile>
    #    c = f.getc                 #=> 84
    #    f.ungetc(c)                #=> nil
    #    f.getc                     #=> 84
    def ungetc(integer)
        #This is a stub, used for indexing
    end
    # ios << obj     => ios
    #  
    # String Output---Writes <i>obj</i> to <em>ios</em>.
    # <i>obj</i> will be converted to a string using
    # <code>to_s</code>.
    # 
    #    $stdout << "Hello " << "world!\n"
    # 
    # <em>produces:</em>
    # 
    #    Hello world!
    def << obj
        #This is a stub, used for indexing
    end
    # ios.flush    => ios
    #  
    # Flushes any buffered data within <em>ios</em> to the underlying
    # operating system (note that this is Ruby internal buffering only;
    # the OS may buffer the data as well).
    # 
    #    $stdout.print "no newline"
    #    $stdout.flush
    # 
    # <em>produces:</em>
    # 
    #    no newline
    def flush()
        #This is a stub, used for indexing
    end
    # ios.pos     => integer
    # ios.tell    => integer
    #  
    # Returns the current offset (in bytes) of <em>ios</em>.
    # 
    #    f = File.new("testfile")
    #    f.pos    #=> 0
    #    f.gets   #=> "This is line one\n"
    #    f.pos    #=> 17
    def tell()
        #This is a stub, used for indexing
    end
    # ios.seek(amount, whence=SEEK_SET) -> 0
    #  
    # Seeks to a given offset <i>anInteger</i> in the stream according to
    # the value of <i>whence</i>:
    # 
    #   IO::SEEK_CUR  | Seeks to _amount_ plus current position
    #   --------------+----------------------------------------------------
    #   IO::SEEK_END  | Seeks to _amount_ plus end of stream (you probably 
    #                 | want a negative value for _amount_)
    #   --------------+----------------------------------------------------
    #   IO::SEEK_SET  | Seeks to the absolute location given by _amount_
    # 
    # Example:
    # 
    #    f = File.new("testfile")
    #    f.seek(-13, IO::SEEK_END)   #=> 0
    #    f.readline                  #=> "And so on...\n"
    def seek(amount, whence=SEEK_SET)
        #This is a stub, used for indexing
    end
    # ios.rewind    => 0
    #  
    # Positions <em>ios</em> to the beginning of input, resetting
    # <code>lineno</code> to zero.
    # 
    #    f = File.new("testfile")
    #    f.readline   #=> "This is line one\n"
    #    f.rewind     #=> 0
    #    f.lineno     #=> 0
    #    f.readline   #=> "This is line one\n"
    def rewind()
        #This is a stub, used for indexing
    end
    # ios.pos     => integer
    # ios.tell    => integer
    #  
    # Returns the current offset (in bytes) of <em>ios</em>.
    # 
    #    f = File.new("testfile")
    #    f.pos    #=> 0
    #    f.gets   #=> "This is line one\n"
    #    f.pos    #=> 17
    def pos()
        #This is a stub, used for indexing
    end
    # ios.pos = integer    => integer
    #  
    # Seeks to the given position (in bytes) in <em>ios</em>.
    # 
    #    f = File.new("testfile")
    #    f.pos = 17
    #    f.gets   #=> "This is line two\n"
    def pos= integer
        #This is a stub, used for indexing
    end
    # ios.eof     => true or false
    # ios.eof?    => true or false
    #  
    # Returns true if <em>ios</em> is at end of file that means
    # there are no more data to read.
    # The stream must be opened for reading or an <code>IOError</code> will be
    # raised.
    # 
    #    f = File.new("testfile")
    #    dummy = f.readlines
    #    f.eof   #=> true
    # 
    # If <em>ios</em> is a stream such as pipe or socket, <code>IO#eof?</code>
    # blocks until the other end sends some data or closes it.
    # 
    #    r, w = IO.pipe
    #    Thread.new { sleep 1; w.close }
    #    r.eof?  #=> true after 1 second blocking
    # 
    #    r, w = IO.pipe
    #    Thread.new { sleep 1; w.puts "a" }
    #    r.eof?  #=> false after 1 second blocking
    # 
    #    r, w = IO.pipe
    #    r.eof?  # blocks forever
    # 
    # Note that <code>IO#eof?</code> reads data to a input buffer.
    # So <code>IO#sysread</code> doesn't work with <code>IO#eof?</code>.
    def eof()
        #This is a stub, used for indexing
    end
    # ios.eof     => true or false
    # ios.eof?    => true or false
    #  
    # Returns true if <em>ios</em> is at end of file that means
    # there are no more data to read.
    # The stream must be opened for reading or an <code>IOError</code> will be
    # raised.
    # 
    #    f = File.new("testfile")
    #    dummy = f.readlines
    #    f.eof   #=> true
    # 
    # If <em>ios</em> is a stream such as pipe or socket, <code>IO#eof?</code>
    # blocks until the other end sends some data or closes it.
    # 
    #    r, w = IO.pipe
    #    Thread.new { sleep 1; w.close }
    #    r.eof?  #=> true after 1 second blocking
    # 
    #    r, w = IO.pipe
    #    Thread.new { sleep 1; w.puts "a" }
    #    r.eof?  #=> false after 1 second blocking
    # 
    #    r, w = IO.pipe
    #    r.eof?  # blocks forever
    # 
    # Note that <code>IO#eof?</code> reads data to a input buffer.
    # So <code>IO#sysread</code> doesn't work with <code>IO#eof?</code>.
    def eof?()
        #This is a stub, used for indexing
    end
    # ios.close   => nil
    #  
    # Closes <em>ios</em> and flushes any pending writes to the operating
    # system. The stream is unavailable for any further data operations;
    # an <code>IOError</code> is raised if such an attempt is made. I/O
    # streams are automatically closed when they are claimed by the
    # garbage collector.
    # 
    # If <em>ios</em> is opened by <code>IO.popen</code>,
    # <code>close</code> sets <code>$?</code>.
    def close()
        #This is a stub, used for indexing
    end
    # ios.closed?    => true or false
    #  
    # Returns <code>true</code> if <em>ios</em> is completely closed (for
    # duplex streams, both reader and writer), <code>false</code>
    # otherwise.
    # 
    #    f = File.new("testfile")
    #    f.close         #=> nil
    #    f.closed?       #=> true
    #    f = IO.popen("/bin/sh","r+")
    #    f.close_write   #=> nil
    #    f.closed?       #=> false
    #    f.close_read    #=> nil
    #    f.closed?       #=> true
    def closed?()
        #This is a stub, used for indexing
    end
    # ios.close_read    => nil
    #  
    # Closes the read end of a duplex I/O stream (i.e., one that contains
    # both a read and a write stream, such as a pipe). Will raise an
    # <code>IOError</code> if the stream is not duplexed.
    # 
    #    f = IO.popen("/bin/sh","r+")
    #    f.close_read
    #    f.readlines
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:3:in `readlines': not opened for reading (IOError)
    #     from prog.rb:3
    def close_read()
        #This is a stub, used for indexing
    end
    # ios.close_write   => nil
    #  
    # Closes the write end of a duplex I/O stream (i.e., one that contains
    # both a read and a write stream, such as a pipe). Will raise an
    # <code>IOError</code> if the stream is not duplexed.
    # 
    #    f = IO.popen("/bin/sh","r+")
    #    f.close_write
    #    f.print "nowhere"
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:3:in `write': not opened for writing (IOError)
    #     from prog.rb:3:in `print'
    #     from prog.rb:3
    def close_write()
        #This is a stub, used for indexing
    end
    # ios.isatty   => true or false
    # ios.tty?     => true or false
    #  
    # Returns <code>true</code> if <em>ios</em> is associated with a
    # terminal device (tty), <code>false</code> otherwise.
    # 
    #    File.new("testfile").isatty   #=> false
    #    File.new("/dev/tty").isatty   #=> true
    def isatty()
        #This is a stub, used for indexing
    end
    # ios.isatty   => true or false
    # ios.tty?     => true or false
    #  
    # Returns <code>true</code> if <em>ios</em> is associated with a
    # terminal device (tty), <code>false</code> otherwise.
    # 
    #    File.new("testfile").isatty   #=> false
    #    File.new("/dev/tty").isatty   #=> true
    def tty?()
        #This is a stub, used for indexing
    end
    # ios.binmode    => ios
    #  
    # Puts <em>ios</em> into binary mode. This is useful only in
    # MS-DOS/Windows environments. Once a stream is in binary mode, it
    # cannot be reset to nonbinary mode.
    def binmode()
        #This is a stub, used for indexing
    end
    # ios.sysseek(offset, whence=SEEK_SET)   => integer
    #  
    # Seeks to a given <i>offset</i> in the stream according to the value
    # of <i>whence</i> (see <code>IO#seek</code> for values of
    # <i>whence</i>). Returns the new offset into the file.
    # 
    #    f = File.new("testfile")
    #    f.sysseek(-13, IO::SEEK_END)   #=> 53
    #    f.sysread(10)                  #=> "And so on."
    def sysseek(offset, whence=SEEK_SET)
        #This is a stub, used for indexing
    end
    # ios.ioctl(integer_cmd, arg)    => integer
    #  
    # Provides a mechanism for issuing low-level commands to control or
    # query I/O devices. Arguments and results are platform dependent. If
    # <i>arg</i> is a number, its value is passed directly. If it is a
    # string, it is interpreted as a binary sequence of bytes. On Unix
    # platforms, see <code>ioctl(2)</code> for details. Not implemented on
    # all platforms.
    def ioctl(integer_cmd, arg)
        #This is a stub, used for indexing
    end
    # ios.fcntl(integer_cmd, arg)    => integer
    #  
    # Provides a mechanism for issuing low-level commands to control or
    # query file-oriented I/O streams. Arguments and results are platform
    # dependent. If <i>arg</i> is a number, its value is passed
    # directly. If it is a string, it is interpreted as a binary sequence
    # of bytes (<code>Array#pack</code> might be a useful way to build this
    # string). On Unix platforms, see <code>fcntl(2)</code> for details.
    # Not implemented on all platforms.
    def fcntl(integer_cmd, arg)
        #This is a stub, used for indexing
    end
    # ios.pid    => fixnum
    #  
    # Returns the process ID of a child process associated with
    # <em>ios</em>. This will be set by <code>IO::popen</code>.
    # 
    #    pipe = IO.popen("-")
    #    if pipe
    #      $stderr.puts "In parent, child pid is #{pipe.pid}"
    #    else
    #      $stderr.puts "In child, pid is #{$$}"
    #    end
    # 
    # <em>produces:</em>
    # 
    #    In child, pid is 26209
    #    In parent, child pid is 26209
    def pid()
        #This is a stub, used for indexing
    end
    # ios.inspect   => string
    #  
    # Return a string describing this IO object.
    def inspect()
        #This is a stub, used for indexing
    end
    def to_i()
        #This is a stub, used for indexing
    end
end
