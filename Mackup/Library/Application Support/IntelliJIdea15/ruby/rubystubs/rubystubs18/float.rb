=begin
 This is a machine generated stub using stdlib-doc for <b>class Float</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

require 'rb_m_precision'
# <code>Float</code> objects represent real numbers using the native
# architecture's double-precision floating point representation.
class Float < Numeric
    include rb_mPrecision
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
    # Float.induced_from(obj)    =>  float
    #  
    # Convert <code>obj</code> to a float.
    def self.induced_from(obj)
        #This is a stub, used for indexing
    end
    # flt.to_s    => string
    #  
    # Returns a string containing a representation of self. As well as a
    # fixed or exponential form of the number, the call may return
    # ``<code>NaN</code>'', ``<code>Infinity</code>'', and
    # ``<code>-Infinity</code>''.
    def to_s()
        #This is a stub, used for indexing
    end
    # MISSING: documentation
    def coerce(p1)
        #This is a stub, used for indexing
    end
    # -float   => float
    #  
    # Returns float, negated.
    def -@ float
        #This is a stub, used for indexing
    end
    # float + other   => float
    #  
    # Returns a new float which is the sum of <code>float</code>
    # and <code>other</code>.
    def + other
        #This is a stub, used for indexing
    end
    # float + other   => float
    #  
    # Returns a new float which is the difference of <code>float</code>
    # and <code>other</code>.
    def -(p1)
        #This is a stub, used for indexing
    end
    # float * other   => float
    #  
    # Returns a new float which is the product of <code>float</code>
    # and <code>other</code>.
    def * other
        #This is a stub, used for indexing
    end
    # float / other   => float
    #  
    # Returns a new float which is the result of dividing
    # <code>float</code> by <code>other</code>.
    def / other
        #This is a stub, used for indexing
    end
    # flt % other         => float
    # flt.modulo(other)   => float
    #  
    # Return the modulo after division of <code>flt</code> by <code>other</code>.
    # 
    #    6543.21.modulo(137)      #=> 104.21
    #    6543.21.modulo(137.24)   #=> 92.9299999999996
    def % other
        #This is a stub, used for indexing
    end
    # flt % other         => float
    # flt.modulo(other)   => float
    #  
    # Return the modulo after division of <code>flt</code> by <code>other</code>.
    # 
    #    6543.21.modulo(137)      #=> 104.21
    #    6543.21.modulo(137.24)   #=> 92.9299999999996
    def modulo(other)
        #This is a stub, used for indexing
    end
    # flt.divmod(numeric)    => array
    #  
    # See <code>Numeric#divmod</code>.
    def divmod(numeric)
        #This is a stub, used for indexing
    end
    # 
    # flt ** other   => float
    #  
    # Raises <code>float</code> the <code>other</code> power.
    def ** other
        #This is a stub, used for indexing
    end
    # flt == obj   => true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> has the same value
    # as <i>flt</i>. Contrast this with <code>Float#eql?</code>, which
    # requires <i>obj</i> to be a <code>Float</code>.
    # 
    #    1.0 == 1   #=> true
    def == obj
        #This is a stub, used for indexing
    end
    # flt <=> numeric   => -1, 0, +1
    #  
    # Returns -1, 0, or +1 depending on whether <i>flt</i> is less than,
    # equal to, or greater than <i>numeric</i>. This is the basis for the
    # tests in <code>Comparable</code>.
    def <=> numeric
        #This is a stub, used for indexing
    end
    # flt > other    =>  true or false
    #  
    # <code>true</code> if <code>flt</code> is greater than <code>other</code>.
    def > other
        #This is a stub, used for indexing
    end
    # flt >= other    =>  true or false
    #  
    # <code>true</code> if <code>flt</code> is greater than
    # or equal to <code>other</code>.
    def >= other
        #This is a stub, used for indexing
    end
    # flt < other    =>  true or false
    #  
    # <code>true</code> if <code>flt</code> is less than <code>other</code>.
    def < other
        #This is a stub, used for indexing
    end
    # flt <= other    =>  true or false
    #  
    # <code>true</code> if <code>flt</code> is less than
    # or equal to <code>other</code>.
    def <= other
        #This is a stub, used for indexing
    end
    # flt.eql?(obj)   => true or false
    #  
    # Returns <code>true</code> only if <i>obj</i> is a
    # <code>Float</code> with the same value as <i>flt</i>. Contrast this
    # with <code>Float#==</code>, which performs type conversions.
    # 
    #    1.0.eql?(1)   #=> false
    def eql?(obj)
        #This is a stub, used for indexing
    end
    # flt.hash   => integer
    #  
    # Returns a hash code for this float.
    def hash()
        #This is a stub, used for indexing
    end
    # flt.to_f   => flt
    #  
    # As <code>flt</code> is already a float, returns <i>self</i>.
    def to_f()
        #This is a stub, used for indexing
    end
    # flt.abs    => float
    #  
    # Returns the absolute value of <i>flt</i>.
    # 
    #    (-34.56).abs   #=> 34.56
    #    -34.56.abs     #=> 34.56
    def abs()
        #This is a stub, used for indexing
    end
    # flt.zero? -> true or false
    #  
    # Returns <code>true</code> if <i>flt</i> is 0.0.
    def zero?()
        #This is a stub, used for indexing
    end
    # flt.to_i       => integer
    # flt.to_int     => integer
    # flt.truncate   => integer
    #  
    # Returns <i>flt</i> truncated to an <code>Integer</code>.
    def to_i(*several_variants)
        #This is a stub, used for indexing
    end
    # flt.to_i       => integer
    # flt.to_int     => integer
    # flt.truncate   => integer
    #  
    # Returns <i>flt</i> truncated to an <code>Integer</code>.
    def to_int()
        #This is a stub, used for indexing
    end
    # flt.floor   => integer
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
    # flt.ceil    => integer
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
    # flt.round   => integer
    #  
    # Rounds <i>flt</i> to the nearest integer. Equivalent to:
    # 
    #    def round
    #      return (self+0.5).floor if self > 0.0
    #      return (self-0.5).ceil  if self < 0.0
    #      return 0
    #    end
    # 
    #    1.5.round      #=> 2
    #    (-1.5).round   #=> -2
    def round()
        #This is a stub, used for indexing
    end
    # flt.to_i       => integer
    # flt.to_int     => integer
    # flt.truncate   => integer
    #  
    # Returns <i>flt</i> truncated to an <code>Integer</code>.
    def truncate()
        #This is a stub, used for indexing
    end
    # flt.nan? -> true or false
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
    # flt.infinite? -> nil, -1, +1
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
    # flt.finite? -> true or false
    #  
    # Returns <code>true</code> if <i>flt</i> is a valid IEEE floating
    # point number (it is not infinite, and <code>nan?</code> is
    # <code>false</code>).
    def finite?()
        #This is a stub, used for indexing
    end
end
