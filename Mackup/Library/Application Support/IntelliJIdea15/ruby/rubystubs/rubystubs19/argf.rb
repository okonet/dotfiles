=begin
 This is a machine generated stub using stdlib-doc for <b>class ARGF</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# +ARGF+ is a stream designed for use in scripts that process files given as
# command-line arguments, or passed in via STDIN.
# 
# The arguments passed to your script are stored in the +ARGV+ Array, one
# argument per element. +ARGF+ assumes that any arguments that aren't
# filenames have been removed from +ARGV+. For example:
# 
#     $ ruby argf.rb --verbose file1 file2
# 
#     ARGV  #=> ["--verbose", "file1", "file2"]
#     option = ARGV.shift #=> "--verbose"
#     ARGV  #=> ["file1", "file2"]
# 
# You can now use +ARGF+ to work with a concatenation of each of these named
# files. For instance, +ARGF.read+ will return the contents of _file1_
# followed by the contents of _file2_.
# 
# After a file in +ARGV+ has been read, +ARGF+ removes it from the Array.
# Thus, after all files have been read +ARGV+ will be empty.
# 
# You can manipulate +ARGV+ yourself to control what +ARGF+ operates on. If
# you remove a file from +ARGV+, it is ignored by +ARGF+; if you add files to
# +ARGV+, they are treated as if they were named on the command line. For
# example:
# 
#     ARGV.replace ["file1"]
#     ARGF.readlines # Returns the contents of file1 as an Array
#     ARGV           #=> []
#     ARGV.replace ["file2", "file3"]
#     ARGF.read      # Returns the contents of file2 and file3
# 
# If +ARGV+ is empty, +ARGF+ acts as if it contained STDIN, i.e. the data
# piped to your script. For example:
# 
#     $ echo "glark" | ruby -e 'p ARGF.read'
#     "glark\n"
class ARGF
    include Enumerable
    # ARGF.to_s  -> String
    #  
    # Returns "ARGF".
    def to_s()
        #This is a stub, used for indexing
    end
    # ARGF.argv  -> ARGV
    #  
    # Returns the +ARGV+ array, which contains the arguments passed to your
    # script, one per element.
    # 
    # For example:
    # 
    #     $ ruby argf.rb -v glark.txt
    # 
    #     ARGF.argv   #=> ["-v", "glark.txt"]
    def argv()
        #This is a stub, used for indexing
    end
    # ARGF.fileno    -> fixnum
    # ARGF.to_i      -> fixnum
    #  
    # Returns an integer representing the numeric file descriptor for
    # the current file. Raises an +ArgumentError+ if there isn't a current file.
    # 
    #    ARGF.fileno    #=> 3
    def fileno()
        #This is a stub, used for indexing
    end
    # ARGF.fileno    -> fixnum
    # ARGF.to_i      -> fixnum
    #  
    # Returns an integer representing the numeric file descriptor for
    # the current file. Raises an +ArgumentError+ if there isn't a current file.
    # 
    #    ARGF.fileno    #=> 3
    def to_i()
        #This is a stub, used for indexing
    end
    # ARGF.to_io     -> IO
    #  
    # Returns an +IO+ object representing the current file. This will be a
    # +File+ object unless the current file is a stream such as STDIN.
    # 
    # For example:
    # 
    #    ARGF.to_io    #=> #<File:glark.txt>
    #    ARGF.to_io    #=> #<IO:<STDIN>>
    def to_io()
        #This is a stub, used for indexing
    end
    # ARGF.each(sep=$/)            {|line| block }  -> ARGF
    # ARGF.each(sep=$/,limit)      {|line| block }  -> ARGF
    # ARGF.each(...)                                -> an_enumerator
    # 
    # ARGF.each_line(sep=$/)       {|line| block }  -> ARGF
    # ARGF.each_line(sep=$/,limit) {|line| block }  -> ARGF
    # ARGF.each_line(...)                           -> an_enumerator
    # 
    # ARGF.lines(sep=$/)           {|line| block }   -> ARGF
    # ARGF.lines(sep=$/,limit)     {|line| block }   -> ARGF
    # ARGF.lines(...)                                -> an_enumerator
    #  
    # Returns an enumerator which iterates over each line (separated by _sep_,
    # which defaults to your platform's newline character) of each file in
    # +ARGV+. If a block is supplied, each line in turn will be yielded to the
    # block, otherwise an enumerator is returned.
    # The optional _limit_ argument is a +Fixnum+ specifying the maximum
    # length of each line; longer lines will be split according to this limit.
    # 
    # This method allows you to treat the files supplied on the command line as
    # a single file consisting of the concatenation of each named file. After
    # the last line of the first file has been returned, the first line of the
    # second file is returned. The +ARGF.filename+ and +ARGF.lineno+ methods can
    # be used to determine the filename and line number, respectively, of the
    # current line.
    # 
    # For example, the following code prints out each line of each named file
    # prefixed with its line number, displaying the filename once per file:
    # 
    #    ARGF.lines do |line|
    #      puts ARGF.filename if ARGF.lineno == 1
    #      puts "#{ARGF.lineno}: #{line}"
    #    end
    def each(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.each(sep=$/)            {|line| block }  -> ARGF
    # ARGF.each(sep=$/,limit)      {|line| block }  -> ARGF
    # ARGF.each(...)                                -> an_enumerator
    # 
    # ARGF.each_line(sep=$/)       {|line| block }  -> ARGF
    # ARGF.each_line(sep=$/,limit) {|line| block }  -> ARGF
    # ARGF.each_line(...)                           -> an_enumerator
    # 
    # ARGF.lines(sep=$/)           {|line| block }   -> ARGF
    # ARGF.lines(sep=$/,limit)     {|line| block }   -> ARGF
    # ARGF.lines(...)                                -> an_enumerator
    #  
    # Returns an enumerator which iterates over each line (separated by _sep_,
    # which defaults to your platform's newline character) of each file in
    # +ARGV+. If a block is supplied, each line in turn will be yielded to the
    # block, otherwise an enumerator is returned.
    # The optional _limit_ argument is a +Fixnum+ specifying the maximum
    # length of each line; longer lines will be split according to this limit.
    # 
    # This method allows you to treat the files supplied on the command line as
    # a single file consisting of the concatenation of each named file. After
    # the last line of the first file has been returned, the first line of the
    # second file is returned. The +ARGF.filename+ and +ARGF.lineno+ methods can
    # be used to determine the filename and line number, respectively, of the
    # current line.
    # 
    # For example, the following code prints out each line of each named file
    # prefixed with its line number, displaying the filename once per file:
    # 
    #    ARGF.lines do |line|
    #      puts ARGF.filename if ARGF.lineno == 1
    #      puts "#{ARGF.lineno}: #{line}"
    #    end
    def each_line(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.bytes     {|byte| block }  -> ARGF
    # ARGF.bytes                      -> an_enumerator
    # 
    # ARGF.each_byte {|byte| block }  -> ARGF
    # ARGF.each_byte                  -> an_enumerator
    #  
    #  Iterates over each byte of each file in +ARGV+.
    #  A byte is returned as a +Fixnum+ in the range 0..255.
    # 
    #  This method allows you to treat the files supplied on the command line as
    #  a single file consisting of the concatenation of each named file. After
    #  the last byte of the first file has been returned, the first byte of the
    #  second file is returned. The +ARGF.filename+ method can be used to
    #  determine the filename of the current byte.
    # 
    #  If no block is given, an enumerator is returned instead.
    # 
    # For example:
    # 
    #     ARGF.bytes.to_a  #=> [35, 32, ... 95, 10]
    def each_byte(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.chars      {|char| block }  -> ARGF
    # ARGF.chars                       -> an_enumerator
    # 
    # ARGF.each_char  {|char| block }  -> ARGF
    # ARGF.each_char                   -> an_enumerator
    #  
    # Iterates over each character of each file in +ARGF+.
    # 
    # This method allows you to treat the files supplied on the command line as
    # a single file consisting of the concatenation of each named file. After
    # the last character of the first file has been returned, the first
    # character of the second file is returned. The +ARGF.filename+ method can
    # be used to determine the name of the file in which the current character
    # appears.
    # 
    # If no block is given, an enumerator is returned instead.
    def each_char(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.each(sep=$/)            {|line| block }  -> ARGF
    # ARGF.each(sep=$/,limit)      {|line| block }  -> ARGF
    # ARGF.each(...)                                -> an_enumerator
    # 
    # ARGF.each_line(sep=$/)       {|line| block }  -> ARGF
    # ARGF.each_line(sep=$/,limit) {|line| block }  -> ARGF
    # ARGF.each_line(...)                           -> an_enumerator
    # 
    # ARGF.lines(sep=$/)           {|line| block }   -> ARGF
    # ARGF.lines(sep=$/,limit)     {|line| block }   -> ARGF
    # ARGF.lines(...)                                -> an_enumerator
    #  
    # Returns an enumerator which iterates over each line (separated by _sep_,
    # which defaults to your platform's newline character) of each file in
    # +ARGV+. If a block is supplied, each line in turn will be yielded to the
    # block, otherwise an enumerator is returned.
    # The optional _limit_ argument is a +Fixnum+ specifying the maximum
    # length of each line; longer lines will be split according to this limit.
    # 
    # This method allows you to treat the files supplied on the command line as
    # a single file consisting of the concatenation of each named file. After
    # the last line of the first file has been returned, the first line of the
    # second file is returned. The +ARGF.filename+ and +ARGF.lineno+ methods can
    # be used to determine the filename and line number, respectively, of the
    # current line.
    # 
    # For example, the following code prints out each line of each named file
    # prefixed with its line number, displaying the filename once per file:
    # 
    #    ARGF.lines do |line|
    #      puts ARGF.filename if ARGF.lineno == 1
    #      puts "#{ARGF.lineno}: #{line}"
    #    end
    def lines(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.bytes     {|byte| block }  -> ARGF
    # ARGF.bytes                      -> an_enumerator
    # 
    # ARGF.each_byte {|byte| block }  -> ARGF
    # ARGF.each_byte                  -> an_enumerator
    #  
    #  Iterates over each byte of each file in +ARGV+.
    #  A byte is returned as a +Fixnum+ in the range 0..255.
    # 
    #  This method allows you to treat the files supplied on the command line as
    #  a single file consisting of the concatenation of each named file. After
    #  the last byte of the first file has been returned, the first byte of the
    #  second file is returned. The +ARGF.filename+ method can be used to
    #  determine the filename of the current byte.
    # 
    #  If no block is given, an enumerator is returned instead.
    # 
    # For example:
    # 
    #     ARGF.bytes.to_a  #=> [35, 32, ... 95, 10]
    def bytes(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.chars      {|char| block }  -> ARGF
    # ARGF.chars                       -> an_enumerator
    # 
    # ARGF.each_char  {|char| block }  -> ARGF
    # ARGF.each_char                   -> an_enumerator
    #  
    # Iterates over each character of each file in +ARGF+.
    # 
    # This method allows you to treat the files supplied on the command line as
    # a single file consisting of the concatenation of each named file. After
    # the last character of the first file has been returned, the first
    # character of the second file is returned. The +ARGF.filename+ method can
    # be used to determine the name of the file in which the current character
    # appears.
    # 
    # If no block is given, an enumerator is returned instead.
    def chars(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.read([length [, buffer]])    -> string, buffer, or nil
    #  
    #  Reads _length_ bytes from ARGF. The files named on the command line
    #  are concatenated and treated as a single file by this method, so when
    #  called without arguments the contents of this pseudo file are returned in
    #  their entirety.
    # 
    #  _length_ must be a non-negative integer or nil. If it is a positive
    #  integer, +read+ tries to read at most _length_ bytes. It returns nil
    #  if an EOF was encountered before anything could be read. Fewer than
    #  _length_ bytes may be returned if an EOF is encountered during the read.
    # 
    #  If _length_ is omitted or is _nil_, it reads until EOF. A String is
    #  returned even if EOF is encountered before any data is read.
    # 
    #  If _length_ is zero, it returns _""_.
    # 
    #  If the optional _buffer_ argument is present, it must reference a String,
    #  which will receive the data.
    # 
    # For example:
    # 
    #     $ echo "small" > small.txt
    #     $ echo "large" > large.txt
    #     $ ./glark.rb small.txt large.txt
    # 
    #     ARGF.read      #=> "small\nlarge"
    #     ARGF.read(200) #=> "small\nlarge"
    #     ARGF.read(2)   #=> "sm"
    #     ARGF.read(0)   #=> ""
    # 
    #  Note that this method behaves like fread() function in C.  If you need the
    #  behavior like read(2) system call, consider +ARGF.readpartial+.
    def read(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # ARGF.readpartial(maxlen)              -> string
    # ARGF.readpartial(maxlen, outbuf)      -> outbuf
    #  
    # Reads at most _maxlen_ bytes from the ARGF stream. It blocks only if
    # +ARGF+ has no data immediately available. If the optional _outbuf_
    # argument is present, it must reference a String, which will receive the
    # data. It raises <code>EOFError</code> on end of file.
    # 
    # +readpartial+ is designed for streams such as pipes, sockets, and ttys. It
    # blocks only when no data is immediately available. This means that it
    # blocks only when following all conditions hold:
    # 
    # * The byte buffer in the +IO+ object is empty.
    # * The content of the stream is empty.
    # * The stream has not reached EOF.
    # 
    # When +readpartial+ blocks, it waits for data or EOF. If some data is read,
    # +readpartial+ returns with the data. If EOF is reached, readpartial raises
    # an +EOFError+.
    # 
    # When +readpartial+ doesn't block, it returns or raises immediately.  If
    # the byte buffer is not empty, it returns the data in the buffer. Otherwise, if
    # the stream has some content, it returns the data in the stream. If the
    # stream reaches EOF an +EOFError+ is raised.
    def readpartial(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.readlines(sep=$/)     -> array
    # ARGF.readlines(limit)      -> array
    # ARGF.readlines(sep, limit) -> array
    # 
    # ARGF.to_a(sep=$/)     -> array
    # ARGF.to_a(limit)      -> array
    # ARGF.to_a(sep, limit) -> array
    #  
    # Reads +ARGF+'s current file in its entirety, returning an +Array+ of its
    # lines, one line per element. Lines are assumed to be separated by _sep_.
    # 
    #    lines = ARGF.readlines
    #    lines[0]                #=> "This is line one\n"
    def readlines(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.readlines(sep=$/)     -> array
    # ARGF.readlines(limit)      -> array
    # ARGF.readlines(sep, limit) -> array
    # 
    # ARGF.to_a(sep=$/)     -> array
    # ARGF.to_a(limit)      -> array
    # ARGF.to_a(sep, limit) -> array
    #  
    # Reads +ARGF+'s current file in its entirety, returning an +Array+ of its
    # lines, one line per element. Lines are assumed to be separated by _sep_.
    # 
    #    lines = ARGF.readlines
    #    lines[0]                #=> "This is line one\n"
    def to_a(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.gets(sep=$/)     -> string
    # ARGF.gets(limit)      -> string
    # ARGF.gets(sep, limit) -> string
    #  
    # Returns the next line from the current file in +ARGF+.
    # 
    # By default lines are assumed to be separated by +$/+; to use a different
    # character as a separator, supply it as a +String+ for the _sep_ argument.
    # 
    # The optional  _limit_ argument specifies how many characters of each line
    # to return. By default all characters are returned.
    def gets(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.readline(sep=$/)     -> string
    # ARGF.readline(limit)      -> string
    # ARGF.readline(sep, limit) -> string
    #  
    # Returns the next line from the current file in +ARGF+.
    # 
    # By default lines are assumed to be separated by +$/+; to use a different
    # character as a separator, supply it as a +String+ for the _sep_ argument.
    # 
    # The optional  _limit_ argument specifies how many characters of each line
    # to return. By default all characters are returned.
    # 
    # An +EOFError+ is raised at the end of the file.
    def readline(*several_variants)
        #This is a stub, used for indexing
    end
    # ARGF.getc  -> String or nil
    #  
    # Reads the next character from +ARGF+ and returns it as a +String+. Returns
    # +nil+ at the end of the stream.
    # 
    # +ARGF+ treats the files named on the command line as a single file created
    # by concatenating their contents. After returning the last character of the
    # first file, it returns the first character of the second file, and so on.
    # 
    # For example:
    # 
    #    $ echo "foo" > file
    #    $ ruby argf.rb file
    # 
    #    ARGF.getc  #=> "f"
    #    ARGF.getc  #=> "o"
    #    ARGF.getc  #=> "o"
    #    ARGF.getc  #=> "\n"
    #    ARGF.getc  #=> nil
    #    ARGF.getc  #=> nil
    def getc()
        #This is a stub, used for indexing
    end
    # ARGF.getbyte  -> Fixnum or nil
    #  
    # Gets the next 8-bit byte (0..255) from +ARGF+. Returns +nil+ if called at
    # the end of the stream.
    # 
    # For example:
    # 
    #    $ echo "foo" > file
    #    $ ruby argf.rb file
    # 
    #    ARGF.getbyte #=> 102
    #    ARGF.getbyte #=> 111
    #    ARGF.getbyte #=> 111
    #    ARGF.getbyte #=> 10
    #    ARGF.getbyte #=> nil
    def getbyte()
        #This is a stub, used for indexing
    end
    # ARGF.readchar  -> String or nil
    #  
    # Reads the next character from +ARGF+ and returns it as a +String+. Raises
    # an +EOFError+ after the last character of the last file has been read.
    # 
    # For example:
    # 
    #    $ echo "foo" > file
    #    $ ruby argf.rb file
    # 
    #    ARGF.readchar  #=> "f"
    #    ARGF.readchar  #=> "o"
    #    ARGF.readchar  #=> "o"
    #    ARGF.readchar  #=> "\n"
    #    ARGF.readchar  #=> end of file reached (EOFError)
    def readchar()
        #This is a stub, used for indexing
    end
    # ARGF.readbyte  -> Fixnum
    #  
    # Reads the next 8-bit byte from ARGF and returns it as a +Fixnum+. Raises
    # an +EOFError+ after the last byte of the last file has been read.
    # 
    # For example:
    # 
    #    $ echo "foo" > file
    #    $ ruby argf.rb file
    # 
    #    ARGF.readbyte  #=> 102
    #    ARGF.readbyte  #=> 111
    #    ARGF.readbyte  #=> 111
    #    ARGF.readbyte  #=> 10
    #    ARGF.readbyte  #=> end of file reached (EOFError)
    def readbyte()
        #This is a stub, used for indexing
    end
    # ARGF.tell  -> Integer
    # ARGF.pos   -> Integer
    #  
    # Returns the current offset (in bytes) of the current file in +ARGF+.
    # 
    #    ARGF.pos    #=> 0
    #    ARGF.gets   #=> "This is line one\n"
    #    ARGF.pos    #=> 17
    def tell()
        #This is a stub, used for indexing
    end
    # ARGF.seek(amount, whence=IO::SEEK_SET)  ->  0
    #  
    # Seeks to offset _amount_ (an +Integer+) in the +ARGF+ stream according to
    # the value of _whence_. See +IO#seek+ for further details.
    def seek(amount, whence=IO::SEEK_SET)
        #This is a stub, used for indexing
    end
    # ARGF.rewind   -> 0
    #  
    # Positions the current file to the beginning of input, resetting
    # +ARGF.lineno+ to zero.
    # 
    #    ARGF.readline   #=> "This is line one\n"
    #    ARGF.rewind     #=> 0
    #    ARGF.lineno     #=> 0
    #    ARGF.readline   #=> "This is line one\n"
    def rewind()
        #This is a stub, used for indexing
    end
    # ARGF.tell  -> Integer
    # ARGF.pos   -> Integer
    #  
    # Returns the current offset (in bytes) of the current file in +ARGF+.
    # 
    #    ARGF.pos    #=> 0
    #    ARGF.gets   #=> "This is line one\n"
    #    ARGF.pos    #=> 17
    def pos()
        #This is a stub, used for indexing
    end
    # ARGF.pos = position  -> Integer
    #  
    # Seeks to the position given by _position_ (in bytes) in +ARGF+.
    # 
    # For example:
    # 
    #     ARGF.pos = 17
    #     ARGF.gets   #=> "This is line two\n"
    def pos= position
        #This is a stub, used for indexing
    end
    # ARGF.eof?  -> true or false
    # ARGF.eof   -> true or false
    #  
    # Returns true if the current file in +ARGF+ is at end of file, i.e. it has
    # no data to read. The stream must be opened for reading or an +IOError+
    # will be raised.
    # 
    #    $ echo "eof" | ruby argf.rb
    # 
    #    ARGF.eof?                 #=> false
    #    3.times { ARGF.readchar }
    #    ARGF.eof?                 #=> false
    #    ARGF.readchar             #=> "\n"
    #    ARGF.eof?                 #=> true
    def eof()
        #This is a stub, used for indexing
    end
    # ARGF.eof?  -> true or false
    # ARGF.eof   -> true or false
    #  
    # Returns true if the current file in +ARGF+ is at end of file, i.e. it has
    # no data to read. The stream must be opened for reading or an +IOError+
    # will be raised.
    # 
    #    $ echo "eof" | ruby argf.rb
    # 
    #    ARGF.eof?                 #=> false
    #    3.times { ARGF.readchar }
    #    ARGF.eof?                 #=> false
    #    ARGF.readchar             #=> "\n"
    #    ARGF.eof?                 #=> true
    def eof?()
        #This is a stub, used for indexing
    end
    # ARGF.binmode  -> ARGF
    #  
    # Puts +ARGF+ into binary mode. Once a stream is in binary mode, it cannot
    # be reset to non-binary mode. This option has the following effects:
    # 
    # *  Newline conversion is disabled.
    # *  Encoding conversion is disabled.
    # *  Content is treated as ASCII-8BIT.
    def binmode()
        #This is a stub, used for indexing
    end
    # ARGF.binmode?  -> true or false
    #  
    #  Returns true if +ARGF+ is being read in binary mode; false otherwise. (To
    #  enable binary mode use +ARGF.binmode+.
    # 
    # For example:
    # 
    #     ARGF.binmode?  #=> false
    #     ARGF.binmode
    #     ARGF.binmode?  #=> true
    def binmode?()
        #This is a stub, used for indexing
    end
    # ARGF.filename  -> String
    # ARGF.path      -> String
    #  
    # Returns the current filename. "-" is returned when the current file is
    # STDIN.
    # 
    # For example:
    # 
    #    $ echo "foo" > foo
    #    $ echo "bar" > bar
    #    $ echo "glark" > glark
    # 
    #    $ ruby argf.rb foo bar glark
    # 
    #    ARGF.filename  #=> "foo"
    #    ARGF.read(5)   #=> "foo\nb"
    #    ARGF.filename  #=> "bar"
    #    ARGF.skip
    #    ARGF.filename  #=> "glark"
    def filename()
        #This is a stub, used for indexing
    end
    # ARGF.filename  -> String
    # ARGF.path      -> String
    #  
    # Returns the current filename. "-" is returned when the current file is
    # STDIN.
    # 
    # For example:
    # 
    #    $ echo "foo" > foo
    #    $ echo "bar" > bar
    #    $ echo "glark" > glark
    # 
    #    $ ruby argf.rb foo bar glark
    # 
    #    ARGF.filename  #=> "foo"
    #    ARGF.read(5)   #=> "foo\nb"
    #    ARGF.filename  #=> "bar"
    #    ARGF.skip
    #    ARGF.filename  #=> "glark"
    def path()
        #This is a stub, used for indexing
    end
    # ARGF.file  -> IO or File object
    #  
    # Returns the current file as an +IO+ or +File+ object. #<IO:<STDIN>> is
    # returned when the current file is STDIN.
    # 
    # For example:
    # 
    #    $ echo "foo" > foo
    #    $ echo "bar" > bar
    # 
    #    $ ruby argf.rb foo bar
    # 
    #    ARGF.file      #=> #<File:foo>
    #    ARGF.read(5)   #=> "foo\nb"
    #    ARGF.file      #=> #<File:bar>
    def file()
        #This is a stub, used for indexing
    end
    # ARGF.skip  -> ARGF
    #  
    #  Sets the current file to the next file in ARGV. If there aren't any more
    #  files it has no effect.
    # 
    # For example:
    # 
    #     $ ruby argf.rb foo bar
    #     ARGF.filename  #=> "foo"
    #     ARGF.skip
    #     ARGF.filename  #=> "bar"
    def skip()
        #This is a stub, used for indexing
    end
    # ARGF.close  -> ARGF
    #  
    #  Closes the current file and skips to the next in the stream. Trying to
    #  close a file that has already been closed causes an +IOError+ to be
    #  raised.
    # 
    # For example:
    # 
    #     $ ruby argf.rb foo bar
    # 
    #     ARGF.filename  #=> "foo"
    #     ARGF.close
    #     ARGF.filename  #=> "bar"
    #     ARGF.close
    #     ARGF.close     #=> closed stream (IOError)
    def close()
        #This is a stub, used for indexing
    end
    # ARGF.closed?  -> true or false
    #  
    # Returns _true_ if the current file has been closed; _false_ otherwise. Use
    # +ARGF.close+ to actually close the current file.
    def closed?()
        #This is a stub, used for indexing
    end
    # ARGF.lineno -> integer
    #  
    # Returns the current line number of ARGF as a whole. This value
    # can be set manually with +ARGF.lineno=+.
    # 
    # For example:
    # 
    #     ARGF.lineno   #=> 0
    #     ARGF.readline #=> "This is line 1\n"
    #     ARGF.lineno   #=> 1
    def lineno()
        #This is a stub, used for indexing
    end
    # ARGF.lineno = number  -> nil
    #  
    # Sets the line number of +ARGF+ as a whole to the given +Integer+.
    # 
    # +ARGF+ sets the line number automatically as you read data, so normally
    # you will not need to set it explicitly. To access the current line number
    # use +ARGF.lineno+.
    # 
    # For example:
    # 
    #     ARGF.lineno      #=> 0
    #     ARGF.readline    #=> "This is line 1\n"
    #     ARGF.lineno      #=> 1
    #     ARGF.lineno = 0  #=> nil
    #     ARGF.lineno      #=> 0
    def lineno= number
        #This is a stub, used for indexing
    end
    # ARGF.inplace_mode  -> String
    #  
    # Returns the file extension appended to the names of modified files under
    # inplace-edit mode. This value can be set using +ARGF.inplace_mode=+ or
    # passing the +-i+ switch to the Ruby binary.
    def inplace_mode()
        #This is a stub, used for indexing
    end
    # ARGF.inplace_mode = ext  -> ARGF
    #  
    #  Sets the filename extension for inplace editing mode to the given String.
    #  Each file being edited has this value appended to its filename. The
    #  modified file is saved under this new name.
    # 
    #  For example:
    # 
    #      $ ruby argf.rb file.txt
    # 
    #      ARGF.inplace_mode = '.bak'
    #      ARGF.lines do |line|
    #        print line.sub("foo","bar")
    #      end
    # 
    # Each line of _file.txt_ has the first occurrence of "foo" replaced with
    # "bar", then the new line is written out to _file.txt.bak_.
    def inplace_mode= ext
        #This is a stub, used for indexing
    end
    # ARGF.external_encoding   -> encoding
    #  
    #  Returns the external encoding for files read from +ARGF+ as an +Encoding+
    #  object. The external encoding is the encoding of the text as stored in a
    #  file. Contrast with +ARGF.internal_encoding+, which is the encoding used
    #  to represent this text within Ruby.
    # 
    #  To set the external encoding use +ARGF.set_encoding+.
    # 
    # For example:
    # 
    #     ARGF.external_encoding  #=>  #<Encoding:UTF-8>
    def external_encoding()
        #This is a stub, used for indexing
    end
    # ARGF.internal_encoding   -> encoding
    #  
    # Returns the internal encoding for strings read from +ARGF+ as an
    # +Encoding+ object.
    # 
    # If +ARGF.set_encoding+ has been called with two encoding names, the second
    # is returned. Otherwise, if +Encoding.default_external+ has been set, that
    # value is returned. Failing that, if a default external encoding was
    # specified on the command-line, that value is used. If the encoding is
    # unknown, nil is returned.
    def internal_encoding()
        #This is a stub, used for indexing
    end
    # ARGF.set_encoding(ext_enc)                -> ARGF
    # ARGF.set_encoding("ext_enc:int_enc")      -> ARGF
    # ARGF.set_encoding(ext_enc, int_enc)       -> ARGF
    # ARGF.set_encoding("ext_enc:int_enc", opt) -> ARGF
    # ARGF.set_encoding(ext_enc, int_enc, opt)  -> ARGF
    #  
    # If single argument is specified, strings read from ARGF are tagged with
    # the encoding specified.
    # 
    # If two encoding names separated by a colon are given, e.g. "ascii:utf-8",
    # the read string is converted from the first encoding (external encoding)
    # to the second encoding (internal encoding), then tagged with the second
    # encoding.
    # 
    # If two arguments are specified, they must be encoding objects or encoding
    # names. Again, the first specifies the external encoding; the second
    # specifies the internal encoding.
    # 
    # If the external encoding and the internal encoding are specified, the
    # optional +Hash+ argument can be used to adjust the conversion process. The
    # structure of this hash is explained in the +String#encode+ documentation.
    # 
    # For example:
    # 
    #     ARGF.set_encoding('ascii')         # Tag the input as US-ASCII text
    #     ARGF.set_encoding(Encoding::UTF_8) # Tag the input as UTF-8 text
    #     ARGF.set_encoding('utf-8','ascii') # Transcode the input from US-ASCII
    #                                        # to UTF-8.
    def set_encoding(*several_variants)
        #This is a stub, used for indexing
    end
end
