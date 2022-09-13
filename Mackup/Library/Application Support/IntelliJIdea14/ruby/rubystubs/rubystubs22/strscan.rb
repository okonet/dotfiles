=begin
 This is a machine generated stub using stdlib-doc for <b>class StringScanner</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# StringScanner provides for lexical scanning operations on a String.  Here is
# an example of its usage:
# 
#   s = StringScanner.new('This is an example string')
#   s.eos?               # -> false
# 
#   p s.scan(/\w+/)      # -> "This"
#   p s.scan(/\w+/)      # -> nil
#   p s.scan(/\s+/)      # -> " "
#   p s.scan(/\s+/)      # -> nil
#   p s.scan(/\w+/)      # -> "is"
#   s.eos?               # -> false
# 
#   p s.scan(/\s+/)      # -> " "
#   p s.scan(/\w+/)      # -> "an"
#   p s.scan(/\s+/)      # -> " "
#   p s.scan(/\w+/)      # -> "example"
#   p s.scan(/\s+/)      # -> " "
#   p s.scan(/\w+/)      # -> "string"
#   s.eos?               # -> true
# 
#   p s.scan(/\s+/)      # -> nil
#   p s.scan(/\w+/)      # -> nil
# 
# Scanning a string means remembering the position of a <i>scan pointer</i>,
# which is just an index.  The point of scanning is to move forward a bit at
# a time, so matches are sought after the scan pointer; usually immediately
# after it.
# 
# Given the string "test string", here are the pertinent scan pointer
# positions:
# 
#     t e s t   s t r i n g
#   0 1 2 ...             1
#                         0
# 
# When you #scan for a pattern (a regular expression), the match must occur
# at the character after the scan pointer.  If you use #scan_until, then the
# match can occur anywhere after the scan pointer.  In both cases, the scan
# pointer moves <i>just beyond</i> the last character of the match, ready to
# scan again from the next character onwards.  This is demonstrated by the
# example above.
# 
# == Method Categories
# 
# There are other methods besides the plain scanners.  You can look ahead in
# the string without actually scanning.  You can access the most recent match.
# You can modify the string being scanned, reset or terminate the scanner,
# find out or change the position of the scan pointer, skip ahead, and so on.
# 
# === Advancing the Scan Pointer
# 
# - #getch
# - #get_byte
# - #scan
# - #scan_until
# - #skip
# - #skip_until
# 
# === Looking Ahead
# 
# - #check
# - #check_until
# - #exist?
# - #match?
# - #peek
# 
# === Finding Where we Are
# 
# - #beginning_of_line? (#bol?)
# - #eos?
# - #rest?
# - #rest_size
# - #pos
# 
# === Setting Where we Are
# 
# - #reset
# - #terminate
# - #pos=
# 
# === Match Data
# 
# - #matched
# - #matched?
# - #matched_size
# - []
# - #pre_match
# - #post_match
# 
# === Miscellaneous
# 
# - <<
# - #concat
# - #string
# - #string=
# - #unscan
# 
# There are aliases to several of the methods.
class StringScanner
    # StringScanner.new(string, dup = false)
    #  
    # Creates a new StringScanner object to scan over the given +string+.
    # +dup+ argument is obsolete and not used now.
    def self.new(string, dup = false)
        #This is a stub, used for indexing
    end
    # dup
    # clone
    #  
    # Duplicates a StringScanner object.
    def initialize_copy(p1)
        #This is a stub, used for indexing
    end
    # StringScanner.must_C_version
    #  
    # This method is defined for backward compatibility.
    def self.must_C_version()
        #This is a stub, used for indexing
    end
    # Reset the scan pointer (index 0) and clear matching data.
    def reset()
        #This is a stub, used for indexing
    end
    # terminate
    # clear
    #  
    # Set the scan pointer to the end of the string and clear matching data.
    def terminate()
        #This is a stub, used for indexing
    end
    # Equivalent to #terminate.
    # This method is obsolete; use #terminate instead.
    def clear()
        #This is a stub, used for indexing
    end
    # Returns the string being scanned.
    def string()
        #This is a stub, used for indexing
    end
    # string=(str)
    #  
    # Changes the string being scanned to +str+ and resets the scanner.
    # Returns +str+.
    def string=(str)
        #This is a stub, used for indexing
    end
    # concat(str)
    # <<(str)
    #  
    # Appends +str+ to the string being scanned.
    # This method does not affect scan pointer.
    # 
    #   s = StringScanner.new("Fri Dec 12 1975 14:39")
    #   s.scan(/Fri /)
    #   s << " +1000 GMT"
    #   s.string            # -> "Fri Dec 12 1975 14:39 +1000 GMT"
    #   s.scan(/Dec/)       # -> "Dec"
    def concat(str)
        #This is a stub, used for indexing
    end
    # concat(str)
    # <<(str)
    #  
    # Appends +str+ to the string being scanned.
    # This method does not affect scan pointer.
    # 
    #   s = StringScanner.new("Fri Dec 12 1975 14:39")
    #   s.scan(/Fri /)
    #   s << " +1000 GMT"
    #   s.string            # -> "Fri Dec 12 1975 14:39 +1000 GMT"
    #   s.scan(/Dec/)       # -> "Dec"
    def <<(p1)
        #This is a stub, used for indexing
    end
    # Returns the byte position of the scan pointer.  In the 'reset' position, this
    # value is zero.  In the 'terminated' position (i.e. the string is exhausted),
    # this value is the bytesize of the string.
    # 
    # In short, it's a 0-based index into bytes of the string.
    # 
    #   s = StringScanner.new('test string')
    #   s.pos               # -> 0
    #   s.scan_until /str/  # -> "test str"
    #   s.pos               # -> 8
    #   s.terminate         # -> #<StringScanner fin>
    #   s.pos               # -> 11
    def pos()
        #This is a stub, used for indexing
    end
    # pos=(n)
    #  
    # Set the byte position of the scan pointer.
    # 
    #   s = StringScanner.new('test string')
    #   s.pos = 7            # -> 7
    #   s.rest               # -> "ring"
    def pos=(n)
        #This is a stub, used for indexing
    end
    # Returns the character position of the scan pointer.  In the 'reset' position, this
    # value is zero.  In the 'terminated' position (i.e. the string is exhausted),
    # this value is the size of the string.
    # 
    # In short, it's a 0-based index into the string.
    # 
    #   s = StringScanner.new("abcädeföghi")
    #   s.charpos           # -> 0
    #   s.scan_until(/ä/)   # -> "abcä"
    #   s.pos               # -> 5
    #   s.charpos           # -> 4
    def charpos()
        #This is a stub, used for indexing
    end
    # Returns the byte position of the scan pointer.  In the 'reset' position, this
    # value is zero.  In the 'terminated' position (i.e. the string is exhausted),
    # this value is the bytesize of the string.
    # 
    # In short, it's a 0-based index into bytes of the string.
    # 
    #   s = StringScanner.new('test string')
    #   s.pos               # -> 0
    #   s.scan_until /str/  # -> "test str"
    #   s.pos               # -> 8
    #   s.terminate         # -> #<StringScanner fin>
    #   s.pos               # -> 11
    def pointer()
        #This is a stub, used for indexing
    end
    # pos=(n)
    #  
    # Set the byte position of the scan pointer.
    # 
    #   s = StringScanner.new('test string')
    #   s.pos = 7            # -> 7
    #   s.rest               # -> "ring"
    def pointer=(p1)
        #This is a stub, used for indexing
    end
    # scan(pattern) => String
    #  
    # Tries to match with +pattern+ at the current position. If there's a match,
    # the scanner advances the "scan pointer" and returns the matched string.
    # Otherwise, the scanner returns +nil+.
    # 
    #   s = StringScanner.new('test string')
    #   p s.scan(/\w+/)   # -> "test"
    #   p s.scan(/\w+/)   # -> nil
    #   p s.scan(/\s+/)   # -> " "
    #   p s.scan(/\w+/)   # -> "string"
    #   p s.scan(/./)     # -> nil
    def scan(pattern)
        #This is a stub, used for indexing
    end
    # skip(pattern)
    #  
    # Attempts to skip over the given +pattern+ beginning with the scan pointer.
    # If it matches, the scan pointer is advanced to the end of the match, and the
    # length of the match is returned.  Otherwise, +nil+ is returned.
    # 
    # It's similar to #scan, but without returning the matched string.
    # 
    #   s = StringScanner.new('test string')
    #   p s.skip(/\w+/)   # -> 4
    #   p s.skip(/\w+/)   # -> nil
    #   p s.skip(/\s+/)   # -> 1
    #   p s.skip(/\w+/)   # -> 6
    #   p s.skip(/./)     # -> nil
    def skip(pattern)
        #This is a stub, used for indexing
    end
    # match?(pattern)
    #  
    # Tests whether the given +pattern+ is matched from the current scan pointer.
    # Returns the length of the match, or +nil+.  The scan pointer is not advanced.
    # 
    #   s = StringScanner.new('test string')
    #   p s.match?(/\w+/)   # -> 4
    #   p s.match?(/\w+/)   # -> 4
    #   p s.match?(/\s+/)   # -> nil
    def match?(pattern)
        #This is a stub, used for indexing
    end
    # check(pattern)
    #  
    # This returns the value that #scan would return, without advancing the scan
    # pointer.  The match register is affected, though.
    # 
    #   s = StringScanner.new("Fri Dec 12 1975 14:39")
    #   s.check /Fri/               # -> "Fri"
    #   s.pos                       # -> 0
    #   s.matched                   # -> "Fri"
    #   s.check /12/                # -> nil
    #   s.matched                   # -> nil
    # 
    # Mnemonic: it "checks" to see whether a #scan will return a value.
    def check(pattern)
        #This is a stub, used for indexing
    end
    # scan_full(pattern, advance_pointer_p, return_string_p)
    #  
    # Tests whether the given +pattern+ is matched from the current scan pointer.
    # Advances the scan pointer if +advance_pointer_p+ is true.
    # Returns the matched string if +return_string_p+ is true.
    # The match register is affected.
    # 
    # "full" means "#scan with full parameters".
    def scan_full(pattern, advance_pointer_p, return_string_p)
        #This is a stub, used for indexing
    end
    # scan_until(pattern)
    #  
    # Scans the string _until_ the +pattern+ is matched.  Returns the substring up
    # to and including the end of the match, advancing the scan pointer to that
    # location. If there is no match, +nil+ is returned.
    # 
    #   s = StringScanner.new("Fri Dec 12 1975 14:39")
    #   s.scan_until(/1/)        # -> "Fri Dec 1"
    #   s.pre_match              # -> "Fri Dec "
    #   s.scan_until(/XYZ/)      # -> nil
    def scan_until(pattern)
        #This is a stub, used for indexing
    end
    # skip_until(pattern)
    #  
    # Advances the scan pointer until +pattern+ is matched and consumed.  Returns
    # the number of bytes advanced, or +nil+ if no match was found.
    # 
    # Look ahead to match +pattern+, and advance the scan pointer to the _end_
    # of the match.  Return the number of characters advanced, or +nil+ if the
    # match was unsuccessful.
    # 
    # It's similar to #scan_until, but without returning the intervening string.
    # 
    #   s = StringScanner.new("Fri Dec 12 1975 14:39")
    #   s.skip_until /12/           # -> 10
    #   s                           #
    def skip_until(pattern)
        #This is a stub, used for indexing
    end
    # exist?(pattern)
    #  
    # Looks _ahead_ to see if the +pattern+ exists _anywhere_ in the string,
    # without advancing the scan pointer.  This predicates whether a #scan_until
    # will return a value.
    # 
    #   s = StringScanner.new('test string')
    #   s.exist? /s/            # -> 3
    #   s.scan /test/           # -> "test"
    #   s.exist? /s/            # -> 2
    #   s.exist? /e/            # -> nil
    def exist?(pattern)
        #This is a stub, used for indexing
    end
    # check_until(pattern)
    #  
    # This returns the value that #scan_until would return, without advancing the
    # scan pointer.  The match register is affected, though.
    # 
    #   s = StringScanner.new("Fri Dec 12 1975 14:39")
    #   s.check_until /12/          # -> "Fri Dec 12"
    #   s.pos                       # -> 0
    #   s.matched                   # -> 12
    # 
    # Mnemonic: it "checks" to see whether a #scan_until will return a value.
    def check_until(pattern)
        #This is a stub, used for indexing
    end
    # search_full(pattern, advance_pointer_p, return_string_p)
    #  
    # Scans the string _until_ the +pattern+ is matched.
    # Advances the scan pointer if +advance_pointer_p+, otherwise not.
    # Returns the matched string if +return_string_p+ is true, otherwise
    # returns the number of bytes advanced.
    # This method does affect the match register.
    def search_full(pattern, advance_pointer_p, return_string_p)
        #This is a stub, used for indexing
    end
    # Scans one character and returns it.
    # This method is multibyte character sensitive.
    # 
    #   s = StringScanner.new("ab")
    #   s.getch           # => "a"
    #   s.getch           # => "b"
    #   s.getch           # => nil
    # 
    #   $KCODE = 'EUC'
    #   s = StringScanner.new("\244\242")
    #   s.getch           # => "\244\242"   # Japanese hira-kana "A" in EUC-JP
    #   s.getch           # => nil
    def getch()
        #This is a stub, used for indexing
    end
    # Scans one byte and returns it.
    # This method is not multibyte character sensitive.
    # See also: #getch.
    # 
    #   s = StringScanner.new('ab')
    #   s.get_byte         # => "a"
    #   s.get_byte         # => "b"
    #   s.get_byte         # => nil
    # 
    #   $KCODE = 'EUC'
    #   s = StringScanner.new("\244\242")
    #   s.get_byte         # => "\244"
    #   s.get_byte         # => "\242"
    #   s.get_byte         # => nil
    def get_byte()
        #This is a stub, used for indexing
    end
    # Equivalent to #get_byte.
    # This method is obsolete; use #get_byte instead.
    def getbyte()
        #This is a stub, used for indexing
    end
    # peek(len)
    #  
    # Extracts a string corresponding to <tt>string[pos,len]</tt>, without
    # advancing the scan pointer.
    # 
    #   s = StringScanner.new('test string')
    #   s.peek(7)          # => "test st"
    #   s.peek(7)          # => "test st"
    def peek(len)
        #This is a stub, used for indexing
    end
    # Equivalent to #peek.
    # This method is obsolete; use #peek instead.
    def peep(p1)
        #This is a stub, used for indexing
    end
    # Set the scan pointer to the previous position.  Only one previous position is
    # remembered, and it changes with each scanning operation.
    # 
    #   s = StringScanner.new('test string')
    #   s.scan(/\w+/)        # => "test"
    #   s.unscan
    #   s.scan(/../)         # => "te"
    #   s.scan(/\d/)         # => nil
    #   s.unscan             # ScanError: unscan failed: previous match record not exist
    def unscan()
        #This is a stub, used for indexing
    end
    # Returns +true+ iff the scan pointer is at the beginning of the line.
    # 
    #   s = StringScanner.new("test\ntest\n")
    #   s.bol?           # => true
    #   s.scan(/te/)
    #   s.bol?           # => false
    #   s.scan(/st\n/)
    #   s.bol?           # => true
    #   s.terminate
    #   s.bol?           # => true
    def beginning_of_line?()
        #This is a stub, used for indexing
    end
    # Returns +true+ if the scan pointer is at the end of the string.
    # 
    #   s = StringScanner.new('test string')
    #   p s.eos?          # => false
    #   s.scan(/test/)
    #   p s.eos?          # => false
    #   s.terminate
    #   p s.eos?          # => true
    def eos?()
        #This is a stub, used for indexing
    end
    # Equivalent to #eos?.
    # This method is obsolete, use #eos? instead.
    def empty?()
        #This is a stub, used for indexing
    end
    # Returns true iff there is more data in the string.  See #eos?.
    # This method is obsolete; use #eos? instead.
    # 
    #   s = StringScanner.new('test string')
    #   s.eos?              # These two
    #   s.rest?             # are opposites.
    def rest?()
        #This is a stub, used for indexing
    end
    # Returns +true+ iff the last match was successful.
    # 
    #   s = StringScanner.new('test string')
    #   s.match?(/\w+/)     # => 4
    #   s.matched?          # => true
    #   s.match?(/\d+/)     # => nil
    #   s.matched?          # => false
    def matched?()
        #This is a stub, used for indexing
    end
    # Returns the last matched string.
    # 
    #   s = StringScanner.new('test string')
    #   s.match?(/\w+/)     # -> 4
    #   s.matched           # -> "test"
    def matched()
        #This is a stub, used for indexing
    end
    # Returns the size of the most recent match (see #matched), or +nil+ if there
    # was no recent match.
    # 
    #   s = StringScanner.new('test string')
    #   s.check /\w+/           # -> "test"
    #   s.matched_size          # -> 4
    #   s.check /\d+/           # -> nil
    #   s.matched_size          # -> nil
    def matched_size()
        #This is a stub, used for indexing
    end
    # [](n)
    #  
    # Return the n-th subgroup in the most recent match.
    # 
    #   s = StringScanner.new("Fri Dec 12 1975 14:39")
    #   s.scan(/(\w+) (\w+) (\d+) /)       # -> "Fri Dec 12 "
    #   s[0]                               # -> "Fri Dec 12 "
    #   s[1]                               # -> "Fri"
    #   s[2]                               # -> "Dec"
    #   s[3]                               # -> "12"
    #   s.post_match                       # -> "1975 14:39"
    #   s.pre_match                        # -> ""
    # 
    #   s.reset
    #   s.scan(/(?<wday>\w+) (?<month>\w+) (?<day>\d+) /)       # -> "Fri Dec 12 "
    #   s[0]                               # -> "Fri Dec 12 "
    #   s[1]                               # -> "Fri"
    #   s[2]                               # -> "Dec"
    #   s[3]                               # -> "12"
    #   s[:wday]                           # -> "Fri"
    #   s[:month]                          # -> "Dec"
    #   s[:day]                            # -> "12"
    #   s.post_match                       # -> "1975 14:39"
    #   s.pre_match                        # -> ""
    def [](p1)
        #This is a stub, used for indexing
    end
    # Return the <i><b>pre</b>-match</i> (in the regular expression sense) of the last scan.
    # 
    #   s = StringScanner.new('test string')
    #   s.scan(/\w+/)           # -> "test"
    #   s.scan(/\s+/)           # -> " "
    #   s.pre_match             # -> "test"
    #   s.post_match            # -> "string"
    def pre_match()
        #This is a stub, used for indexing
    end
    # Return the <i><b>post</b>-match</i> (in the regular expression sense) of the last scan.
    # 
    #   s = StringScanner.new('test string')
    #   s.scan(/\w+/)           # -> "test"
    #   s.scan(/\s+/)           # -> " "
    #   s.pre_match             # -> "test"
    #   s.post_match            # -> "string"
    def post_match()
        #This is a stub, used for indexing
    end
    # Returns the "rest" of the string (i.e. everything after the scan pointer).
    # If there is no more data (eos? = true), it returns <tt>""</tt>.
    def rest()
        #This is a stub, used for indexing
    end
    # <tt>s.rest_size</tt> is equivalent to <tt>s.rest.size</tt>.
    def rest_size()
        #This is a stub, used for indexing
    end
    # <tt>s.restsize</tt> is equivalent to <tt>s.rest_size</tt>.
    # This method is obsolete; use #rest_size instead.
    def restsize()
        #This is a stub, used for indexing
    end
    # Returns a string that represents the StringScanner object, showing:
    # - the current position
    # - the size of the string
    # - the characters surrounding the scan pointer
    # 
    #   s = StringScanner.new("Fri Dec 12 1975 14:39")
    #   s.inspect            # -> '#<StringScanner 0/21 @ "Fri D...">'
    #   s.scan_until /12/    # -> "Fri Dec 12"
    #   s.inspect            # -> '#<StringScanner 10/21 "...ec 12" @ " 1975...">'
    def inspect()
        #This is a stub, used for indexing
    end
    class Error < StandardError
    end
end
