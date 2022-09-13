=begin
 This is a machine generated stub using stdlib-doc for <b>class String</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
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
    include Enumerable
    # str.unpack(format)   => anArray
    #  
    # Decodes <i>str</i> (which may contain binary data) according to the
    # format string, returning an array of each value extracted. The
    # format string consists of a sequence of single-character directives,
    # summarized in the table at the end of this entry.
    # Each directive may be followed
    # by a number, indicating the number of times to repeat with this
    # directive. An asterisk (``<code>*</code>'') will use up all
    # remaining elements. The directives <code>sSiIlL</code> may each be
    # followed by an underscore (``<code>_</code>'') to use the underlying
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
    #    Format | Returns | Function
    #    -------+---------+-----------------------------------------
    #      A    | String  | with trailing nulls and spaces removed
    #    -------+---------+-----------------------------------------
    #      a    | String  | string
    #    -------+---------+-----------------------------------------
    #      B    | String  | extract bits from each character (msb first)
    #    -------+---------+-----------------------------------------
    #      b    | String  | extract bits from each character (lsb first)
    #    -------+---------+-----------------------------------------
    #      C    | Fixnum  | extract a character as an unsigned integer
    #    -------+---------+-----------------------------------------
    #      c    | Fixnum  | extract a character as an integer
    #    -------+---------+-----------------------------------------
    #      d,D  | Float   | treat sizeof(double) characters as
    #           |         | a native double
    #    -------+---------+-----------------------------------------
    #      E    | Float   | treat sizeof(double) characters as
    #           |         | a double in little-endian byte order
    #    -------+---------+-----------------------------------------
    #      e    | Float   | treat sizeof(float) characters as
    #           |         | a float in little-endian byte order
    #    -------+---------+-----------------------------------------
    #      f,F  | Float   | treat sizeof(float) characters as
    #           |         | a native float
    #    -------+---------+-----------------------------------------
    #      G    | Float   | treat sizeof(double) characters as
    #           |         | a double in network byte order
    #    -------+---------+-----------------------------------------
    #      g    | Float   | treat sizeof(float) characters as a
    #           |         | float in network byte order
    #    -------+---------+-----------------------------------------
    #      H    | String  | extract hex nibbles from each character
    #           |         | (most significant first)
    #    -------+---------+-----------------------------------------
    #      h    | String  | extract hex nibbles from each character
    #           |         | (least significant first)
    #    -------+---------+-----------------------------------------
    #      I    | Integer | treat sizeof(int) (modified by _)
    #           |         | successive characters as an unsigned
    #           |         | native integer
    #    -------+---------+-----------------------------------------
    #      i    | Integer | treat sizeof(int) (modified by _)
    #           |         | successive characters as a signed
    #           |         | native integer
    #    -------+---------+-----------------------------------------
    #      L    | Integer | treat four (modified by _) successive
    #           |         | characters as an unsigned native
    #           |         | long integer
    #    -------+---------+-----------------------------------------
    #      l    | Integer | treat four (modified by _) successive
    #           |         | characters as a signed native
    #           |         | long integer
    #    -------+---------+-----------------------------------------
    #      M    | String  | quoted-printable
    #    -------+---------+-----------------------------------------
    #      m    | String  | base64-encoded
    #    -------+---------+-----------------------------------------
    #      N    | Integer | treat four characters as an unsigned
    #           |         | long in network byte order
    #    -------+---------+-----------------------------------------
    #      n    | Fixnum  | treat two characters as an unsigned
    #           |         | short in network byte order
    #    -------+---------+-----------------------------------------
    #      P    | String  | treat sizeof(char *) characters as a
    #           |         | pointer, and  return \emph{len} characters
    #           |         | from the referenced location
    #    -------+---------+-----------------------------------------
    #      p    | String  | treat sizeof(char *) characters as a
    #           |         | pointer to a  null-terminated string
    #    -------+---------+-----------------------------------------
    #      Q    | Integer | treat 8 characters as an unsigned 
    #           |         | quad word (64 bits)
    #    -------+---------+-----------------------------------------
    #      q    | Integer | treat 8 characters as a signed 
    #           |         | quad word (64 bits)
    #    -------+---------+-----------------------------------------
    #      S    | Fixnum  | treat two (different if _ used)
    #           |         | successive characters as an unsigned
    #           |         | short in native byte order
    #    -------+---------+-----------------------------------------
    #      s    | Fixnum  | Treat two (different if _ used) 
    #           |         | successive characters as a signed short
    #           |         | in native byte order
    #    -------+---------+-----------------------------------------
    #      U    | Integer | UTF-8 characters as unsigned integers
    #    -------+---------+-----------------------------------------
    #      u    | String  | UU-encoded
    #    -------+---------+-----------------------------------------
    #      V    | Fixnum  | treat four characters as an unsigned
    #           |         | long in little-endian byte order
    #    -------+---------+-----------------------------------------
    #      v    | Fixnum  | treat two characters as an unsigned
    #           |         | short in little-endian byte order
    #    -------+---------+-----------------------------------------
    #      w    | Integer | BER-compressed integer (see Array.pack)
    #    -------+---------+-----------------------------------------
    #      X    | ---     | skip backward one character
    #    -------+---------+-----------------------------------------
    #      x    | ---     | skip forward one character
    #    -------+---------+-----------------------------------------
    #      Z    | String  | with trailing nulls removed
    #           |         | upto first null with *
    #    -------+---------+-----------------------------------------
    #      @    | ---     | skip to the offset given by the 
    #           |         | length argument
    #    -------+---------+-----------------------------------------
    def unpack(format)
        #This is a stub, used for indexing
    end
    # String.new(str="")   => new_str
    #  
    # Returns a new string object containing a copy of <i>str</i>.
    def self.new(str="")
        #This is a stub, used for indexing
    end
    # str.replace(other_str)   => str
    #  
    # Replaces the contents and taintedness of <i>str</i> with the corresponding
    # values in <i>other_str</i>.
    # 
    #    s = "hello"         #=> "hello"
    #    s.replace "world"   #=> "world"
    def initialize_copy(p1)
        #This is a stub, used for indexing
    end
    # str <=> other_str   => -1, 0, +1
    #  
    # Comparison---Returns -1 if <i>other_str</i> is less than, 0 if
    # <i>other_str</i> is equal to, and +1 if <i>other_str</i> is greater than
    # <i>str</i>. If the strings are of different lengths, and the strings are
    # equal when compared up to the shortest length, then the longer string is
    # considered greater than the shorter one. If the variable <code>$=</code> is
    # <code>false</code>, the comparison is based on comparing the binary values
    # of each character in the string. In older versions of Ruby, setting
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
    # str == obj   => true or false
    #  
    # Equality---If <i>obj</i> is not a <code>String</code>, returns
    # <code>false</code>. Otherwise, returns <code>true</code> if <i>str</i>
    # <code><=></code> <i>obj</i> returns zero.
    def == obj
        #This is a stub, used for indexing
    end
    # str.eql?(other)   => true or false
    #  
    # Two strings are equal if the have the same length and content.
    def eql?(other)
        #This is a stub, used for indexing
    end
    # str.hash   => fixnum
    #  
    # Return a hash based on the string's length and content.
    def hash()
        #This is a stub, used for indexing
    end
    # str.casecmp(other_str)   => -1, 0, +1
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
    # str + other_str   => new_str
    #  
    # Concatenation---Returns a new <code>String</code> containing
    # <i>other_str</i> concatenated to <i>str</i>.
    # 
    #    "Hello from " + self.to_s   #=> "Hello from main"
    def + other_str
        #This is a stub, used for indexing
    end
    # str * integer   => new_str
    #  
    # Copy---Returns a new <code>String</code> containing <i>integer</i> copies of
    # the receiver.
    # 
    #    "Ho! " * 3   #=> "Ho! Ho! Ho! "
    def * integer
        #This is a stub, used for indexing
    end
    # str % arg   => new_str
    #  
    # Format---Uses <i>str</i> as a format specification, and returns the result
    # of applying it to <i>arg</i>. If the format specification contains more than
    # one substitution, then <i>arg</i> must be an <code>Array</code> containing
    # the values to be substituted. See <code>Kernel::sprintf</code> for details
    # of the format string.
    # 
    #    "%05d" % 123                       #=> "00123"
    #    "%-5s: %08x" % [ "ID", self.id ]   #=> "ID   : 200e14d6"
    def % arg
        #This is a stub, used for indexing
    end
    # str[fixnum]                 => fixnum or nil
    # str[fixnum, fixnum]         => new_str or nil
    # str[range]                  => new_str or nil
    # str[regexp]                 => new_str or nil
    # str[regexp, fixnum]         => new_str or nil
    # str[other_str]              => new_str or nil
    # str.slice(fixnum)           => fixnum or nil
    # str.slice(fixnum, fixnum)   => new_str or nil
    # str.slice(range)            => new_str or nil
    # str.slice(regexp)           => new_str or nil
    # str.slice(regexp, fixnum)   => new_str or nil
    # str.slice(other_str)        => new_str or nil
    #  
    # Element Reference---If passed a single <code>Fixnum</code>, returns the code
    # of the character at that position. If passed two <code>Fixnum</code>
    # objects, returns a substring starting at the offset given by the first, and
    # a length given by the second. If given a range, a substring containing
    # characters at offsets given by the range is returned. In all three cases, if
    # an offset is negative, it is counted from the end of <i>str</i>. Returns
    # <code>nil</code> if the initial offset falls outside the string, the length
    # is negative, or the beginning of the range is greater than the end.
    # 
    # If a <code>Regexp</code> is supplied, the matching portion of <i>str</i> is
    # returned. If a numeric parameter follows the regular expression, that
    # component of the <code>MatchData</code> is returned instead. If a
    # <code>String</code> is given, that string is returned if it occurs in
    # <i>str</i>. In both cases, <code>nil</code> is returned if there is no
    # match.
    # 
    #    a = "hello there"
    #    a[1]                   #=> 101
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
    # str[fixnum] = fixnum
    # str[fixnum] = new_str
    # str[fixnum, fixnum] = new_str
    # str[range] = aString
    # str[regexp] = new_str
    # str[regexp, fixnum] = new_str
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
    # str.insert(index, other_str)   => str
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
    # str.length   => integer
    #  
    # Returns the length of <i>str</i>.
    def length()
        #This is a stub, used for indexing
    end
    # str.length   => integer
    #  
    # Returns the length of <i>str</i>.
    def size()
        #This is a stub, used for indexing
    end
    # str.length   => integer
    #  
    # Returns the length of <i>str</i>.
    def bytesize()
        #This is a stub, used for indexing
    end
    # str.empty?   => true or false
    #  
    # Returns <code>true</code> if <i>str</i> has a length of zero.
    # 
    #    "hello".empty?   #=> false
    #    "".empty?        #=> true
    def empty?()
        #This is a stub, used for indexing
    end
    # str =~ obj   => fixnum or nil
    #  
    # Match---If <i>obj</i> is a <code>Regexp</code>, use it as a pattern to match
    # against <i>str</i>,and returns the position the match starts, or 
    # <code>nil</code> if there is no match. Otherwise, invokes
    # <i>obj.=~</i>, passing <i>str</i> as an argument. The default
    # <code>=~</code> in <code>Object</code> returns <code>false</code>.
    # 
    #    "cat o' 9 tails" =~ /\d/   #=> 7
    #    "cat o' 9 tails" =~ 9      #=> false
    def =~ obj
        #This is a stub, used for indexing
    end
    # str.match(pattern)   => matchdata or nil
    #  
    # Converts <i>pattern</i> to a <code>Regexp</code> (if it isn't already one),
    # then invokes its <code>match</code> method on <i>str</i>.
    # 
    #    'hello'.match('(.)\1')      #=> #<MatchData:0x401b3d30>
    #    'hello'.match('(.)\1')[0]   #=> "ll"
    #    'hello'.match(/(.)\1/)[0]   #=> "ll"
    #    'hello'.match('xx')         #=> nil
    def match(pattern)
        #This is a stub, used for indexing
    end
    # str.succ   => new_str
    # str.next   => new_str
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
    # str.succ!   => str
    # str.next!   => str
    #  
    # Equivalent to <code>String#succ</code>, but modifies the receiver in
    # place.
    def succ!()
        #This is a stub, used for indexing
    end
    # str.succ   => new_str
    # str.next   => new_str
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
    # str.succ!   => str
    # str.next!   => str
    #  
    # Equivalent to <code>String#succ</code>, but modifies the receiver in
    # place.
    def next!()
        #This is a stub, used for indexing
    end
    # str.upto(other_str, exclusive=false) {|s| block }   => str
    #  
    # Iterates through successive values, starting at <i>str</i> and
    # ending at <i>other_str</i> inclusive, passing each value in turn to
    # the block. The <code>String#succ</code> method is used to generate
    # each value.  If optional second argument exclusive is omitted or is <code>false</code>,
    # the last value will be included; otherwise it will be excluded.
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
    def upto(other_str, exclusive=false)
        #This is a stub, used for indexing
    end
    # str.index(substring [, offset])   => fixnum or nil
    # str.index(fixnum [, offset])      => fixnum or nil
    # str.index(regexp [, offset])      => fixnum or nil
    #  
    # Returns the index of the first occurrence of the given <i>substring</i>,
    # character (<i>fixnum</i>), or pattern (<i>regexp</i>) in <i>str</i>. Returns
    # <code>nil</code> if not found. If the second parameter is present, it
    # specifies the position in the string to begin the search.
    # 
    #    "hello".index('e')             #=> 1
    #    "hello".index('lo')            #=> 3
    #    "hello".index('a')             #=> nil
    #    "hello".index(101)             #=> 1
    #    "hello".index(/[aeiou]/, -3)   #=> 4
    def index(*several_variants)
        #This is a stub, used for indexing
    end
    # str.rindex(substring [, fixnum])   => fixnum or nil
    # str.rindex(fixnum [, fixnum])   => fixnum or nil
    # str.rindex(regexp [, fixnum])   => fixnum or nil
    #  
    # Returns the index of the last occurrence of the given <i>substring</i>,
    # character (<i>fixnum</i>), or pattern (<i>regexp</i>) in <i>str</i>. Returns
    # <code>nil</code> if not found. If the second parameter is present, it
    # specifies the position in the string to end the search---characters beyond
    # this point will not be considered.
    # 
    #    "hello".rindex('e')             #=> 1
    #    "hello".rindex('l')             #=> 3
    #    "hello".rindex('a')             #=> nil
    #    "hello".rindex(101)             #=> 1
    #    "hello".rindex(/[aeiou]/, -2)   #=> 1
    def rindex(*several_variants)
        #This is a stub, used for indexing
    end
    # str.replace(other_str)   => str
    #  
    # Replaces the contents and taintedness of <i>str</i> with the corresponding
    # values in <i>other_str</i>.
    # 
    #    s = "hello"         #=> "hello"
    #    s.replace "world"   #=> "world"
    def replace(other_str)
        #This is a stub, used for indexing
    end
    # str.to_i(base=10)   => integer
    #  
    # Returns the result of interpreting leading characters in <i>str</i> as an
    # integer base <i>base</i> (between 2 and 36). Extraneous characters past the
    # end of a valid number are ignored. If there is not a valid number at the
    # start of <i>str</i>, <code>0</code> is returned. This method never raises an
    # exception.
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
    # str.to_f   => float
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
    # str.to_s     => str
    # str.to_str   => str
    #  
    # Returns the receiver.
    def to_s(*several_variants)
        #This is a stub, used for indexing
    end
    # str.to_s     => str
    # str.to_str   => str
    #  
    # Returns the receiver.
    def to_str()
        #This is a stub, used for indexing
    end
    # str.inspect   => string
    #  
    # Returns a printable version of _str_, with special characters
    # escaped.
    # 
    #    str = "hello"
    #    str[3] = 8
    #    str.inspect       #=> "hel\010o"
    def inspect()
        #This is a stub, used for indexing
    end
    # str.dump   => new_str
    #  
    # Produces a version of <i>str</i> with all nonprinting characters replaced by
    # <code>\nnn</code> notation and all special characters escaped.
    def dump()
        #This is a stub, used for indexing
    end
    # str.upcase   => new_str
    #  
    # Returns a copy of <i>str</i> with all lowercase letters replaced with their
    # uppercase counterparts. The operation is locale insensitive---only
    # characters ``a'' to ``z'' are affected.
    # 
    #    "hEllO".upcase   #=> "HELLO"
    def upcase()
        #This is a stub, used for indexing
    end
    # str.downcase   => new_str
    #  
    # Returns a copy of <i>str</i> with all uppercase letters replaced with their
    # lowercase counterparts. The operation is locale insensitive---only
    # characters ``A'' to ``Z'' are affected.
    # 
    #    "hEllO".downcase   #=> "hello"
    def downcase()
        #This is a stub, used for indexing
    end
    # str.capitalize   => new_str
    #  
    # Returns a copy of <i>str</i> with the first character converted to uppercase
    # and the remainder to lowercase.
    # 
    #    "hello".capitalize    #=> "Hello"
    #    "HELLO".capitalize    #=> "Hello"
    #    "123ABC".capitalize   #=> "123abc"
    def capitalize()
        #This is a stub, used for indexing
    end
    # str.swapcase   => new_str
    #  
    # Returns a copy of <i>str</i> with uppercase alphabetic characters converted
    # to lowercase and lowercase characters converted to uppercase.
    # 
    #    "Hello".swapcase          #=> "hELLO"
    #    "cYbEr_PuNk11".swapcase   #=> "CyBeR_pUnK11"
    def swapcase()
        #This is a stub, used for indexing
    end
    # str.upcase!   => str or nil
    #  
    # Upcases the contents of <i>str</i>, returning <code>nil</code> if no changes
    # were made.
    def upcase!()
        #This is a stub, used for indexing
    end
    # str.downcase!   => str or nil
    #  
    # Downcases the contents of <i>str</i>, returning <code>nil</code> if no
    # changes were made.
    def downcase!()
        #This is a stub, used for indexing
    end
    # str.capitalize!   => str or nil
    #  
    # Modifies <i>str</i> by converting the first character to uppercase and the
    # remainder to lowercase. Returns <code>nil</code> if no changes are made.
    # 
    #    a = "hello"
    #    a.capitalize!   #=> "Hello"
    #    a               #=> "Hello"
    #    a.capitalize!   #=> nil
    def capitalize!()
        #This is a stub, used for indexing
    end
    # str.swapcase!   => str or nil
    #  
    # Equivalent to <code>String#swapcase</code>, but modifies the receiver in
    # place, returning <i>str</i>, or <code>nil</code> if no changes were made.
    def swapcase!()
        #This is a stub, used for indexing
    end
    # str.hex   => integer
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
    # str.oct   => integer
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
    # str.split(pattern=$;, [limit])   => anArray
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
    # <i>str</i> is split into individual characters.
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
    # str.reverse   => new_str
    #  
    # Returns a new string with the characters from <i>str</i> in reverse order.
    # 
    #    "stressed".reverse   #=> "desserts"
    def reverse()
        #This is a stub, used for indexing
    end
    # str.reverse!   => str
    #  
    # Reverses <i>str</i> in place.
    def reverse!()
        #This is a stub, used for indexing
    end
    # str << fixnum        => str
    # str.concat(fixnum)   => str
    # str << obj           => str
    # str.concat(obj)      => str
    #  
    # Append---Concatenates the given object to <i>str</i>. If the object is a
    # <code>Fixnum</code> between 0 and 255, it is converted to a character before
    # concatenation.
    # 
    #    a = "hello "
    #    a << "world"   #=> "hello world"
    #    a.concat(33)   #=> "hello world!"
    def concat(*several_variants)
        #This is a stub, used for indexing
    end
    # str << fixnum        => str
    # str.concat(fixnum)   => str
    # str << obj           => str
    # str.concat(obj)      => str
    #  
    # Append---Concatenates the given object to <i>str</i>. If the object is a
    # <code>Fixnum</code> between 0 and 255, it is converted to a character before
    # concatenation.
    # 
    #    a = "hello "
    #    a << "world"   #=> "hello world"
    #    a.concat(33)   #=> "hello world!"
    def <<(*several_variants)
        #This is a stub, used for indexing
    end
    # str.crypt(other_str)   => new_str
    #  
    # Applies a one-way cryptographic hash to <i>str</i> by invoking the standard
    # library function <code>crypt</code>. The argument is the salt string, which
    # should be two characters long, each character drawn from
    # <code>[a-zA-Z0-9./]</code>.
    def crypt(other_str)
        #This is a stub, used for indexing
    end
    # str.intern   => symbol
    # str.to_sym   => symbol
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
    # str.intern   => symbol
    # str.to_sym   => symbol
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
    # str.include? other_str   => true or false
    # str.include? fixnum      => true or false
    #  
    # Returns <code>true</code> if <i>str</i> contains the given string or
    # character.
    # 
    #    "hello".include? "lo"   #=> true
    #    "hello".include? "ol"   #=> false
    #    "hello".include? ?h     #=> true
    def include?(*several_variants)
        #This is a stub, used for indexing
    end
    # str.start_with?([prefix]+)   => true or false
    #  
    # Returns true if <i>str</i> starts with the prefix given.
    def start_with?(*args)
        #This is a stub, used for indexing
    end
    # str.end_with?([suffix]+)   => true or false
    #  
    # Returns true if <i>str</i> ends with the suffix given.
    def end_with?(*args)
        #This is a stub, used for indexing
    end
    # str.scan(pattern)                         => array
    # str.scan(pattern) {|match, ...| block }   => str
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
    # str.ljust(integer, padstr=' ')   => new_str
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
    # str.rjust(integer, padstr=' ')   => new_str
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
    # str.center(integer, padstr)   => new_str
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
    # str.sub(pattern, replacement)         => new_str
    # str.sub(pattern) {|match| block }     => new_str
    #  
    # Returns a copy of <i>str</i> with the <em>first</em> occurrence of
    # <i>pattern</i> replaced with either <i>replacement</i> or the value of the
    # block. The <i>pattern</i> will typically be a <code>Regexp</code>; if it is
    # a <code>String</code> then no regular expression metacharacters will be
    # interpreted (that is <code>/\d/</code> will match a digit, but
    # <code>'\d'</code> will match a backslash followed by a 'd').
    # 
    # If the method call specifies <i>replacement</i>, special variables such as
    # <code>$&</code> will not be useful, as substitution into the string occurs
    # before the pattern match starts. However, the sequences <code>\1</code>,
    # <code>\2</code>, etc., may be used.
    # 
    # In the block form, the current match string is passed in as a parameter, and
    # variables such as <code>$1</code>, <code>$2</code>, <code>$`</code>,
    # <code>$&</code>, and <code>$'</code> will be set appropriately. The value
    # returned by the block will be substituted for the match on each call.
    # 
    # The result inherits any tainting in the original string or any supplied
    # replacement string.
    # 
    #    "hello".sub(/[aeiou]/, '*')               #=> "h*llo"
    #    "hello".sub(/([aeiou])/, '<\1>')          #=> "h<e>llo"
    #    "hello".sub(/./) {|s| s[0].to_s + ' ' }   #=> "104 ello"
    def sub(*several_variants)
        #This is a stub, used for indexing
    end
    # str.gsub(pattern, replacement)       => new_str
    # str.gsub(pattern) {|match| block }   => new_str
    #  
    # Returns a copy of <i>str</i> with <em>all</em> occurrences of <i>pattern</i>
    # replaced with either <i>replacement</i> or the value of the block. The
    # <i>pattern</i> will typically be a <code>Regexp</code>; if it is a
    # <code>String</code> then no regular expression metacharacters will be
    # interpreted (that is <code>/\d/</code> will match a digit, but
    # <code>'\d'</code> will match a backslash followed by a 'd').
    # 
    # If a string is used as the replacement, special variables from the match
    # (such as <code>$&</code> and <code>$1</code>) cannot be substituted into it,
    # as substitution into the string occurs before the pattern match
    # starts. However, the sequences <code>\1</code>, <code>\2</code>, and so on
    # may be used to interpolate successive groups in the match.
    # 
    # In the block form, the current match string is passed in as a parameter, and
    # variables such as <code>$1</code>, <code>$2</code>, <code>$`</code>,
    # <code>$&</code>, and <code>$'</code> will be set appropriately. The value
    # returned by the block will be substituted for the match on each call.
    # 
    # The result inherits any tainting in the original string or any supplied
    # replacement string.
    # 
    #    "hello".gsub(/[aeiou]/, '*')              #=> "h*ll*"
    #    "hello".gsub(/([aeiou])/, '<\1>')         #=> "h<e>ll<o>"
    #    "hello".gsub(/./) {|s| s[0].to_s + ' '}   #=> "104 101 108 108 111 "
    def gsub(*several_variants)
        #This is a stub, used for indexing
    end
    # str.chop   => new_str
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
    # str.chomp(separator=$/)   => new_str
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
    # str.strip   => new_str
    #  
    # Returns a copy of <i>str</i> with leading and trailing whitespace removed.
    # 
    #    "    hello    ".strip   #=> "hello"
    #    "\tgoodbye\r\n".strip   #=> "goodbye"
    def strip()
        #This is a stub, used for indexing
    end
    # str.lstrip   => new_str
    #  
    # Returns a copy of <i>str</i> with leading whitespace removed. See also
    # <code>String#rstrip</code> and <code>String#strip</code>.
    # 
    #    "  hello  ".lstrip   #=> "hello  "
    #    "hello".lstrip       #=> "hello"
    def lstrip()
        #This is a stub, used for indexing
    end
    # str.rstrip   => new_str
    #  
    # Returns a copy of <i>str</i> with trailing whitespace removed. See also
    # <code>String#lstrip</code> and <code>String#strip</code>.
    # 
    #    "  hello  ".rstrip   #=> "  hello"
    #    "hello".rstrip       #=> "hello"
    def rstrip()
        #This is a stub, used for indexing
    end
    # str.sub!(pattern, replacement)          => str or nil
    # str.sub!(pattern) {|match| block }      => str or nil
    #  
    # Performs the substitutions of <code>String#sub</code> in place,
    # returning <i>str</i>, or <code>nil</code> if no substitutions were
    # performed.
    def sub!(*several_variants)
        #This is a stub, used for indexing
    end
    # str.gsub!(pattern, replacement)        => str or nil
    # str.gsub!(pattern) {|match| block }    => str or nil
    #  
    # Performs the substitutions of <code>String#gsub</code> in place, returning
    # <i>str</i>, or <code>nil</code> if no substitutions were performed.
    def gsub!(*several_variants)
        #This is a stub, used for indexing
    end
    # str.chop!   => str or nil
    #  
    # Processes <i>str</i> as for <code>String#chop</code>, returning <i>str</i>,
    # or <code>nil</code> if <i>str</i> is the empty string.  See also
    # <code>String#chomp!</code>.
    def chop!()
        #This is a stub, used for indexing
    end
    # str.chomp!(separator=$/)   => str or nil
    #  
    # Modifies <i>str</i> in place as described for <code>String#chomp</code>,
    # returning <i>str</i>, or <code>nil</code> if no modifications were made.
    def chomp!(separator=$/)
        #This is a stub, used for indexing
    end
    # str.strip!   => str or nil
    #  
    # Removes leading and trailing whitespace from <i>str</i>. Returns
    # <code>nil</code> if <i>str</i> was not altered.
    def strip!()
        #This is a stub, used for indexing
    end
    # str.lstrip!   => self or nil
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
    # str.rstrip!   => self or nil
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
    # str.tr(from_str, to_str)   => new_str
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
    # str.tr_s(from_str, to_str)   => new_str
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
    # str.delete([other_str]+)   => new_str
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
    # str.squeeze([other_str]*)    => new_str
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
    # str.count([other_str]+)   => fixnum
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
    # str.tr!(from_str, to_str)   => str or nil
    #  
    # Translates <i>str</i> in place, using the same rules as
    # <code>String#tr</code>. Returns <i>str</i>, or <code>nil</code> if no
    # changes were made.
    def tr!(from_str, to_str)
        #This is a stub, used for indexing
    end
    # str.tr_s!(from_str, to_str)   => str or nil
    #  
    # Performs <code>String#tr_s</code> processing on <i>str</i> in place,
    # returning <i>str</i>, or <code>nil</code> if no changes were made.
    def tr_s!(from_str, to_str)
        #This is a stub, used for indexing
    end
    # str.delete!([other_str]+>)   => str or nil
    #  
    # Performs a <code>delete</code> operation in place, returning <i>str</i>, or
    # <code>nil</code> if <i>str</i> was not modified.
    def delete!(*other_strings)
        #This is a stub, used for indexing
    end
    # str.squeeze!([other_str]*)   => str or nil
    #  
    # Squeezes <i>str</i> in place, returning either <i>str</i>, or
    # <code>nil</code> if no changes were made.
    def squeeze!(*other_strings)
        #This is a stub, used for indexing
    end
    # str.each(separator=$/) {|substr| block }        => str
    # str.each_line(separator=$/) {|substr| block }   => str
    #  
    # Splits <i>str</i> using the supplied parameter as the record separator
    # (<code>$/</code> by default), passing each substring in turn to the supplied
    # block. If a zero-length record separator is supplied, the string is split
    # into paragraphs delimited by multiple successive newlines.
    # 
    #    print "Example one\n"
    #    "hello\nworld".each {|s| p s}
    #    print "Example two\n"
    #    "hello\nworld".each('l') {|s| p s}
    #    print "Example three\n"
    #    "hello\n\n\nworld".each('') {|s| p s}
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
    def each_line(separator=$/)
        #This is a stub, used for indexing
    end
    # str.each(separator=$/) {|substr| block }        => str
    # str.each_line(separator=$/) {|substr| block }   => str
    #  
    # Splits <i>str</i> using the supplied parameter as the record separator
    # (<code>$/</code> by default), passing each substring in turn to the supplied
    # block. If a zero-length record separator is supplied, the string is split
    # into paragraphs delimited by multiple successive newlines.
    # 
    #    print "Example one\n"
    #    "hello\nworld".each {|s| p s}
    #    print "Example two\n"
    #    "hello\nworld".each('l') {|s| p s}
    #    print "Example three\n"
    #    "hello\n\n\nworld".each('') {|s| p s}
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
    def each(separator=$/)
        #This is a stub, used for indexing
    end
    # str.each_byte {|fixnum| block }    => str
    #  
    # Passes each byte in <i>str</i> to the given block.
    # 
    #    "hello".each_byte {|c| print c, ' ' }
    # 
    # <em>produces:</em>
    # 
    #    104 101 108 108 111
    def each_byte()
        #This is a stub, used for indexing
    end
    # str.each_char {|cstr| block }    => str
    #  
    # Passes each character in <i>str</i> to the given block.
    # 
    #    "hello".each_char {|c| print c, ' ' }
    # 
    # <em>produces:</em>
    # 
    #    h e l l o 
    def each_char()
        #This is a stub, used for indexing
    end
    # str.lines(separator=$/)   => anEnumerator
    # str.lines(separator=$/) {|substr| block }        => str
    #  
    # Returns an enumerator that gives each line in the string.  If a block is
    # given, it iterates over each line in the string.
    # 
    #    "foo\nbar\n".lines.to_a   #=> ["foo\n", "bar\n"]
    #    "foo\nb ar".lines.sort    #=> ["b ar", "foo\n"]
    def lines(*several_variants)
        #This is a stub, used for indexing
    end
    # str.bytes   => anEnumerator
    # str.bytes {|fixnum| block }    => str
    #  
    # Returns an enumerator that gives each byte in the string.  If a block is
    # given, it iterates over each byte in the string.
    # 
    #    "hello".bytes.to_a        #=> [104, 101, 108, 108, 111]
    def bytes(*several_variants)
        #This is a stub, used for indexing
    end
    # str.chars                   => anEnumerator
    # str.chars {|substr| block } => str
    #  
    # Returns an enumerator that gives each character in the string.
    # If a block is given, it iterates over each character in the string.
    # 
    #    "foo".chars.to_a   #=> ["f","o","o"]
    def chars(*several_variants)
        #This is a stub, used for indexing
    end
    # str.sum(n=16)   => integer
    #  
    # Returns a basic <em>n</em>-bit checksum of the characters in <i>str</i>,
    # where <em>n</em> is the optional <code>Fixnum</code> parameter, defaulting
    # to 16. The result is simply the sum of the binary value of each character in
    # <i>str</i> modulo <code>2n - 1</code>. This is not a particularly good
    # checksum.
    def sum(n=16)
        #This is a stub, used for indexing
    end
    # str[fixnum]                 => fixnum or nil
    # str[fixnum, fixnum]         => new_str or nil
    # str[range]                  => new_str or nil
    # str[regexp]                 => new_str or nil
    # str[regexp, fixnum]         => new_str or nil
    # str[other_str]              => new_str or nil
    # str.slice(fixnum)           => fixnum or nil
    # str.slice(fixnum, fixnum)   => new_str or nil
    # str.slice(range)            => new_str or nil
    # str.slice(regexp)           => new_str or nil
    # str.slice(regexp, fixnum)   => new_str or nil
    # str.slice(other_str)        => new_str or nil
    #  
    # Element Reference---If passed a single <code>Fixnum</code>, returns the code
    # of the character at that position. If passed two <code>Fixnum</code>
    # objects, returns a substring starting at the offset given by the first, and
    # a length given by the second. If given a range, a substring containing
    # characters at offsets given by the range is returned. In all three cases, if
    # an offset is negative, it is counted from the end of <i>str</i>. Returns
    # <code>nil</code> if the initial offset falls outside the string, the length
    # is negative, or the beginning of the range is greater than the end.
    # 
    # If a <code>Regexp</code> is supplied, the matching portion of <i>str</i> is
    # returned. If a numeric parameter follows the regular expression, that
    # component of the <code>MatchData</code> is returned instead. If a
    # <code>String</code> is given, that string is returned if it occurs in
    # <i>str</i>. In both cases, <code>nil</code> is returned if there is no
    # match.
    # 
    #    a = "hello there"
    #    a[1]                   #=> 101
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
    # str.slice!(fixnum)           => fixnum or nil
    # str.slice!(fixnum, fixnum)   => new_str or nil
    # str.slice!(range)            => new_str or nil
    # str.slice!(regexp)           => new_str or nil
    # str.slice!(other_str)        => new_str or nil
    #  
    # Deletes the specified portion from <i>str</i>, and returns the portion
    # deleted. The forms that take a <code>Fixnum</code> will raise an
    # <code>IndexError</code> if the value is out of range; the <code>Range</code>
    # form will raise a <code>RangeError</code>, and the <code>Regexp</code> and
    # <code>String</code> forms will silently ignore the assignment.
    # 
    #    string = "this is a string"
    #    string.slice!(2)        #=> 105
    #    string.slice!(3..6)     #=> " is "
    #    string.slice!(/s.*t/)   #=> "sa st"
    #    string.slice!("r")      #=> "r"
    #    string                  #=> "thing"
    def slice!(*several_variants)
        #This is a stub, used for indexing
    end
    # str.partition(sep)              => [head, sep, tail]
    #  
    # Searches the string for <i>sep</i> and returns the part before it,
    # the <i>sep</i>, and the part after it.  If <i>sep</i> is not
    # found, returns <i>str</i> and two empty strings.  If no argument
    # is given, Enumerable#partition is called.
    # 
    #    "hello".partition("l")         #=> ["he", "l", "lo"]
    #    "hello".partition("x")         #=> ["hello", "", ""]
    def partition(sep)
        #This is a stub, used for indexing
    end
    # str.rpartition(sep)            => [head, sep, tail]
    #  
    # Searches <i>sep</i> in the string from the end of the string, and
    # returns the part before it, the <i>sep</i>, and the part after it.
    # If <i>sep</i> is not found, returns two empty strings and
    # <i>str</i>.
    # 
    #    "hello".rpartition("l")         #=> ["hel", "l", "o"]
    #    "hello".rpartition("x")         #=> ["", "", "hello"]
    def rpartition(sep)
        #This is a stub, used for indexing
    end
end
