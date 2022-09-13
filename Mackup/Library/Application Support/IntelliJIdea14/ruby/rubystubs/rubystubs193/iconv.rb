=begin
 This is a machine generated stub using stdlib-doc for <b>class Iconv</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# == Summary
# 
# Ruby extension for charset conversion.
# 
# == Abstract
# 
# Iconv is a wrapper class for the UNIX 95 <tt>iconv()</tt> function family,
# which translates string between various encoding systems.
# 
# See Open Group's on-line documents for more details.
# * <tt>iconv.h</tt>:       http://www.opengroup.org/onlinepubs/007908799/xsh/iconv.h.html
# * <tt>iconv_open()</tt>:  http://www.opengroup.org/onlinepubs/007908799/xsh/iconv_open.html
# * <tt>iconv()</tt>:       http://www.opengroup.org/onlinepubs/007908799/xsh/iconv.html
# * <tt>iconv_close()</tt>: http://www.opengroup.org/onlinepubs/007908799/xsh/iconv_close.html
# 
# Which coding systems are available is platform-dependent.
# 
# == Examples
# 
# 1. Simple conversion between two charsets.
# 
#      converted_text = Iconv.conv('iso-8859-15', 'utf-8', text)
# 
# 2. Instantiate a new Iconv and use method Iconv#iconv.
# 
#      cd = Iconv.new(to, from)
#      begin
#        input.each { |s| output << cd.iconv(s) }
#        output << cd.iconv(nil)                   # Don't forget this!
#      ensure
#        cd.close
#      end
# 
# 3. Invoke Iconv.open with a block.
# 
#      Iconv.open(to, from) do |cd|
#        input.each { |s| output << cd.iconv(s) }
#        output << cd.iconv(nil)
#      end
# 
# 4. Shorthand for (3).
# 
#      Iconv.iconv(to, from, *input.to_a)
# 
# == Attentions
# 
# Even if some extentions of implementation dependent are useful,
# DON'T USE those extentions in libraries and scripts to widely distribute.
# If you want to use those feature, use String#encode.
class Iconv < Data
    # Iconv.open(to, from) { |iconv| ... }
    #  
    # Equivalent to Iconv.new except that when it is called with a block, it
    # yields with the new instance and closes it, and returns the result which
    # returned from the block.
    def self.open(to, from)
        #This is a stub, used for indexing
    end
    # Iconv.iconv(to, from, *strs)
    #  
    # Shorthand for
    #   Iconv.open(to, from) { |cd|
    #     (strs + [nil]).collect { |s| cd.iconv(s) }
    #   }
    # 
    # === Parameters
    # 
    # <tt>to, from</tt>:: see Iconv.new
    # <tt>strs</tt>:: strings to be converted
    # 
    # === Exceptions
    # 
    # Exceptions thrown by Iconv.new, Iconv.open and Iconv#iconv.
    def self.iconv(to, from, *strs)
        #This is a stub, used for indexing
    end
    # Iconv.conv(to, from, str)
    #  
    # Shorthand for
    #   Iconv.iconv(to, from, str).join
    # See Iconv.iconv.
    def self.conv(to, from, str)
        #This is a stub, used for indexing
    end
    # Iconv.list {|*aliases| ... }
    #  
    # Iterates each alias sets.
    def self.list()
        #This is a stub, used for indexing
    end
    # Iconv.ctlmethods => array
    #  
    # Returns available iconvctl() method list.
    def self.ctlmethods()
        #This is a stub, used for indexing
    end
    # Iconv.new(to, from, [options])
    #  
    # Creates new code converter from a coding-system designated with +from+
    # to another one designated with +to+.
    # 
    # === Parameters
    # 
    # +to+::   encoding name for destination
    # +from+:: encoding name for source
    # +options+:: options for converter
    # 
    # === Exceptions
    # 
    # TypeError::       if +to+ or +from+ aren't String
    # InvalidEncoding:: if designated converter couldn't find out
    # SystemCallError:: if <tt>iconv_open(3)</tt> fails
    def self.new(to, from, *options)
        #This is a stub, used for indexing
    end
    # Finishes conversion.
    # 
    # After calling this, calling Iconv#iconv will cause an exception, but
    # multiple calls of #close are guaranteed to end successfully.
    # 
    # Returns a string containing the byte sequence to change the output buffer to
    # its initial shift state.
    def close()
        #This is a stub, used for indexing
    end
    # iconv(str, start=0, length=-1)
    #  
    # Converts string and returns the result.
    # * If +str+ is a String, converts <tt>str[start, length]</tt> and returns the converted string.
    # * If +str+ is +nil+, places converter itself into initial shift state and
    #   just returns a string containing the byte sequence to change the output
    #   buffer to its initial shift state.
    # * Otherwise, raises an exception.
    # 
    # === Parameters
    # 
    # str::    string to be converted, or nil
    # start::  starting offset
    # length:: conversion length; nil or -1 means whole the string from start
    # 
    # === Exceptions
    # 
    # * IconvIllegalSequence
    # * IconvInvalidCharacter
    # * IconvOutOfRange
    # 
    # === Examples
    # 
    # See the Iconv documentation.
    def iconv(str, start=0, length=-1)
        #This is a stub, used for indexing
    end
    # conv(str...)
    #  
    # Equivalent to
    # 
    #   iconv(nil, str..., nil).join
    def conv(*args)
        #This is a stub, used for indexing
    end
    # trivial?
    #  
    # Returns trivial flag.
    def trivial?()
        #This is a stub, used for indexing
    end
    # transliterate?
    #  
    # Returns transliterate flag.
    def transliterate?()
        #This is a stub, used for indexing
    end
    # cd.transliterate = flag
    #  
    # Sets transliterate flag.
    def transliterate= flag
        #This is a stub, used for indexing
    end
    # discard_ilseq?
    #  
    # Returns discard_ilseq flag.
    def discard_ilseq?()
        #This is a stub, used for indexing
    end
    # cd.discard_ilseq = flag
    #  
    # Sets discard_ilseq flag.
    def discard_ilseq= flag
        #This is a stub, used for indexing
    end
    # Iconv.charset_map
    #  
    # Returns the map from canonical name to system dependent name.
    def self.charset_map()
        #This is a stub, used for indexing
    end
    # Detected a bug of underlying iconv(3) libray.
    # * returns an error without setting errno properly
    class BrokenLibrary < RuntimeError
        include Iconv::Failure
    end
    # Base attributes for Iconv exceptions.
    module Failure
        # Iconv.new(to, from, [options])
        #  
        # Creates new code converter from a coding-system designated with +from+
        # to another one designated with +to+.
        # 
        # === Parameters
        # 
        # +to+::   encoding name for destination
        # +from+:: encoding name for source
        # +options+:: options for converter
        # 
        # === Exceptions
        # 
        # TypeError::       if +to+ or +from+ aren't String
        # InvalidEncoding:: if designated converter couldn't find out
        # SystemCallError:: if <tt>iconv_open(3)</tt> fails
        def self.new(to, from, *options)
            #This is a stub, used for indexing
        end
        # success
        #  
        # Returns string(s) translated successfully until the exception occurred.
        # * In the case of failure occurred within Iconv.iconv, returned
        #   value is an array of strings translated successfully preceding
        #   failure and the last element is string on the way.
        def success()
            #This is a stub, used for indexing
        end
        # failed
        #  
        # Returns substring of the original string passed to Iconv that starts at the
        # character caused the exception.
        def failed()
            #This is a stub, used for indexing
        end
        # inspect
        #  
        # Returns inspected string like as: #<_class_: _success_, _failed_>
        def inspect()
            #This is a stub, used for indexing
        end
    end
    require 'arg_error'
    # Input conversion stopped due to an input byte that does not belong to
    # the input codeset, or the output codeset does not contain the
    # character.
    class IllegalSequence < ArgError
        include Iconv::Failure
    end
    # Input conversion stopped due to an incomplete character or shift
    # sequence at the end of the input buffer.
    class InvalidCharacter < ArgError
        include Iconv::Failure
    end
    # Requested coding-system is not available on this system.
    class InvalidEncoding < ArgError
        include Iconv::Failure
    end
    # Iconv library internal error.  Must not occur.
    class OutOfRange < RuntimeError
        include Iconv::Failure
    end
end
