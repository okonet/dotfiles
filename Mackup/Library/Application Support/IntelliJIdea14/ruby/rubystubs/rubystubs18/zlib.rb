=begin
 This is a machine generated stub using stdlib-doc for <b>module Zlib</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# GZIP_SUPPORT   
module Zlib
    VERSION = nil #value is unknown, used for indexing.
    ZLIB_VERSION = nil #value is unknown, used for indexing.
    BINARY = nil #value is unknown, used for indexing.
    ASCII = nil #value is unknown, used for indexing.
    UNKNOWN = nil #value is unknown, used for indexing.
    NO_COMPRESSION = nil #value is unknown, used for indexing.
    BEST_SPEED = nil #value is unknown, used for indexing.
    BEST_COMPRESSION = nil #value is unknown, used for indexing.
    DEFAULT_COMPRESSION = nil #value is unknown, used for indexing.
    FILTERED = nil #value is unknown, used for indexing.
    HUFFMAN_ONLY = nil #value is unknown, used for indexing.
    DEFAULT_STRATEGY = nil #value is unknown, used for indexing.
    MAX_WBITS = nil #value is unknown, used for indexing.
    DEF_MEM_LEVEL = nil #value is unknown, used for indexing.
    MAX_MEM_LEVEL = nil #value is unknown, used for indexing.
    NO_FLUSH = nil #value is unknown, used for indexing.
    SYNC_FLUSH = nil #value is unknown, used for indexing.
    FULL_FLUSH = nil #value is unknown, used for indexing.
    FINISH = nil #value is unknown, used for indexing.
    OS_CODE = nil #value is unknown, used for indexing.
    OS_MSDOS = nil #value is unknown, used for indexing.
    OS_AMIGA = nil #value is unknown, used for indexing.
    OS_VMS = nil #value is unknown, used for indexing.
    OS_UNIX = nil #value is unknown, used for indexing.
    OS_ATARI = nil #value is unknown, used for indexing.
    OS_OS2 = nil #value is unknown, used for indexing.
    OS_MACOS = nil #value is unknown, used for indexing.
    OS_TOPS20 = nil #value is unknown, used for indexing.
    OS_WIN32 = nil #value is unknown, used for indexing.
    OS_VMCMS = nil #value is unknown, used for indexing.
    OS_ZSYSTEM = nil #value is unknown, used for indexing.
    OS_CPM = nil #value is unknown, used for indexing.
    OS_QDOS = nil #value is unknown, used for indexing.
    OS_RISCOS = nil #value is unknown, used for indexing.
    OS_UNKNOWN = nil #value is unknown, used for indexing.
    # Returns the string which represents the version of zlib library.
    def self.zlib_version()
        #This is a stub, used for indexing
    end
    # Zlib.adler32(string, adler)
    #  
    # Calculates Adler-32 checksum for +string+, and returns updated value of
    # +adler+. If +string+ is omitted, it returns the Adler-32 initial value. If
    # +adler+ is omitted, it assumes that the initial value is given to +adler+.
    # 
    # FIXME: expression.
    def self.adler32(string = nil, adler = nil)
        #This is a stub, used for indexing
    end
    # Zlib.crc32(string, adler)
    #  
    # Calculates CRC checksum for +string+, and returns updated value of +crc+. If
    # +string+ is omitted, it returns the CRC initial value. If +crc+ is omitted, it
    # assumes that the initial value is given to +crc+.
    # 
    # FIXME: expression.
    def self.crc32(string = nil, adler = nil)
        #This is a stub, used for indexing
    end
    # Returns the table for calculating CRC checksum as an array.
    def self.crc_table()
        #This is a stub, used for indexing
    end
    class BufError < Error
    end
    class DataError < Error
    end
    # Zlib::Deflate is the class for compressing data.  See Zlib::Stream for more
    # information.
    class Deflate < ZStream
        # Zlib::Deflate.deflate(string[, level])
        #  
        # Compresses the given +string+. Valid values of level are
        # <tt>Zlib::NO_COMPRESSION</tt>, <tt>Zlib::BEST_SPEED</tt>,
        # <tt>Zlib::BEST_COMPRESSION</tt>, <tt>Zlib::DEFAULT_COMPRESSION</tt>, and an
        # integer from 0 to 9.
        # 
        # This method is almost equivalent to the following code:
        # 
        #   def deflate(string, level)
        #     z = Zlib::Deflate.new(level)
        #     dst = z.deflate(string, Zlib::FINISH)
        #     z.close
        #     dst
        #   end
        # 
        # TODO: what's default value of +level+?
        def self.deflate(string, level=nil)
            #This is a stub, used for indexing
        end
        # Zlib::Deflate.new(level=nil, windowBits=nil, memlevel=nil, strategy=nil)
        #  
        # Creates a new deflate stream for compression. See zlib.h for details of
        # each argument. If an argument is nil, the default value of that argument is
        # used.
        # 
        # TODO: document better!
        def self.new(level=nil, windowBits=nil, memlevel=nil, strategy=nil)
            #This is a stub, used for indexing
        end
        # Duplicates the deflate stream.
        def initialize_copy(p1)
            #This is a stub, used for indexing
        end
        # deflate(string[, flush])
        #  
        # Inputs +string+ into the deflate stream and returns the output from the
        # stream.  On calling this method, both the input and the output buffers of
        # the stream are flushed. If +string+ is nil, this method finishes the
        # stream, just like Zlib::ZStream#finish.
        # 
        # The value of +flush+ should be either <tt>Zlib::NO_FLUSH</tt>,
        # <tt>Zlib::SYNC_FLUSH</tt>, <tt>Zlib::FULL_FLUSH</tt>, or
        # <tt>Zlib::FINISH</tt>. See zlib.h for details.
        # 
        # TODO: document better!
        def deflate(string, *flush)
            #This is a stub, used for indexing
        end
        # Same as IO.
        def <<(p1)
            #This is a stub, used for indexing
        end
        # flush(flush)
        #  
        # This method is equivalent to <tt>deflate('', flush)</tt>.  If flush is omitted,
        # <tt>Zlib::SYNC_FLUSH</tt> is used as flush.  This method is just provided
        # to improve the readability of your Ruby program.
        # 
        # TODO: document better!
        def flush(flush)
            #This is a stub, used for indexing
        end
        # params(level, strategy)
        #  
        # Changes the parameters of the deflate stream. See zlib.h for details. The
        # output from the stream by changing the params is preserved in output
        # buffer.
        # 
        # TODO: document better!
        def params(level, strategy)
            #This is a stub, used for indexing
        end
        # set_dictionary(string)
        #  
        # Sets the preset dictionary and returns +string+. This method is available
        # just only after Zlib::Deflate.new or Zlib::ZStream#reset method was called.
        # See zlib.h for details.
        # 
        # TODO: document better!
        def set_dictionary(string)
            #This is a stub, used for indexing
        end
    end
    # The superclass for all exceptions raised by Ruby/zlib.
    # 
    # The following exceptions are defined as subclasses of Zlib::Error. These
    # exceptions are raised when zlib library functions return with an error
    # status.
    # 
    # - Zlib::StreamEnd
    # - Zlib::NeedDict
    # - Zlib::DataError
    # - Zlib::StreamError
    # - Zlib::MemError
    # - Zlib::BufError
    # - Zlib::VersionError
    class Error < StandardError
    end
    # Zlib::GzipFile is an abstract class for handling a gzip formatted
    # compressed file. The operations are defined in the subclasses,
    # Zlib::GzipReader for reading, and Zlib::GzipWriter for writing.
    # 
    # GzipReader should be used by associating an IO, or IO-like, object.
    class GzipFile
        # See Zlib::GzipReader#wrap and Zlib::GzipWriter#wrap.
        def self.wrap(*args)
            #This is a stub, used for indexing
        end
        # Same as IO.
        def to_io()
            #This is a stub, used for indexing
        end
        # Returns CRC value of the uncompressed data.
        def crc()
            #This is a stub, used for indexing
        end
        # Returns last modification time recorded in the gzip file header.
        def mtime()
            #This is a stub, used for indexing
        end
        # Returns compression level.
        def level()
            #This is a stub, used for indexing
        end
        # Returns OS code number recorded in the gzip file header.
        def os_code()
            #This is a stub, used for indexing
        end
        # Returns original filename recorded in the gzip file header, or +nil+ if
        # original filename is not present.
        def orig_name()
            #This is a stub, used for indexing
        end
        # Returns comments recorded in the gzip file header, or nil if the comments
        # is not present.
        def comment()
            #This is a stub, used for indexing
        end
        # Closes the GzipFile object. This method calls close method of the
        # associated IO object. Returns the associated IO object.
        def close()
            #This is a stub, used for indexing
        end
        # Closes the GzipFile object. Unlike Zlib::GzipFile#close, this method never
        # calls the close method of the associated IO object. Returns the associated IO
        # object.
        def finish()
            #This is a stub, used for indexing
        end
        # Same as IO.
        def closed?()
            #This is a stub, used for indexing
        end
        # Same as IO.
        def sync()
            #This is a stub, used for indexing
        end
        # sync = flag
        #  
        # Same as IO.  If flag is +true+, the associated IO object must respond to the
        # +flush+ method.  While +sync+ mode is +true+, the compression ratio
        # decreases sharply.
        def sync= flag
            #This is a stub, used for indexing
        end
        # Raised when the CRC checksum recorded in gzip file footer is not equivalent
        # to the CRC checksum of the actual uncompressed data. 
        class CRCError < Error
        end
        # Base class of errors that occur when processing GZIP files.
        class Error < Error
        end
        # Raised when the data length recorded in the gzip file footer is not equivalent
        # to the length of the actual uncompressed data. 
        class LengthError < Error
        end
        # Raised when gzip file footer is not found. 
        class NoFooter < Error
        end
    end
    # Zlib::GzipReader is the class for reading a gzipped file.  GzipReader should
    # be used an IO, or -IO-lie, object.
    # 
    #   Zlib::GzipReader.open('hoge.gz') {|gz|
    #     print gz.read
    #   }
    # 
    #   File.open('hoge.gz') do |f|
    #     gz = Zlib::GzipReader.new(f)
    #     print gz.read
    #     gz.close
    #   end
    # 
    #   # TODO: test these.  Are they equivalent?  Can GzipReader.new take a
    #   # block?
    # 
    # == Method Catalogue
    # 
    # The following methods in Zlib::GzipReader are just like their counterparts
    # in IO, but they raise Zlib::Error or Zlib::GzipFile::Error exception if an
    # error was found in the gzip file.
    # - #each
    # - #each_line
    # - #each_byte
    # - #gets
    # - #getc
    # - #lineno
    # - #lineno=
    # - #read
    # - #readchar
    # - #readline
    # - #readlines
    # - #ungetc
    # 
    # Be careful of the footer of the gzip file. A gzip file has the checksum of
    # pre-compressed data in its footer. GzipReader checks all uncompressed data
    # against that checksum at the following cases, and if it fails, raises
    # <tt>Zlib::GzipFile::NoFooter</tt>, <tt>Zlib::GzipFile::CRCError</tt>, or
    # <tt>Zlib::GzipFile::LengthError</tt> exception.
    # 
    # - When an reading request is received beyond the end of file (the end of
    #   compressed data). That is, when Zlib::GzipReader#read,
    #   Zlib::GzipReader#gets, or some other methods for reading returns nil.
    # - When Zlib::GzipFile#close method is called after the object reaches the
    #   end of file.
    # - When Zlib::GzipReader#unused method is called after the object reaches
    #   the end of file.
    # 
    # The rest of the methods are adequately described in their own
    # documentation.
    class GzipReader < GzipFile
        include Enumerable
        # ???
        def lineno()
            #This is a stub, used for indexing
        end
        # ???
        def lineno=(p1)
            #This is a stub, used for indexing
        end
        # ???
        def eof()
            #This is a stub, used for indexing
        end
        # ???
        def eof?()
            #This is a stub, used for indexing
        end
        # ???
        def pos()
            #This is a stub, used for indexing
        end
        # ???
        def tell()
            #This is a stub, used for indexing
        end
        # Zlib::GzipReader.open(filename) {|gz| ... }
        #  
        # Opens a file specified by +filename+ as a gzipped file, and returns a
        # GzipReader object associated with that file.  Further details of this method
        # are in Zlib::GzipReader.new and ZLib::GzipReader.wrap.
        def self.open(filename)
            #This is a stub, used for indexing
        end
        # Zlib::GzipReader.new(io)
        #  
        # Creates a GzipReader object associated with +io+. The GzipReader object reads
        # gzipped data from +io+, and parses/decompresses them.  At least, +io+ must have
        # a +read+ method that behaves same as the +read+ method in IO class.
        # 
        # If the gzip file header is incorrect, raises an Zlib::GzipFile::Error
        # exception.
        def self.new(io)
            #This is a stub, used for indexing
        end
        # Resets the position of the file pointer to the point created the GzipReader
        # object.  The associated IO object needs to respond to the +seek+ method.
        def rewind()
            #This is a stub, used for indexing
        end
        # Returns the rest of the data which had read for parsing gzip format, or
        # +nil+ if the whole gzip file is not parsed yet.
        def unused()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def read(p1 = v1)
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def getc()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def readchar()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def each_byte()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def ungetc(p1)
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def gets(*args)
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def readline(*args)
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def each(*args)
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def each_line(*args)
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def readlines(*args)
            #This is a stub, used for indexing
        end
    end
    # Zlib::GzipWriter is a class for writing gzipped files.  GzipWriter should
    # be used with an instance of IO, or IO-like, object. 
    # 
    # For example:
    # 
    #   Zlib::GzipWriter.open('hoge.gz') do |gz|
    #     gz.write 'jugemu jugemu gokou no surikire...'
    #   end
    # 
    #   File.open('hoge.gz', 'w') do |f|
    #     gz = Zlib::GzipWriter.new(f)
    #     gz.write 'jugemu jugemu gokou no surikire...'
    #     gz.close
    #   end
    # 
    #   # TODO: test these.  Are they equivalent?  Can GzipWriter.new take a
    #   # block?
    # 
    # NOTE: Due to the limitation of Ruby's finalizer, you must explicitly close
    # GzipWriter objects by Zlib::GzipWriter#close etc.  Otherwise, GzipWriter
    # will be not able to write the gzip footer and will generate a broken gzip
    # file.
    class GzipWriter < GzipFile
        # ???
        def mtime=(p1)
            #This is a stub, used for indexing
        end
        # ???
        def orig_name=(p1)
            #This is a stub, used for indexing
        end
        # ???
        def comment=(p1)
            #This is a stub, used for indexing
        end
        # ???
        def pos()
            #This is a stub, used for indexing
        end
        # ???
        def tell()
            #This is a stub, used for indexing
        end
        # Zlib::GzipWriter.open(filename, level=nil, strategy=nil) { |gz| ... }
        #  
        # Opens a file specified by +filename+ for writing gzip compressed data, and
        # returns a GzipWriter object associated with that file.  Further details of
        # this method are found in Zlib::GzipWriter.new and Zlib::GzipWriter#wrap.
        def self.open(filename, level=nil, strategy=nil)
            #This is a stub, used for indexing
        end
        # Zlib::GzipWriter.new(io, level, strategy)
        #  
        # Creates a GzipWriter object associated with +io+. +level+ and +strategy+
        # should be the same as the arguments of Zlib::Deflate.new.  The GzipWriter
        # object writes gzipped data to +io+.  At least, +io+ must respond to the
        # +write+ method that behaves same as write method in IO class.
        def self.new(io, level, strategy)
            #This is a stub, used for indexing
        end
        # flush(flush=nil)
        #  
        # Flushes all the internal buffers of the GzipWriter object.  The meaning of
        # +flush+ is same as in Zlib::Deflate#deflate.  <tt>Zlib::SYNC_FLUSH</tt> is used if
        # +flush+ is omitted.  It is no use giving flush <tt>Zlib::NO_FLUSH</tt>.
        def flush(flush=nil)
            #This is a stub, used for indexing
        end
        # Same as IO.
        def write(p1)
            #This is a stub, used for indexing
        end
        # Same as IO.
        def putc(p1)
            #This is a stub, used for indexing
        end
        #    Document-method: <<
        #    Same as IO.
        # Same as IO.
        def <<(p1)
            #This is a stub, used for indexing
        end
        #    Same as IO.
        # Same as IO.
        def printf(*args)
            #This is a stub, used for indexing
        end
        #    Same as IO.
        # Same as IO.
        def print(*args)
            #This is a stub, used for indexing
        end
        #    Same as IO.
        # Same as IO.
        def puts(*args)
            #This is a stub, used for indexing
        end
    end
    # Zlib:Inflate is the class for decompressing compressed data.  Unlike
    # Zlib::Deflate, an instance of this class is not able to duplicate (clone,
    # dup) itself.
    class Inflate < ZStream
        # Zlib::Inflate.inflate(string)
        #  
        # Decompresses +string+. Raises a Zlib::NeedDict exception if a preset
        # dictionary is needed for decompression.
        # 
        # This method is almost equivalent to the following code:
        # 
        #   def inflate(string)
        #     zstream = Zlib::Inflate.new
        #     buf = zstream.inflate(string)
        #     zstream.finish
        #     zstream.close
        #     buf
        #   end
        def self.inflate(string)
            #This is a stub, used for indexing
        end
        # Zlib::Inflate.new(window_bits)
        #  
        # Creates a new inflate stream for decompression. See zlib.h for details
        # of the argument.  If +window_bits+ is +nil+, the default value is used.
        # 
        # TODO: document better!
        def self.new(window_bits = nil)
            #This is a stub, used for indexing
        end
        # inflate(string)
        #  
        # Inputs +string+ into the inflate stream and returns the output from the
        # stream.  Calling this method, both the input and the output buffer of the
        # stream are flushed.  If string is +nil+, this method finishes the stream,
        # just like Zlib::ZStream#finish.
        # 
        # Raises a Zlib::NeedDict exception if a preset dictionary is needed to
        # decompress.  Set the dictionary by Zlib::Inflate#set_dictionary and then
        # call this method again with an empty string.  (<i>???</i>)
        # 
        # TODO: document better!
        def inflate(string)
            #This is a stub, used for indexing
        end
        # Same as IO.
        def <<(p1)
            #This is a stub, used for indexing
        end
        # sync(string)
        #  
        # Inputs +string+ into the end of input buffer and skips data until a full
        # flush point can be found.  If the point is found in the buffer, this method
        # flushes the buffer and returns false.  Otherwise it returns +true+ and the
        # following data of full flush point is preserved in the buffer.
        def sync(string)
            #This is a stub, used for indexing
        end
        # Quoted verbatim from original documentation:
        # 
        #   What is this?
        # 
        # <tt>:)</tt>
        def sync_point?()
            #This is a stub, used for indexing
        end
        # Sets the preset dictionary and returns +string+.  This method is available just
        # only after a Zlib::NeedDict exception was raised.  See zlib.h for details.
        # 
        # TODO: document better!
        def set_dictionary(p1)
            #This is a stub, used for indexing
        end
    end
    class MemError < Error
    end
    class NeedDict < Error
    end
    class StreamEnd < Error
    end
    class StreamError < Error
    end
    class VersionError < Error
    end
    # Zlib::ZStream is the abstract class for the stream which handles the
    # compressed data. The operations are defined in the subclasses:
    # Zlib::Deflate for compression, and Zlib::Inflate for decompression.
    # 
    # An instance of Zlib::ZStream has one stream (struct zstream in the source)
    # and two variable-length buffers which associated to the input (next_in) of
    # the stream and the output (next_out) of the stream. In this document,
    # "input buffer" means the buffer for input, and "output buffer" means the
    # buffer for output.
    # 
    # Data input into an instance of Zlib::ZStream are temporally stored into
    # the end of input buffer, and then data in input buffer are processed from
    # the beginning of the buffer until no more output from the stream is
    # produced (i.e. until avail_out > 0 after processing).  During processing,
    # output buffer is allocated and expanded automatically to hold all output
    # data.
    # 
    # Some particular instance methods consume the data in output buffer and
    # return them as a String.
    # 
    # Here is an ascii art for describing above:
    # 
    #    +================ an instance of Zlib::ZStream ================+
    #    ||                                                            ||
    #    ||     +--------+          +-------+          +--------+      ||
    #    ||  +--| output |<---------|zstream|<---------| input  |<--+  ||
    #    ||  |  | buffer |  next_out+-------+next_in   | buffer |   |  ||
    #    ||  |  +--------+                             +--------+   |  ||
    #    ||  |                                                      |  ||
    #    +===|======================================================|===+
    #        |                                                      |
    #        v                                                      |
    #    "output data"                                         "input data"
    # 
    # If an error occurs during processing input buffer, an exception which is a
    # subclass of Zlib::Error is raised.  At that time, both input and output
    # buffer keep their conditions at the time when the error occurs.
    # 
    # == Method Catalogue
    # 
    # Many of the methods in this class are fairly low-level and unlikely to be
    # of interest to users.  In fact, users are unlikely to use this class
    # directly; rather they will be interested in Zlib::Inflate and
    # Zlib::Deflate.
    # 
    # The higher level methods are listed below.
    # 
    # - #total_in
    # - #total_out
    # - #data_type
    # - #adler
    # - #reset
    # - #finish
    # - #finished?
    # - #close
    # - #closed?
    class ZStream
        # Returns number of bytes of free spaces in output buffer.  Because the free
        # space is allocated automatically, this method returns 0 normally.
        def avail_out()
            #This is a stub, used for indexing
        end
        # Allocates +size+ bytes of free space in the output buffer. If there are more
        # than +size+ bytes already in the buffer, the buffer is truncated. Because 
        # free space is allocated automatically, you usually don't need to use this
        # method.
        def avail_out=(p1)
            #This is a stub, used for indexing
        end
        # Returns bytes of data in the input buffer. Normally, returns 0.
        def avail_in()
            #This is a stub, used for indexing
        end
        # Returns the total bytes of the input data to the stream.  FIXME
        def total_in()
            #This is a stub, used for indexing
        end
        # Returns the total bytes of the output data from the stream.  FIXME
        def total_out()
            #This is a stub, used for indexing
        end
        # Guesses the type of the data which have been inputed into the stream. The
        # returned value is either <tt>Zlib::BINARY</tt>, <tt>Zlib::ASCII</tt>, or
        # <tt>Zlib::UNKNOWN</tt>.
        def data_type()
            #This is a stub, used for indexing
        end
        # Returns the adler-32 checksum.
        def adler()
            #This is a stub, used for indexing
        end
        # Returns true if the stream is finished.
        def finished?()
            #This is a stub, used for indexing
        end
        # Returns true if the stream is finished.
        def stream_end?()
            #This is a stub, used for indexing
        end
        # Returns true if the stream is closed.
        def closed?()
            #This is a stub, used for indexing
        end
        # Returns true if the stream is closed.
        def ended?()
            #This is a stub, used for indexing
        end
        # Closes the stream. All operations on the closed stream will raise an
        # exception.
        def close()
            #This is a stub, used for indexing
        end
        # Closes the stream. All operations on the closed stream will raise an
        # exception.
        def end()
            #This is a stub, used for indexing
        end
        # Resets and initializes the stream. All data in both input and output buffer
        # are discarded.
        def reset()
            #This is a stub, used for indexing
        end
        # Finishes the stream and flushes output buffer. See Zlib::Deflate#finish and
        # Zlib::Inflate#finish for details of this behavior.
        def finish()
            #This is a stub, used for indexing
        end
        # Flushes input buffer and returns all data in that buffer.
        def flush_next_in()
            #This is a stub, used for indexing
        end
        # Flushes output buffer and returns all data in that buffer.
        def flush_next_out()
            #This is a stub, used for indexing
        end
    end
end
