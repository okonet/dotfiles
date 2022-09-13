=begin
 This is a machine generated stub using stdlib-doc for <b>class Range</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

class Range
    include Enumerable
    # Range.new(start, end, exclusive=false)    -> range
    #  
    # Constructs a range using the given <i>start</i> and <i>end</i>. If the third
    # parameter is omitted or is <code>false</code>, the <i>range</i> will include
    # the end object; otherwise, it will be excluded.
    def self.new(r_start, r_end, exclusive=false)
        #This is a stub, used for indexing
    end
    # rng == obj    -> true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> is a Range, has equivalent
    # beginning and end items (by comparing them with <code>==</code>), and has
    # the same <code>exclude_end?</code> setting as <i>rng</i>.
    # 
    #   (0..2) == (0..2)            #=> true
    #   (0..2) == Range.new(0,2)    #=> true
    #   (0..2) == (0...2)           #=> false
    def == obj
        #This is a stub, used for indexing
    end
    # rng === obj       ->  true or false
    #  
    # Returns <code>true</code> if <i>obj</i> is an element of
    # <i>rng</i>, <code>false</code> otherwise. Conveniently,
    # <code>===</code> is the comparison operator used by
    # <code>case</code> statements.
    # 
    #    case 79
    #    when 1..50   then   print "low\n"
    #    when 51..75  then   print "medium\n"
    #    when 76..100 then   print "high\n"
    #    end
    # 
    # <em>produces:</em>
    # 
    #    high
    def === obj
        #This is a stub, used for indexing
    end
    # rng.eql?(obj)    -> true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> is a Range, has equivalent
    # beginning and end items (by comparing them with #eql?), and has the same
    # #exclude_end? setting as <i>rng</i>.
    # 
    #   (0..2).eql?(0..2)            #=> true
    #   (0..2).eql?(Range.new(0,2))  #=> true
    #   (0..2).eql?(0...2)           #=> false
    def eql?(obj)
        #This is a stub, used for indexing
    end
    # rng.hash    -> fixnum
    #  
    # Generate a hash value such that two ranges with the same start and
    # end points, and the same value for the "exclude end" flag, generate
    # the same hash value.
    def hash()
        #This is a stub, used for indexing
    end
    # rng.each {| i | block } -> rng
    # rng.each                -> an_enumerator
    #  
    # Iterates over the elements <i>rng</i>, passing each in turn to the
    # block. You can only iterate if the start object of the range
    # supports the +succ+ method (which means that you can't iterate over
    # ranges of +Float+ objects).
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    (10..15).each do |n|
    #       print n, ' '
    #    end
    # 
    # <em>produces:</em>
    # 
    #    10 11 12 13 14 15
    def each(*several_variants)
        #This is a stub, used for indexing
    end
    # rng.step(n=1) {| obj | block }    -> rng
    # rng.step(n=1)                     -> an_enumerator
    #  
    # Iterates over <i>rng</i>, passing each <i>n</i>th element to the block. If
    # the range contains numbers, <i>n</i> is added for each iteration.  Otherwise
    # <code>step</code> invokes <code>succ</code> to iterate through range
    # elements. The following code uses class <code>Xs</code>, which is defined
    # in the class-level documentation.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    range = Xs.new(1)..Xs.new(10)
    #    range.step(2) {|x| puts x}
    #    range.step(3) {|x| puts x}
    # 
    # <em>produces:</em>
    # 
    #     1 x
    #     3 xxx
    #     5 xxxxx
    #     7 xxxxxxx
    #     9 xxxxxxxxx
    #     1 x
    #     4 xxxx
    #     7 xxxxxxx
    #    10 xxxxxxxxxx
    def step(*several_variants)
        #This is a stub, used for indexing
    end
    # rng.begin    -> obj
    #  
    # Returns the first object in <i>rng</i>.
    def begin()
        #This is a stub, used for indexing
    end
    # rng.end    -> obj
    #  
    # Returns the object that defines the end of <i>rng</i>.
    # 
    #    (1..10).end    #=> 10
    #    (1...10).end   #=> 10
    def end()
        #This is a stub, used for indexing
    end
    # rng.first    -> obj
    # rng.first(n) -> an_array
    #  
    # Returns the first object in <i>rng</i>, or the first +n+ elements.
    def first(*several_variants)
        #This is a stub, used for indexing
    end
    # rng.last    -> obj
    # rng.last(n) -> an_array
    #  
    # Returns the last object in <i>rng</i>, or the last +n+ elements.
    def last(*several_variants)
        #This is a stub, used for indexing
    end
    # rng.min                    -> obj
    # rng.min {| a,b | block }   -> obj
    #  
    # Returns the minimum value in <i>rng</i>. The second uses
    # the block to compare values.  Returns nil if the first
    # value in range is larger than the last value.
    def min(*several_variants)
        #This is a stub, used for indexing
    end
    # rng.max                    -> obj
    # rng.max {| a,b | block }   -> obj
    #  
    # Returns the maximum value in <i>rng</i>. The second uses
    # the block to compare values.  Returns nil if the first
    # value in range is larger than the last value.
    def max(*several_variants)
        #This is a stub, used for indexing
    end
    # rng.to_s   -> string
    #  
    # Convert this range object to a printable form.
    def to_s()
        #This is a stub, used for indexing
    end
    # rng.inspect  -> string
    #  
    # Convert this range object to a printable form (using
    # <code>inspect</code> to convert the start and end
    # objects).
    def inspect()
        #This is a stub, used for indexing
    end
    # rng.exclude_end?    -> true or false
    #  
    # Returns <code>true</code> if <i>rng</i> excludes its end value.
    def exclude_end?()
        #This is a stub, used for indexing
    end
    # rng.member?(val)  ->  true or false
    # rng.include?(val) ->  true or false
    #  
    # Returns <code>true</code> if <i>obj</i> is an element of
    # <i>rng</i>, <code>false</code> otherwise.  If beg and end are
    # numeric, comparison is done according magnitude of values.
    # 
    #    ("a".."z").include?("g")  # -> true
    #    ("a".."z").include?("A")  # -> false
    def member?(val)
        #This is a stub, used for indexing
    end
    # rng.member?(val)  ->  true or false
    # rng.include?(val) ->  true or false
    #  
    # Returns <code>true</code> if <i>obj</i> is an element of
    # <i>rng</i>, <code>false</code> otherwise.  If beg and end are
    # numeric, comparison is done according magnitude of values.
    # 
    #    ("a".."z").include?("g")  # -> true
    #    ("a".."z").include?("A")  # -> false
    def include?(val)
        #This is a stub, used for indexing
    end
    # rng.cover?(val)  ->  true or false
    #  
    # Returns <code>true</code> if <i>obj</i> is between beg and end,
    # i.e <code>beg <= obj <= end</code> (or <i>end</i> exclusive when
    # <code>exclude_end?</code> is true).
    # 
    #    ("a".."z").cover?("c")    #=> true
    #    ("a".."z").cover?("5")    #=> false
    def cover?(val)
        #This is a stub, used for indexing
    end
end
