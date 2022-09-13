=begin
 This is a machine generated stub using stdlib-doc for <b>class Bignum</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Bignum objects hold integers outside the range of
# Fixnum. Bignum objects are created
# automatically when integer calculations would otherwise overflow a
# Fixnum. When a calculation involving
# Bignum objects returns a result that will fit in a
# Fixnum, the result is automatically converted.
# 
# For the purposes of the bitwise operations and <code>[]</code>, a
# Bignum is treated as if it were an infinite-length
# bitstring with 2's complement representation.
# 
# While Fixnum values are immediate, Bignum
# objects are not---assignment and parameter passing work with
# references to objects, not the objects themselves.
class Bignum < Integer
    # big.to_s(base=10)   ->  string
    #  
    # Returns a string containing the representation of <i>big</i> radix
    # <i>base</i> (2 through 36).
    # 
    #    12345654321.to_s         #=> "12345654321"
    #    12345654321.to_s(2)      #=> "1011011111110110111011110000110001"
    #    12345654321.to_s(8)      #=> "133766736061"
    #    12345654321.to_s(16)     #=> "2dfdbbc31"
    #    78546939656932.to_s(36)  #=> "rubyrules"
    def to_s(base=10)
        #This is a stub, used for indexing
    end
    alias inspect to_s
    # MISSING: documentation
    def coerce(p1)
        #This is a stub, used for indexing
    end
    # -big   ->  integer
    #  
    # Unary minus (returns an integer whose value is 0-big)
    def -@ big
        #This is a stub, used for indexing
    end
    # big + other  -> Numeric
    #  
    # Adds big and other, returning the result.
    def + other
        #This is a stub, used for indexing
    end
    # big - other  -> Numeric
    #  
    # Subtracts other from big, returning the result.
    def - other
        #This is a stub, used for indexing
    end
    # big * other  -> Numeric
    #  
    # Multiplies big and other, returning the result.
    def * other
        #This is a stub, used for indexing
    end
    # big / other     -> Numeric
    #  
    # Performs division: the class of the resulting object depends on
    # the class of <code>numeric</code> and on the magnitude of the
    # result.
    def / other
        #This is a stub, used for indexing
    end
    # big % other         -> Numeric
    # big.modulo(other)   -> Numeric
    #  
    # Returns big modulo other. See Numeric.divmod for more
    # information.
    def % other
        #This is a stub, used for indexing
    end
    # big.div(other)  -> integer
    #  
    # Performs integer division: returns integer value.
    def div(other)
        #This is a stub, used for indexing
    end
    # big.divmod(numeric)   -> array
    #  
    # See <code>Numeric#divmod</code>.
    def divmod(numeric)
        #This is a stub, used for indexing
    end
    # big % other         -> Numeric
    # big.modulo(other)   -> Numeric
    #  
    # Returns big modulo other. See Numeric.divmod for more
    # information.
    def modulo(other)
        #This is a stub, used for indexing
    end
    # big.remainder(numeric)    -> number
    #  
    # Returns the remainder after dividing <i>big</i> by <i>numeric</i>.
    # 
    #    -1234567890987654321.remainder(13731)      #=> -6966
    #    -1234567890987654321.remainder(13731.24)   #=> -9906.22531493148
    def remainder(numeric)
        #This is a stub, used for indexing
    end
    # big.fdiv(numeric) -> float
    #  
    # Returns the floating point result of dividing <i>big</i> by
    # <i>numeric</i>.
    # 
    #    -1234567890987654321.fdiv(13731)      #=> -89910996357705.5
    #    -1234567890987654321.fdiv(13731.24)   #=> -89909424858035.7
    def fdiv(numeric)
        #This is a stub, used for indexing
    end
    # big ** exponent   -> numeric
    #  
    # Raises _big_ to the _exponent_ power (which may be an integer, float,
    # or anything that will coerce to a number). The result may be
    # a Fixnum, Bignum, or Float
    # 
    #   123456789 ** 2      #=> 15241578750190521
    #   123456789 ** 1.2    #=> 5126464716.09932
    #   123456789 ** -2     #=> 6.5610001194102e-17
    def ** exponent
        #This is a stub, used for indexing
    end
    # big & numeric   ->  integer
    #  
    # Performs bitwise +and+ between _big_ and _numeric_.
    def & numeric
        #This is a stub, used for indexing
    end
    # big | numeric   ->  integer
    #  
    # Performs bitwise +or+ between _big_ and _numeric_.
    def | numeric
        #This is a stub, used for indexing
    end
    # big ^ numeric   ->  integer
    #  
    # Performs bitwise +exclusive or+ between _big_ and _numeric_.
    def ^ numeric
        #This is a stub, used for indexing
    end
    # ~big  ->  integer
    #  
    # Inverts the bits in big. As Bignums are conceptually infinite
    # length, the result acts as if it had an infinite number of one
    # bits to the left. In hex representations, this is displayed
    # as two periods to the left of the digits.
    # 
    #   sprintf("%X", ~0x1122334455)    #=> "..FEEDDCCBBAA"
    def ~ big
        #This is a stub, used for indexing
    end
    # big << numeric   ->  integer
    #  
    # Shifts big left _numeric_ positions (right if _numeric_ is negative).
    def << numeric
        #This is a stub, used for indexing
    end
    # big >> numeric   ->  integer
    #  
    # Shifts big right _numeric_ positions (left if _numeric_ is negative).
    def >> numeric
        #This is a stub, used for indexing
    end
    # big[n] -> 0, 1
    #  
    # Bit Reference---Returns the <em>n</em>th bit in the (assumed) binary
    # representation of <i>big</i>, where <i>big</i>[0] is the least
    # significant bit.
    # 
    #    a = 9**15
    #    50.downto(0) do |n|
    #      print a[n]
    #    end
    # 
    # <em>produces:</em>
    # 
    #    000101110110100000111000011110010100111100010111001
    def [] n
        #This is a stub, used for indexing
    end
    # big <=> numeric   -> -1, 0, +1 or nil
    #  
    # Comparison---Returns -1, 0, or +1 depending on whether +big+ is
    # less than, equal to, or greater than +numeric+. This is the
    # basis for the tests in Comparable.
    # 
    # +nil+ is returned if the two values are incomparable.
    def <=> numeric
        #This is a stub, used for indexing
    end
    # big == obj  -> true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> has the same value
    # as <i>big</i>. Contrast this with <code>Bignum#eql?</code>, which
    # requires <i>obj</i> to be a <code>Bignum</code>.
    # 
    #    68719476736 == 68719476736.0   #=> true
    def == obj
        #This is a stub, used for indexing
    end
    # big > real  ->  true or false
    #  
    # Returns <code>true</code> if the value of <code>big</code> is
    # greater than that of <code>real</code>.
    def > real
        #This is a stub, used for indexing
    end
    # big >= real  ->  true or false
    #  
    # Returns <code>true</code> if the value of <code>big</code> is
    # greater than or equal to that of <code>real</code>.
    def >= real
        #This is a stub, used for indexing
    end
    # big < real  ->  true or false
    #  
    # Returns <code>true</code> if the value of <code>big</code> is
    # less than that of <code>real</code>.
    def < real
        #This is a stub, used for indexing
    end
    # big <= real  ->  true or false
    #  
    # Returns <code>true</code> if the value of <code>big</code> is
    # less than or equal to that of <code>real</code>.
    def <= real
        #This is a stub, used for indexing
    end
    # big == obj  -> true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> has the same value
    # as <i>big</i>. Contrast this with <code>Bignum#eql?</code>, which
    # requires <i>obj</i> to be a <code>Bignum</code>.
    # 
    #    68719476736 == 68719476736.0   #=> true
    def ===(p1)
        #This is a stub, used for indexing
    end
    # big.eql?(obj)   -> true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> is a
    # <code>Bignum</code> with the same value as <i>big</i>. Contrast this
    # with <code>Bignum#==</code>, which performs type conversions.
    # 
    #    68719476736.eql?(68719476736.0)   #=> false
    def eql?(obj)
        #This is a stub, used for indexing
    end
    # big.hash   -> fixnum
    #  
    # Compute a hash based on the value of _big_.
    def hash()
        #This is a stub, used for indexing
    end
    # big.to_f -> float
    #  
    # Converts <i>big</i> to a <code>Float</code>. If <i>big</i> doesn't
    # fit in a <code>Float</code>, the result is infinity.
    def to_f()
        #This is a stub, used for indexing
    end
    # big.abs -> aBignum
    #  
    # Returns the absolute value of <i>big</i>.
    # 
    #    -1234567890987654321.abs   #=> 1234567890987654321
    def abs()
        #This is a stub, used for indexing
    end
    # big.abs -> aBignum
    #  
    # Returns the absolute value of <i>big</i>.
    # 
    #    -1234567890987654321.abs   #=> 1234567890987654321
    def magnitude()
        #This is a stub, used for indexing
    end
    # big.size -> integer
    #  
    # Returns the number of bytes in the machine representation of
    # <i>big</i>.
    # 
    #    (256**10 - 1).size   #=> 12
    #    (256**20 - 1).size   #=> 20
    #    (256**40 - 1).size   #=> 40
    def size()
        #This is a stub, used for indexing
    end
    # big.odd? -> true or false
    #  
    # Returns <code>true</code> if <i>big</i> is an odd number.
    def odd?()
        #This is a stub, used for indexing
    end
    # big.even? -> true or false
    #  
    # Returns <code>true</code> if <i>big</i> is an even number.
    def even?()
        #This is a stub, used for indexing
    end
    def inspect(p1 = v1)
        #This is a stub, used for indexing
    end
end
