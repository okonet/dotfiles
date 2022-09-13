=begin
 This is a machine generated stub using stdlib-doc for <b>class StringIO</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

require 'generic_readable'
require 'generic_writable'
# Pseudo I/O on String object.
class StringIO < Data
    include Enumerable
    include IO::generic_readable
    include IO::generic_writable
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
    # Raises NotImplementedError.
    def fcntl(*args)
        #This is a stub, used for indexing
    end
    # Returns *strio* itself.  Just for compatibility to IO.
    def flush()
        #This is a stub, used for indexing
    end
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
    # Returns the argument unchanged.  Just for compatibility to IO.
    def sync=(p1)
        #This is a stub, used for indexing
    end
    # strio.pos     -> integer
    # strio.tell    -> integer
    #  
    # Returns the current offset (in bytes) of *strio*.
    def tell()
        #This is a stub, used for indexing
    end
    # strio.each(sep=$/) {|line| block }         -> strio
    # strio.each(limit) {|line| block }          -> strio
    # strio.each(sep, limit) {|line| block }     -> strio
    # strio.each(...)                            -> anEnumerator
    # 
    # strio.each_line(sep=$/) {|line| block }    -> strio
    # strio.each_line(limit) {|line| block }     -> strio
    # strio.each_line(sep,limit) {|line| block } -> strio
    # strio.each_line(...)                       -> anEnumerator
    #  
    # See IO#each.
    def each(*several_variants)
        #This is a stub, used for indexing
    end
    # strio.each(sep=$/) {|line| block }         -> strio
    # strio.each(limit) {|line| block }          -> strio
    # strio.each(sep, limit) {|line| block }     -> strio
    # strio.each(...)                            -> anEnumerator
    # 
    # strio.each_line(sep=$/) {|line| block }    -> strio
    # strio.each_line(limit) {|line| block }     -> strio
    # strio.each_line(sep,limit) {|line| block } -> strio
    # strio.each_line(...)                       -> anEnumerator
    #  
    # See IO#each.
    def each_line(*several_variants)
        #This is a stub, used for indexing
    end
    # This is a deprecated alias for <code>each_line</code>.
    def lines(*args)
        #This is a stub, used for indexing
    end
    # strio.each_byte {|byte| block }  -> strio
    # strio.each_byte                  -> anEnumerator
    #  
    # See IO#each_byte.
    def each_byte(*several_variants)
        #This is a stub, used for indexing
    end
    # This is a deprecated alias for #each_byte.
    def bytes()
        #This is a stub, used for indexing
    end
    # strio.each_char {|char| block }  -> strio
    # strio.each_char                  -> anEnumerator
    #  
    # See IO#each_char.
    def each_char(*several_variants)
        #This is a stub, used for indexing
    end
    # This is a deprecated alias for <code>each_char</code>.
    def chars()
        #This is a stub, used for indexing
    end
    # strio.each_codepoint {|c| block }  -> strio
    # strio.each_codepoint               -> anEnumerator
    #  
    # See IO#each_codepoint.
    def each_codepoint(*several_variants)
        #This is a stub, used for indexing
    end
    # This is a deprecated alias for <code>each_codepoint</code>.
    def codepoints()
        #This is a stub, used for indexing
    end
    # strio.getc   -> string or nil
    #  
    # See IO#getc.
    def getc()
        #This is a stub, used for indexing
    end
    # strio.ungetc(string)   -> nil
    #  
    # Pushes back one character (passed as a parameter) onto *strio*
    # such that a subsequent buffered read will return it.  There is no
    # limitation for multiple pushbacks including pushing back behind the
    # beginning of the buffer string.
    def ungetc(string)
        #This is a stub, used for indexing
    end
    # strio.ungetbyte(fixnum)   -> nil
    #  
    # See IO#ungetbyte
    def ungetbyte(fixnum)
        #This is a stub, used for indexing
    end
    # strio.getbyte   -> fixnum or nil
    #  
    # See IO#getbyte.
    def getbyte()
        #This is a stub, used for indexing
    end
    # strio.gets(sep=$/)     -> string or nil
    # strio.gets(limit)      -> string or nil
    # strio.gets(sep, limit) -> string or nil
    #  
    # See IO#gets.
    def gets(*several_variants)
        #This is a stub, used for indexing
    end
    # strio.readlines(sep=$/)    ->   array
    # strio.readlines(limit)     ->   array
    # strio.readlines(sep,limit) ->   array
    #  
    # See IO#readlines.
    def readlines(*several_variants)
        #This is a stub, used for indexing
    end
    # strio.read([length [, outbuf]])    -> string, outbuf, or nil
    #  
    # See IO#read.
    def read(*args)
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
    # strio.putc(obj)    -> obj
    #  
    # See IO#putc.
    def putc(obj)
        #This is a stub, used for indexing
    end
    # Returns +false+.  Just for compatibility to IO.
    def isatty()
        #This is a stub, used for indexing
    end
    # Returns +false+.  Just for compatibility to IO.
    def tty?()
        #This is a stub, used for indexing
    end
    # Returns +nil+.  Just for compatibility to IO.
    def pid()
        #This is a stub, used for indexing
    end
    # Returns +nil+.  Just for compatibility to IO.
    def fileno()
        #This is a stub, used for indexing
    end
    # strio.length -> integer
    # strio.size   -> integer
    #  
    # Returns the size of the buffer string.
    def size()
        #This is a stub, used for indexing
    end
    # strio.length -> integer
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
    # strio.external_encoding   => encoding
    #  
    # Returns the Encoding object that represents the encoding of the file.
    # If strio is write mode and no encoding is specified, returns <code>nil</code>.
    def external_encoding()
        #This is a stub, used for indexing
    end
    # strio.internal_encoding   => encoding
    #  
    # Returns the Encoding of the internal string if conversion is
    # specified.  Otherwise returns nil.
    def internal_encoding()
        #This is a stub, used for indexing
    end
    # strio.set_encoding(ext_enc, [int_enc[, opt]])  => strio
    #  
    # Specify the encoding of the StringIO as <i>ext_enc</i>.
    # Use the default external encoding if <i>ext_enc</i> is nil.
    # 2nd argument <i>int_enc</i> and optional hash <i>opt</i> argument
    # are ignored; they are for API compatibility to IO.
    def set_encoding(p1, p2 = v2, p3 = {})
        #This is a stub, used for indexing
    end
end
