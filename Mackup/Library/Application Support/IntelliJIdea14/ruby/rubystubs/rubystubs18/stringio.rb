=begin
 This is a machine generated stub using stdlib-doc for <b>class StringIO</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Pseudo I/O on String object.
class StringIO < Data
    include Enumerable
    # StringIO.open(string=""[, mode]) {|strio| ...}
    #  
    # Equivalent to StringIO.new except that when it is called with a block, it
    # yields with the new instance and closes it, and returns the result which
    # returned from the block.
    def self.open(string="", *mode)
        #This is a stub, used for indexing
    end
    # StringIO.new(string=""[, mode])
    #  
    # Creates new StringIO instance from with _string_ and _mode_.
    def self.new(string="", *mode)
        #This is a stub, used for indexing
    end
    # strio.reopen(other_StrIO)     -> strio
    # strio.reopen(string, mode)    -> strio
    #  
    # Reinitializes *strio* with the given <i>other_StrIO</i> or _string_ 
    # and _mode_ (see StringIO#new).
    def reopen(*several_variants)
        #This is a stub, used for indexing
    end
    # strio.string     -> string
    #  
    # Returns underlying String object, the subject of IO.
    def string()
        #This is a stub, used for indexing
    end
    # strio.string = string  -> string
    #  
    # Changes underlying String object, the subject of IO.
    def string= string
        #This is a stub, used for indexing
    end
    # strio.lineno    -> integer
    #  
    # Returns the current line number in *strio*. The stringio must be
    # opened for reading. +lineno+ counts the number of times  +gets+ is
    # called, rather than the number of newlines  encountered. The two
    # values will differ if +gets+ is  called with a separator other than
    # newline.  See also the  <code>$.</code> variable.
    def lineno()
        #This is a stub, used for indexing
    end
    # strio.lineno = integer    -> integer
    #  
    # Manually sets the current line number to the given value.
    # <code>$.</code> is updated only on the next read.
    def lineno= integer
        #This is a stub, used for indexing
    end
    # strio.binmode -> true
    # Returns *strio* itself.  Just for compatibility to IO.
    def binmode()
        #This is a stub, used for indexing
    end
    # strio.close  -> nil
    #  
    # Closes strio.  The *strio* is unavailable for any further data 
    # operations; an +IOError+ is raised if such an attempt is made.
    def close()
        #This is a stub, used for indexing
    end
    # strio.close_read    -> nil
    #  
    # Closes the read end of a StringIO.  Will raise an +IOError+ if the
    # *strio* is not readable.
    def close_read()
        #This is a stub, used for indexing
    end
    # strio.close_write    -> nil
    #  
    # Closes the write end of a StringIO.  Will raise an  +IOError+ if the
    # *strio* is not writeable.
    def close_write()
        #This is a stub, used for indexing
    end
    # strio.closed?    -> true or false
    #  
    # Returns +true+ if *strio* is completely closed, +false+ otherwise.
    def closed?()
        #This is a stub, used for indexing
    end
    # strio.closed_read?    -> true or false
    #  
    # Returns +true+ if *strio* is not readable, +false+ otherwise.
    def closed_read?()
        #This is a stub, used for indexing
    end
    # strio.closed_write?    -> true or false
    #  
    # Returns +true+ if *strio* is not writable, +false+ otherwise.
    def closed_write?()
        #This is a stub, used for indexing
    end
    # strio.eof     -> true or false
    # strio.eof?    -> true or false
    #  
    # Returns true if *strio* is at end of file. The stringio must be  
    # opened for reading or an +IOError+ will be raised.
    def eof()
        #This is a stub, used for indexing
    end
    # strio.eof     -> true or false
    # strio.eof?    -> true or false
    #  
    # Returns true if *strio* is at end of file. The stringio must be  
    # opened for reading or an +IOError+ will be raised.
    def eof?()
        #This is a stub, used for indexing
    end
    # strio.fcntl
    # Raises NotImplementedError.
    def fcntl()
        #This is a stub, used for indexing
    end
    # strio.flush -> strio
    # Returns *strio* itself.  Just for compatibility to IO.
    def flush()
        #This is a stub, used for indexing
    end
    # strio.fsync -> 0
    # Returns 0.  Just for compatibility to IO.
    def fsync()
        #This is a stub, used for indexing
    end
    # strio.pos     -> integer
    # strio.tell    -> integer
    #  
    # Returns the current offset (in bytes) of *strio*.
    def pos()
        #This is a stub, used for indexing
    end
    # strio.pos = integer    -> integer
    #  
    # Seeks to the given position (in bytes) in *strio*.
    def pos= integer
        #This is a stub, used for indexing
    end
    # strio.rewind    -> 0
    #  
    # Positions *strio* to the beginning of input, resetting
    # +lineno+ to zero.
    def rewind()
        #This is a stub, used for indexing
    end
    # strio.seek(amount, whence=SEEK_SET) -> 0
    #  
    # Seeks to a given offset _amount_ in the stream according to
    # the value of _whence_ (see IO#seek).
    def seek(amount, whence=SEEK_SET)
        #This is a stub, used for indexing
    end
    # strio.sync    -> true
    #  
    # Returns +true+ always.
    def sync()
        #This is a stub, used for indexing
    end
    # strio.sync = boolean -> boolean
    # Returns the argument unchanged.  Just for compatibility to IO.
    def sync= boolean
        #This is a stub, used for indexing
    end
    # strio.pos     -> integer
    # strio.tell    -> integer
    #  
    # Returns the current offset (in bytes) of *strio*.
    def tell()
        #This is a stub, used for indexing
    end
    # strio.path -> nil
    # Returns +nil+.  Just for compatibility to IO.
    def path()
        #This is a stub, used for indexing
    end
    # strio.each(sep_string=$/)      {|line| block }  -> strio
    # strio.each_line(sep_string=$/) {|line| block }  -> strio
    #  
    # See IO#each.
    def each(sep_string=$/)
        #This is a stub, used for indexing
    end
    # strio.each(sep_string=$/)      {|line| block }  -> strio
    # strio.each_line(sep_string=$/) {|line| block }  -> strio
    #  
    # See IO#each.
    def each_line(sep_string=$/)
        #This is a stub, used for indexing
    end
    # strio.each(sep_string=$/)      {|line| block }  -> strio
    # strio.each_line(sep_string=$/) {|line| block }  -> strio
    #  
    # See IO#each.
    def lines(*args)
        #This is a stub, used for indexing
    end
    # strio.each_byte {|byte| block }  -> strio
    #  
    # See IO#each_byte.
    def each_byte()
        #This is a stub, used for indexing
    end
    # strio.each_byte {|byte| block }  -> strio
    #  
    # See IO#each_byte.
    def bytes()
        #This is a stub, used for indexing
    end
    # strio.each_char {|char| block }  -> strio
    #  
    # See IO#each_char.
    def each_char()
        #This is a stub, used for indexing
    end
    # strio.each_char {|char| block }  -> strio
    #  
    # See IO#each_char.
    def chars()
        #This is a stub, used for indexing
    end
    # strio.getc   -> fixnum or nil
    #  
    # See IO#getc.
    def getc()
        #This is a stub, used for indexing
    end
    # strio.getc   -> fixnum or nil
    #  
    # See IO#getc.
    def getbyte()
        #This is a stub, used for indexing
    end
    # strio.ungetc(integer)   -> nil
    #  
    # Pushes back one character (passed as a parameter) onto *strio*
    # such that a subsequent buffered read will return it.  Pushing back 
    # behind the beginning of the buffer string is not possible.  Nothing
    # will be done if such an attempt is made.
    # In other case, there is no limitation for multiple pushbacks.
    def ungetc(integer)
        #This is a stub, used for indexing
    end
    # strio.readchar   -> fixnum
    #  
    # See IO#readchar.
    def readchar()
        #This is a stub, used for indexing
    end
    # strio.readchar   -> fixnum
    #  
    # See IO#readchar.
    def readbyte()
        #This is a stub, used for indexing
    end
    # strio.gets(sep_string=$/)   -> string or nil
    #  
    # See IO#gets.
    def gets(sep_string=$/)
        #This is a stub, used for indexing
    end
    # strio.readline(sep_string=$/)   -> string
    #  
    # See IO#readline.
    def readline(sep_string=$/)
        #This is a stub, used for indexing
    end
    # strio.readlines(sep_string=$/)  ->   array
    #  
    # See IO#readlines.
    def readlines(sep_string=$/)
        #This is a stub, used for indexing
    end
    # strio.read([length [, buffer]])    -> string, buffer, or nil
    #  
    # See IO#read.
    def read(*args)
        #This is a stub, used for indexing
    end
    # strio.sysread(integer[, outbuf])    -> string
    #  
    # Similar to #read, but raises +EOFError+ at end of string instead of
    # returning +nil+, as well as IO#sysread does.
    def sysread(integer, *outbuf)
        #This is a stub, used for indexing
    end
    # strio.write(string)    -> integer
    # strio.syswrite(string) -> integer
    #  
    # Appends the given string to the underlying buffer string of *strio*.
    # The stream must be opened for writing.  If the argument is not a
    # string, it will be converted to a string using <code>to_s</code>.
    # Returns the number of bytes written.  See IO#write.
    def write(string)
        #This is a stub, used for indexing
    end
    # strio << obj     -> strio
    #  
    # See IO#<<.
    def << obj
        #This is a stub, used for indexing
    end
    # strio.print()             -> nil
    # strio.print(obj, ...)     -> nil
    #  
    # See IO#print.
    def print(*several_variants)
        #This is a stub, used for indexing
    end
    # strio.printf(format_string [, obj, ...] )   -> nil
    #  
    # See IO#printf.
    def printf(format_string, *objects)
        #This is a stub, used for indexing
    end
    # strio.putc(obj)    -> obj
    #  
    # See IO#putc.
    def putc(obj)
        #This is a stub, used for indexing
    end
    # strio.puts(obj, ...)    -> nil
    #  
    # See IO#puts.
    def puts(obj='', *arg)
        #This is a stub, used for indexing
    end
    # strio.write(string)    -> integer
    # strio.syswrite(string) -> integer
    #  
    # Appends the given string to the underlying buffer string of *strio*.
    # The stream must be opened for writing.  If the argument is not a
    # string, it will be converted to a string using <code>to_s</code>.
    # Returns the number of bytes written.  See IO#write.
    def syswrite(string)
        #This is a stub, used for indexing
    end
    # strio.isatty -> nil
    # strio.tty? -> nil
    #  
    # Returns +false+.  Just for compatibility to IO.
    def isatty()
        #This is a stub, used for indexing
    end
    # strio.isatty -> nil
    # strio.tty? -> nil
    #  
    # Returns +false+.  Just for compatibility to IO.
    def tty?()
        #This is a stub, used for indexing
    end
    # strio.pid -> nil
    # Returns +nil+.  Just for compatibility to IO.
    def pid()
        #This is a stub, used for indexing
    end
    # strio.fileno -> nil
    # Returns +nil+.  Just for compatibility to IO.
    def fileno()
        #This is a stub, used for indexing
    end
    # strio.size   -> integer
    #  
    # Returns the size of the buffer string.
    def size()
        #This is a stub, used for indexing
    end
    # strio.size   -> integer
    #  
    # Returns the size of the buffer string.
    def length()
        #This is a stub, used for indexing
    end
    # strio.truncate(integer)    -> 0
    #  
    # Truncates the buffer string to at most _integer_ bytes. The *strio*
    # must be opened for writing.
    def truncate(integer)
        #This is a stub, used for indexing
    end
end
