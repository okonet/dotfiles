=begin
 This is a machine generated stub using stdlib-doc for <b>class Encoding</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:43 +0400 by IntelliJ Ruby Stubs Generator.
=end

class Encoding
    # enc.name -> string
    #  
    # Returns the name of the encoding.
    # 
    #   Encoding::UTF_8.name      #=> "UTF-8"
    def to_s()
        #This is a stub, used for indexing
    end
    # enc.inspect -> string
    #  
    # Returns a string which represents the encoding for programmers.
    # 
    #   Encoding::UTF_8.inspect       #=> "#<Encoding:UTF-8>"
    #   Encoding::ISO_2022_JP.inspect #=> "#<Encoding:ISO-2022-JP (dummy)>"
    def inspect()
        #This is a stub, used for indexing
    end
    # enc.name -> string
    #  
    # Returns the name of the encoding.
    # 
    #   Encoding::UTF_8.name      #=> "UTF-8"
    def name()
        #This is a stub, used for indexing
    end
    # enc.names -> array
    #  
    # Returns the list of name and aliases of the encoding.
    # 
    #   Encoding::WINDOWS_31J.names  #=> ["Windows-31J", "CP932", "csWindows31J"]
    def names()
        #This is a stub, used for indexing
    end
    # enc.dummy? -> true or false
    #  
    # Returns true for dummy encodings.
    # A dummy encoding is an encoding for which character handling is not properly
    # implemented.
    # It is used for stateful encodings.
    # 
    #   Encoding::ISO_2022_JP.dummy?       #=> true
    #   Encoding::UTF_8.dummy?             #=> false
    def dummy?()
        #This is a stub, used for indexing
    end
    # enc.ascii_compatible? -> true or false
    #  
    # Returns whether ASCII-compatible or not.
    # 
    #   Encoding::UTF_8.ascii_compatible?     #=> true
    #   Encoding::UTF_16BE.ascii_compatible?  #=> false
    def ascii_compatible?()
        #This is a stub, used for indexing
    end
    # enc.replicate(name) -> encoding
    #  
    # Returns a replicated encoding of _enc_ whose name is _name_.
    # The new encoding should have the same byte structure of _enc_.
    # If _name_ is used by another encoding, raise ArgumentError.
    def replicate(name)
        #This is a stub, used for indexing
    end
    # Encoding.list -> [enc1, enc2, ...]
    #  
    # Returns the list of loaded encodings.
    # 
    #   Encoding.list
    #   #=> [#<Encoding:ASCII-8BIT>, #<Encoding:UTF-8>,
    #         #<Encoding:ISO-2022-JP (dummy)>]
    # 
    #   Encoding.find("US-ASCII")
    #   #=> #<Encoding:US-ASCII>
    # 
    #   Encoding.list
    #   #=> [#<Encoding:ASCII-8BIT>, #<Encoding:UTF-8>,
    #         #<Encoding:US-ASCII>, #<Encoding:ISO-2022-JP (dummy)>]
    def self.list()
        #This is a stub, used for indexing
    end
    # Encoding.name_list -> ["enc1", "enc2", ...]
    #  
    # Returns the list of available encoding names.
    # 
    #   Encoding.name_list
    #   #=> ["US-ASCII", "ASCII-8BIT", "UTF-8",
    #         "ISO-8859-1", "Shift_JIS", "EUC-JP",
    #         "Windows-31J",
    #         "BINARY", "CP932", "eucJP"]
    def self.name_list()
        #This is a stub, used for indexing
    end
    # Encoding.aliases -> {"alias1" => "orig1", "alias2" => "orig2", ...}
    #  
    # Returns the hash of available encoding alias and original encoding name.
    # 
    #   Encoding.aliases
    #   #=> {"BINARY"=>"ASCII-8BIT", "ASCII"=>"US-ASCII", "ANSI_X3.4-1986"=>"US-ASCII",
    #         "SJIS"=>"Shift_JIS", "eucJP"=>"EUC-JP", "CP932"=>"Windows-31J"}
    def self.aliases()
        #This is a stub, used for indexing
    end
    # Encoding.find(string) -> enc
    # Encoding.find(symbol) -> enc
    #  
    # Search the encoding with specified <i>name</i>.
    # <i>name</i> should be a string or symbol.
    # 
    #   Encoding.find("US-ASCII")  #=> #<Encoding:US-ASCII>
    #   Encoding.find(:Shift_JIS)  #=> #<Encoding:Shift_JIS>
    # 
    # Names which this method accept are encoding names and aliases
    # including following special aliases
    # 
    # "external"::   default external encoding
    # "internal"::   default internal encoding
    # "locale"::     locale encoding
    # "filesystem":: filesystem encoding
    # 
    # An ArgumentError is raised when no encoding with <i>name</i>.
    # Only <code>Encoding.find("internal")</code> however returns nil
    # when no encoding named "internal", in other words, when Ruby has no
    # default internal encoding.
    def self.find(*several_variants)
        #This is a stub, used for indexing
    end
    # Encoding.compatible?(obj1, obj2) -> enc or nil
    #  
    # Checks the compatibility of two objects.
    # 
    # If the objects are both strings they are compatible when they are
    # concatenatable.  The encoding of the concatenated string will be returned
    # if they are compatible, nil if they are not.
    # 
    #   Encoding.compatible?("\xa1".force_encoding("iso-8859-1"), "b")
    #   #=> #<Encoding:ISO-8859-1>
    # 
    #   Encoding.compatible?(
    #     "\xa1".force_encoding("iso-8859-1"),
    #     "\xa1\xa1".force_encoding("euc-jp"))
    #   #=> nil
    # 
    # If the objects are non-strings their encodings are compatible when they
    # have an encoding and:
    # * Either encoding is US-ASCII compatible
    # * One of the encodings is a 7-bit encoding
    def self.compatible?(obj1, obj2)
        #This is a stub, used for indexing
    end
    # Encoding.default_external -> enc
    #  
    # Returns default external encoding.
    # 
    # The default external encoding is used by default for strings created from
    # the following locations:
    # 
    # * CSV
    # * File data read from disk
    # * SDBM
    # * StringIO
    # * Zlib::GzipReader
    # * Zlib::GzipWriter
    # * String#inspect
    # * Regexp#inspect
    # 
    # While strings created from these locations will have this encoding, the
    # encoding may not be valid.  Be sure to check String#valid_encoding?.
    # 
    # File data written to disk will be transcoded to the default external
    # encoding when written.
    # 
    # The default external encoding is initialized by the locale or -E option.
    def self.default_external()
        #This is a stub, used for indexing
    end
    # Encoding.default_external = enc
    #  
    # Sets default external encoding.  You should not set
    # Encoding::default_external in ruby code as strings created before changing
    # the value may have a different encoding from strings created after thevalue
    # was changed., instead you should use <tt>ruby -E</tt> to invoke ruby with
    # the correct default_external.
    # 
    # See Encoding::default_external for information on how the default external
    # encoding is used.
    def self.default_external= enc
        #This is a stub, used for indexing
    end
    # Encoding.default_internal -> enc
    #  
    # Returns default internal encoding.  Strings will be transcoded to the
    # default internal encoding in the following places if the default internal
    # encoding is not nil:
    # 
    # * CSV
    # * Etc.sysconfdir and Etc.systmpdir
    # * File data read from disk
    # * File names from Dir
    # * Integer#chr
    # * String#inspect and Regexp#inspect
    # * Strings returned from Curses
    # * Strings returned from Readline
    # * Strings returned from SDBM
    # * Time#zone
    # * Values from ENV
    # * Values in ARGV including $PROGRAM_NAME
    # * __FILE__
    # 
    # Additionally String#encode and String#encode! use the default internal
    # encoding if no encoding is given.
    # 
    # The locale encoding (__ENCODING__), not default_internal, is used as the
    # encoding of created strings.
    # 
    # Encoding::default_internal is initialized by the source file's
    # internal_encoding or -E option.
    def self.default_internal()
        #This is a stub, used for indexing
    end
    # Encoding.default_internal = enc or nil
    #  
    # Sets default internal encoding or removes default internal encoding when
    # passed nil.  You should not set Encoding::default_internal in ruby code as
    # strings created before changing the value may have a different encoding
    # from strings created after the change.  Instead you should use
    # <tt>ruby -E</tt> to invoke ruby with the correct default_internal.
    # 
    # See Encoding::default_internal for information on how the default internal
    # encoding is used.
    def self.default_internal=(p1)
        #This is a stub, used for indexing
    end
    # Encoding.locale_charmap -> string
    #  
    # Returns the locale charmap name.
    # It returns nil if no appropriate information.
    # 
    #   Debian GNU/Linux
    #     LANG=C
    #       Encoding.locale_charmap  #=> "ANSI_X3.4-1968"
    #     LANG=ja_JP.EUC-JP
    #       Encoding.locale_charmap  #=> "EUC-JP"
    # 
    #   SunOS 5
    #     LANG=C
    #       Encoding.locale_charmap  #=> "646"
    #     LANG=ja
    #       Encoding.locale_charmap  #=> "eucJP"
    # 
    # The result is highly platform dependent.
    # So Encoding.find(Encoding.locale_charmap) may cause an error.
    # If you need some encoding object even for unknown locale,
    # Encoding.find("locale") can be used.
    def self.locale_charmap()
        #This is a stub, used for indexing
    end
    # Raised by Encoding and String methods when the source encoding is
    # incompatible with the target encoding.
    class CompatibilityError < EncodingError
    end
    class Converter < Data
        INVALID_MASK = nil #value is unknown, used for indexing.
        INVALID_REPLACE = nil #value is unknown, used for indexing.
        UNDEF_MASK = nil #value is unknown, used for indexing.
        UNDEF_REPLACE = nil #value is unknown, used for indexing.
        UNDEF_HEX_CHARREF = nil #value is unknown, used for indexing.
        PARTIAL_INPUT = nil #value is unknown, used for indexing.
        AFTER_OUTPUT = nil #value is unknown, used for indexing.
        UNIVERSAL_NEWLINE_DECORATOR = nil #value is unknown, used for indexing.
        CRLF_NEWLINE_DECORATOR = nil #value is unknown, used for indexing.
        CR_NEWLINE_DECORATOR = nil #value is unknown, used for indexing.
        XML_TEXT_DECORATOR = nil #value is unknown, used for indexing.
        XML_ATTR_CONTENT_DECORATOR = nil #value is unknown, used for indexing.
        XML_ATTR_QUOTE_DECORATOR = nil #value is unknown, used for indexing.
        # Encoding::Converter.asciicompat_encoding(string) -> encoding or nil
        # Encoding::Converter.asciicompat_encoding(encoding) -> encoding or nil
        #  
        # Returns the corresponding ASCII compatible encoding.
        # 
        # Returns nil if the argument is an ASCII compatible encoding.
        # 
        # "corresponding ASCII compatible encoding" is a ASCII compatible encoding which
        # can represents exactly the same characters as the given ASCII incompatible encoding.
        # So, no conversion undefined error occurs when converting between the two encodings.
        # 
        #   Encoding::Converter.asciicompat_encoding("ISO-2022-JP") #=> #<Encoding:stateless-ISO-2022-JP>
        #   Encoding::Converter.asciicompat_encoding("UTF-16BE") #=> #<Encoding:UTF-8>
        #   Encoding::Converter.asciicompat_encoding("UTF-8") #=> nil
        def self.asciicompat_encoding(*several_variants)
            #This is a stub, used for indexing
        end
        # Encoding::Converter.search_convpath(source_encoding, destination_encoding)         -> ary
        # Encoding::Converter.search_convpath(source_encoding, destination_encoding, opt)    -> ary
        #  
        # Returns a conversion path.
        # 
        #  p Encoding::Converter.search_convpath("ISO-8859-1", "EUC-JP")
        #  #=> [[#<Encoding:ISO-8859-1>, #<Encoding:UTF-8>],
        #  #    [#<Encoding:UTF-8>, #<Encoding:EUC-JP>]]
        # 
        #  p Encoding::Converter.search_convpath("ISO-8859-1", "EUC-JP", universal_newline: true)
        #  or
        #  p Encoding::Converter.search_convpath("ISO-8859-1", "EUC-JP", newline: :universal)
        #  #=> [[#<Encoding:ISO-8859-1>, #<Encoding:UTF-8>],
        #  #    [#<Encoding:UTF-8>, #<Encoding:EUC-JP>],
        #  #    "universal_newline"]
        # 
        #  p Encoding::Converter.search_convpath("ISO-8859-1", "UTF-32BE", universal_newline: true)
        #  or
        #  p Encoding::Converter.search_convpath("ISO-8859-1", "UTF-32BE", newline: :universal)
        #  #=> [[#<Encoding:ISO-8859-1>, #<Encoding:UTF-8>],
        #  #    "universal_newline",
        #  #    [#<Encoding:UTF-8>, #<Encoding:UTF-32BE>]]
        def self.search_convpath(*several_variants)
            #This is a stub, used for indexing
        end
        # Encoding::Converter.new(source_encoding, destination_encoding)
        # Encoding::Converter.new(source_encoding, destination_encoding, opt)
        # Encoding::Converter.new(convpath)
        #  
        # possible options elements:
        #   hash form:
        #     :invalid => nil            # raise error on invalid byte sequence (default)
        #     :invalid => :replace       # replace invalid byte sequence
        #     :undef => nil              # raise error on undefined conversion (default)
        #     :undef => :replace         # replace undefined conversion
        #     :replace => string         # replacement string ("?" or "\uFFFD" if not specified)
        #     :newline => :universal     # decorator for converting CRLF and CR to LF
        #     :newline => :crlf          # decorator for converting LF to CRLF
        #     :newline => :cr            # decorator for converting LF to CR
        #     :universal_newline => true # decorator for converting CRLF and CR to LF
        #     :crlf_newline => true      # decorator for converting LF to CRLF
        #     :cr_newline => true        # decorator for converting LF to CR
        #     :xml => :text              # escape as XML CharData.
        #     :xml => :attr              # escape as XML AttValue
        #   integer form:
        #     Encoding::Converter::INVALID_REPLACE
        #     Encoding::Converter::UNDEF_REPLACE
        #     Encoding::Converter::UNDEF_HEX_CHARREF
        #     Encoding::Converter::UNIVERSAL_NEWLINE_DECORATOR
        #     Encoding::Converter::CRLF_NEWLINE_DECORATOR
        #     Encoding::Converter::CR_NEWLINE_DECORATOR
        #     Encoding::Converter::XML_TEXT_DECORATOR
        #     Encoding::Converter::XML_ATTR_CONTENT_DECORATOR
        #     Encoding::Converter::XML_ATTR_QUOTE_DECORATOR
        # 
        # Encoding::Converter.new creates an instance of Encoding::Converter.
        # 
        # Source_encoding and destination_encoding should be a string or
        # Encoding object.
        # 
        # opt should be nil, a hash or an integer.
        # 
        # convpath should be an array.
        # convpath may contain
        # - two-element arrays which contain encodings or encoding names, or
        # - strings representing decorator names.
        # 
        # Encoding::Converter.new optionally takes an option.
        # The option should be a hash or an integer.
        # The option hash can contain :invalid => nil, etc.
        # The option integer should be logical-or of constants such as
        # Encoding::Converter::INVALID_REPLACE, etc.
        # 
        # [:invalid => nil]
        #   Raise error on invalid byte sequence.  This is a default behavior.
        # [:invalid => :replace]
        #   Replace invalid byte sequence by replacement string.
        # [:undef => nil]
        #   Raise an error if a character in source_encoding is not defined in destination_encoding.
        #   This is a default behavior.
        # [:undef => :replace]
        #   Replace undefined character in destination_encoding with replacement string.
        # [:replace => string]
        #   Specify the replacement string.
        #   If not specified, "\uFFFD" is used for Unicode encodings and "?" for others.
        # [:universal_newline => true]
        #   Convert CRLF and CR to LF.
        # [:crlf_newline => true]
        #   Convert LF to CRLF.
        # [:cr_newline => true]
        #   Convert LF to CR.
        # [:xml => :text]
        #   Escape as XML CharData.
        #   This form can be used as a HTML 4.0 #PCDATA.
        #   - '&' -> '&amp;'
        #   - '<' -> '&lt;'
        #   - '>' -> '&gt;'
        #   - undefined characters in destination_encoding -> hexadecimal CharRef such as &#xHH;
        # [:xml => :attr]
        #   Escape as XML AttValue.
        #   The converted result is quoted as "...".
        #   This form can be used as a HTML 4.0 attribute value.
        #   - '&' -> '&amp;'
        #   - '<' -> '&lt;'
        #   - '>' -> '&gt;'
        #   - '"' -> '&quot;'
        #   - undefined characters in destination_encoding -> hexadecimal CharRef such as &#xHH;
        # 
        # Examples:
        #   # UTF-16BE to UTF-8
        #   ec = Encoding::Converter.new("UTF-16BE", "UTF-8")
        # 
        #   # Usually, decorators such as newline conversion are inserted last.
        #   ec = Encoding::Converter.new("UTF-16BE", "UTF-8", :universal_newline => true)
        #   p ec.convpath #=> [[#<Encoding:UTF-16BE>, #<Encoding:UTF-8>],
        #                 #    "universal_newline"]
        # 
        #   # But, if the last encoding is ASCII incompatible,
        #   # decorators are inserted before the last conversion.
        #   ec = Encoding::Converter.new("UTF-8", "UTF-16BE", :crlf_newline => true)
        #   p ec.convpath #=> ["crlf_newline",
        #                 #    [#<Encoding:UTF-8>, #<Encoding:UTF-16BE>]]
        # 
        #   # Conversion path can be specified directly.
        #   ec = Encoding::Converter.new(["universal_newline", ["EUC-JP", "UTF-8"], ["UTF-8", "UTF-16BE"]])
        #   p ec.convpath #=> ["universal_newline",
        #                 #    [#<Encoding:EUC-JP>, #<Encoding:UTF-8>],
        #                 #    [#<Encoding:UTF-8>, #<Encoding:UTF-16BE>]]
        def self.new(*several_variants)
            #This is a stub, used for indexing
        end
        # ec.inspect         -> string
        #  
        # Returns a printable version of <i>ec</i>
        # 
        #   ec = Encoding::Converter.new("iso-8859-1", "utf-8")
        #   puts ec.inspect    #=> #<Encoding::Converter: ISO-8859-1 to UTF-8>
        def inspect()
            #This is a stub, used for indexing
        end
        # ec.convpath        -> ary
        #  
        # Returns the conversion path of ec.
        # 
        # The result is an array of conversions.
        # 
        #   ec = Encoding::Converter.new("ISO-8859-1", "EUC-JP", crlf_newline: true)
        #   p ec.convpath
        #   #=> [[#<Encoding:ISO-8859-1>, #<Encoding:UTF-8>],
        #   #    [#<Encoding:UTF-8>, #<Encoding:EUC-JP>],
        #   #    "crlf_newline"]
        # 
        # Each element of the array is a pair of encodings or a string.
        # A pair means an encoding conversion.
        # A string means a decorator.
        # 
        # In the above example, [#<Encoding:ISO-8859-1>, #<Encoding:UTF-8>] means
        # a converter from ISO-8859-1 to UTF-8.
        # "crlf_newline" means newline converter from LF to CRLF.
        def convpath()
            #This is a stub, used for indexing
        end
        # ec.source_encoding -> encoding
        #  
        # Returns the source encoding as an Encoding object.
        def source_encoding()
            #This is a stub, used for indexing
        end
        # ec.destination_encoding -> encoding
        #  
        # Returns the destination encoding as an Encoding object.
        def destination_encoding()
            #This is a stub, used for indexing
        end
        # ec.primitive_convert(source_buffer, destination_buffer) -> symbol
        # ec.primitive_convert(source_buffer, destination_buffer, destination_byteoffset) -> symbol
        # ec.primitive_convert(source_buffer, destination_buffer, destination_byteoffset, destination_bytesize) -> symbol
        # ec.primitive_convert(source_buffer, destination_buffer, destination_byteoffset, destination_bytesize, opt) -> symbol
        #  
        # possible opt elements:
        #   hash form:
        #     :partial_input => true           # source buffer may be part of larger source
        #     :after_output => true            # stop conversion after output before input
        #   integer form:
        #     Encoding::Converter::PARTIAL_INPUT
        #     Encoding::Converter::AFTER_OUTPUT
        # 
        # possible results:
        #    :invalid_byte_sequence
        #    :incomplete_input
        #    :undefined_conversion
        #    :after_output
        #    :destination_buffer_full
        #    :source_buffer_empty
        #    :finished
        # 
        # primitive_convert converts source_buffer into destination_buffer.
        # 
        # source_buffer should be a string or nil.
        # nil means a empty string.
        # 
        # destination_buffer should be a string.
        # 
        # destination_byteoffset should be an integer or nil.
        # nil means the end of destination_buffer.
        # If it is omitted, nil is assumed.
        # 
        # destination_bytesize should be an integer or nil.
        # nil means unlimited.
        # If it is omitted, nil is assumed.
        # 
        # opt should be nil, a hash or an integer.
        # nil means no flags.
        # If it is omitted, nil is assumed.
        # 
        # primitive_convert converts the content of source_buffer from beginning
        # and store the result into destination_buffer.
        # 
        # destination_byteoffset and destination_bytesize specify the region which
        # the converted result is stored.
        # destination_byteoffset specifies the start position in destination_buffer in bytes.
        # If destination_byteoffset is nil,
        # destination_buffer.bytesize is used for appending the result.
        # destination_bytesize specifies maximum number of bytes.
        # If destination_bytesize is nil,
        # destination size is unlimited.
        # After conversion, destination_buffer is resized to
        # destination_byteoffset + actually produced number of bytes.
        # Also destination_buffer's encoding is set to destination_encoding.
        # 
        # primitive_convert drops the converted part of source_buffer.
        # the dropped part is converted in destination_buffer or
        # buffered in Encoding::Converter object.
        # 
        # primitive_convert stops conversion when one of following condition met.
        # - invalid byte sequence found in source buffer (:invalid_byte_sequence)
        # - unexpected end of source buffer (:incomplete_input)
        #   this occur only when :partial_input is not specified.
        # - character not representable in output encoding (:undefined_conversion)
        # - after some output is generated, before input is done (:after_output)
        #   this occur only when :after_output is specified.
        # - destination buffer is full (:destination_buffer_full)
        #   this occur only when destination_bytesize is non-nil.
        # - source buffer is empty (:source_buffer_empty)
        #   this occur only when :partial_input is specified.
        # - conversion is finished (:finished)
        # 
        # example:
        #   ec = Encoding::Converter.new("UTF-8", "UTF-16BE")
        #   ret = ec.primitive_convert(src="pi", dst="", nil, 100)
        #   p [ret, src, dst] #=> [:finished, "", "\x00p\x00i"]
        # 
        #   ec = Encoding::Converter.new("UTF-8", "UTF-16BE")
        #   ret = ec.primitive_convert(src="pi", dst="", nil, 1)
        #   p [ret, src, dst] #=> [:destination_buffer_full, "i", "\x00"]
        #   ret = ec.primitive_convert(src, dst="", nil, 1)
        #   p [ret, src, dst] #=> [:destination_buffer_full, "", "p"]
        #   ret = ec.primitive_convert(src, dst="", nil, 1)
        #   p [ret, src, dst] #=> [:destination_buffer_full, "", "\x00"]
        #   ret = ec.primitive_convert(src, dst="", nil, 1)
        #   p [ret, src, dst] #=> [:finished, "", "i"]
        def primitive_convert(*several_variants)
            #This is a stub, used for indexing
        end
        # ec.convert(source_string) -> destination_string
        #  
        # Convert source_string and return destination_string.
        # 
        # source_string is assumed as a part of source.
        # i.e.  :partial_input=>true is specified internally.
        # finish method should be used last.
        # 
        #   ec = Encoding::Converter.new("utf-8", "euc-jp")
        #   puts ec.convert("\u3042").dump     #=> "\xA4\xA2"
        #   puts ec.finish.dump                #=> ""
        # 
        #   ec = Encoding::Converter.new("euc-jp", "utf-8")
        #   puts ec.convert("\xA4").dump       #=> ""
        #   puts ec.convert("\xA2").dump       #=> "\xE3\x81\x82"
        #   puts ec.finish.dump                #=> ""
        # 
        #   ec = Encoding::Converter.new("utf-8", "iso-2022-jp")
        #   puts ec.convert("\xE3").dump       #=> "".force_encoding("ISO-2022-JP")
        #   puts ec.convert("\x81").dump       #=> "".force_encoding("ISO-2022-JP")
        #   puts ec.convert("\x82").dump       #=> "\e$B$\"".force_encoding("ISO-2022-JP")
        #   puts ec.finish.dump                #=> "\e(B".force_encoding("ISO-2022-JP")
        # 
        # If a conversion error occur,
        # Encoding::UndefinedConversionError or
        # Encoding::InvalidByteSequenceError is raised.
        # Encoding::Converter#convert doesn't supply methods to recover or restart
        # from these exceptions.
        # When you want to handle these conversion errors,
        # use Encoding::Converter#primitive_convert.
        def convert(source_string)
            #This is a stub, used for indexing
        end
        # ec.finish -> string
        #  
        # Finishes the converter.
        # It returns the last part of the converted string.
        # 
        #   ec = Encoding::Converter.new("utf-8", "iso-2022-jp")
        #   p ec.convert("\u3042")     #=> "\e$B$\""
        #   p ec.finish                #=> "\e(B"
        def finish()
            #This is a stub, used for indexing
        end
        # ec.primitive_errinfo -> array
        #  
        # primitive_errinfo returns important information regarding the last error
        # as a 5-element array:
        # 
        #   [result, enc1, enc2, error_bytes, readagain_bytes]
        # 
        # result is the last result of primitive_convert.
        # 
        # Other elements are only meaningful when result is
        # :invalid_byte_sequence, :incomplete_input or :undefined_conversion.
        # 
        # enc1 and enc2 indicate a conversion step as a pair of strings.
        # For example, a converter from EUC-JP to ISO-8859-1 converts
        # a string as follows: EUC-JP -> UTF-8 -> ISO-8859-1.
        # So [enc1, enc2] is either ["EUC-JP", "UTF-8"] or ["UTF-8", "ISO-8859-1"].
        # 
        # error_bytes and readagain_bytes indicate the byte sequences which caused the error.
        # error_bytes is discarded portion.
        # readagain_bytes is buffered portion which is read again on next conversion.
        # 
        # Example:
        # 
        #   # \xff is invalid as EUC-JP.
        #   ec = Encoding::Converter.new("EUC-JP", "Shift_JIS")
        #   ec.primitive_convert(src="\xff", dst="", nil, 10)
        #   p ec.primitive_errinfo
        #   #=> [:invalid_byte_sequence, "EUC-JP", "UTF-8", "\xFF", ""]
        # 
        #   # HIRAGANA LETTER A (\xa4\xa2 in EUC-JP) is not representable in ISO-8859-1.
        #   # Since this error is occur in UTF-8 to ISO-8859-1 conversion,
        #   # error_bytes is HIRAGANA LETTER A in UTF-8 (\xE3\x81\x82).
        #   ec = Encoding::Converter.new("EUC-JP", "ISO-8859-1")
        #   ec.primitive_convert(src="\xa4\xa2", dst="", nil, 10)
        #   p ec.primitive_errinfo
        #   #=> [:undefined_conversion, "UTF-8", "ISO-8859-1", "\xE3\x81\x82", ""]
        # 
        #   # partial character is invalid
        #   ec = Encoding::Converter.new("EUC-JP", "ISO-8859-1")
        #   ec.primitive_convert(src="\xa4", dst="", nil, 10)
        #   p ec.primitive_errinfo
        #   #=> [:incomplete_input, "EUC-JP", "UTF-8", "\xA4", ""]
        # 
        #   # Encoding::Converter::PARTIAL_INPUT prevents invalid errors by
        #   # partial characters.
        #   ec = Encoding::Converter.new("EUC-JP", "ISO-8859-1")
        #   ec.primitive_convert(src="\xa4", dst="", nil, 10, Encoding::Converter::PARTIAL_INPUT)
        #   p ec.primitive_errinfo
        #   #=> [:source_buffer_empty, nil, nil, nil, nil]
        # 
        #   # \xd8\x00\x00@ is invalid as UTF-16BE because
        #   # no low surrogate after high surrogate (\xd8\x00).
        #   # It is detected by 3rd byte (\00) which is part of next character.
        #   # So the high surrogate (\xd8\x00) is discarded and
        #   # the 3rd byte is read again later.
        #   # Since the byte is buffered in ec, it is dropped from src.
        #   ec = Encoding::Converter.new("UTF-16BE", "UTF-8")
        #   ec.primitive_convert(src="\xd8\x00\x00@", dst="", nil, 10)
        #   p ec.primitive_errinfo
        #   #=> [:invalid_byte_sequence, "UTF-16BE", "UTF-8", "\xD8\x00", "\x00"]
        #   p src
        #   #=> "@"
        # 
        #   # Similar to UTF-16BE, \x00\xd8@\x00 is invalid as UTF-16LE.
        #   # The problem is detected by 4th byte.
        #   ec = Encoding::Converter.new("UTF-16LE", "UTF-8")
        #   ec.primitive_convert(src="\x00\xd8@\x00", dst="", nil, 10)
        #   p ec.primitive_errinfo
        #   #=> [:invalid_byte_sequence, "UTF-16LE", "UTF-8", "\x00\xD8", "@\x00"]
        #   p src
        #   #=> ""
        def primitive_errinfo()
            #This is a stub, used for indexing
        end
        # ec.insert_output(string) -> nil
        #  
        # Inserts string into the encoding converter.
        # The string will be converted to the destination encoding and
        # output on later conversions.
        # 
        # If the destination encoding is stateful,
        # string is converted according to the state and the state is updated.
        # 
        # This method should be used only when a conversion error occurs.
        # 
        #  ec = Encoding::Converter.new("utf-8", "iso-8859-1")
        #  src = "HIRAGANA LETTER A is \u{3042}."
        #  dst = ""
        #  p ec.primitive_convert(src, dst)    #=> :undefined_conversion
        #  puts "[#{dst.dump}, #{src.dump}]"   #=> ["HIRAGANA LETTER A is ", "."]
        #  ec.insert_output("<err>")
        #  p ec.primitive_convert(src, dst)    #=> :finished
        #  puts "[#{dst.dump}, #{src.dump}]"   #=> ["HIRAGANA LETTER A is <err>.", ""]
        # 
        #  ec = Encoding::Converter.new("utf-8", "iso-2022-jp")
        #  src = "\u{306F 3041 3068 2661 3002}" # U+2661 is not representable in iso-2022-jp
        #  dst = ""
        #  p ec.primitive_convert(src, dst)    #=> :undefined_conversion
        #  puts "[#{dst.dump}, #{src.dump}]"   #=> ["\e$B$O$!$H".force_encoding("ISO-2022-JP"), "\xE3\x80\x82"]
        #  ec.insert_output "?"                # state change required to output "?".
        #  p ec.primitive_convert(src, dst)    #=> :finished
        #  puts "[#{dst.dump}, #{src.dump}]"   #=> ["\e$B$O$!$H\e(B?\e$B!#\e(B".force_encoding("ISO-2022-JP"), ""]
        def insert_output(string)
            #This is a stub, used for indexing
        end
        # call-seq
        #   ec.putback                    -> string
        #   ec.putback(max_numbytes)      -> string
        # 
        # Put back the bytes which will be converted.
        # 
        # The bytes are caused by invalid_byte_sequence error.
        # When invalid_byte_sequence error, some bytes are discarded and
        # some bytes are buffered to be converted later.
        # The latter bytes can be put back.
        # It can be observed by
        # Encoding::InvalidByteSequenceError#readagain_bytes and
        # Encoding::Converter#primitive_errinfo.
        # 
        #   ec = Encoding::Converter.new("utf-16le", "iso-8859-1")
        #   src = "\x00\xd8\x61\x00"
        #   dst = ""
        #   p ec.primitive_convert(src, dst)   #=> :invalid_byte_sequence
        #   p ec.primitive_errinfo     #=> [:invalid_byte_sequence, "UTF-16LE", "UTF-8", "\x00\xD8", "a\x00"]
        #   p ec.putback               #=> "a\x00"
        #   p ec.putback               #=> ""          # no more bytes to put back
        def putback(p1 = v1)
            #This is a stub, used for indexing
        end
        # ec.last_error -> exception or nil
        #  
        # Returns an exception object for the last conversion.
        # Returns nil if the last conversion did not produce an error.
        # 
        # "error" means that
        # Encoding::InvalidByteSequenceError and Encoding::UndefinedConversionError for
        # Encoding::Converter#convert and
        # :invalid_byte_sequence, :incomplete_input and :undefined_conversion for
        # Encoding::Converter#primitive_convert.
        # 
        #  ec = Encoding::Converter.new("utf-8", "iso-8859-1")
        #  p ec.primitive_convert(src="\xf1abcd", dst="")       #=> :invalid_byte_sequence
        #  p ec.last_error      #=> #<Encoding::InvalidByteSequenceError: "\xF1" followed by "a" on UTF-8>
        #  p ec.primitive_convert(src, dst, nil, 1)             #=> :destination_buffer_full
        #  p ec.last_error      #=> nil
        def last_error()
            #This is a stub, used for indexing
        end
        # ec.replacement -> string
        #  
        # Returns the replacement string.
        # 
        #  ec = Encoding::Converter.new("euc-jp", "us-ascii")
        #  p ec.replacement    #=> "?"
        # 
        #  ec = Encoding::Converter.new("euc-jp", "utf-8")
        #  p ec.replacement    #=> "\uFFFD"
        def replacement()
            #This is a stub, used for indexing
        end
        # ec.replacement = string
        #  
        # Sets the replacement string.
        # 
        #  ec = Encoding::Converter.new("utf-8", "us-ascii", :undef => :replace)
        #  ec.replacement = "<undef>"
        #  p ec.convert("a \u3042 b")      #=> "a <undef> b"
        def replacement= string
            #This is a stub, used for indexing
        end
        # ec == other        -> true or false
        #  
        def == other
            #This is a stub, used for indexing
        end
    end
    # Raised by transcoding methods when a named encoding does not
    # correspond with a known converter.
    class ConverterNotFoundError < EncodingError
    end
    # Raised by Encoding and String methods when the string being
    # transcoded contains a byte invalid for the either the source or
    # target encoding.
    class InvalidByteSequenceError < EncodingError
        # ecerr.source_encoding_name         -> string
        #  
        # Returns the source encoding name as a string.
        def source_encoding_name()
            #This is a stub, used for indexing
        end
        # ecerr.destination_encoding_name         -> string
        #  
        # Returns the destination encoding name as a string.
        def destination_encoding_name()
            #This is a stub, used for indexing
        end
        # ecerr.source_encoding              -> encoding
        #  
        # Returns the source encoding as an encoding object.
        # 
        # Note that the result may not be equal to the source encoding of
        # the encoding converter if the conversion has multiple steps.
        # 
        #  ec = Encoding::Converter.new("ISO-8859-1", "EUC-JP") # ISO-8859-1 -> UTF-8 -> EUC-JP
        #  begin
        #    ec.convert("\xa0") # NO-BREAK SPACE, which is available in UTF-8 but not in EUC-JP.
        #  rescue Encoding::UndefinedConversionError
        #    p $!.source_encoding              #=> #<Encoding:UTF-8>
        #    p $!.destination_encoding         #=> #<Encoding:EUC-JP>
        #    p $!.source_encoding_name         #=> "UTF-8"
        #    p $!.destination_encoding_name    #=> "EUC-JP"
        #  end
        def source_encoding()
            #This is a stub, used for indexing
        end
        # ecerr.destination_encoding         -> string
        #  
        # Returns the destination encoding as an encoding object.
        def destination_encoding()
            #This is a stub, used for indexing
        end
        # ecerr.error_bytes         -> string
        #  
        # Returns the discarded bytes when Encoding::InvalidByteSequenceError occurs.
        # 
        #  ec = Encoding::Converter.new("EUC-JP", "ISO-8859-1")
        #  begin
        #    ec.convert("abc\xA1\xFFdef")
        #  rescue Encoding::InvalidByteSequenceError
        #    p $!      #=> #<Encoding::InvalidByteSequenceError: "\xA1" followed by "\xFF" on EUC-JP>
        #    puts $!.error_bytes.dump          #=> "\xA1"
        #    puts $!.readagain_bytes.dump      #=> "\xFF"
        #  end
        def error_bytes()
            #This is a stub, used for indexing
        end
        # ecerr.readagain_bytes         -> string
        #  
        # Returns the bytes to be read again when Encoding::InvalidByteSequenceError occurs.
        def readagain_bytes()
            #This is a stub, used for indexing
        end
        # ecerr.incomplete_input?         -> true or false
        #  
        # Returns true if the invalid byte sequence error is caused by
        # premature end of string.
        # 
        #  ec = Encoding::Converter.new("EUC-JP", "ISO-8859-1")
        # 
        #  begin
        #    ec.convert("abc\xA1z")
        #  rescue Encoding::InvalidByteSequenceError
        #    p $!      #=> #<Encoding::InvalidByteSequenceError: "\xA1" followed by "z" on EUC-JP>
        #    p $!.incomplete_input?    #=> false
        #  end
        # 
        #  begin
        #    ec.convert("abc\xA1")
        #    ec.finish
        #  rescue Encoding::InvalidByteSequenceError
        #    p $!      #=> #<Encoding::InvalidByteSequenceError: incomplete "\xA1" on EUC-JP>
        #    p $!.incomplete_input?    #=> true
        #  end
        def incomplete_input?()
            #This is a stub, used for indexing
        end
    end
    # Raised by Encoding and String methods when a transcoding operation
    # fails.
    class UndefinedConversionError < EncodingError
        # ecerr.source_encoding_name         -> string
        #  
        # Returns the source encoding name as a string.
        def source_encoding_name()
            #This is a stub, used for indexing
        end
        # ecerr.destination_encoding_name         -> string
        #  
        # Returns the destination encoding name as a string.
        def destination_encoding_name()
            #This is a stub, used for indexing
        end
        # ecerr.source_encoding              -> encoding
        #  
        # Returns the source encoding as an encoding object.
        # 
        # Note that the result may not be equal to the source encoding of
        # the encoding converter if the conversion has multiple steps.
        # 
        #  ec = Encoding::Converter.new("ISO-8859-1", "EUC-JP") # ISO-8859-1 -> UTF-8 -> EUC-JP
        #  begin
        #    ec.convert("\xa0") # NO-BREAK SPACE, which is available in UTF-8 but not in EUC-JP.
        #  rescue Encoding::UndefinedConversionError
        #    p $!.source_encoding              #=> #<Encoding:UTF-8>
        #    p $!.destination_encoding         #=> #<Encoding:EUC-JP>
        #    p $!.source_encoding_name         #=> "UTF-8"
        #    p $!.destination_encoding_name    #=> "EUC-JP"
        #  end
        def source_encoding()
            #This is a stub, used for indexing
        end
        # ecerr.destination_encoding         -> string
        #  
        # Returns the destination encoding as an encoding object.
        def destination_encoding()
            #This is a stub, used for indexing
        end
        # ecerr.error_char         -> string
        #  
        # Returns the one-character string which cause Encoding::UndefinedConversionError.
        # 
        #  ec = Encoding::Converter.new("ISO-8859-1", "EUC-JP")
        #  begin
        #    ec.convert("\xa0")
        #  rescue Encoding::UndefinedConversionError
        #    puts $!.error_char.dump   #=> "\xC2\xA0"
        #    p $!.error_char.encoding  #=> #<Encoding:UTF-8>
        #  end
        def error_char()
            #This is a stub, used for indexing
        end
    end
end
