=begin
 This is a machine generated stub using stdlib-doc for <b>class Fixnum</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:26 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Holds Integer values that can be represented in a native machine word
# (minus 1 bit).  If any operation on a Fixnum exceeds this range, the value
# is automatically converted to a Bignum.
# 
# Fixnum objects have immediate value. This means that when they are assigned
# or passed as parameters, the actual object is passed, rather than a
# reference to that object.
# 
# Assignment does not alias Fixnum objects. There is effectively only one
# Fixnum object instance for any given integer value, so, for example, you
# cannot add a singleton method to a Fixnum. Any attempt to add a singleton
# method to a Fixnum object will raise a TypeError.
class Fixnum < Integer
    # fix.to_s(base=10)  ->  string
    #  
    # Returns a string containing the representation of +fix+ radix +base+
    # (between 2 and 36).
    # 
    #    12345.to_s       #=> "12345"
    #    12345.to_s(2)    #=> "11000000111001"
    #    12345.to_s(8)    #=> "30071"
    #    12345.to_s(10)   #=> "12345"
    #    12345.to_s(16)   #=> "3039"
    #    12345.to_s(36)   #=> "9ix"
    def to_s(base=10)
        #This is a stub, used for indexing
    end
    alias inspect to_s
    # -fix  ->  integer
    #  
    # Negates +fix+, which may return a Bignum.
    def -@ fix
        #This is a stub, used for indexing
    end
    # fix + numeric  ->  numeric_result
    #  
    # Performs addition: the class of the resulting object depends on the class of
    # +numeric+ and on the magnitude of the result. It may return a Bignum.
    def + numeric
        #This is a stub, used for indexing
    end
    # fix - numeric  ->  numeric_result
    #  
    # Performs subtraction: the class of the resulting object depends on the class
    # of +numeric+ and on the magnitude of the result. It may return a Bignum.
    def - numeric
        #This is a stub, used for indexing
    end
    # fix * numeric  ->  numeric_result
    #  
    # Performs multiplication: the class of the resulting object depends on the
    # class of +numeric+ and on the magnitude of the result. It may return a
    # Bignum.
    def * numeric
        #This is a stub, used for indexing
    end
    # fix / numeric  ->  numeric_result
    #  
    # Performs division: the class of the resulting object depends on the class of
    # +numeric+ and on the magnitude of the result. It may return a Bignum.
    def / numeric
        #This is a stub, used for indexing
    end
    # fix.div(numeric)  ->  integer
    #  
    # Performs integer division: returns integer result of dividing +fix+ by
    # +numeric+.
    def div(numeric)
        #This is a stub, used for indexing
    end
    # fix % other        ->  real
    # fix.modulo(other)  ->  real
    #  
    # Returns +fix+ modulo +other+.
    # 
    # See Numeric#divmod for more information.
    def % other
        #This is a stub, used for indexing
    end
    # fix % other        ->  real
    # fix.modulo(other)  ->  real
    #  
    # Returns +fix+ modulo +other+.
    # 
    # See Numeric#divmod for more information.
    def modulo(other)
        #This is a stub, used for indexing
    end
    # fix.divmod(numeric)  ->  array
    #  
    # See Numeric#divmod.
    def divmod(numeric)
        #This is a stub, used for indexing
    end
    # fix.fdiv(numeric)  ->  float
    #  
    # Returns the floating point result of dividing +fix+ by +numeric+.
    # 
    #    654321.fdiv(13731)      #=> 47.6528293642124
    #    654321.fdiv(13731.24)   #=> 47.6519964693647
    def fdiv(numeric)
        #This is a stub, used for indexing
    end
    # fix ** numeric  ->  numeric_result
    #  
    # Raises +fix+ to the power of +numeric+, which may be negative or
    # fractional.
    # 
    #   2 ** 3      #=> 8
    #   2 ** -1     #=> (1/2)
    #   2 ** 0.5    #=> 1.4142135623731
    def ** numeric
        #This is a stub, used for indexing
    end
    # fix.abs        ->  integer
    # fix.magnitude  ->  integer
    #  
    # Returns the absolute value of +fix+.
    # 
    #    -12345.abs   #=> 12345
    #    12345.abs    #=> 12345
    def abs()
        #This is a stub, used for indexing
    end
    # fix.abs        ->  integer
    # fix.magnitude  ->  integer
    #  
    # Returns the absolute value of +fix+.
    # 
    #    -12345.abs   #=> 12345
    #    12345.abs    #=> 12345
    def magnitude()
        #This is a stub, used for indexing
    end
    # fix == other  ->  true or false
    #  
    # Return +true+ if +fix+ equals +other+ numerically.
    # 
    #   1 == 2      #=> false
    #   1 == 1.0    #=> true
    def == other
        #This is a stub, used for indexing
    end
    # fix == other  ->  true or false
    #  
    # Return +true+ if +fix+ equals +other+ numerically.
    # 
    #   1 == 2      #=> false
    #   1 == 1.0    #=> true
    def ===(p1)
        #This is a stub, used for indexing
    end
    # fix <=> numeric  ->  -1, 0, +1 or nil
    #  
    # Comparison---Returns +-1+, +0+, ++1+ or +nil+ depending on whether +fix+ is
    # less than, equal to, or greater than +numeric+.
    # 
    # This is the basis for the tests in the Comparable module.
    # 
    # +nil+ is returned if the two values are incomparable.
    def <=> numeric
        #This is a stub, used for indexing
    end
    # fix > real  ->  true or false
    #  
    # Returns +true+ if the value of +fix+ is greater than that of +real+.
    def > real
        #This is a stub, used for indexing
    end
    # fix >= real  ->  true or false
    #  
    # Returns +true+ if the value of +fix+ is greater than or equal to that of
    # +real+.
    def >= real
        #This is a stub, used for indexing
    end
    # fix < real  ->  true or false
    #  
    # Returns +true+ if the value of +fix+ is less than that of +real+.
    def < real
        #This is a stub, used for indexing
    end
    # fix <= real  ->  true or false
    #  
    # Returns +true+ if the value of +fix+ is less than or equal to that of
    # +real+.
    def <= real
        #This is a stub, used for indexing
    end
    # ~fix  ->  integer
    #  
    # One's complement: returns a number where each bit is flipped.
    def ~ fix
        #This is a stub, used for indexing
    end
    # fix & integer  ->  integer_result
    #  
    # Bitwise AND.
    def & integer
        #This is a stub, used for indexing
    end
    # fix | integer  ->  integer_result
    #  
    # Bitwise OR.
    def | integer
        #This is a stub, used for indexing
    end
    # fix ^ integer  ->  integer_result
    #  
    # Bitwise EXCLUSIVE OR.
    def ^ integer
        #This is a stub, used for indexing
    end
    # fix[n]  ->  0, 1
    #  
    # Bit Reference---Returns the +n+th bit in the binary representation of
    # +fix+, where <code>fix[0]</code> is the least significant bit.
    # 
    # For example:
    # 
    #    a = 0b11001100101010
    #    30.downto(0) do |n| print a[n] end
    #    #=> 0000000000000000011001100101010
    def [] n
        #This is a stub, used for indexing
    end
    # fix << count  ->  integer
    #  
    # Shifts +fix+ left +count+ positions, or right if +count+ is negative.
    def << count
        #This is a stub, used for indexing
    end
    # fix >> count  ->  integer
    #  
    # Shifts +fix+ right +count+ positions, or left if +count+ is negative.
    def >> count
        #This is a stub, used for indexing
    end
    # fix.to_f  ->  float
    #  
    # Converts +fix+ to a Float.
    def to_f()
        #This is a stub, used for indexing
    end
    # fix.size  ->  fixnum
    #  
    # Returns the number of bytes in the machine representation of +fix+.
    # 
    #    1.size            #=> 4
    #    -1.size           #=> 4
    #    2147483647.size   #=> 4
    def size()
        #This is a stub, used for indexing
    end
    # int.bit_length -> integer
    #  
    # Returns the number of bits of the value of <i>int</i>.
    # 
    # "the number of bits" means that
    # the bit position of the highest bit which is different to the sign bit.
    # (The bit position of the bit 2**n is n+1.)
    # If there is no such bit (zero or minus one), zero is returned.
    # 
    # I.e. This method returns ceil(log2(int < 0 ? -int : int+1)).
    # 
    #    (-2**12-1).bit_length     #=> 13
    #    (-2**12).bit_length       #=> 12
    #    (-2**12+1).bit_length     #=> 12
    #    -0x101.bit_length         #=> 9
    #    -0x100.bit_length         #=> 8
    #    -0xff.bit_length          #=> 8
    #    -2.bit_length             #=> 1
    #    -1.bit_length             #=> 0
    #    0.bit_length              #=> 0
    #    1.bit_length              #=> 1
    #    0xff.bit_length           #=> 8
    #    0x100.bit_length          #=> 9
    #    (2**12-1).bit_length      #=> 12
    #    (2**12).bit_length        #=> 13
    #    (2**12+1).bit_length      #=> 13
    def bit_length()
        #This is a stub, used for indexing
    end
    # fix.zero?  ->  true or false
    #  
    # Returns +true+ if +fix+ is zero.
    def zero?()
        #This is a stub, used for indexing
    end
    # fix.odd?  ->  true or false
    #  
    # Returns +true+ if +fix+ is an odd number.
    def odd?()
        #This is a stub, used for indexing
    end
    # fix.even?  ->  true or false
    #  
    # Returns +true+ if +fix+ is an even number.
    def even?()
        #This is a stub, used for indexing
    end
    # int.next  ->  integer
    # int.succ  ->  integer
    #  
    # Returns the Integer equal to +int+ + 1.
    # 
    #    1.next      #=> 2
    #    (-1).next   #=> 0
    def succ()
        #This is a stub, used for indexing
    end
    def inspect(p1 = v1)
        #This is a stub, used for indexing
    end
end
