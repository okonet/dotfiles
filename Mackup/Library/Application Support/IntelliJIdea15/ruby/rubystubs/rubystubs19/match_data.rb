=begin
 This is a machine generated stub using stdlib-doc for <b>class MatchData</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>MatchData</code> is the type of the special variable <code>$~</code>,
# and is the type of the object returned by <code>Regexp#match</code> and
# <code>Regexp.last_match</code>. It encapsulates all the results of a pattern
# match, results normally accessed through the special variables
# <code>$&</code>, <code>$'</code>, <code>$`</code>, <code>$1</code>,
# <code>$2</code>, and so on.
class MatchData
    # mtch.regexp   -> regexp
    #  
    # Returns the regexp.
    # 
    #     m = /a.*b/.match("abc")
    #     m.regexp #=> /a.*b/
    def regexp()
        #This is a stub, used for indexing
    end
    # mtch.names   -> [name1, name2, ...]
    #  
    # Returns a list of names of captures as an array of strings.
    # It is same as mtch.regexp.names.
    # 
    #     /(?<foo>.)(?<bar>.)(?<baz>.)/.match("hoge").names
    #     #=> ["foo", "bar", "baz"]
    # 
    #     m = /(?<x>.)(?<y>.)?/.match("a") #=> #<MatchData "a" x:"a" y:nil>
    #     m.names                          #=> ["x", "y"]
    def names()
        #This is a stub, used for indexing
    end
    # mtch.length   -> integer
    # mtch.size     -> integer
    #  
    # Returns the number of elements in the match array.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m.length   #=> 5
    #    m.size     #=> 5
    def size()
        #This is a stub, used for indexing
    end
    # mtch.length   -> integer
    # mtch.size     -> integer
    #  
    # Returns the number of elements in the match array.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m.length   #=> 5
    #    m.size     #=> 5
    def length()
        #This is a stub, used for indexing
    end
    # mtch.offset(n)   -> array
    #  
    # Returns a two-element array containing the beginning and ending offsets of
    # the <em>n</em>th match.
    # <em>n</em> can be a string or symbol to reference a named capture.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m.offset(0)      #=> [1, 7]
    #    m.offset(4)      #=> [6, 7]
    # 
    #    m = /(?<foo>.)(.)(?<bar>.)/.match("hoge")
    #    p m.offset(:foo) #=> [0, 1]
    #    p m.offset(:bar) #=> [2, 3]
    def offset(n)
        #This is a stub, used for indexing
    end
    # mtch.begin(n)   -> integer
    #  
    # Returns the offset of the start of the <em>n</em>th element of the match
    # array in the string.
    # <em>n</em> can be a string or symbol to reference a named capture.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m.begin(0)       #=> 1
    #    m.begin(2)       #=> 2
    # 
    #    m = /(?<foo>.)(.)(?<bar>.)/.match("hoge")
    #    p m.begin(:foo)  #=> 0
    #    p m.begin(:bar)  #=> 2
    def begin(n)
        #This is a stub, used for indexing
    end
    # mtch.end(n)   -> integer
    #  
    # Returns the offset of the character immediately following the end of the
    # <em>n</em>th element of the match array in the string.
    # <em>n</em> can be a string or symbol to reference a named capture.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m.end(0)         #=> 7
    #    m.end(2)         #=> 3
    # 
    #    m = /(?<foo>.)(.)(?<bar>.)/.match("hoge")
    #    p m.end(:foo)    #=> 1
    #    p m.end(:bar)    #=> 3
    def end(n)
        #This is a stub, used for indexing
    end
    # mtch.to_a   -> anArray
    #  
    # Returns the array of matches.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m.to_a   #=> ["HX1138", "H", "X", "113", "8"]
    # 
    # Because <code>to_a</code> is called when expanding
    # <code>*</code><em>variable</em>, there's a useful assignment
    # shortcut for extracting matched fields. This is slightly slower than
    # accessing the fields directly (as an intermediate array is
    # generated).
    # 
    #    all,f1,f2,f3 = *(/(.)(.)(\d+)(\d)/.match("THX1138."))
    #    all   #=> "HX1138"
    #    f1    #=> "H"
    #    f2    #=> "X"
    #    f3    #=> "113"
    def to_a()
        #This is a stub, used for indexing
    end
    # mtch[i]               -> str or nil
    # mtch[start, length]   -> array
    # mtch[range]           -> array
    # mtch[name]            -> str or nil
    #  
    # Match Reference---<code>MatchData</code> acts as an array, and may be
    # accessed using the normal array indexing techniques.  <i>mtch</i>[0] is
    # equivalent to the special variable <code>$&</code>, and returns the entire
    # matched string.  <i>mtch</i>[1], <i>mtch</i>[2], and so on return the values
    # of the matched backreferences (portions of the pattern between parentheses).
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m          #=> #<MatchData "HX1138" 1:"H" 2:"X" 3:"113" 4:"8">
    #    m[0]       #=> "HX1138"
    #    m[1, 2]    #=> ["H", "X"]
    #    m[1..3]    #=> ["H", "X", "113"]
    #    m[-3, 2]   #=> ["X", "113"]
    # 
    #    m = /(?<foo>a+)b/.match("ccaaab")
    #    m          #=> #<MatchData "aaab" foo:"aaa">
    #    m["foo"]   #=> "aaa"
    #    m[:foo]    #=> "aaa"
    def [](*several_variants)
        #This is a stub, used for indexing
    end
    # mtch.captures   -> array
    #  
    # Returns the array of captures; equivalent to <code>mtch.to_a[1..-1]</code>.
    # 
    #    f1,f2,f3,f4 = /(.)(.)(\d+)(\d)/.match("THX1138.").captures
    #    f1    #=> "H"
    #    f2    #=> "X"
    #    f3    #=> "113"
    #    f4    #=> "8"
    def captures()
        #This is a stub, used for indexing
    end
    # 
    # mtch.values_at([index]*)   -> array
    #  
    # Uses each <i>index</i> to access the matching values, returning an array of
    # the corresponding matches.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138: The Movie")
    #    m.to_a               #=> ["HX1138", "H", "X", "113", "8"]
    #    m.values_at(0, 2, -2)   #=> ["HX1138", "X", "113"]
    def values_at(*args)
        #This is a stub, used for indexing
    end
    # mtch.pre_match   -> str
    #  
    # Returns the portion of the original string before the current match.
    # Equivalent to the special variable <code>$`</code>.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m.pre_match   #=> "T"
    def pre_match()
        #This is a stub, used for indexing
    end
    # mtch.post_match   -> str
    #  
    # Returns the portion of the original string after the current match.
    # Equivalent to the special variable <code>$'</code>.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138: The Movie")
    #    m.post_match   #=> ": The Movie"
    def post_match()
        #This is a stub, used for indexing
    end
    # mtch.to_s   -> str
    #  
    # Returns the entire matched string.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m.to_s   #=> "HX1138"
    def to_s()
        #This is a stub, used for indexing
    end
    # mtch.inspect   -> str
    #  
    # Returns a printable version of <i>mtch</i>.
    # 
    #     puts /.$/.match("foo").inspect
    #     #=> #<MatchData "o">
    # 
    #     puts /(.)(.)(.)/.match("foo").inspect
    #     #=> #<MatchData "foo" 1:"f" 2:"o" 3:"o">
    # 
    #     puts /(.)(.)?(.)/.match("fo").inspect
    #     #=> #<MatchData "fo" 1:"f" 2:nil 3:"o">
    # 
    #     puts /(?<foo>.)(?<bar>.)(?<baz>.)/.match("hoge").inspect
    #     #=> #<MatchData "hog" foo:"h" bar:"o" baz:"g">
    def inspect()
        #This is a stub, used for indexing
    end
    # mtch.string   -> str
    #  
    # Returns a frozen copy of the string passed in to <code>match</code>.
    # 
    #    m = /(.)(.)(\d+)(\d)/.match("THX1138.")
    #    m.string   #=> "THX1138."
    def string()
        #This is a stub, used for indexing
    end
    # mtch.hash   -> integer
    #  
    # Produce a hash based on the target string, regexp and matched
    # positions of this matchdata.
    def hash()
        #This is a stub, used for indexing
    end
    # mtch == mtch2   -> true or false
    #  
    # Equality---Two matchdata are equal if their target strings,
    # patterns, and matched positions are identical.
    def eql?(p1)
        #This is a stub, used for indexing
    end
    # mtch == mtch2   -> true or false
    #  
    # Equality---Two matchdata are equal if their target strings,
    # patterns, and matched positions are identical.
    def == mtch2
        #This is a stub, used for indexing
    end
end
