=begin
 This is a machine generated stub using stdlib-doc for <b>class Float</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:26 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Float objects represent inexact real numbers using the native
# architecture's double-precision floating point representation.
# 
# Floating point has a different arithmetic and is an inexact number.
# So you should know its esoteric system. see following:
# 
# - http://docs.sun.com/source/806-3568/ncg_goldberg.html
# - http://wiki.github.com/rdp/ruby_tutorials_core/ruby-talk-faq#wiki-floats_imprecise
# - http://en.wikipedia.org/wiki/Floating_point#Accuracy_problems
class Float < Numeric
    # Rounding towards negative infinity
    ROUNDS = nil #value is unknown, used for indexing.
    # The base of the floating point, or number of unique digits used to
    # represent the number.
    # 
    # Usually defaults to 2 on most systems, which would represent a base-10 decimal.
    RADIX = nil #value is unknown, used for indexing.
    # The number of base digits for the +double+ data type.
    # 
    # Usually defaults to 53.
    MANT_DIG = nil #value is unknown, used for indexing.
    # The number of decimal digits in a double-precision floating point.
    # 
    # Usually defaults to 15.
    DIG = nil #value is unknown, used for indexing.
    # The smallest posable exponent value in a double-precision floating
    # point.
    # 
    # Usually defaults to -1021.
    MIN_EXP = nil #value is unknown, used for indexing.
    # The largest possible exponent value in a double-precision floating
    # point.
    # 
    # Usually defaults to 1024.
    MAX_EXP = nil #value is unknown, used for indexing.
    # The smallest negative exponent in a double-precision floating point
    # where 10 raised to this power minus 1.
    # 
    # Usually defaults to -307.
    MIN_10_EXP = nil #value is unknown, used for indexing.
    # The largest positive exponent in a double-precision floating point where
    # 10 raised to this power minus 1.
    # 
    # Usually defaults to 308.
    MAX_10_EXP = nil #value is unknown, used for indexing.
    # The smallest positive integer in a double-precision floating point.
    # 
    # Usually defaults to 2.2250738585072014e-308.
    MIN = nil #value is unknown, used for indexing.
    # The largest possible integer in a double-precision floating point number.
    # 
    # Usually defaults to 1.7976931348623157e+308.
    MAX = nil #value is unknown, used for indexing.
    # The difference between 1 and the smallest double-precision floating
    # point number.
    # 
    # Usually defaults to 2.2204460492503131e-16.
    EPSILON = nil #value is unknown, used for indexing.
    # An expression representing positive infinity.
    INFINITY = nil #value is unknown, used for indexing.
    # An expression representing a value which is "not a number".
    NAN = nil #value is unknown, used for indexing.
    # flo.arg    ->  0 or float
    # flo.angle  ->  0 or float
    # flo.phase  ->  0 or float
    #  
    # Returns 0 if the value is positive, pi otherwise.
    def arg()
        #This is a stub, used for indexing
    end
    # flo.arg    ->  0 or float
    # flo.angle  ->  0 or float
    # flo.phase  ->  0 or float
    #  
    # Returns 0 if the value is positive, pi otherwise.
    def angle()
        #This is a stub, used for indexing
    end
    # flo.arg    ->  0 or float
    # flo.angle  ->  0 or float
    # flo.phase  ->  0 or float
    #  
    # Returns 0 if the value is positive, pi otherwise.
    def phase()
        #This is a stub, used for indexing
    end
    # float.to_s  ->  string
    #  
    # Returns a string containing a representation of self. As well as a fixed or
    # exponential form of the +float+, the call may return +NaN+, +Infinity+, and
    # +-Infinity+.
    def to_s()
        #This is a stub, used for indexing
    end
    alias inspect to_s
    # float.coerce(numeric)  ->  array
    #  
    # Returns an array with both a +numeric+ and a +float+ represented as Float
    # objects.
    # 
    # This is achieved by converting a +numeric+ to a Float.
    # 
    #    1.2.coerce(3)       #=> [3.0, 1.2]
    #    2.5.coerce(1.1)     #=> [1.1, 2.5]
    def coerce(numeric)
        #This is a stub, used for indexing
    end
    # -float  ->  float
    #  
    # Returns float, negated.
    def -@ float
        #This is a stub, used for indexing
    end
    # float + other  ->  float
    #  
    # Returns a new float which is the sum of +float+ and +other+.
    def + other
        #This is a stub, used for indexing
    end
    # float - other  ->  float
    #  
    # Returns a new float which is the difference of +float+ and +other+.
    def - other
        #This is a stub, used for indexing
    end
    # float * other  ->  float
    #  
    # Returns a new float which is the product of +float+ and +other+.
    def * other
        #This is a stub, used for indexing
    end
    # float / other  ->  float
    #  
    # Returns a new float which is the result of dividing +float+ by +other+.
    def / other
        #This is a stub, used for indexing
    end
    # float.fdiv(numeric)  ->  float
    # float.quo(numeric)  ->  float
    #  
    # Returns <code>float / numeric</code>, same as Float#/.
    def quo(numeric)
        #This is a stub, used for indexing
    end
    # float.fdiv(numeric)  ->  float
    # float.quo(numeric)  ->  float
    #  
    # Returns <code>float / numeric</code>, same as Float#/.
    def fdiv(numeric)
        #This is a stub, used for indexing
    end
    # float % other        ->  float
    # float.modulo(other)  ->  float
    #  
    # Return the modulo after division of +float+ by +other+.
    # 
    #    6543.21.modulo(137)      #=> 104.21
    #    6543.21.modulo(137.24)   #=> 92.9299999999996
    def % other
        #This is a stub, used for indexing
    end
    # float % other        ->  float
    # float.modulo(other)  ->  float
    #  
    # Return the modulo after division of +float+ by +other+.
    # 
    #    6543.21.modulo(137)      #=> 104.21
    #    6543.21.modulo(137.24)   #=> 92.9299999999996
    def modulo(other)
        #This is a stub, used for indexing
    end
    # float.divmod(numeric)  ->  array
    #  
    # See Numeric#divmod.
    # 
    #     42.0.divmod 6 #=> [7, 0.0]
    #     42.0.divmod 5 #=> [8, 2.0]
    def divmod(numeric)
        #This is a stub, used for indexing
    end
    # 
    # float ** other  ->  float
    #  
    # Raises +float+ to the power of +other+.
    # 
    #    2.0**3      #=> 8.0
    def ** other
        #This is a stub, used for indexing
    end
    # float == obj  ->  true or false
    #  
    # Returns +true+ only if +obj+ has the same value as +float+. Contrast this
    # with Float#eql?, which requires obj to be a Float.
    # 
    # The result of <code>NaN == NaN</code> is undefined, so the
    # implementation-dependent value is returned.
    # 
    #    1.0 == 1   #=> true
    def == obj
        #This is a stub, used for indexing
    end
    # float == obj  ->  true or false
    #  
    # Returns +true+ only if +obj+ has the same value as +float+. Contrast this
    # with Float#eql?, which requires obj to be a Float.
    # 
    # The result of <code>NaN == NaN</code> is undefined, so the
    # implementation-dependent value is returned.
    # 
    #    1.0 == 1   #=> true
    def ===(p1)
        #This is a stub, used for indexing
    end
    # float <=> real  ->  -1, 0, +1 or nil
    #  
    # Returns -1, 0, +1 or nil depending on whether +float+ is less than, equal
    # to, or greater than +real+. This is the basis for the tests in Comparable.
    # 
    # The result of <code>NaN <=> NaN</code> is undefined, so the
    # implementation-dependent value is returned.
    # 
    # +nil+ is returned if the two values are incomparable.
    def <=> real
        #This is a stub, used for indexing
    end
    # float > real  ->  true or false
    #  
    # Returns +true+ if +float+ is greater than +real+.
    # 
    # The result of <code>NaN > NaN</code> is undefined, so the
    # implementation-dependent value is returned.
    def > real
        #This is a stub, used for indexing
    end
    # float >= real  ->  true or false
    #  
    # Returns +true+ if +float+ is greater than or equal to +real+.
    # 
    # The result of <code>NaN >= NaN</code> is undefined, so the
    # implementation-dependent value is returned.
    def >= real
        #This is a stub, used for indexing
    end
    # float < real  ->  true or false
    #  
    # Returns +true+ if +float+ is less than +real+.
    # 
    # The result of <code>NaN < NaN</code> is undefined, so the
    # implementation-dependent value is returned.
    def < real
        #This is a stub, used for indexing
    end
    # float <= real  ->  true or false
    #  
    # Returns +true+ if +float+ is less than or equal to +real+.
    # 
    # The result of <code>NaN <= NaN</code> is undefined, so the
    # implementation-dependent value is returned.
    def <= real
        #This is a stub, used for indexing
    end
    # float.eql?(obj)  ->  true or false
    #  
    # Returns +true+ only if +obj+ is a Float with the same value as +float+.
    # Contrast this with Float#==, which performs type conversions.
    # 
    # The result of <code>NaN.eql?(NaN)</code> is undefined, so the
    # implementation-dependent value is returned.
    # 
    #    1.0.eql?(1)   #=> false
    def eql?(obj)
        #This is a stub, used for indexing
    end
    # float.hash  ->  integer
    #  
    # Returns a hash code for this float.
    def hash()
        #This is a stub, used for indexing
    end
    # float.to_f  ->  self
    #  
    # Since +float+ is already a float, returns +self+.
    def to_f()
        #This is a stub, used for indexing
    end
    # float.abs        ->  float
    # float.magnitude  ->  float
    #  
    # Returns the absolute value of +float+.
    # 
    #    (-34.56).abs   #=> 34.56
    #    -34.56.abs     #=> 34.56
    def abs()
        #This is a stub, used for indexing
    end
    # float.abs        ->  float
    # float.magnitude  ->  float
    #  
    # Returns the absolute value of +float+.
    # 
    #    (-34.56).abs   #=> 34.56
    #    -34.56.abs     #=> 34.56
    def magnitude()
        #This is a stub, used for indexing
    end
    # float.zero?  ->  true or false
    #  
    # Returns +true+ if +float+ is 0.0.
    def zero?()
        #This is a stub, used for indexing
    end
    # float.to_i      ->  integer
    # float.to_int    ->  integer
    # float.truncate  ->  integer
    #  
    # Returns the +float+ truncated to an Integer.
    # 
    # Synonyms are #to_i, #to_int, and #truncate.
    def to_i(*several_variants)
        #This is a stub, used for indexing
    end
    # float.to_i      ->  integer
    # float.to_int    ->  integer
    # float.truncate  ->  integer
    #  
    # Returns the +float+ truncated to an Integer.
    # 
    # Synonyms are #to_i, #to_int, and #truncate.
    def to_int()
        #This is a stub, used for indexing
    end
    # float.floor  ->  integer
    #  
    # Returns the largest integer less than or equal to +float+.
    # 
    #    1.2.floor      #=> 1
    #    2.0.floor      #=> 2
    #    (-1.2).floor   #=> -2
    #    (-2.0).floor   #=> -2
    def floor()
        #This is a stub, used for indexing
    end
    # float.ceil  ->  integer
    #  
    # Returns the smallest Integer greater than or equal to +float+.
    # 
    #    1.2.ceil      #=> 2
    #    2.0.ceil      #=> 2
    #    (-1.2).ceil   #=> -1
    #    (-2.0).ceil   #=> -2
    def ceil()
        #This is a stub, used for indexing
    end
    # float.round([ndigits])  ->  integer or float
    #  
    # Rounds +float+ to a given precision in decimal digits (default 0 digits).
    # 
    # Precision may be negative.  Returns a floating point number when +ndigits+
    # is more than zero.
    # 
    #    1.4.round      #=> 1
    #    1.5.round      #=> 2
    #    1.6.round      #=> 2
    #    (-1.5).round   #=> -2
    # 
    #    1.234567.round(2)  #=> 1.23
    #    1.234567.round(3)  #=> 1.235
    #    1.234567.round(4)  #=> 1.2346
    #    1.234567.round(5)  #=> 1.23457
    # 
    #    34567.89.round(-5) #=> 0
    #    34567.89.round(-4) #=> 30000
    #    34567.89.round(-3) #=> 35000
    #    34567.89.round(-2) #=> 34600
    #    34567.89.round(-1) #=> 34570
    #    34567.89.round(0)  #=> 34568
    #    34567.89.round(1)  #=> 34567.9
    #    34567.89.round(2)  #=> 34567.89
    #    34567.89.round(3)  #=> 34567.89
    def round(*ndigits)
        #This is a stub, used for indexing
    end
    # float.to_i      ->  integer
    # float.to_int    ->  integer
    # float.truncate  ->  integer
    #  
    # Returns the +float+ truncated to an Integer.
    # 
    # Synonyms are #to_i, #to_int, and #truncate.
    def truncate()
        #This is a stub, used for indexing
    end
    # float.nan?  ->  true or false
    #  
    # Returns +true+ if +float+ is an invalid IEEE floating point number.
    # 
    #    a = -1.0      #=> -1.0
    #    a.nan?        #=> false
    #    a = 0.0/0.0   #=> NaN
    #    a.nan?        #=> true
    def nan?()
        #This is a stub, used for indexing
    end
    # float.infinite?  ->  nil, -1, +1
    #  
    # Return values corresponding to the value of +float+:
    # 
    # +finite+::      +nil+
    # +-Infinity+::   +-1+
    # ++Infinity+::   +1+
    # 
    # For example:
    # 
    #    (0.0).infinite?        #=> nil
    #    (-1.0/0.0).infinite?   #=> -1
    #    (+1.0/0.0).infinite?   #=> 1
    def infinite?()
        #This is a stub, used for indexing
    end
    # float.finite?  ->  true or false
    #  
    # Returns +true+ if +float+ is a valid IEEE floating point number (it is not
    # infinite, and Float#nan? is +false+).
    def finite?()
        #This is a stub, used for indexing
    end
    def inspect()
        #This is a stub, used for indexing
    end
    # flo.numerator  ->  integer
    #  
    # Returns the numerator.  The result is machine dependent.
    # 
    #    n = 0.3.numerator    #=> 5404319552844595
    #    d = 0.3.denominator  #=> 18014398509481984
    #    n.fdiv(d)            #=> 0.3
    def numerator()
        #This is a stub, used for indexing
    end
    # flo.denominator  ->  integer
    #  
    # Returns the denominator (always positive).  The result is machine
    # dependent.
    # 
    # See numerator.
    def denominator()
        #This is a stub, used for indexing
    end
    # flt.to_r  ->  rational
    #  
    # Returns the value as a rational.
    # 
    # NOTE: 0.3.to_r isn't the same as '0.3'.to_r.  The latter is
    # equivalent to '3/10'.to_r, but the former isn't so.
    # 
    #    2.0.to_r    #=> (2/1)
    #    2.5.to_r    #=> (5/2)
    #    -0.75.to_r  #=> (-3/4)
    #    0.0.to_r    #=> (0/1)
    # 
    # See rationalize.
    def to_r()
        #This is a stub, used for indexing
    end
    # flt.rationalize([eps])  ->  rational
    #  
    # Returns a simpler approximation of the value (flt-|eps| <= result
    # <= flt+|eps|).  if the optional eps is not given, it will be chosen
    # automatically.
    # 
    #    0.3.rationalize          #=> (3/10)
    #    1.333.rationalize        #=> (1333/1000)
    #    1.333.rationalize(0.01)  #=> (4/3)
    # 
    # See to_r.
    def rationalize(*eps)
        #This is a stub, used for indexing
    end
end
