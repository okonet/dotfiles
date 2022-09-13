=begin
 This is a machine generated stub using stdlib-doc for <b>module Zlib</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# This module provides access to the {zlib library}[http://zlib.net]. Zlib is
# designed to be a portable, free, general-purpose, legally unencumbered --
# that is, not covered by any patents -- lossless data-compression library
# for use on virtually any computer hardware and operating system.
# 
# The zlib compression library provides in-memory compression and
# decompression functions, including integrity checks of the uncompressed
# data.
# 
# The zlib compressed data format is described in RFC 1950, which is a
# wrapper around a deflate stream which is described in RFC 1951.
# 
# The library also supports reading and writing files in gzip (.gz) format
# with an interface similar to that of IO. The gzip format is described in
# RFC 1952 which is also a wrapper around a deflate stream.
# 
# The zlib format was designed to be compact and fast for use in memory and on
# communications channels. The gzip format was designed for single-file
# compression on file systems, has a larger header than zlib to maintain
# directory information, and uses a different, slower check method than zlib.
# 
# See your system's zlib.h for further information about zlib
# 
# == Sample usage
# 
# Using the wrapper to compress strings with default parameters is quite
# simple:
# 
#   require "zlib"
# 
#   data_to_compress = File.read("don_quixote.txt")
# 
#   puts "Input size: #{data_to_compress.size}"
#   #=> Input size: 2347740
# 
#   data_compressed = Zlib::Deflate.deflate(data_to_compress)
# 
#   puts "Compressed size: #{data_compressed.size}"
#   #=> Compressed size: 887238
# 
#   uncompressed_data = Zlib::Inflate.inflate(data_compressed)
# 
#   puts "Uncompressed data is: #{uncompressed_data}"
#   #=> Uncompressed data is: The Project Gutenberg EBook of Don Quixote...
# 
# == Class tree
# 
# - Zlib::Deflate
# - Zlib::Inflate
# - Zlib::ZStream
# - Zlib::Error
#   - Zlib::StreamEnd
#   - Zlib::NeedDict
#   - Zlib::DataError
#   - Zlib::StreamError
#   - Zlib::MemError
#   - Zlib::BufError
#   - Zlib::VersionError
# 
# (if you have GZIP_SUPPORT)
# - Zlib::GzipReader
# - Zlib::GzipWriter
# - Zlib::GzipFile
# - Zlib::GzipFile::Error
#   - Zlib::GzipFile::LengthError
#   - Zlib::GzipFile::CRCError
#   - Zlib::GzipFile::NoFooter
module Zlib
    # The Ruby/zlib version string.   
    VERSION = nil #value is unknown, used for indexing.
    # The string which represents the version of zlib.h   
    ZLIB_VERSION = nil #value is unknown, used for indexing.
    # Deflate#data_type.   
    BINARY = nil #value is unknown, used for indexing.
    # Deflate#data_type.   
    ASCII = nil #value is unknown, used for indexing.
    # Deflate#data_type.   
    TEXT = nil #value is unknown, used for indexing.
    # Deflate#data_type.   
    UNKNOWN = nil #value is unknown, used for indexing.
    # No compression, passes through data untouched.  Use this for appending
    # pre-compressed data to a deflate stream.
    NO_COMPRESSION = nil #value is unknown, used for indexing.
    # Fastest compression level, but with with lowest space savings.   
    BEST_SPEED = nil #value is unknown, used for indexing.
    # Slowest compression level, but with the best space savings.   
    BEST_COMPRESSION = nil #value is unknown, used for indexing.
    # Default compression level which is a good trade-off between space and
    # time
    DEFAULT_COMPRESSION = nil #value is unknown, used for indexing.
    # Deflate strategy for data produced by a filter (or predictor). The
    # effect of FILTERED is to force more Huffman codes and less string
    # matching; it is somewhat intermediate between DEFAULT_STRATEGY and
    # HUFFMAN_ONLY. Filtered data consists mostly of small values with a
    # somewhat random distribution.
    FILTERED = nil #value is unknown, used for indexing.
    # Deflate strategy which uses Huffman codes only (no string matching).   
    HUFFMAN_ONLY = nil #value is unknown, used for indexing.
    # Deflate compression strategy designed to be almost as fast as
    # HUFFMAN_ONLY, but give better compression for PNG image data.
    RLE = nil #value is unknown, used for indexing.
    # Deflate strategy which prevents the use of dynamic Huffman codes,
    # allowing for a simpler decoder for specialized applications.
    FIXED = nil #value is unknown, used for indexing.
    # Default deflate strategy which is used for normal data.   
    DEFAULT_STRATEGY = nil #value is unknown, used for indexing.
    # Inflate.new
    # for details.
    MAX_WBITS = nil #value is unknown, used for indexing.
    # The default memory level for allocating zlib deflate compression state.
    DEF_MEM_LEVEL = nil #value is unknown, used for indexing.
    # The maximum memory level for allocating zlib deflate compression state.
    MAX_MEM_LEVEL = nil #value is unknown, used for indexing.
    # NO_FLUSH is the default flush method and allows deflate to decide how
    # much data to accumulate before producing output in order to maximize
    # compression.
    NO_FLUSH = nil #value is unknown, used for indexing.
    # The SYNC_FLUSH method flushes all pending output to the output buffer
    # and the output is aligned on a byte boundary. Flushing may degrade
    # compression so it should be used only when necessary, such as at a
    # request or response boundary for a network stream.
    SYNC_FLUSH = nil #value is unknown, used for indexing.
    # Flushes all output as with SYNC_FLUSH, and the compression state is
    # reset so that decompression can restart from this point if previous
    # compressed data has been damaged or if random access is desired. Like
    # SYNC_FLUSH, using FULL_FLUSH too often can seriously degrade
    # compression.
    FULL_FLUSH = nil #value is unknown, used for indexing.
    # Processes all pending input and flushes pending output.   
    FINISH = nil #value is unknown, used for indexing.
    # The OS code of current host   
    OS_CODE = nil #value is unknown, used for indexing.
    # OS code for MSDOS hosts   
    OS_MSDOS = nil #value is unknown, used for indexing.
    # OS code for Amiga hosts   
    OS_AMIGA = nil #value is unknown, used for indexing.
    # OS code for VMS hosts   
    OS_VMS = nil #value is unknown, used for indexing.
    # OS code for UNIX hosts   
    OS_UNIX = nil #value is unknown, used for indexing.
    # OS code for Atari hosts   
    OS_ATARI = nil #value is unknown, used for indexing.
    # OS code for OS2 hosts   
    OS_OS2 = nil #value is unknown, used for indexing.
    # OS code for Mac OS hosts   
    OS_MACOS = nil #value is unknown, used for indexing.
    # OS code for TOPS-20 hosts   
    OS_TOPS20 = nil #value is unknown, used for indexing.
    # OS code for Win32 hosts   
    OS_WIN32 = nil #value is unknown, used for indexing.
    # OS code for VM OS hosts   
    OS_VMCMS = nil #value is unknown, used for indexing.
    # OS code for Z-System hosts   
    OS_ZSYSTEM = nil #value is unknown, used for indexing.
    # OS code for CP/M hosts   
    OS_CPM = nil #value is unknown, used for indexing.
    # OS code for QDOS hosts   
    OS_QDOS = nil #value is unknown, used for indexing.
    # OS code for RISC OS hosts   
    OS_RISCOS = nil #value is unknown, used for indexing.
    # OS code for unknown hosts   
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
    # Example usage:
    # 
    #   require "zlib"
    # 
    #   data = "foo"
    #   puts "Adler32 checksum: #{Zlib.adler32(data).to_s(16)}"
    #   #=> Adler32 checksum: 2820145
    def self.adler32(string = nil, adler = nil)
        #This is a stub, used for indexing
    end
    # Zlib.adler32_combine(adler1, adler2, len2)
    #  
    # Combine two Adler-32 check values in to one.  +alder1+ is the first Adler-32
    # value, +adler2+ is the second Adler-32 value.  +len2+ is the length of the
    # string used to generate +adler2+.
    def self.adler32_combine(adler1, adler2, len2)
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
    # Zlib.crc32_combine(crc1, crc2, len2)
    #  
    # Combine two CRC-32 check values in to one.  +crc1+ is the first CRC-32
    # value, +crc2+ is the second CRC-32 value.  +len2+ is the length of the
    # string used to generate +crc2+.
    def self.crc32_combine(crc1, crc2, len2)
        #This is a stub, used for indexing
    end
    # Returns the table for calculating CRC checksum as an array.
    def self.crc_table()
        #This is a stub, used for indexing
    end
    # Zlib.deflate(string[, level])
    # Zlib::Deflate.deflate(string[, level])
    #  
    # Compresses the given +string+. Valid values of level are
    # Zlib::NO_COMPRESSION, Zlib::BEST_SPEED, Zlib::BEST_COMPRESSION,
    # Zlib::DEFAULT_COMPRESSION, or an integer from 0 to 9.
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
    # See also Zlib.inflate
    def self.deflate(string, level=nil)
        #This is a stub, used for indexing
    end
    # Zlib.inflate(string)
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
    # 
    # See also Zlib.deflate
    def self.inflate(*several_variants)
        #This is a stub, used for indexing
    end
    # Subclass of Zlib::Error when zlib returns a Z_BUF_ERROR.
    # 
    # Usually if no progress is possible.
    class BufError < Error
    end
    # Subclass of Zlib::Error when zlib returns a Z_DATA_ERROR.
    # 
    # Usually if a stream was prematurely freed.
    class DataError < Error
    end
    # Zlib::Deflate is the class for compressing data.  See Zlib::ZStream for more
    # information.
    class Deflate < ZStream
        # Zlib.deflate(string[, level])
        # Zlib::Deflate.deflate(string[, level])
        #  
        # Compresses the given +string+. Valid values of level are
        # Zlib::NO_COMPRESSION, Zlib::BEST_SPEED, Zlib::BEST_COMPRESSION,
        # Zlib::DEFAULT_COMPRESSION, or an integer from 0 to 9.
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
        # See also Zlib.inflate
        def self.deflate(string, level=nil)
            #This is a stub, used for indexing
        end
        # Zlib::Deflate.new(level=DEFAULT_COMPRESSION, window_bits=MAX_WBITS, mem_level=DEF_MEM_LEVEL, strategy=DEFAULT_STRATEGY)
        #  
        # Creates a new deflate stream for compression. If a given argument is nil,
        # the default value of that argument is used.
        # 
        # The +level+ sets the compression level for the deflate stream between 0 (no
        # compression) and 9 (best compression). The following constants have been
        # defined to make code more readable:
        # 
        # * Zlib::DEFAULT_COMPRESSION
        # * Zlib::NO_COMPRESSION
        # * Zlib::BEST_SPEED
        # * Zlib::BEST_COMPRESSION
        # 
        # See http://www.zlib.net/manual.html#Constants for further information.
        # 
        # The +window_bits+ sets the size of the history buffer and should be between
        # 8 and 15.  Larger values of this parameter result in better compression at
        # the expense of memory usage.
        # 
        # The +mem_level+ specifies how much memory should be allocated for the
        # internal compression state.  1 uses minimum memory but is slow and reduces
        # compression ratio while 9 uses maximum memory for optimal speed.  The
        # default value is 8. Two constants are defined:
        # 
        # * Zlib::DEF_MEM_LEVEL
        # * Zlib::MAX_MEM_LEVEL
        # 
        # The +strategy+ sets the deflate compression strategy.  The following
        # strategies are available:
        # 
        # Zlib::DEFAULT_STRATEGY:: For normal data
        # Zlib::FILTERED:: For data produced by a filter or predictor
        # Zlib::FIXED:: Prevents dynamic Huffman codes
        # Zlib::HUFFMAN_ONLY:: Prevents string matching
        # Zlib::RLE:: Designed for better compression of PNG image data
        # 
        # See the constants for further description.
        # 
        # == Examples
        # 
        # === Basic
        # 
        #   open "compressed.file", "w+" do |io|
        #     io << Zlib::Deflate.new.deflate(File.read("big.file"))
        #   end
        # 
        # === Custom compression
        # 
        #   open "compressed.file", "w+" do |compressed_io|
        #     deflate = Zlib::Deflate.new(Zlib::BEST_COMPRESSION,
        #                                 Zlib::MAX_WBITS,
        #                                 Zlib::MAX_MEM_LEVEL,
        #                                 Zlib::HUFFMAN_ONLY)
        # 
        #     begin
        #       open "big.file" do |big_io|
        #         until big_io.eof? do
        #           compressed_io << zd.deflate(big_io.read(16384))
        #         end
        #       end
        #     ensure
        #       deflate.close
        #     end
        #   end
        # 
        # While this example will work, for best optimization review the flags for
        # your specific time, memory usage and output space requirements.
        def self.new(level=DEFAULT_COMPRESSION, window_bits=MAX_WBITS, mem_level=DEF_MEM_LEVEL, strategy=DEFAULT_STRATEGY)
            #This is a stub, used for indexing
        end
        # Duplicates the deflate stream.
        def initialize_copy(p1)
            #This is a stub, used for indexing
        end
        # z.deflate(string, flush = Zlib::NO_FLUSH)                 -> String
        # z.deflate(string, flush = Zlib::NO_FLUSH) { |chunk| ... } -> nil
        #  
        # Inputs +string+ into the deflate stream and returns the output from the
        # stream.  On calling this method, both the input and the output buffers of
        # the stream are flushed.  If +string+ is nil, this method finishes the
        # stream, just like Zlib::ZStream#finish.
        # 
        # If a block is given consecutive deflated chunks from the +string+ are
        # yielded to the block and +nil+ is returned.
        # 
        # The +flush+ parameter specifies the flush mode.  The following constants
        # may be used:
        # 
        # Zlib::NO_FLUSH:: The default
        # Zlib::SYNC_FLUSH:: Flushes the output to a byte boundary
        # Zlib::FULL_FLUSH:: SYNC_FLUSH + resets the compression state
        # Zlib::FINISH:: Pending input is processed, pending output is flushed.
        # 
        # See the constants for further description.
        def deflate(*several_variants)
            #This is a stub, used for indexing
        end
        # << string
        #  
        # Inputs +string+ into the deflate stream just like Zlib::Deflate#deflate, but
        # returns the Zlib::Deflate object itself.  The output from the stream is
        # preserved in output buffer.
        def <<(p1)
            #This is a stub, used for indexing
        end
        # flush(flush = Zlib::SYNC_FLUSH)                 -> String
        # flush(flush = Zlib::SYNC_FLUSH) { |chunk| ... } -> nil
        #  
        # This method is equivalent to <tt>deflate('', flush)</tt>. This method is
        # just provided to improve the readability of your Ruby program.  If a block
        # is given chunks of deflate output are yielded to the block until the buffer
        # is flushed.
        # 
        # See Zlib::Deflate#deflate for detail on the +flush+ constants NO_FLUSH,
        # SYNC_FLUSH, FULL_FLUSH and FINISH.
        def flush(*several_variants)
            #This is a stub, used for indexing
        end
        # params(level, strategy)
        #  
        # Changes the parameters of the deflate stream to allow changes between
        # different types of data that require different types of compression.  Any
        # unprocessed data is flushed before changing the params.
        # 
        # See Zlib::Deflate.new for a description of +level+ and +strategy+.
        def params(level, strategy)
            #This is a stub, used for indexing
        end
        # set_dictionary(string)
        #  
        # Sets the preset dictionary and returns +string+. This method is available
        # just only after Zlib::Deflate.new or Zlib::ZStream#reset method was called.
        # See zlib.h for details.
        # 
        # Can raise errors of Z_STREAM_ERROR if a parameter is invalid (such as
        # NULL dictionary) or the stream state is inconsistent, Z_DATA_ERROR if
        # the given dictionary doesn't match the expected one (incorrect adler32 value)
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
    # 
    # == Method Catalogue
    # 
    # - ::wrap
    # - ::open (Zlib::GzipReader::open and Zlib::GzipWriter::open)
    # - #close
    # - #closed?
    # - #comment
    # - comment= (Zlib::GzipWriter#comment=)
    # - #crc
    # - eof? (Zlib::GzipReader#eof?)
    # - #finish
    # - #level
    # - lineno (Zlib::GzipReader#lineno)
    # - lineno= (Zlib::GzipReader#lineno=)
    # - #mtime
    # - mtime= (Zlib::GzipWriter#mtime=)
    # - #orig_name
    # - orig_name (Zlib::GzipWriter#orig_name=)
    # - #os_code
    # - path (when the underlying IO supports #path)
    # - #sync
    # - #sync=
    # - #to_io
    # 
    # (due to internal structure, documentation may appear under Zlib::GzipReader
    # or Zlib::GzipWriter)
    class GzipFile
        # Zlib::GzipReader.wrap(io, ...) { |gz| ... }
        # Zlib::GzipWriter.wrap(io, ...) { |gz| ... }
        #  
        # Creates a GzipReader or GzipWriter associated with +io+, passing in any
        # necessary extra options, and executes the block with the newly created
        # object just like File.open.
        # 
        # The GzipFile object will be closed automatically after executing the block.
        # If you want to keep the associated IO object open, you may call
        # Zlib::GzipFile#finish method in the block.
        def self.wrap(*several_variants)
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
        # Same as IO#closed?
        def closed?()
            #This is a stub, used for indexing
        end
        # Same as IO#sync
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
            # Constructs a String of the GzipFile Error
            def inspect()
                #This is a stub, used for indexing
            end
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
    # be used an IO, or -IO-like, object.
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
        # The line number of the last row read from this file.
        def lineno()
            #This is a stub, used for indexing
        end
        # Specify line number of the last row read from this file.
        def lineno=(p1)
            #This is a stub, used for indexing
        end
        # Returns +true+ or +false+ whether the stream has reached the end.
        def eof()
            #This is a stub, used for indexing
        end
        # Returns +true+ or +false+ whether the stream has reached the end.
        def eof?()
            #This is a stub, used for indexing
        end
        # Total number of output bytes output so far.
        def pos()
            #This is a stub, used for indexing
        end
        # Total number of output bytes output so far.
        def tell()
            #This is a stub, used for indexing
        end
        # Zlib::GzipReader.open(filename) {|gz| ... }
        #  
        # Opens a file specified by +filename+ as a gzipped file, and returns a
        # GzipReader object associated with that file.  Further details of this method
        # are in Zlib::GzipReader.new and ZLib::GzipFile.wrap.
        def self.open(filename)
            #This is a stub, used for indexing
        end
        # Zlib::GzipReader.new(io, options = {})
        #  
        # Creates a GzipReader object associated with +io+. The GzipReader object reads
        # gzipped data from +io+, and parses/decompresses it.  The +io+ must
        # have a +read+ method that behaves same as the IO#read.
        # 
        # The +options+ hash may be used to set the encoding of the data.
        # +:external_encoding+, +:internal_encoding+ and +:encoding+ may be set as in
        # IO::new.
        # 
        # If the gzip file header is incorrect, raises an Zlib::GzipFile::Error
        # exception.
        def self.new(io, options = {})
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
        # gzipreader.readpartial(maxlen [, outbuf]) => string, outbuf
        #  
        # Reads at most <i>maxlen</i> bytes from the gziped stream but
        # it blocks only if <em>gzipreader</em> has no data immediately available.
        # If the optional <i>outbuf</i> argument is present,
        # it must reference a String, which will receive the data.
        # It raises <code>EOFError</code> on end of file.
        def readpartial(p1, p2 = v2)
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def getc()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def getbyte()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def readchar()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def readbyte()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def each_byte()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def each_char()
            #This is a stub, used for indexing
        end
        # This is a deprecated alias for <code>each_byte</code>.
        def bytes()
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def ungetc(p1)
            #This is a stub, used for indexing
        end
        # See Zlib::GzipReader documentation for a description.
        def ungetbyte(p1)
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
        # This is a deprecated alias for <code>each_line</code>.
        def lines(*args)
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
    # Following two example generate the same result.
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
    # To make like gzip(1) does, run following:
    # 
    #   orig = 'hoge.txt'
    #   Zlib::GzipWriter.open('hoge.gz') do |gz|
    #     gz.mtime = File.mtime(orig)
    #     gz.orig_name = orig
    #     gz.write IO.binread(orig)
    #   end
    # 
    # NOTE: Due to the limitation of Ruby's finalizer, you must explicitly close
    # GzipWriter objects by Zlib::GzipWriter#close etc.  Otherwise, GzipWriter
    # will be not able to write the gzip footer and will generate a broken gzip
    # file.
    class GzipWriter < GzipFile
        # Specify the modification time (+mtime+) in the gzip header.
        # Using a Fixnum or Integer
        def mtime=(p1)
            #This is a stub, used for indexing
        end
        # Specify the original name (+str+) in the gzip header.
        def orig_name=(p1)
            #This is a stub, used for indexing
        end
        # Specify the comment (+str+) in the gzip header.
        def comment=(p1)
            #This is a stub, used for indexing
        end
        # Total number of input bytes read so far.
        def pos()
            #This is a stub, used for indexing
        end
        # Total number of input bytes read so far.
        def tell()
            #This is a stub, used for indexing
        end
        # Zlib::GzipWriter.open(filename, level=nil, strategy=nil) { |gz| ... }
        #  
        # Opens a file specified by +filename+ for writing gzip compressed data, and
        # returns a GzipWriter object associated with that file.  Further details of
        # this method are found in Zlib::GzipWriter.new and Zlib::GzipFile.wrap.
        def self.open(filename, level=nil, strategy=nil)
            #This is a stub, used for indexing
        end
        # Zlib::GzipWriter.new(io, level = nil, strategy = nil, options = {})
        #  
        # Creates a GzipWriter object associated with +io+. +level+ and +strategy+
        # should be the same as the arguments of Zlib::Deflate.new.  The GzipWriter
        # object writes gzipped data to +io+.  +io+ must respond to the
        # +write+ method that behaves the same as IO#write.
        # 
        # The +options+ hash may be used to set the encoding of the data.
        # +:external_encoding+, +:internal_encoding+ and +:encoding+ may be set as in
        # IO::new.
        def self.new(io, level = nil, strategy = nil, options = {})
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
        # Zlib.inflate(string)
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
        # 
        # See also Zlib.deflate
        def self.inflate(*several_variants)
            #This is a stub, used for indexing
        end
        # Zlib::Inflate.new(window_bits = Zlib::MAX_WBITS)
        #  
        # Creates a new inflate stream for decompression.  +window_bits+ sets the
        # size of the history buffer and can have the following values:
        # 
        # 0::
        #   Have inflate use the window size from the zlib header of the compressed
        #   stream.
        # 
        # (8..15)
        #   Overrides the window size of the inflate header in the compressed stream.
        #   The window size must be greater than or equal to the window size of the
        #   compressed stream.
        # 
        # Greater than 15::
        #   Add 32 to window_bits to enable zlib and gzip decoding with automatic
        #   header detection, or add 16 to decode only the gzip format (a
        #   Zlib::DataError will be raised for a non-gzip stream).
        # 
        # (-8..-15)::
        #   Enables raw deflate mode which will not generate a check value, and will
        #   not look for any check values for comparison at the end of the stream.
        # 
        #   This is for use with other formats that use the deflate compressed data
        #   format such as zip which provide their own check values.
        # 
        # == Example
        # 
        #   open "compressed.file" do |compressed_io|
        #     zi = Zlib::Inflate.new(Zlib::MAX_WBITS + 32)
        # 
        #     begin
        #       open "uncompressed.file", "w+" do |uncompressed_io|
        #         uncompressed_io << zi.inflate(compressed_io.read)
        #       end
        #     ensure
        #       zi.close
        #     end
        #   end
        def self.new(window_bits = Zlib::MAX_WBITS)
            #This is a stub, used for indexing
        end
        # add_dictionary(string)
        #  
        # Provide the inflate stream with a dictionary that may be required in the
        # future.  Multiple dictionaries may be provided.  The inflate stream will
        # automatically choose the correct user-provided dictionary based on the
        # stream's required dictionary.
        def add_dictionary(string)
            #This is a stub, used for indexing
        end
        # inflate(deflate_string)                 -> String
        # inflate(deflate_string) { |chunk| ... } -> nil
        #  
        # Inputs +deflate_string+ into the inflate stream and returns the output from
        # the stream.  Calling this method, both the input and the output buffer of
        # the stream are flushed.  If string is +nil+, this method finishes the
        # stream, just like Zlib::ZStream#finish.
        # 
        # If a block is given consecutive inflated chunks from the +deflate_string+
        # are yielded to the block and +nil+ is returned.
        # 
        # Raises a Zlib::NeedDict exception if a preset dictionary is needed to
        # decompress.  Set the dictionary by Zlib::Inflate#set_dictionary and then
        # call this method again with an empty string to flush the stream:
        # 
        #   inflater = Zlib::Inflate.new
        # 
        #   begin
        #     out = inflater.inflate compressed
        #   rescue Zlib::NeedDict
        #     # ensure the dictionary matches the stream's required dictionary
        #     raise unless inflater.adler == Zlib.adler32(dictionary)
        # 
        #     inflater.set_dictionary dictionary
        #     inflater.inflate ''
        #   end
        # 
        #   # ...
        # 
        #   inflater.close
        # 
        # See also Zlib::Inflate.new
        def inflate(*several_variants)
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
        def set_dictionary(p1)
            #This is a stub, used for indexing
        end
    end
    # Subclass of Zlib::Error
    # 
    # When zlib returns a Z_MEM_ERROR,
    # usually if there was not enough memory.
    class MemError < Error
    end
    # Subclass of Zlib::Error
    # 
    # When zlib returns a Z_NEED_DICT
    # if a preset dictionary is needed at this point.
    # 
    # Used by Zlib::Inflate.inflate and <tt>Zlib.inflate</tt>
    class NeedDict < Error
    end
    # Subclass of Zlib::Error
    # 
    # When zlib returns a Z_STREAM_END
    # is return if the end of the compressed data has been reached
    # and all uncompressed out put has been produced.
    class StreamEnd < Error
    end
    # Subclass of Zlib::Error
    # 
    # When zlib returns a Z_STREAM_ERROR,
    # usually if the stream state was inconsistent.
    class StreamError < Error
    end
    # Subclass of Zlib::Error
    # 
    # When zlib returns a Z_VERSION_ERROR,
    # usually if the zlib library version is incompatible with the
    # version assumed by the caller.
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
        # returned value is either <tt>BINARY</tt>, <tt>ASCII</tt>, or
        # <tt>UNKNOWN</tt>.
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
        # finish                 -> String
        # finish { |chunk| ... } -> nil
        #  
        # Finishes the stream and flushes output buffer.  If a block is given each
        # chunk is yielded to the block until the input buffer has been flushed to
        # the output buffer.
        def finish(*several_variants)
            #This is a stub, used for indexing
        end
        # flush_next_in -> input
        #  
        def flush_next_in()
            #This is a stub, used for indexing
        end
        # flush_next_out                 -> String
        # flush_next_out { |chunk| ... } -> nil
        #  
        # Flushes output buffer and returns all data in that buffer.  If a block is
        # given each chunk is yielded to the block until the current output buffer
        # has been flushed.
        def flush_next_out(*several_variants)
            #This is a stub, used for indexing
        end
    end
end
