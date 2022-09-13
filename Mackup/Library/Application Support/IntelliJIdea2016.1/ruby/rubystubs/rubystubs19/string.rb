=begin
 This is a machine generated stub using stdlib-doc for <b>class String</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A <code>String</code> object holds and manipulates an arbitrary sequence of
# bytes, typically representing characters. String objects may be created
# using <code>String::new</code> or as literals.
# 
# Because of aliasing issues, users of strings should be aware of the methods
# that modify the contents of a <code>String</code> object.  Typically,
# methods with names ending in ``!'' modify their receiver, while those
# without a ``!'' return a new <code>String</code>.  However, there are
# exceptions, such as <code>String#[]=</code>.
class String
    include Comparable
    # str.to_c  ->  complex
    #  
    # Returns a complex which denotes the string form.  The parser
    # ignores leading whitespaces and trailing garbage.  Any digit
    # sequences can be separated by an underscore.  Returns zero for null
    # or garbage string.
    # 
    # For example:
    # 
    #    '9'.to_c           #=> (9+0i)
    #    '2.5'.to_c         #=> (2.5+0i)
    #    '2.5/1'.to_c       #=> ((5/2)+0i)
    #    '-3/2'.to_c        #=> ((-3/2)+0i)
    #    '-i'.to_c          #=> (0-1i)
    #    '45i'.to_c         #=> (0+45i)
    #    '3-4i'.to_c        #=> (3-4i)
    #    '-4e2-4e-2i'.to_c  #=> (-400.0-0.04i)
    #    '-0.0-0.0i'.to_c   #=> (-0.0-0.0i)
    #    '1/2+3/4i'.to_c    #=> ((1/2)+(3/4)*i)
    #    'ruby'.to_c        #=> (0+0i)
    def to_c()
        #This is a stub, used for indexing
    end
    # str.unpack(format)    ->  anArray
    #  
    # Decodes <i>str</i> (which may contain binary data) according to the
    # format string, returning an array of each value extracted. The
    # format string consists of a sequence of single-character directives,
    # summarized in the table at the end of this entry.
    # Each directive may be followed
    # by a number, indicating the number of times to repeat with this
    # directive. An asterisk (``<code>*</code>'') will use up all
    # remaining elements. The directives <code>sSiIlL</code> may each be
    # followed by an underscore (``<code>_</code>'') or
    # exclamation mark (``<code>!</code>'') to use the underlying
    # platform's native size for the specified type; otherwise, it uses a
    # platform-independent consistent size. Spaces are ignored in the
    # format string. See also <code>Array#pack</code>.
    # 
    #    "abc \0\0abc \0\0".unpack('A6Z6')   #=> ["abc", "abc "]
    #    "abc \0\0".unpack('a3a3')           #=> ["abc", " \000\000"]
    #    "abc \0abc \0".unpack('Z*Z*')       #=> ["abc ", "abc "]
    #    "aa".unpack('b8B8')                 #=> ["10000110", "01100001"]
    #    "aaa".unpack('h2H2c')               #=> ["16", "61", 97]
    #    "\xfe\xff\xfe\xff".unpack('sS')     #=> [-2, 65534]
    #    "now=20is".unpack('M*')             #=> ["now is"]
    #    "whole".unpack('xax2aX2aX1aX2a')    #=> ["h", "e", "l", "l", "o"]
    # 
    # This table summarizes the various formats and the Ruby classes
    # returned by each.
    # 
    #  Integer      |         |
    #  Directive    | Returns | Meaning
    #  -----------------------------------------------------------------
    #     C         | Integer | 8-bit unsigned integer (unsigned char)
    #     S         | Integer | 16-bit unsigned integer, native endian (uint16_t)
    #     L         | Integer | 32-bit unsigned integer, native endian (uint32_t)
    #     Q         | Integer | 64-bit unsigned integer, native endian (uint64_t)
    #               |         |
    #     c         | Integer | 8-bit signed integer (signed char)
    #     s         | Integer | 16-bit signed integer, native endian (int16_t)
    #     l         | Integer | 32-bit signed integer, native endian (int32_t)
    #     q         | Integer | 64-bit signed integer, native endian (int64_t)
    #               |         |
    #     S_, S!    | Integer | unsigned short, native endian
    #     I, I_, I! | Integer | unsigned int, native endian
    #     L_, L!    | Integer | unsigned long, native endian
    #               |         |
    #     s_, s!    | Integer | signed short, native endian
    #     i, i_, i! | Integer | signed int, native endian
    #     l_, l!    | Integer | signed long, native endian
    #               |         |
    #     n         | Integer | 16-bit unsigned integer, network (big-endian) byte order
    #     N         | Integer | 32-bit unsigned integer, network (big-endian) byte order
    #     v         | Integer | 16-bit unsigned integer, VAX (little-endian) byte order
    #     V         | Integer | 32-bit unsigned integer, VAX (little-endian) byte order
    #               |         |
    #     U         | Integer | UTF-8 character
    #     w         | Integer | BER-compressed integer (see Array.pack)
    # 
    #  Float        |         |
    #  Directive    | Returns | Meaning
    #  -----------------------------------------------------------------
    #     D, d      | Float   | double-precision float, native format
    #     F, f      | Float   | single-precision float, native format
    #     E         | Float   | double-precision float, little-endian byte order
    #     e         | Float   | single-precision float, little-endian byte order
    #     G         | Float   | double-precision float, network (big-endian) byte order
    #     g         | Float   | single-precision float, network (big-endian) byte order
    # 
    #  String       |         |
    #  Directive    | Returns | Meaning
    #  -----------------------------------------------------------------
    #     A         | String  | arbitrary binary string (remove trailing nulls and ASCII spaces)
    #     a         | String  | arbitrary binary string
    #     Z         | String  | null-terminated string
    #     B         | String  | bit string (MSB first)
    #     b         | String  | bit string (LSB first)
    #     H         | String  | hex string (high nibble first)
    #     h         | String  | hex string (low nibble first)
    #     u         | String  | UU-encoded string
    #     M         | String  | quoted-printable, MIME encoding (see RFC2045)
    #     m         | String  | base64 encoded string (RFC 2045) (default)
    #               |         | base64 encoded string (RFC 4648) if followed by 0
    #     P         | String  | pointer to a structure (fixed-length string)
    #     p         | String  | pointer to a null-terminated string
    # 
    #  Misc.        |         |
    #  Directive    | Returns | Meaning
    #  -----------------------------------------------------------------
    #     @         | ---     | skip to the offset given by the length argument
    #     X         | ---     | skip backward one byte
    #     x         | ---     | skip forward one byte
    def unpack(format)
        #This is a stub, used for indexing
    end
    # str.to_r  ->  rational
    #  
    # Returns a rational which denotes the string form.  The parser
    # ignores leading whitespaces and trailing garbage.  Any digit
    # sequences can be separated by an underscore.  Returns zero for null
    # or garbage string.
    # 
    # NOTE: '0.3'.to_r isn't the same as 0.3.to_r.  The former is
    # equivalent to '3/10'.to_r, but the latter isn't so.
    # 
    # For example:
    # 
    #    '  2  '.to_r       #=> (2/1)
    #    '300/2'.to_r       #=> (150/1)
    #    '-9.2'.to_r        #=> (-46/5)
    #    '-9.2e2'.to_r      #=> (-920/1)
    #    '1_234_567'.to_r   #=> (1234567/1)
    #    '21 june 09'.to_r  #=> (21/1)
    #    '21/06/09'.to_r    #=> (7/2)
    #    'bwv 1079'.to_r    #=> (0/1)
    def to_r()
        #This is a stub, used for indexing
    end
    # String.try_convert(obj) -> string or nil
    #  
    # Try to convert <i>obj</i> into a String, using to_str method.
    # Returns converted string or nil if <i>obj</i> cannot be converted
    # for any reason.
    # 
    #    String.try_convert("str")     #=> "str"
    #    String.try_convert(/re/)      #=> nil
    def self.try_convert(obj)
        #This is a stub, used for indexing
    end
    # String.new(str="")   -> new_str
    #  
    # Returns a new string object containing a copy of <i>str</i>.
    def self.new(str="")
        #This is a stub, used for indexing
    end
    # str.replace(other_str)   -> str
    #  
    # Replaces the contents and taintedness of <i>str</i> with the corresponding
    # values in <i>other_str</i>.
    # 
    #    s = "hello"         #=> "hello"
    #    s.replace "world"   #=> "world"
    def initialize_copy(p1)
        #This is a stub, used for indexing
    end
    # str <=> other_str   -> -1, 0, +1 or nil
    #  
    # Comparison---Returns -1 if <i>other_str</i> is greater than, 0 if
    # <i>other_str</i> is equal to, and +1 if <i>other_str</i> is less than
    # <i>str</i>. If the strings are of different lengths, and the strings are
    # equal when compared up to the shortest length, then the longer string is
    # considered greater than the shorter one. In older versions of Ruby, setting
    # <code>$=</code> allowed case-insensitive comparisons; this is now deprecated
    # in favor of using <code>String#casecmp</code>.
    # 
    # <code><=></code> is the basis for the methods <code><</code>,
    # <code><=</code>, <code>></code>, <code>>=</code>, and <code>between?</code>,
    # included from module <code>Comparable</code>.  The method
    # <code>String#==</code> does not use <code>Comparable#==</code>.
    # 
    #    "abcdef" <=> "abcde"     #=> 1
    #    "abcdef" <=> "abcdef"    #=> 0
    #    "abcdef" <=> "abcdefg"   #=> -1
    #    "abcdef" <=> "ABCDEF"    #=> 1
    def <=> other_str
        #This is a stub, used for indexing
    end
    # str == obj   -> true or false
    #  
    # Equality---If <i>obj</i> is not a <code>String</code>, returns
    # <code>false</code>. Otherwise, returns <code>true</code> if <i>str</i>
    # <code><=></code> <i>obj</i> returns zero.
    def == obj
        #This is a stub, used for indexing
    end
    # str == obj   -> true or false
    #  
    # Equality---If <i>obj</i> is not a <code>String</code>, returns
    # <code>false</code>. Otherwise, returns <code>true</code> if <i>str</i>
    # <code><=></code> <i>obj</i> returns zero.
    def ===(p1)
        #This is a stub, used for indexing
    end
    # str.eql?(other)   -> true or false
    #  
    # Two strings are equal if they have the same length and content.
    def eql?(other)
        #This is a stub, used for indexing
    end
    # str.hash   -> fixnum
    #  
    # Return a hash based on the string's length and content.
    def hash()
        #This is a stub, used for indexing
    end
    # str.casecmp(other_str)   -> -1, 0, +1 or nil
    #  
    # Case-insensitive version of <code>String#<=></code>.
    # 
    #    "abcdef".casecmp("abcde")     #=> 1
    #    "aBcDeF".casecmp("abcdef")    #=> 0
    #    "abcdef".casecmp("abcdefg")   #=> -1
    #    "abcdef".casecmp("ABCDEF")    #=> 0
    def casecmp(other_str)
        #This is a stub, used for indexing
    end
    # str + other_str   -> new_str
    #  
    # Concatenation---Returns a new <code>String</code> containing
    # <i>other_str</i> concatenated to <i>str</i>.
    # 
    #    "Hello from " + self.to_s   #=> "Hello from main"
    def + other_str
        #This is a stub, used for indexing
    end
    # str * integer   -> new_str
    #  
    # Copy---Returns a new <code>String</code> containing <i>integer</i> copies of
    # the receiver.
    # 
    #    "Ho! " * 3   #=> "Ho! Ho! Ho! "
    def * integer
        #This is a stub, used for indexing
    end
    # str % arg   -> new_str
    #  
    # Format---Uses <i>str</i> as a format specification, and returns the result
    # of applying it to <i>arg</i>. If the format specification contains more than
    # one substitution, then <i>arg</i> must be an <code>Array</code> or <code>Hash</code>
    # containing the values to be substituted. See <code>Kernel::sprintf</code> for
    # details of the format string.
    # 
    #    "%05d" % 123                              #=> "00123"
    #    "%-5s: %08x" % [ "ID", self.object_id ]   #=> "ID   : 200e14d6"
    #    "foo = %{foo}" % { :foo => 'bar' }        #=> "foo = bar"
    def % arg
        #This is a stub, used for indexing
    end
    # str[fixnum]                 -> new_str or nil
    # str[fixnum, fixnum]         -> new_str or nil
    # str[range]                  -> new_str or nil
    # str[regexp]                 -> new_str or nil
    # str[regexp, fixnum]         -> new_str or nil
    # str[other_str]              -> new_str or nil
    # str.slice(fixnum)           -> new_str or nil
    # str.slice(fixnum, fixnum)   -> new_str or nil
    # str.slice(range)            -> new_str or nil
    # str.slice(regexp)           -> new_str or nil
    # str.slice(regexp, fixnum)   -> new_str or nil
    # str.slice(regexp, capname)  -> new_str or nil
    # str.slice(other_str)        -> new_str or nil
    #  
    # Element Reference---If passed a single <code>Fixnum</code>, returns a
    # substring of one character at that position. If passed two <code>Fixnum</code>
    # objects, returns a substring starting at the offset given by the first, and
    # a length given by the second. If given a range, a substring containing
    # characters at offsets given by the range is returned. In all three cases, if
    # an offset is negative, it is counted from the end of <i>str</i>. Returns
    # <code>nil</code> if the initial offset falls outside the string, the length
    # is negative, or the beginning of the range is greater than the end.
    # 
    # If a <code>Regexp</code> is supplied, the matching portion of <i>str</i> is
    # returned. If a numeric or name parameter follows the regular expression, that
    # component of the <code>MatchData</code> is returned instead. If a
    # <code>String</code> is given, that string is returned if it occurs in
    # <i>str</i>. In both cases, <code>nil</code> is returned if there is no
    # match.
    # 
    #    a = "hello there"
    #    a[1]                   #=> "e"
    #    a[1,3]                 #=> "ell"
    #    a[1..3]                #=> "ell"
    #    a[-3,2]                #=> "er"
    #    a[-4..-2]              #=> "her"
    #    a[12..-1]              #=> nil
    #    a[-2..-4]              #=> ""
    #    a[/[aeiou](.)\1/]      #=> "ell"
    #    a[/[aeiou](.)\1/, 0]   #=> "ell"
    #    a[/[aeiou](.)\1/, 1]   #=> "l"
    #    a[/[aeiou](.)\1/, 2]   #=> nil
    #    a["lo"]                #=> "lo"
    #    a["bye"]               #=> nil
    def [](*several_variants)
        #This is a stub, used for indexing
    end
    # str[fixnum] = new_str
    # str[fixnum, fixnum] = new_str
    # str[range] = aString
    # str[regexp] = new_str
    # str[regexp, fixnum] = new_str
    # str[regexp, name] = new_str
    # str[other_str] = new_str
    #  
    # Element Assignment---Replaces some or all of the content of <i>str</i>. The
    # portion of the string affected is determined using the same criteria as
    # <code>String#[]</code>. If the replacement string is not the same length as
    # the text it is replacing, the string will be adjusted accordingly. If the
    # regular expression or string is used as the index doesn't match a position
    # in the string, <code>IndexError</code> is raised. If the regular expression
    # form is used, the optional second <code>Fixnum</code> allows you to specify
    # which portion of the match to replace (effectively using the
    # <code>MatchData</code> indexing rules. The forms that take a
    # <code>Fixnum</code> will raise an <code>IndexError</code> if the value is
    # out of range; the <code>Range</code> form will raise a
    # <code>RangeError</code>, and the <code>Regexp</code> and <code>String</code>
    # forms will silently ignore the assignment.
    def []=(*several_variants)
        #This is a stub, used for indexing
    end
    # str.insert(index, other_str)   -> str
    #  
    # Inserts <i>other_str</i> before the character at the given
    # <i>index</i>, modifying <i>str</i>. Negative indices count from the
    # end of the string, and insert <em>after</em> the given character.
    # The intent is insert <i>aString</i> so that it starts at the given
    # <i>index</i>.
    # 
    #    "abcd".insert(0, 'X')    #=> "Xabcd"
    #    "abcd".insert(3, 'X')    #=> "abcXd"
    #    "abcd".insert(4, 'X')    #=> "abcdX"
    #    "abcd".insert(-3, 'X')   #=> "abXcd"
    #    "abcd".insert(-1, 'X')   #=> "abcdX"
    def insert(index, other_str)
        #This is a stub, used for indexing
    end
    # str.length   -> integer
    # str.size     -> integer
    #  
    # Returns the character length of <i>str</i>.
    def length()
        #This is a stub, used for indexing
    end
    # str.length   -> integer
    # str.size     -> integer
    #  
    # Returns the character length of <i>str</i>.
    def size()
        #This is a stub, used for indexing
    end
    # str.bytesize  -> integer
    #  
    # Returns the length of <i>str</i> in bytes.
    def bytesize()
        #This is a stub, used for indexing
    end
    # str.empty?   -> true or false
    #  
    # Returns <code>true</code> if <i>str</i> has a length of zero.
    # 
    #    "hello".empty?   #=> false
    #    "".empty?        #=> true
    def empty?()
        #This is a stub, used for indexing
    end
    # str =~ obj   -> fixnum or nil
    #  
    # Match---If <i>obj</i> is a <code>Regexp</code>, use it as a pattern to match
    # against <i>str</i>,and returns the position the match starts, or
    # <code>nil</code> if there is no match. Otherwise, invokes
    # <i>obj.=~</i>, passing <i>str</i> as an argument. The default
    # <code>=~</code> in <code>Object</code> returns <code>nil</code>.
    # 
    #    "cat o' 9 tails" =~ /\d/   #=> 7
    #    "cat o' 9 tails" =~ 9      #=> nil
    def =~ obj
        #This is a stub, used for indexing
    end
    # str.match(pattern)        -> matchdata or nil
    # str.match(pattern, pos)   -> matchdata or nil
    #  
    # Converts <i>pattern</i> to a <code>Regexp</code> (if it isn't already one),
    # then invokes its <code>match</code> method on <i>str</i>.  If the second
    # parameter is present, it specifies the position in the string to begin the
    # search.
    # If the second parameter is present, it specifies the position in the string
    # to begin the search.
    # 
    #    'hello'.match('(.)\1')      #=> #<MatchData "ll" 1:"l">
    #    'hello'.match('(.)\1')[0]   #=> "ll"
    #    'hello'.match(/(.)\1/)[0]   #=> "ll"
    #    'hello'.match('xx')         #=> nil
    # 
    # If a block is given, invoke the block with MatchData if match succeed, so
    # that you can write
    # 
    #    str.match(pat) {|m| ...}
    # 
    # instead of
    # 
    #    if m = str.match(pat)
    #      ...
    #    end
    # 
    # The return value is a value from block execution in this case.
    def match(*several_variants)
        #This is a stub, used for indexing
    end
    # str.succ   -> new_str
    # str.next   -> new_str
    #  
    # Returns the successor to <i>str</i>. The successor is calculated by
    # incrementing characters starting from the rightmost alphanumeric (or
    # the rightmost character if there are no alphanumerics) in the
    # string. Incrementing a digit always results in another digit, and
    # incrementing a letter results in another letter of the same case.
    # Incrementing nonalphanumerics uses the underlying character set's
    # collating sequence.
    # 
    # If the increment generates a ``carry,'' the character to the left of
    # it is incremented. This process repeats until there is no carry,
    # adding an additional character if necessary.
    # 
    #    "abcd".succ        #=> "abce"
    #    "THX1138".succ     #=> "THX1139"
    #    "<<koala>>".succ   #=> "<<koalb>>"
    #    "1999zzz".succ     #=> "2000aaa"
    #    "ZZZ9999".succ     #=> "AAAA0000"
    #    "***".succ         #=> "**+"
    def succ()
        #This is a stub, used for indexing
    end
    # str.succ!   -> str
    # str.next!   -> str
    #  
    # Equivalent to <code>String#succ</code>, but modifies the receiver in
    # place.
    def succ!()
        #This is a stub, used for indexing
    end
    # str.succ   -> new_str
    # str.next   -> new_str
    #  
    # Returns the successor to <i>str</i>. The successor is calculated by
    # incrementing characters starting from the rightmost alphanumeric (or
    # the rightmost character if there are no alphanumerics) in the
    # string. Incrementing a digit always results in another digit, and
    # incrementing a letter results in another letter of the same case.
    # Incrementing nonalphanumerics uses the underlying character set's
    # collating sequence.
    # 
    # If the increment generates a ``carry,'' the character to the left of
    # it is incremented. This process repeats until there is no carry,
    # adding an additional character if necessary.
    # 
    #    "abcd".succ        #=> "abce"
    #    "THX1138".succ     #=> "THX1139"
    #    "<<koala>>".succ   #=> "<<koalb>>"
    #    "1999zzz".succ     #=> "2000aaa"
    #    "ZZZ9999".succ     #=> "AAAA0000"
    #    "***".succ         #=> "**+"
    def next()
        #This is a stub, used for indexing
    end
    # str.succ!   -> str
    # str.next!   -> str
    #  
    # Equivalent to <code>String#succ</code>, but modifies the receiver in
    # place.
    def next!()
        #This is a stub, used for indexing
    end
    # str.upto(other_str, exclusive=false) {|s| block }   -> str
    # str.upto(other_str, exclusive=false)                -> an_enumerator
    #  
    # Iterates through successive values, starting at <i>str</i> and
    # ending at <i>other_str</i> inclusive, passing each value in turn to
    # the block. The <code>String#succ</code> method is used to generate
    # each value.  If optional second argument exclusive is omitted or is false,
    # the last value will be included; otherwise it will be excluded.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    "a8".upto("b6") {|s| print s, ' ' }
    #    for s in "a8".."b6"
    #      print s, ' '
    #    end
    # 
    # <em>produces:</em>
    # 
    #    a8 a9 b0 b1 b2 b3 b4 b5 b6
    #    a8 a9 b0 b1 b2 b3 b4 b5 b6
    # 
    # If <i>str</i> and <i>other_str</i> contains only ascii numeric characters,
    # both are recognized as decimal numbers. In addition, the width of
    # string (e.g. leading zeros) is handled appropriately.
    # 
    #    "9".upto("11").to_a   #=> ["9", "10", "11"]
    #    "25".upto("5").to_a   #=> []
    #    "07".upto("11").to_a  #=> ["07", "08", "09", "10", "11"]
    def upto(*several_variants)
        #This is a stub, used for indexing
    end
    # str.index(substring [, offset])   -> fixnum or nil
    # str.index(regexp [, offset])      -> fixnum or nil
    #  
    # Returns the index of the first occurrence of the given <i>substring</i> or
    # pattern (<i>regexp</i>) in <i>str</i>. Returns <code>nil</code> if not
    # found. If the second parameter is present, it specifies the position in the
    # string to begin the search.
    # 
    #    "hello".index('e')             #=> 1
    #    "hello".index('lo')            #=> 3
    #    "hello".index('a')             #=> nil
    #    "hello".index(?e)              #=> 1
    #    "hello".index(/[aeiou]/, -3)   #=> 4
    def index(*several_variants)
        #This is a stub, used for indexing
    end
    # str.rindex(substring [, fixnum])   -> fixnum or nil
    # str.rindex(regexp [, fixnum])   -> fixnum or nil
    #  
    # Returns the index of the last occurrence of the given <i>substring</i> or
    # pattern (<i>regexp</i>) in <i>str</i>. Returns <code>nil</code> if not
    # found. If the second parameter is present, it specifies the position in the
    # string to end the search---characters beyond this point will not be
    # considered.
    # 
    #    "hello".rindex('e')             #=> 1
    #    "hello".rindex('l')             #=> 3
    #    "hello".rindex('a')             #=> nil
    #    "hello".rindex(?e)              #=> 1
    #    "hello".rindex(/[aeiou]/, -2)   #=> 1
    def rindex(*several_variants)
        #This is a stub, used for indexing
    end
    # str.replace(other_str)   -> str
    #  
    # Replaces the contents and taintedness of <i>str</i> with the corresponding
    # values in <i>other_str</i>.
    # 
    #    s = "hello"         #=> "hello"
    #    s.replace "world"   #=> "world"
    def replace(other_str)
        #This is a stub, used for indexing
    end
    # string.clear    ->  string
    #  
    # Makes string empty.
    # 
    #    a = "abcde"
    #    a.clear    #=> ""
    def clear()
        #This is a stub, used for indexing
    end
    # string.chr    ->  string
    #  
    # Returns a one-character string at the beginning of the string.
    # 
    #    a = "abcde"
    #    a.chr    #=> "a"
    def chr()
        #This is a stub, used for indexing
    end
    # str.getbyte(index)          -> 0 .. 255
    #  
    # returns the <i>index</i>th byte as an integer.
    def getbyte(index)
        #This is a stub, used for indexing
    end
    # str.setbyte(index, int) -> int
    #  
    # modifies the <i>index</i>th byte as <i>int</i>.
    def setbyte(index, int)
        #This is a stub, used for indexing
    end
    # str.to_i(base=10)   -> integer
    #  
    # Returns the result of interpreting leading characters in <i>str</i> as an
    # integer base <i>base</i> (between 2 and 36). Extraneous characters past the
    # end of a valid number are ignored. If there is not a valid number at the
    # start of <i>str</i>, <code>0</code> is returned. This method never raises an
    # exception when <i>base</i> is valid.
    # 
    #    "12345".to_i             #=> 12345
    #    "99 red balloons".to_i   #=> 99
    #    "0a".to_i                #=> 0
    #    "0a".to_i(16)            #=> 10
    #    "hello".to_i             #=> 0
    #    "1100101".to_i(2)        #=> 101
    #    "1100101".to_i(8)        #=> 294977
    #    "1100101".to_i(10)       #=> 1100101
    #    "1100101".to_i(16)       #=> 17826049
    def to_i(base=10)
        #This is a stub, used for indexing
    end
    # str.to_f   -> float
    #  
    # Returns the result of interpreting leading characters in <i>str</i> as a
    # floating point number. Extraneous characters past the end of a valid number
    # are ignored. If there is not a valid number at the start of <i>str</i>,
    # <code>0.0</code> is returned. This method never raises an exception.
    # 
    #    "123.45e1".to_f        #=> 1234.5
    #    "45.67 degrees".to_f   #=> 45.67
    #    "thx1138".to_f         #=> 0.0
    def to_f()
        #This is a stub, used for indexing
    end
    # str.to_s     -> str
    # str.to_str   -> str
    #  
    # Returns the receiver.
    def to_s(*several_variants)
        #This is a stub, used for indexing
    end
    # str.to_s     -> str
    # str.to_str   -> str
    #  
    # Returns the receiver.
    def to_str()
        #This is a stub, used for indexing
    end
    # str.inspect   -> string
    #  
    # Returns a printable version of _str_, surrounded by quote marks,
    # with special characters escaped.
    # 
    #    str = "hello"
    #    str[3] = "\b"
    #    str.inspect       #=> "\"hel\\bo\""
    def inspect()
        #This is a stub, used for indexing
    end
    # str.dump   -> new_str
    #  
    # Produces a version of <i>str</i> with all nonprinting characters replaced by
    # <code>\nnn</code> notation and all special characters escaped.
    def dump()
        #This is a stub, used for indexing
    end
    # str.upcase   -> new_str
    #  
    # Returns a copy of <i>str</i> with all lowercase letters replaced with their
    # uppercase counterparts. The operation is locale insensitive---only
    # characters ``a'' to ``z'' are affected.
    # Note: case replacement is effective only in ASCII region.
    # 
    #    "hEllO".upcase   #=> "HELLO"
    def upcase()
        #This is a stub, used for indexing
    end
    # str.downcase   -> new_str
    #  
    # Returns a copy of <i>str</i> with all uppercase letters replaced with their
    # lowercase counterparts. The operation is locale insensitive---only
    # characters ``A'' to ``Z'' are affected.
    # Note: case replacement is effective only in ASCII region.
    # 
    #    "hEllO".downcase   #=> "hello"
    def downcase()
        #This is a stub, used for indexing
    end
    # str.capitalize   -> new_str
    #  
    # Returns a copy of <i>str</i> with the first character converted to uppercase
    # and the remainder to lowercase.
    # Note: case conversion is effective only in ASCII region.
    # 
    #    "hello".capitalize    #=> "Hello"
    #    "HELLO".capitalize    #=> "Hello"
    #    "123ABC".capitalize   #=> "123abc"
    def capitalize()
        #This is a stub, used for indexing
    end
    # str.swapcase   -> new_str
    #  
    # Returns a copy of <i>str</i> with uppercase alphabetic characters converted
    # to lowercase and lowercase characters converted to uppercase.
    # Note: case conversion is effective only in ASCII region.
    # 
    #    "Hello".swapcase          #=> "hELLO"
    #    "cYbEr_PuNk11".swapcase   #=> "CyBeR_pUnK11"
    def swapcase()
        #This is a stub, used for indexing
    end
    # str.upcase!   -> str or nil
    #  
    # Upcases the contents of <i>str</i>, returning <code>nil</code> if no changes
    # were made.
    # Note: case replacement is effective only in ASCII region.
    def upcase!()
        #This is a stub, used for indexing
    end
    # str.downcase!   -> str or nil
    #  
    # Downcases the contents of <i>str</i>, returning <code>nil</code> if no
    # changes were made.
    # Note: case replacement is effective only in ASCII region.
    def downcase!()
        #This is a stub, used for indexing
    end
    # str.capitalize!   -> str or nil
    #  
    # Modifies <i>str</i> by converting the first character to uppercase and the
    # remainder to lowercase. Returns <code>nil</code> if no changes are made.
    # Note: case conversion is effective only in ASCII region.
    # 
    #    a = "hello"
    #    a.capitalize!   #=> "Hello"
    #    a               #=> "Hello"
    #    a.capitalize!   #=> nil
    def capitalize!()
        #This is a stub, used for indexing
    end
    # str.swapcase!   -> str or nil
    #  
    # Equivalent to <code>String#swapcase</code>, but modifies the receiver in
    # place, returning <i>str</i>, or <code>nil</code> if no changes were made.
    # Note: case conversion is effective only in ASCII region.
    def swapcase!()
        #This is a stub, used for indexing
    end
    # str.hex   -> integer
    #  
    # Treats leading characters from <i>str</i> as a string of hexadecimal digits
    # (with an optional sign and an optional <code>0x</code>) and returns the
    # corresponding number. Zero is returned on error.
    # 
    #    "0x0a".hex     #=> 10
    #    "-1234".hex    #=> -4660
    #    "0".hex        #=> 0
    #    "wombat".hex   #=> 0
    def hex()
        #This is a stub, used for indexing
    end
    # str.oct   -> integer
    #  
    # Treats leading characters of <i>str</i> as a string of octal digits (with an
    # optional sign) and returns the corresponding number.  Returns 0 if the
    # conversion fails.
    # 
    #    "123".oct       #=> 83
    #    "-377".oct      #=> -255
    #    "bad".oct       #=> 0
    #    "0377bad".oct   #=> 255
    def oct()
        #This is a stub, used for indexing
    end
    # str.split(pattern=$;, [limit])   -> anArray
    #  
    # Divides <i>str</i> into substrings based on a delimiter, returning an array
    # of these substrings.
    # 
    # If <i>pattern</i> is a <code>String</code>, then its contents are used as
    # the delimiter when splitting <i>str</i>. If <i>pattern</i> is a single
    # space, <i>str</i> is split on whitespace, with leading whitespace and runs
    # of contiguous whitespace characters ignored.
    # 
    # If <i>pattern</i> is a <code>Regexp</code>, <i>str</i> is divided where the
    # pattern matches. Whenever the pattern matches a zero-length string,
    # <i>str</i> is split into individual characters. If <i>pattern</i> contains
    # groups, the respective matches will be returned in the array as well.
    # 
    # If <i>pattern</i> is omitted, the value of <code>$;</code> is used.  If
    # <code>$;</code> is <code>nil</code> (which is the default), <i>str</i> is
    # split on whitespace as if ` ' were specified.
    # 
    # If the <i>limit</i> parameter is omitted, trailing null fields are
    # suppressed. If <i>limit</i> is a positive number, at most that number of
    # fields will be returned (if <i>limit</i> is <code>1</code>, the entire
    # string is returned as the only entry in an array). If negative, there is no
    # limit to the number of fields returned, and trailing null fields are not
    # suppressed.
    # 
    #    " now's  the time".split        #=> ["now's", "the", "time"]
    #    " now's  the time".split(' ')   #=> ["now's", "the", "time"]
    #    " now's  the time".split(/ /)   #=> ["", "now's", "", "the", "time"]
    #    "1, 2.34,56, 7".split(%r{,\s*}) #=> ["1", "2.34", "56", "7"]
    #    "hello".split(//)               #=> ["h", "e", "l", "l", "o"]
    #    "hello".split(//, 3)            #=> ["h", "e", "llo"]
    #    "hi mom".split(%r{\s*})         #=> ["h", "i", "m", "o", "m"]
    # 
    #    "mellow yellow".split("ello")   #=> ["m", "w y", "w"]
    #    "1,2,,3,4,,".split(',')         #=> ["1", "2", "", "3", "4"]
    #    "1,2,,3,4,,".split(',', 4)      #=> ["1", "2", "", "3,4,,"]
    #    "1,2,,3,4,,".split(',', -4)     #=> ["1", "2", "", "3", "4", "", ""]
    def split(pattern=$;, *limit)
        #This is a stub, used for indexing
    end
    # str.each_line(separator=$/) {|substr| block }   -> str
    # str.each_line(separator=$/)                     -> an_enumerator
    # 
    # str.lines(separator=$/) {|substr| block }       -> str
    # str.lines(separator=$/)                         -> an_enumerator
    #  
    # Splits <i>str</i> using the supplied parameter as the record separator
    # (<code>$/</code> by default), passing each substring in turn to the supplied
    # block. If a zero-length record separator is supplied, the string is split
    # into paragraphs delimited by multiple successive newlines.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    print "Example one\n"
    #    "hello\nworld".each_line {|s| p s}
    #    print "Example two\n"
    #    "hello\nworld".each_line('l') {|s| p s}
    #    print "Example three\n"
    #    "hello\n\n\nworld".each_line('') {|s| p s}
    # 
    # <em>produces:</em>
    # 
    #    Example one
    #    "hello\n"
    #    "world"
    #    Example two
    #    "hel"
    #    "l"
    #    "o\nworl"
    #    "d"
    #    Example three
    #    "hello\n\n\n"
    #    "world"
    def lines(*several_variants)
        #This is a stub, used for indexing
    end
    # str.bytes {|fixnum| block }        -> str
    # str.bytes                          -> an_enumerator
    # 
    # str.each_byte {|fixnum| block }    -> str
    # str.each_byte                      -> an_enumerator
    #  
    # Passes each byte in <i>str</i> to the given block, or returns
    # an enumerator if no block is given.
    # 
    #    "hello".each_byte {|c| print c, ' ' }
    # 
    # <em>produces:</em>
    # 
    #    104 101 108 108 111
    def bytes(*several_variants)
        #This is a stub, used for indexing
    end
    # str.chars {|cstr| block }        -> str
    # str.chars                        -> an_enumerator
    # 
    # str.each_char {|cstr| block }    -> str
    # str.each_char                    -> an_enumerator
    #  
    # Passes each character in <i>str</i> to the given block, or returns
    # an enumerator if no block is given.
    # 
    #    "hello".each_char {|c| print c, ' ' }
    # 
    # <em>produces:</em>
    # 
    #    h e l l o
    def chars(*several_variants)
        #This is a stub, used for indexing
    end
    # str.codepoints {|integer| block }        -> str
    # str.codepoints                           -> an_enumerator
    # 
    # str.each_codepoint {|integer| block }    -> str
    # str.each_codepoint                       -> an_enumerator
    #  
    # Passes the <code>Integer</code> ordinal of each character in <i>str</i>,
    # also known as a <i>codepoint</i> when applied to Unicode strings to the
    # given block.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    "hello\u0639".each_codepoint {|c| print c, ' ' }
    # 
    # <em>produces:</em>
    # 
    #    104 101 108 108 111 1593
    def codepoints(*several_variants)
        #This is a stub, used for indexing
    end
    # str.reverse   -> new_str
    #  
    # Returns a new string with the characters from <i>str</i> in reverse order.
    # 
    #    "stressed".reverse   #=> "desserts"
    def reverse()
        #This is a stub, used for indexing
    end
    # str.reverse!   -> str
    #  
    # Reverses <i>str</i> in place.
    def reverse!()
        #This is a stub, used for indexing
    end
    # str << integer       -> str
    # str.concat(integer)  -> str
    # str << obj           -> str
    # str.concat(obj)      -> str
    #  
    # Append---Concatenates the given object to <i>str</i>. If the object is a
    # <code>Integer</code>, it is considered as a codepoint, and is converted
    # to a character before concatenation.
    # 
    #    a = "hello "
    #    a << "world"   #=> "hello world"
    #    a.concat(33)   #=> "hello world!"
    def concat(*several_variants)
        #This is a stub, used for indexing
    end
    # str << integer       -> str
    # str.concat(integer)  -> str
    # str << obj           -> str
    # str.concat(obj)      -> str
    #  
    # Append---Concatenates the given object to <i>str</i>. If the object is a
    # <code>Integer</code>, it is considered as a codepoint, and is converted
    # to a character before concatenation.
    # 
    #    a = "hello "
    #    a << "world"   #=> "hello world"
    #    a.concat(33)   #=> "hello world!"
    def <<(*several_variants)
        #This is a stub, used for indexing
    end
    # str.crypt(other_str)   -> new_str
    #  
    # Applies a one-way cryptographic hash to <i>str</i> by invoking the standard
    # library function <code>crypt</code>. The argument is the salt string, which
    # should be two characters long, each character drawn from
    # <code>[a-zA-Z0-9./]</code>.
    def crypt(other_str)
        #This is a stub, used for indexing
    end
    # str.intern   -> symbol
    # str.to_sym   -> symbol
    #  
    # Returns the <code>Symbol</code> corresponding to <i>str</i>, creating the
    # symbol if it did not previously exist. See <code>Symbol#id2name</code>.
    # 
    #    "Koala".intern         #=> :Koala
    #    s = 'cat'.to_sym       #=> :cat
    #    s == :cat              #=> true
    #    s = '@cat'.to_sym      #=> :@cat
    #    s == :@cat             #=> true
    # 
    # This can also be used to create symbols that cannot be represented using the
    # <code>:xxx</code> notation.
    # 
    #    'cat and dog'.to_sym   #=> :"cat and dog"
    def intern()
        #This is a stub, used for indexing
    end
    # str.intern   -> symbol
    # str.to_sym   -> symbol
    #  
    # Returns the <code>Symbol</code> corresponding to <i>str</i>, creating the
    # symbol if it did not previously exist. See <code>Symbol#id2name</code>.
    # 
    #    "Koala".intern         #=> :Koala
    #    s = 'cat'.to_sym       #=> :cat
    #    s == :cat              #=> true
    #    s = '@cat'.to_sym      #=> :@cat
    #    s == :@cat             #=> true
    # 
    # This can also be used to create symbols that cannot be represented using the
    # <code>:xxx</code> notation.
    # 
    #    'cat and dog'.to_sym   #=> :"cat and dog"
    def to_sym()
        #This is a stub, used for indexing
    end
    # str.ord   -> integer
    #  
    # Return the <code>Integer</code> ordinal of a one-character string.
    # 
    #    "a".ord         #=> 97
    def ord()
        #This is a stub, used for indexing
    end
    # str.include? other_str   -> true or false
    #  
    # Returns <code>true</code> if <i>str</i> contains the given string or
    # character.
    # 
    #    "hello".include? "lo"   #=> true
    #    "hello".include? "ol"   #=> false
    #    "hello".include? ?h     #=> true
    def include? other_str
        #This is a stub, used for indexing
    end
    # str.start_with?([prefix]+)   -> true or false
    #  
    # Returns true if <i>str</i> starts with a prefix given.
    # 
    #   p "hello".start_with?("hell")               #=> true
    # 
    #   # returns true if one of prefix matches.
    #   p "hello".start_with?("heaven", "hell")     #=> true
    #   p "hello".start_with?("heaven", "paradice") #=> false
    def start_with?(*args)
        #This is a stub, used for indexing
    end
    # str.end_with?([suffix]+)   -> true or false
    #  
    # Returns true if <i>str</i> ends with a suffix given.
    def end_with?(*args)
        #This is a stub, used for indexing
    end
    # str.scan(pattern)                         -> array
    # str.scan(pattern) {|match, ...| block }   -> str
    #  
    # Both forms iterate through <i>str</i>, matching the pattern (which may be a
    # <code>Regexp</code> or a <code>String</code>). For each match, a result is
    # generated and either added to the result array or passed to the block. If
    # the pattern contains no groups, each individual result consists of the
    # matched string, <code>$&</code>.  If the pattern contains groups, each
    # individual result is itself an array containing one entry per group.
    # 
    #    a = "cruel world"
    #    a.scan(/\w+/)        #=> ["cruel", "world"]
    #    a.scan(/.../)        #=> ["cru", "el ", "wor"]
    #    a.scan(/(...)/)      #=> [["cru"], ["el "], ["wor"]]
    #    a.scan(/(..)(..)/)   #=> [["cr", "ue"], ["l ", "wo"]]
    # 
    # And the block form:
    # 
    #    a.scan(/\w+/) {|w| print "<<#{w}>> " }
    #    print "\n"
    #    a.scan(/(.)(.)/) {|x,y| print y, x }
    #    print "\n"
    # 
    # <em>produces:</em>
    # 
    #    <<cruel>> <<world>>
    #    rceu lowlr
    def scan(*several_variants)
        #This is a stub, used for indexing
    end
    # str.ljust(integer, padstr=' ')   -> new_str
    #  
    # If <i>integer</i> is greater than the length of <i>str</i>, returns a new
    # <code>String</code> of length <i>integer</i> with <i>str</i> left justified
    # and padded with <i>padstr</i>; otherwise, returns <i>str</i>.
    # 
    #    "hello".ljust(4)            #=> "hello"
    #    "hello".ljust(20)           #=> "hello               "
    #    "hello".ljust(20, '1234')   #=> "hello123412341234123"
    def ljust(integer, padstr=' ')
        #This is a stub, used for indexing
    end
    # str.rjust(integer, padstr=' ')   -> new_str
    #  
    # If <i>integer</i> is greater than the length of <i>str</i>, returns a new
    # <code>String</code> of length <i>integer</i> with <i>str</i> right justified
    # and padded with <i>padstr</i>; otherwise, returns <i>str</i>.
    # 
    #    "hello".rjust(4)            #=> "hello"
    #    "hello".rjust(20)           #=> "               hello"
    #    "hello".rjust(20, '1234')   #=> "123412341234123hello"
    def rjust(integer, padstr=' ')
        #This is a stub, used for indexing
    end
    # str.center(integer, padstr)   -> new_str
    #  
    # If <i>integer</i> is greater than the length of <i>str</i>, returns a new
    # <code>String</code> of length <i>integer</i> with <i>str</i> centered and
    # padded with <i>padstr</i>; otherwise, returns <i>str</i>.
    # 
    #    "hello".center(4)         #=> "hello"
    #    "hello".center(20)        #=> "       hello        "
    #    "hello".center(20, '123') #=> "1231231hello12312312"
    def center(integer, padstr="")
        #This is a stub, used for indexing
    end
    # str.sub(pattern, replacement)         -> new_str
    # str.sub(pattern, hash)                -> new_str
    # str.sub(pattern) {|match| block }     -> new_str
    #  
    # Returns a copy of <i>str</i> with the <em>first</em> occurrence of
    # <i>pattern</i> substituted for the second argument. The <i>pattern</i> is
    # typically a <code>Regexp</code>; if given as a <code>String</code>, any
    # regular expression metacharacters it contains will be interpreted
    # literally, e.g. <code>'\\\d'</code> will match a backlash followed by 'd',
    # instead of a digit.
    # 
    # If <i>replacement</i> is a <code>String</code> it will be substituted for
    # the matched text. It may contain back-references to the pattern's capture
    # groups of the form <code>\\\d</code>, where <i>d</i> is a group number, or
    # <code>\\\k<n></code>, where <i>n</i> is a group name. If it is a
    # double-quoted string, both back-references must be preceded by an
    # additional backslash. However, within <i>replacement</i> the special match
    # variables, such as <code>&$</code>, will not refer to the current match.
    # 
    # If the second argument is a <code>Hash</code>, and the matched text is one
    # of its keys, the corresponding value is the replacement string.
    # 
    # In the block form, the current match string is passed in as a parameter,
    # and variables such as <code>$1</code>, <code>$2</code>, <code>$`</code>,
    # <code>$&</code>, and <code>$'</code> will be set appropriately. The value
    # returned by the block will be substituted for the match on each call.
    # 
    # The result inherits any tainting in the original string or any supplied
    # replacement string.
    # 
    #    "hello".sub(/[aeiou]/, '*')                  #=> "h*llo"
    #    "hello".sub(/([aeiou])/, '<\1>')             #=> "h<e>llo"
    #    "hello".sub(/./) {|s| s.ord.to_s + ' ' }     #=> "104 ello"
    #    "hello".sub(/(?<foo>[aeiou])/, '*\k<foo>*')  #=> "h*e*llo"
    #    'Is SHELL your preferred shell?'.sub(/[[:upper:]]{2,}/, ENV)
    #     #=> "Is /bin/bash your preferred shell?"
    def sub(*several_variants)
        #This is a stub, used for indexing
    end
    # str.gsub(pattern, replacement)       -> new_str
    # str.gsub(pattern, hash)              -> new_str
    # str.gsub(pattern) {|match| block }   -> new_str
    # str.gsub(pattern)                    -> enumerator
    #  
    # Returns a copy of <i>str</i> with the <em>all</em> occurrences of
    # <i>pattern</i> substituted for the second argument. The <i>pattern</i> is
    # typically a <code>Regexp</code>; if given as a <code>String</code>, any
    # regular expression metacharacters it contains will be interpreted
    # literally, e.g. <code>'\\\d'</code> will match a backlash followed by 'd',
    # instead of a digit.
    # 
    # If <i>replacement</i> is a <code>String</code> it will be substituted for
    # the matched text. It may contain back-references to the pattern's capture
    # groups of the form <code>\\\d</code>, where <i>d</i> is a group number, or
    # <code>\\\k<n></code>, where <i>n</i> is a group name. If it is a
    # double-quoted string, both back-references must be preceded by an
    # additional backslash. However, within <i>replacement</i> the special match
    # variables, such as <code>&$</code>, will not refer to the current match.
    # 
    # If the second argument is a <code>Hash</code>, and the matched text is one
    # of its keys, the corresponding value is the replacement string.
    # 
    # In the block form, the current match string is passed in as a parameter,
    # and variables such as <code>$1</code>, <code>$2</code>, <code>$`</code>,
    # <code>$&</code>, and <code>$'</code> will be set appropriately. The value
    # returned by the block will be substituted for the match on each call.
    # 
    # The result inherits any tainting in the original string or any supplied
    # replacement string.
    # 
    # When neither a block nor a second argument is supplied, an
    # <code>Enumerator</code> is returned.
    # 
    #    "hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
    #    "hello".gsub(/([aeiou])/, '<\1>')             #=> "h<e>ll<o>"
    #    "hello".gsub(/./) {|s| s.ord.to_s + ' '}      #=> "104 101 108 108 111 "
    #    "hello".gsub(/(?<foo>[aeiou])/, '{\k<foo>}')  #=> "h{e}ll{o}"
    #    'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')    #=> "h3ll*"
    def gsub(*several_variants)
        #This is a stub, used for indexing
    end
    # str.chop   -> new_str
    #  
    # Returns a new <code>String</code> with the last character removed.  If the
    # string ends with <code>\r\n</code>, both characters are removed. Applying
    # <code>chop</code> to an empty string returns an empty
    # string. <code>String#chomp</code> is often a safer alternative, as it leaves
    # the string unchanged if it doesn't end in a record separator.
    # 
    #    "string\r\n".chop   #=> "string"
    #    "string\n\r".chop   #=> "string\n"
    #    "string\n".chop     #=> "string"
    #    "string".chop       #=> "strin"
    #    "x".chop.chop       #=> ""
    def chop()
        #This is a stub, used for indexing
    end
    # str.chomp(separator=$/)   -> new_str
    #  
    # Returns a new <code>String</code> with the given record separator removed
    # from the end of <i>str</i> (if present). If <code>$/</code> has not been
    # changed from the default Ruby record separator, then <code>chomp</code> also
    # removes carriage return characters (that is it will remove <code>\n</code>,
    # <code>\r</code>, and <code>\r\n</code>).
    # 
    #    "hello".chomp            #=> "hello"
    #    "hello\n".chomp          #=> "hello"
    #    "hello\r\n".chomp        #=> "hello"
    #    "hello\n\r".chomp        #=> "hello\n"
    #    "hello\r".chomp          #=> "hello"
    #    "hello \n there".chomp   #=> "hello \n there"
    #    "hello".chomp("llo")     #=> "he"
    def chomp(separator=$/)
        #This is a stub, used for indexing
    end
    # str.strip   -> new_str
    #  
    # Returns a copy of <i>str</i> with leading and trailing whitespace removed.
    # 
    #    "    hello    ".strip   #=> "hello"
    #    "\tgoodbye\r\n".strip   #=> "goodbye"
    def strip()
        #This is a stub, used for indexing
    end
    # str.lstrip   -> new_str
    #  
    # Returns a copy of <i>str</i> with leading whitespace removed. See also
    # <code>String#rstrip</code> and <code>String#strip</code>.
    # 
    #    "  hello  ".lstrip   #=> "hello  "
    #    "hello".lstrip       #=> "hello"
    def lstrip()
        #This is a stub, used for indexing
    end
    # str.rstrip   -> new_str
    #  
    # Returns a copy of <i>str</i> with trailing whitespace removed. See also
    # <code>String#lstrip</code> and <code>String#strip</code>.
    # 
    #    "  hello  ".rstrip   #=> "  hello"
    #    "hello".rstrip       #=> "hello"
    def rstrip()
        #This is a stub, used for indexing
    end
    # str.sub!(pattern, replacement)          -> str or nil
    # str.sub!(pattern) {|match| block }      -> str or nil
    #  
    # Performs the substitutions of <code>String#sub</code> in place,
    # returning <i>str</i>, or <code>nil</code> if no substitutions were
    # performed.
    def sub!(*several_variants)
        #This is a stub, used for indexing
    end
    # str.gsub!(pattern, replacement)        -> str or nil
    # str.gsub!(pattern) {|match| block }    -> str or nil
    # str.gsub!(pattern)                     -> an_enumerator
    #  
    # Performs the substitutions of <code>String#gsub</code> in place, returning
    # <i>str</i>, or <code>nil</code> if no substitutions were performed.
    # If no block and no <i>replacement</i> is given, an enumerator is returned instead.
    def gsub!(*several_variants)
        #This is a stub, used for indexing
    end
    # str.chop!   -> str or nil
    #  
    # Processes <i>str</i> as for <code>String#chop</code>, returning <i>str</i>,
    # or <code>nil</code> if <i>str</i> is the empty string.  See also
    # <code>String#chomp!</code>.
    def chop!()
        #This is a stub, used for indexing
    end
    # str.chomp!(separator=$/)   -> str or nil
    #  
    # Modifies <i>str</i> in place as described for <code>String#chomp</code>,
    # returning <i>str</i>, or <code>nil</code> if no modifications were made.
    def chomp!(separator=$/)
        #This is a stub, used for indexing
    end
    # str.strip!   -> str or nil
    #  
    # Removes leading and trailing whitespace from <i>str</i>. Returns
    # <code>nil</code> if <i>str</i> was not altered.
    def strip!()
        #This is a stub, used for indexing
    end
    # str.lstrip!   -> self or nil
    #  
    # Removes leading whitespace from <i>str</i>, returning <code>nil</code> if no
    # change was made. See also <code>String#rstrip!</code> and
    # <code>String#strip!</code>.
    # 
    #    "  hello  ".lstrip   #=> "hello  "
    #    "hello".lstrip!      #=> nil
    def lstrip!()
        #This is a stub, used for indexing
    end
    # str.rstrip!   -> self or nil
    #  
    # Removes trailing whitespace from <i>str</i>, returning <code>nil</code> if
    # no change was made. See also <code>String#lstrip!</code> and
    # <code>String#strip!</code>.
    # 
    #    "  hello  ".rstrip   #=> "  hello"
    #    "hello".rstrip!      #=> nil
    def rstrip!()
        #This is a stub, used for indexing
    end
    # str.tr(from_str, to_str)   -> new_str
    #  
    # Returns a copy of <i>str</i> with the characters in <i>from_str</i> replaced
    # by the corresponding characters in <i>to_str</i>. If <i>to_str</i> is
    # shorter than <i>from_str</i>, it is padded with its last character. Both
    # strings may use the c1--c2 notation to denote ranges of characters, and
    # <i>from_str</i> may start with a <code>^</code>, which denotes all
    # characters except those listed.
    # 
    #    "hello".tr('aeiou', '*')    #=> "h*ll*"
    #    "hello".tr('^aeiou', '*')   #=> "*e**o"
    #    "hello".tr('el', 'ip')      #=> "hippo"
    #    "hello".tr('a-y', 'b-z')    #=> "ifmmp"
    def tr(from_str, to_str)
        #This is a stub, used for indexing
    end
    # str.tr_s(from_str, to_str)   -> new_str
    #  
    # Processes a copy of <i>str</i> as described under <code>String#tr</code>,
    # then removes duplicate characters in regions that were affected by the
    # translation.
    # 
    #    "hello".tr_s('l', 'r')     #=> "hero"
    #    "hello".tr_s('el', '*')    #=> "h*o"
    #    "hello".tr_s('el', 'hx')   #=> "hhxo"
    def tr_s(from_str, to_str)
        #This is a stub, used for indexing
    end
    # str.delete([other_str]+)   -> new_str
    #  
    # Returns a copy of <i>str</i> with all characters in the intersection of its
    # arguments deleted. Uses the same rules for building the set of characters as
    # <code>String#count</code>.
    # 
    #    "hello".delete "l","lo"        #=> "heo"
    #    "hello".delete "lo"            #=> "he"
    #    "hello".delete "aeiou", "^e"   #=> "hell"
    #    "hello".delete "ej-m"          #=> "ho"
    def delete(*other_strings)
        #This is a stub, used for indexing
    end
    # str.squeeze([other_str]*)    -> new_str
    #  
    # Builds a set of characters from the <i>other_str</i> parameter(s) using the
    # procedure described for <code>String#count</code>. Returns a new string
    # where runs of the same character that occur in this set are replaced by a
    # single character. If no arguments are given, all runs of identical
    # characters are replaced by a single character.
    # 
    #    "yellow moon".squeeze                  #=> "yelow mon"
    #    "  now   is  the".squeeze(" ")         #=> " now is the"
    #    "putters shoot balls".squeeze("m-z")   #=> "puters shot balls"
    def squeeze(*other_strings)
        #This is a stub, used for indexing
    end
    # str.count([other_str]+)   -> fixnum
    #  
    # Each <i>other_str</i> parameter defines a set of characters to count.  The
    # intersection of these sets defines the characters to count in
    # <i>str</i>. Any <i>other_str</i> that starts with a caret (^) is
    # negated. The sequence c1--c2 means all characters between c1 and c2.
    # 
    #    a = "hello world"
    #    a.count "lo"            #=> 5
    #    a.count "lo", "o"       #=> 2
    #    a.count "hello", "^l"   #=> 4
    #    a.count "ej-m"          #=> 4
    def count(*other_strings)
        #This is a stub, used for indexing
    end
    # str.tr!(from_str, to_str)   -> str or nil
    #  
    # Translates <i>str</i> in place, using the same rules as
    # <code>String#tr</code>. Returns <i>str</i>, or <code>nil</code> if no
    # changes were made.
    def tr!(from_str, to_str)
        #This is a stub, used for indexing
    end
    # str.tr_s!(from_str, to_str)   -> str or nil
    #  
    # Performs <code>String#tr_s</code> processing on <i>str</i> in place,
    # returning <i>str</i>, or <code>nil</code> if no changes were made.
    def tr_s!(from_str, to_str)
        #This is a stub, used for indexing
    end
    # str.delete!([other_str]+)   -> str or nil
    #  
    # Performs a <code>delete</code> operation in place, returning <i>str</i>, or
    # <code>nil</code> if <i>str</i> was not modified.
    def delete!(*args)
        #This is a stub, used for indexing
    end
    # str.squeeze!([other_str]*)   -> str or nil
    #  
    # Squeezes <i>str</i> in place, returning either <i>str</i>, or
    # <code>nil</code> if no changes were made.
    def squeeze!(*other_strings)
        #This is a stub, used for indexing
    end
    # str.each_line(separator=$/) {|substr| block }   -> str
    # str.each_line(separator=$/)                     -> an_enumerator
    # 
    # str.lines(separator=$/) {|substr| block }       -> str
    # str.lines(separator=$/)                         -> an_enumerator
    #  
    # Splits <i>str</i> using the supplied parameter as the record separator
    # (<code>$/</code> by default), passing each substring in turn to the supplied
    # block. If a zero-length record separator is supplied, the string is split
    # into paragraphs delimited by multiple successive newlines.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    print "Example one\n"
    #    "hello\nworld".each_line {|s| p s}
    #    print "Example two\n"
    #    "hello\nworld".each_line('l') {|s| p s}
    #    print "Example three\n"
    #    "hello\n\n\nworld".each_line('') {|s| p s}
    # 
    # <em>produces:</em>
    # 
    #    Example one
    #    "hello\n"
    #    "world"
    #    Example two
    #    "hel"
    #    "l"
    #    "o\nworl"
    #    "d"
    #    Example three
    #    "hello\n\n\n"
    #    "world"
    def each_line(*several_variants)
        #This is a stub, used for indexing
    end
    # str.bytes {|fixnum| block }        -> str
    # str.bytes                          -> an_enumerator
    # 
    # str.each_byte {|fixnum| block }    -> str
    # str.each_byte                      -> an_enumerator
    #  
    # Passes each byte in <i>str</i> to the given block, or returns
    # an enumerator if no block is given.
    # 
    #    "hello".each_byte {|c| print c, ' ' }
    # 
    # <em>produces:</em>
    # 
    #    104 101 108 108 111
    def each_byte(*several_variants)
        #This is a stub, used for indexing
    end
    # str.chars {|cstr| block }        -> str
    # str.chars                        -> an_enumerator
    # 
    # str.each_char {|cstr| block }    -> str
    # str.each_char                    -> an_enumerator
    #  
    # Passes each character in <i>str</i> to the given block, or returns
    # an enumerator if no block is given.
    # 
    #    "hello".each_char {|c| print c, ' ' }
    # 
    # <em>produces:</em>
    # 
    #    h e l l o
    def each_char(*several_variants)
        #This is a stub, used for indexing
    end
    # str.codepoints {|integer| block }        -> str
    # str.codepoints                           -> an_enumerator
    # 
    # str.each_codepoint {|integer| block }    -> str
    # str.each_codepoint                       -> an_enumerator
    #  
    # Passes the <code>Integer</code> ordinal of each character in <i>str</i>,
    # also known as a <i>codepoint</i> when applied to Unicode strings to the
    # given block.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    "hello\u0639".each_codepoint {|c| print c, ' ' }
    # 
    # <em>produces:</em>
    # 
    #    104 101 108 108 111 1593
    def each_codepoint(*several_variants)
        #This is a stub, used for indexing
    end
    # str.sum(n=16)   -> integer
    #  
    # Returns a basic <em>n</em>-bit checksum of the characters in <i>str</i>,
    # where <em>n</em> is the optional <code>Fixnum</code> parameter, defaulting
    # to 16. The result is simply the sum of the binary value of each character in
    # <i>str</i> modulo <code>2**n - 1</code>. This is not a particularly good
    # checksum.
    def sum(n=16)
        #This is a stub, used for indexing
    end
    # str[fixnum]                 -> new_str or nil
    # str[fixnum, fixnum]         -> new_str or nil
    # str[range]                  -> new_str or nil
    # str[regexp]                 -> new_str or nil
    # str[regexp, fixnum]         -> new_str or nil
    # str[other_str]              -> new_str or nil
    # str.slice(fixnum)           -> new_str or nil
    # str.slice(fixnum, fixnum)   -> new_str or nil
    # str.slice(range)            -> new_str or nil
    # str.slice(regexp)           -> new_str or nil
    # str.slice(regexp, fixnum)   -> new_str or nil
    # str.slice(regexp, capname)  -> new_str or nil
    # str.slice(other_str)        -> new_str or nil
    #  
    # Element Reference---If passed a single <code>Fixnum</code>, returns a
    # substring of one character at that position. If passed two <code>Fixnum</code>
    # objects, returns a substring starting at the offset given by the first, and
    # a length given by the second. If given a range, a substring containing
    # characters at offsets given by the range is returned. In all three cases, if
    # an offset is negative, it is counted from the end of <i>str</i>. Returns
    # <code>nil</code> if the initial offset falls outside the string, the length
    # is negative, or the beginning of the range is greater than the end.
    # 
    # If a <code>Regexp</code> is supplied, the matching portion of <i>str</i> is
    # returned. If a numeric or name parameter follows the regular expression, that
    # component of the <code>MatchData</code> is returned instead. If a
    # <code>String</code> is given, that string is returned if it occurs in
    # <i>str</i>. In both cases, <code>nil</code> is returned if there is no
    # match.
    # 
    #    a = "hello there"
    #    a[1]                   #=> "e"
    #    a[1,3]                 #=> "ell"
    #    a[1..3]                #=> "ell"
    #    a[-3,2]                #=> "er"
    #    a[-4..-2]              #=> "her"
    #    a[12..-1]              #=> nil
    #    a[-2..-4]              #=> ""
    #    a[/[aeiou](.)\1/]      #=> "ell"
    #    a[/[aeiou](.)\1/, 0]   #=> "ell"
    #    a[/[aeiou](.)\1/, 1]   #=> "l"
    #    a[/[aeiou](.)\1/, 2]   #=> nil
    #    a["lo"]                #=> "lo"
    #    a["bye"]               #=> nil
    def slice(*several_variants)
        #This is a stub, used for indexing
    end
    # str.slice!(fixnum)           -> fixnum or nil
    # str.slice!(fixnum, fixnum)   -> new_str or nil
    # str.slice!(range)            -> new_str or nil
    # str.slice!(regexp)           -> new_str or nil
    # str.slice!(other_str)        -> new_str or nil
    #  
    # Deletes the specified portion from <i>str</i>, and returns the portion
    # deleted.
    # 
    #    string = "this is a string"
    #    string.slice!(2)        #=> "i"
    #    string.slice!(3..6)     #=> " is "
    #    string.slice!(/s.*t/)   #=> "sa st"
    #    string.slice!("r")      #=> "r"
    #    string                  #=> "thing"
    def slice!(*several_variants)
        #This is a stub, used for indexing
    end
    # str.partition(sep)              -> [head, sep, tail]
    # str.partition(regexp)           -> [head, match, tail]
    #  
    # Searches <i>sep</i> or pattern (<i>regexp</i>) in the string
    # and returns the part before it, the match, and the part
    # after it.
    # If it is not found, returns two empty strings and <i>str</i>.
    # 
    #    "hello".partition("l")         #=> ["he", "l", "lo"]
    #    "hello".partition("x")         #=> ["hello", "", ""]
    #    "hello".partition(/.l/)        #=> ["h", "el", "lo"]
    def partition(*several_variants)
        #This is a stub, used for indexing
    end
    # str.rpartition(sep)             -> [head, sep, tail]
    # str.rpartition(regexp)          -> [head, match, tail]
    #  
    # Searches <i>sep</i> or pattern (<i>regexp</i>) in the string from the end
    # of the string, and returns the part before it, the match, and the part
    # after it.
    # If it is not found, returns two empty strings and <i>str</i>.
    # 
    #    "hello".rpartition("l")         #=> ["hel", "l", "o"]
    #    "hello".rpartition("x")         #=> ["", "", "hello"]
    #    "hello".rpartition(/.l/)        #=> ["he", "ll", "o"]
    def rpartition(*several_variants)
        #This is a stub, used for indexing
    end
    # obj.encoding   -> encoding
    #  
    # Returns the Encoding object that represents the encoding of obj.
    def encoding()
        #This is a stub, used for indexing
    end
    # str.force_encoding(encoding)   -> str
    #  
    # Changes the encoding to +encoding+ and returns self.
    def force_encoding(encoding)
        #This is a stub, used for indexing
    end
    # str.valid_encoding?  -> true or false
    #  
    # Returns true for a string which encoded correctly.
    # 
    #   "\xc2\xa1".force_encoding("UTF-8").valid_encoding?  #=> true
    #   "\xc2".force_encoding("UTF-8").valid_encoding?      #=> false
    #   "\x80".force_encoding("UTF-8").valid_encoding?      #=> false
    def valid_encoding?()
        #This is a stub, used for indexing
    end
    # str.ascii_only?  -> true or false
    #  
    # Returns true for a string which has only ASCII characters.
    # 
    #   "abc".force_encoding("UTF-8").ascii_only?          #=> true
    #   "abc\u{6666}".force_encoding("UTF-8").ascii_only?  #=> false
    def ascii_only?()
        #This is a stub, used for indexing
    end
    # str.encode(encoding [, options] )   -> str
    # str.encode(dst_encoding, src_encoding [, options] )   -> str
    # str.encode([options])   -> str
    #  
    # The first form returns a copy of <i>str</i> transcoded
    # to encoding +encoding+.
    # The second form returns a copy of <i>str</i> transcoded
    # from src_encoding to dst_encoding.
    # The last form returns a copy of <i>str</i> transcoded to
    # <code>Encoding.default_internal</code>.
    # By default, the first and second form raise
    # Encoding::UndefinedConversionError for characters that are
    # undefined in the destination encoding, and
    # Encoding::InvalidByteSequenceError for invalid byte sequences
    # in the source encoding. The last form by default does not raise
    # exceptions but uses replacement strings.
    # The <code>options</code> Hash gives details for conversion.
    # 
    # === options
    # The hash <code>options</code> can have the following keys:
    # :invalid ::
    #   If the value is <code>:replace</code>, <code>#encode</code> replaces
    #   invalid byte sequences in <code>str</code> with the replacement character.
    #   The default is to raise the exception
    # :undef ::
    #   If the value is <code>:replace</code>, <code>#encode</code> replaces
    #   characters which are undefined in the destination encoding with
    #   the replacement character.
    # :replace ::
    #   Sets the replacement string to the value. The default replacement
    #   string is "\uFFFD" for Unicode encoding forms, and "?" otherwise.
    # :fallback ::
    #   Sets the replacement string by the hash for undefined character.
    #   Its key is a such undefined character encoded in source encoding
    #   of current transcoder. Its value can be any encoding until it
    #   can be converted into the destination encoding of the transcoder.
    # :xml ::
    #   The value must be <code>:text</code> or <code>:attr</code>.
    #   If the value is <code>:text</code> <code>#encode</code> replaces
    #   undefined characters with their (upper-case hexadecimal) numeric
    #   character references. '&', '<', and '>' are converted to "&amp;",
    #   "&lt;", and "&gt;", respectively.
    #   If the value is <code>:attr</code>, <code>#encode</code> also quotes
    #   the replacement result (using '"'), and replaces '"' with "&quot;".
    # :cr_newline ::
    #   Replaces LF ("\n") with CR ("\r") if value is true.
    # :crlf_newline ::
    #   Replaces LF ("\n") with CRLF ("\r\n") if value is true.
    # :universal_newline ::
    #   Replaces CRLF ("\r\n") and CR ("\r") with LF ("\n") if value is true.
    def encode(*several_variants)
        #This is a stub, used for indexing
    end
    # str.encode!(encoding [, options] )   -> str
    # str.encode!(dst_encoding, src_encoding [, options] )   -> str
    #  
    # The first form transcodes the contents of <i>str</i> from
    # str.encoding to +encoding+.
    # The second form transcodes the contents of <i>str</i> from
    # src_encoding to dst_encoding.
    # The options Hash gives details for conversion. See String#encode
    # for details.
    # Returns the string even if no changes were made.
    def encode!(*several_variants)
        #This is a stub, used for indexing
    end
end
