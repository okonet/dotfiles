=begin
 This is a machine generated stub using stdlib-doc for <b>class Integer</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:26 +0400 by IntelliJ Ruby Stubs Generator.
=end

# This class is the basis for the two concrete classes that hold whole
# numbers, Bignum and Fixnum.
class Integer < Numeric
    # int.integer?  ->  true
    #  
    # Since +int+ is already an Integer, this always returns +true+.
    def integer?()
        #This is a stub, used for indexing
    end
    # int.odd?  ->  true or false
    #  
    # Returns +true+ if +int+ is an odd number.
    def odd?()
        #This is a stub, used for indexing
    end
    # int.even?  ->  true or false
    #  
    # Returns +true+ if +int+ is an even number.
    def even?()
        #This is a stub, used for indexing
    end
    # int.upto(limit) {|i| block }  ->  self
    # int.upto(limit)               ->  an_enumerator
    #  
    # Iterates the given block, passing in integer values from +int+ up to and
    # including +limit+.
    # 
    # If no block is given, an Enumerator is returned instead.
    # 
    # For example:
    # 
    #    5.upto(10) { |i| print i, " " }
    #    #=> 5 6 7 8 9 10
    def upto(*several_variants)
        #This is a stub, used for indexing
    end
    # int.downto(limit) {|i| block }  ->  self
    # int.downto(limit)               ->  an_enumerator
    #  
    # Iterates the given block, passing decreasing values from +int+ down to and
    # including +limit+.
    # 
    # If no block is given, an Enumerator is returned instead.
    # 
    #    5.downto(1) { |n| print n, ".. " }
    #    print "  Liftoff!\n"
    #    #=> "5.. 4.. 3.. 2.. 1..   Liftoff!"
    def downto(*several_variants)
        #This is a stub, used for indexing
    end
    # int.times {|i| block }  ->  self
    # int.times               ->  an_enumerator
    #  
    # Iterates the given block +int+ times, passing in values from zero to
    # <code>int - 1</code>.
    # 
    # If no block is given, an Enumerator is returned instead.
    # 
    #    5.times do |i|
    #      print i, " "
    #    end
    #    #=> 0 1 2 3 4
    def times(*several_variants)
        #This is a stub, used for indexing
    end
    # int.next  ->  integer
    # int.succ  ->  integer
    #  
    # Returns the Integer equal to +int+ + 1, same as Fixnum#next.
    # 
    #    1.next      #=> 2
    #    (-1).next   #=> 0
    def succ()
        #This is a stub, used for indexing
    end
    # int.next  ->  integer
    # int.succ  ->  integer
    #  
    # Returns the Integer equal to +int+ + 1, same as Fixnum#next.
    # 
    #    1.next      #=> 2
    #    (-1).next   #=> 0
    def next()
        #This is a stub, used for indexing
    end
    # int.pred  ->  integer
    #  
    # Returns the Integer equal to +int+ - 1.
    # 
    #    1.pred      #=> 0
    #    (-1).pred   #=> -2
    def pred()
        #This is a stub, used for indexing
    end
    # int.chr([encoding])  ->  string
    #  
    # Returns a string containing the character represented by the +int+'s value
    # according to +encoding+.
    # 
    #    65.chr    #=> "A"
    #    230.chr   #=> "\346"
    #    255.chr(Encoding::UTF_8)   #=> "\303\277"
    def chr(*encoding)
        #This is a stub, used for indexing
    end
    # int.ord  ->  self
    #  
    # Returns the +int+ itself.
    # 
    #    ?a.ord    #=> 97
    # 
    # This method is intended for compatibility to character constant in Ruby
    # 1.9.
    # 
    # For example, ?a.ord returns 97 both in 1.8 and 1.9.
    def ord()
        #This is a stub, used for indexing
    end
    # int.to_i      ->  integer
    #  
    # As +int+ is already an Integer, all these methods simply return the receiver.
    # 
    # Synonyms are #to_int, #floor, #ceil, #truncate.
    def to_i()
        #This is a stub, used for indexing
    end
    # int.to_i      ->  integer
    #  
    # As +int+ is already an Integer, all these methods simply return the receiver.
    # 
    # Synonyms are #to_int, #floor, #ceil, #truncate.
    def to_int()
        #This is a stub, used for indexing
    end
    # int.to_i      ->  integer
    #  
    # As +int+ is already an Integer, all these methods simply return the receiver.
    # 
    # Synonyms are #to_int, #floor, #ceil, #truncate.
    def floor()
        #This is a stub, used for indexing
    end
    # int.to_i      ->  integer
    #  
    # As +int+ is already an Integer, all these methods simply return the receiver.
    # 
    # Synonyms are #to_int, #floor, #ceil, #truncate.
    def ceil()
        #This is a stub, used for indexing
    end
    # int.to_i      ->  integer
    #  
    # As +int+ is already an Integer, all these methods simply return the receiver.
    # 
    # Synonyms are #to_int, #floor, #ceil, #truncate.
    def truncate()
        #This is a stub, used for indexing
    end
    # int.round([ndigits])  ->  integer or float
    #  
    # Rounds +int+ to a given precision in decimal digits (default 0 digits).
    # 
    # Precision may be negative.  Returns a floating point number when +ndigits+
    # is positive, +self+ for zero, and round down for negative.
    # 
    #    1.round        #=> 1
    #    1.round(2)     #=> 1.0
    #    15.round(-1)   #=> 20
    def round(*ndigits)
        #This is a stub, used for indexing
    end
    # int.gcd(int2)  ->  integer
    #  
    # Returns the greatest common divisor (always positive).  0.gcd(x)
    # and x.gcd(0) return abs(x).
    # 
    #    2.gcd(2)                    #=> 2
    #    3.gcd(-7)                   #=> 1
    #    ((1<<31)-1).gcd((1<<61)-1)  #=> 1
    def gcd(int2)
        #This is a stub, used for indexing
    end
    # int.lcm(int2)  ->  integer
    #  
    # Returns the least common multiple (always positive).  0.lcm(x) and
    # x.lcm(0) return zero.
    # 
    #    2.lcm(2)                    #=> 2
    #    3.lcm(-7)                   #=> 21
    #    ((1<<31)-1).lcm((1<<61)-1)  #=> 4951760154835678088235319297
    def lcm(int2)
        #This is a stub, used for indexing
    end
    # int.gcdlcm(int2)  ->  array
    #  
    # Returns an array; [int.gcd(int2), int.lcm(int2)].
    # 
    #    2.gcdlcm(2)                    #=> [2, 2]
    #    3.gcdlcm(-7)                   #=> [1, 21]
    #    ((1<<31)-1).gcdlcm((1<<61)-1)  #=> [1, 4951760154835678088235319297]
    def gcdlcm(int2)
        #This is a stub, used for indexing
    end
    # int.numerator  ->  self
    #  
    # Returns self.
    def numerator()
        #This is a stub, used for indexing
    end
    # int.denominator  ->  1
    #  
    # Returns 1.
    def denominator()
        #This is a stub, used for indexing
    end
    # int.to_r  ->  rational
    #  
    # Returns the value as a rational.
    # 
    #    1.to_r        #=> (1/1)
    #    (1<<64).to_r  #=> (18446744073709551616/1)
    def to_r()
        #This is a stub, used for indexing
    end
    # int.rationalize([eps])  ->  rational
    #  
    # Returns the value as a rational.  The optional argument eps is
    # always ignored.
    def rationalize(*eps)
        #This is a stub, used for indexing
    end
end
