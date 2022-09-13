=begin
 This is a machine generated stub using stdlib-doc for <b>class Range</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A <code>Range</code> represents an interval---a set of values with a
# start and an end. Ranges may be constructed using the
# <em>s</em><code>..</code><em>e</em> and
# <em>s</em><code>...</code><em>e</em> literals, or with
# <code>Range::new</code>. Ranges constructed using <code>..</code>
# run from the start to the end inclusively. Those created using
# <code>...</code> exclude the end value. When used as an iterator,
# ranges return each value in the sequence.
# 
#    (-1..-5).to_a      #=> []
#    (-5..-1).to_a      #=> [-5, -4, -3, -2, -1]
#    ('a'..'e').to_a    #=> ["a", "b", "c", "d", "e"]
#    ('a'...'e').to_a   #=> ["a", "b", "c", "d"]
# 
# Ranges can be constructed using objects of any type, as long as the
# objects can be compared using their <code><=></code> operator and
# they support the <code>succ</code> method to return the next object
# in sequence.
# 
#    class Xs                # represent a string of 'x's
#      include Comparable
#      attr :length
#      def initialize(n)
#        @length = n
#      end
#      def succ
#        Xs.new(@length + 1)
#      end
#      def <=>(other)
#        @length <=> other.length
#      end
#      def to_s
#        sprintf "%2d #{inspect}", @length
#      end
#      def inspect
#        'x' * @length
#      end
#    end
# 
#    r = Xs.new(3)..Xs.new(6)   #=> xxx..xxxxxx
#    r.to_a                     #=> [xxx, xxxx, xxxxx, xxxxxx]
#    r.member?(Xs.new(5))       #=> true
# 
# In the previous code example, class <code>Xs</code> includes the
# <code>Comparable</code> module. This is because
# <code>Enumerable#member?</code> checks for equality using
# <code>==</code>. Including <code>Comparable</code> ensures that the
# <code>==</code> method is defined in terms of the <code><=></code>
# method implemented in <code>Xs</code>.
class Range
    include Enumerable
    # Range.new(start, end, exclusive=false)    => range
    #  
    # Constructs a range using the given <i>start</i> and <i>end</i>. If the third
    # parameter is omitted or is <code>false</code>, the <i>range</i> will include
    # the end object; otherwise, it will be excluded.
    def self.new(r_start, r_end, exclusive=false)
        #This is a stub, used for indexing
    end
    # rng == obj    => true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> is a Range, has equivalent
    # beginning and end items (by comparing them with <code>==</code>), and has
    # the same #exclude_end? setting as <i>rng</t>.
    # 
    #   (0..2) == (0..2)            #=> true
    #   (0..2) == Range.new(0,2)    #=> true
    #   (0..2) == (0...2)           #=> false
    def == obj
        #This is a stub, used for indexing
    end
    # rng === obj       =>  true or false
    # rng.member?(val)  =>  true or false
    # rng.include?(val) =>  true or false
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
    # rng.eql?(obj)    => true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> is a Range, has equivalent
    # beginning and end items (by comparing them with #eql?), and has the same
    # #exclude_end? setting as <i>rng</i>.
    # 
    #   (0..2) == (0..2)            #=> true
    #   (0..2) == Range.new(0,2)    #=> true
    #   (0..2) == (0...2)           #=> false
    def eql?(obj)
        #This is a stub, used for indexing
    end
    # rng.hash    => fixnum
    #  
    # Generate a hash value such that two ranges with the same start and
    # end points, and the same value for the "exclude end" flag, generate
    # the same hash value.
    def hash()
        #This is a stub, used for indexing
    end
    # rng.each {| i | block } => rng
    #  
    # Iterates over the elements <i>rng</i>, passing each in turn to the
    # block. You can only iterate if the start object of the range
    # supports the +succ+ method (which means that you can't iterate over
    # ranges of +Float+ objects).
    # 
    #    (10..15).each do |n|
    #       print n, ' '
    #    end
    # 
    # <em>produces:</em>
    # 
    #    10 11 12 13 14 15
    def each()
        #This is a stub, used for indexing
    end
    # rng.step(n=1) {| obj | block }    => rng
    #  
    # Iterates over <i>rng</i>, passing each <i>n</i>th element to the block. If
    # the range contains numbers, <i>n</i> is added for each iteration.  Otherwise
    # <code>step</code> invokes <code>succ</code> to iterate through range
    # elements. The following code uses class <code>Xs</code>, which is defined
    # in the class-level documentation.
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
    def step(n=1)
        #This is a stub, used for indexing
    end
    # rng.first    => obj
    # rng.begin    => obj
    #  
    # Returns the first object in <i>rng</i>.
    def first()
        #This is a stub, used for indexing
    end
    # rng.end    => obj
    # rng.last   => obj
    #  
    # Returns the object that defines the end of <i>rng</i>.
    # 
    #    (1..10).end    #=> 10
    #    (1...10).end   #=> 10
    def last()
        #This is a stub, used for indexing
    end
    # rng.first    => obj
    # rng.begin    => obj
    #  
    # Returns the first object in <i>rng</i>.
    def begin()
        #This is a stub, used for indexing
    end
    # rng.end    => obj
    # rng.last   => obj
    #  
    # Returns the object that defines the end of <i>rng</i>.
    # 
    #    (1..10).end    #=> 10
    #    (1...10).end   #=> 10
    def end()
        #This is a stub, used for indexing
    end
    # rng.to_s   => string
    #  
    # Convert this range object to a printable form.
    def to_s()
        #This is a stub, used for indexing
    end
    # rng.inspect  => string
    #  
    # Convert this range object to a printable form (using 
    # <code>inspect</code> to convert the start and end
    # objects).
    def inspect()
        #This is a stub, used for indexing
    end
    # rng.exclude_end?    => true or false
    #  
    # Returns <code>true</code> if <i>rng</i> excludes its end value.
    def exclude_end?()
        #This is a stub, used for indexing
    end
    # rng === obj       =>  true or false
    # rng.member?(val)  =>  true or false
    # rng.include?(val) =>  true or false
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
    def member?(val)
        #This is a stub, used for indexing
    end
    # rng === obj       =>  true or false
    # rng.member?(val)  =>  true or false
    # rng.include?(val) =>  true or false
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
    def include?(val)
        #This is a stub, used for indexing
    end
end
