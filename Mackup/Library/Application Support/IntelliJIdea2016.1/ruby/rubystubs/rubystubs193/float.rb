=begin
 This is a machine generated stub using stdlib-doc for <b>class Float</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:43 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>Float</code> objects represent inexact real numbers using
# the native architecture's double-precision floating point
# representation.
# 
# Floating point has a different arithmetic and is a inexact number.
# So you should know its esoteric system. see following:
# 
# - http://docs.sun.com/source/806-3568/ncg_goldberg.html
# - http://wiki.github.com/rdp/ruby_tutorials_core/ruby-talk-faq#floats_imprecise
# - http://en.wikipedia.org/wiki/Floating_point#Accuracy_problems
class Float < Numeric
    ROUNDS = nil #value is unknown, used for indexing.
    RADIX = nil #value is unknown, used for indexing.
    MANT_DIG = nil #value is unknown, used for indexing.
    DIG = nil #value is unknown, used for indexing.
    MIN_EXP = nil #value is unknown, used for indexing.
    MAX_EXP = nil #value is unknown, used for indexing.
    MIN_10_EXP = nil #value is unknown, used for indexing.
    MAX_10_EXP = nil #value is unknown, used for indexing.
    MIN = nil #value is unknown, used for indexing.
    MAX = nil #value is unknown, used for indexing.
    EPSILON = nil #value is unknown, used for indexing.
    INFINITY = nil #value is unknown, used for indexing.
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
    # flt.to_s  ->  string
    #  
    # Returns a string containing a representation of self. As well as a
    # fixed or exponential form of the number, the call may return
    # ``<code>NaN</code>'', ``<code>Infinity</code>'', and
    # ``<code>-Infinity</code>''.
    def to_s()
        #This is a stub, used for indexing
    end
    # flt.coerce(numeric)  ->  array
    #  
    # Returns an array with both <i>aNumeric</i> and <i>flt</i> represented
    # as <code>Float</code> objects.
    # This is achieved by converting <i>aNumeric</i> to a <code>Float</code>.
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
    # Returns a new float which is the sum of <code>float</code>
    # and <code>other</code>.
    def + other
        #This is a stub, used for indexing
    end
    # float - other  ->  float
    #  
    # Returns a new float which is the difference of <code>float</code>
    # and <code>other</code>.
    def - other
        #This is a stub, used for indexing
    end
    # float * other  ->  float
    #  
    # Returns a new float which is the product of <code>float</code>
    # and <code>other</code>.
    def * other
        #This is a stub, used for indexing
    end
    # float / other  ->  float
    #  
    # Returns a new float which is the result of dividing
    # <code>float</code> by <code>other</code>.
    def / other
        #This is a stub, used for indexing
    end
    # float.quo(numeric)  ->  float
    #  
    # Returns float / numeric.
    def quo(numeric)
        #This is a stub, used for indexing
    end
    # float.quo(numeric)  ->  float
    #  
    # Returns float / numeric.
    def fdiv(p1)
        #This is a stub, used for indexing
    end
    # flt % other        ->  float
    # flt.modulo(other)  ->  float
    #  
    # Return the modulo after division of <code>flt</code> by <code>other</code>.
    # 
    #    6543.21.modulo(137)      #=> 104.21
    #    6543.21.modulo(137.24)   #=> 92.9299999999996
    def % other
        #This is a stub, used for indexing
    end
    # flt % other        ->  float
    # flt.modulo(other)  ->  float
    #  
    # Return the modulo after division of <code>flt</code> by <code>other</code>.
    # 
    #    6543.21.modulo(137)      #=> 104.21
    #    6543.21.modulo(137.24)   #=> 92.9299999999996
    def modulo(other)
        #This is a stub, used for indexing
    end
    # flt.divmod(numeric)  ->  array
    #  
    # See <code>Numeric#divmod</code>.
    def divmod(numeric)
        #This is a stub, used for indexing
    end
    # 
    # flt ** other  ->  float
    #  
    # Raises <code>float</code> the <code>other</code> power.
    # 
    #    2.0**3      #=> 8.0
    def ** other
        #This is a stub, used for indexing
    end
    # flt == obj  ->  true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> has the same value
    # as <i>flt</i>. Contrast this with <code>Float#eql?</code>, which
    # requires <i>obj</i> to be a <code>Float</code>.
    # 
    #    1.0 == 1   #=> true
    def == obj
        #This is a stub, used for indexing
    end
    # flt == obj  ->  true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> has the same value
    # as <i>flt</i>. Contrast this with <code>Float#eql?</code>, which
    # requires <i>obj</i> to be a <code>Float</code>.
    # 
    #    1.0 == 1   #=> true
    def ===(p1)
        #This is a stub, used for indexing
    end
    # flt <=> real  ->  -1, 0, +1 or nil
    #  
    # Returns -1, 0, +1 or nil depending on whether <i>flt</i> is less
    # than, equal to, or greater than <i>real</i>. This is the basis for
    # the tests in <code>Comparable</code>.
    def <=> real
        #This is a stub, used for indexing
    end
    # flt > real  ->  true or false
    #  
    # <code>true</code> if <code>flt</code> is greater than <code>real</code>.
    def > real
        #This is a stub, used for indexing
    end
    # flt >= real  ->  true or false
    #  
    # <code>true</code> if <code>flt</code> is greater than
    # or equal to <code>real</code>.
    def >= real
        #This is a stub, used for indexing
    end
    # flt < real  ->  true or false
    #  
    # <code>true</code> if <code>flt</code> is less than <code>real</code>.
    def < real
        #This is a stub, used for indexing
    end
    # flt <= real  ->  true or false
    #  
    # <code>true</code> if <code>flt</code> is less than
    # or equal to <code>real</code>.
    def <= real
        #This is a stub, used for indexing
    end
    # flt.eql?(obj)  ->  true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> is a
    # <code>Float</code> with the same value as <i>flt</i>. Contrast this
    # with <code>Float#==</code>, which performs type conversions.
    # 
    #    1.0.eql?(1)   #=> false
    def eql?(obj)
        #This is a stub, used for indexing
    end
    # flt.hash  ->  integer
    #  
    # Returns a hash code for this float.
    def hash()
        #This is a stub, used for indexing
    end
    # flt.to_f  ->  self
    #  
    # As <code>flt</code> is already a float, returns +self+.
    def to_f()
        #This is a stub, used for indexing
    end
    # flt.abs        ->  float
    # flt.magnitude  ->  float
    #  
    # Returns the absolute value of <i>flt</i>.
    # 
    #    (-34.56).abs   #=> 34.56
    #    -34.56.abs     #=> 34.56
    def abs()
        #This is a stub, used for indexing
    end
    # flt.abs        ->  float
    # flt.magnitude  ->  float
    #  
    # Returns the absolute value of <i>flt</i>.
    # 
    #    (-34.56).abs   #=> 34.56
    #    -34.56.abs     #=> 34.56
    def magnitude()
        #This is a stub, used for indexing
    end
    # flt.zero?  ->  true or false
    #  
    # Returns <code>true</code> if <i>flt</i> is 0.0.
    def zero?()
        #This is a stub, used for indexing
    end
    # flt.to_i      ->  integer
    # flt.to_int    ->  integer
    # flt.truncate  ->  integer
    #  
    # Returns <i>flt</i> truncated to an <code>Integer</code>.
    def to_i(*several_variants)
        #This is a stub, used for indexing
    end
    # flt.to_i      ->  integer
    # flt.to_int    ->  integer
    # flt.truncate  ->  integer
    #  
    # Returns <i>flt</i> truncated to an <code>Integer</code>.
    def to_int()
        #This is a stub, used for indexing
    end
    # flt.floor  ->  integer
    #  
    # Returns the largest integer less than or equal to <i>flt</i>.
    # 
    #    1.2.floor      #=> 1
    #    2.0.floor      #=> 2
    #    (-1.2).floor   #=> -2
    #    (-2.0).floor   #=> -2
    def floor()
        #This is a stub, used for indexing
    end
    # flt.ceil  ->  integer
    #  
    # Returns the smallest <code>Integer</code> greater than or equal to
    # <i>flt</i>.
    # 
    #    1.2.ceil      #=> 2
    #    2.0.ceil      #=> 2
    #    (-1.2).ceil   #=> -1
    #    (-2.0).ceil   #=> -2
    def ceil()
        #This is a stub, used for indexing
    end
    # flt.round([ndigits])  ->  integer or float
    #  
    # Rounds <i>flt</i> to a given precision in decimal digits (default 0 digits).
    # Precision may be negative.  Returns a floating point number when ndigits
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
    # flt.to_i      ->  integer
    # flt.to_int    ->  integer
    # flt.truncate  ->  integer
    #  
    # Returns <i>flt</i> truncated to an <code>Integer</code>.
    def truncate()
        #This is a stub, used for indexing
    end
    # flt.nan?  ->  true or false
    #  
    # Returns <code>true</code> if <i>flt</i> is an invalid IEEE floating
    # point number.
    # 
    #    a = -1.0      #=> -1.0
    #    a.nan?        #=> false
    #    a = 0.0/0.0   #=> NaN
    #    a.nan?        #=> true
    def nan?()
        #This is a stub, used for indexing
    end
    # flt.infinite?  ->  nil, -1, +1
    #  
    # Returns <code>nil</code>, -1, or +1 depending on whether <i>flt</i>
    # is finite, -infinity, or +infinity.
    # 
    #    (0.0).infinite?        #=> nil
    #    (-1.0/0.0).infinite?   #=> -1
    #    (+1.0/0.0).infinite?   #=> 1
    def infinite?()
        #This is a stub, used for indexing
    end
    # flt.finite?  ->  true or false
    #  
    # Returns <code>true</code> if <i>flt</i> is a valid IEEE floating
    # point number (it is not infinite, and <code>nan?</code> is
    # <code>false</code>).
    def finite?()
        #This is a stub, used for indexing
    end
    # flo.numerator  ->  integer
    #  
    # Returns the numerator.  The result is machine dependent.
    # 
    # For example:
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
    # For example:
    # 
    #    2.0.to_r    #=> (2/1)
    #    2.5.to_r    #=> (5/2)
    #    -0.75.to_r  #=> (-3/4)
    #    0.0.to_r    #=> (0/1)
    def to_r()
        #This is a stub, used for indexing
    end
    # flt.rationalize([eps])  ->  rational
    #  
    # Returns a simpler approximation of the value (flt-|eps| <= result
    # <= flt+|eps|).  if eps is not given, it will be chosen
    # automatically.
    # 
    # For example:
    # 
    #    0.3.rationalize          #=> (3/10)
    #    1.333.rationalize        #=> (1333/1000)
    #    1.333.rationalize(0.01)  #=> (4/3)
    def rationalize(*eps)
        #This is a stub, used for indexing
    end
end
