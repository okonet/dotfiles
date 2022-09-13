=begin
 This is a machine generated stub using stdlib-doc for <b>module Math</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The <code>Math</code> module contains module functions for basic
# trigonometric and transcendental functions. See class
# <code>Float</code> for a list of constants that
# define Ruby's floating point accuracy.
module Math
    PI = nil #value is unknown, used for indexing.
    E = nil #value is unknown, used for indexing.
    # Math.atan2(y, x)  -> float
    #  
    # Computes the arc tangent given <i>y</i> and <i>x</i>. Returns
    # -PI..PI.
    # 
    #   Math.atan2(-0.0, -1.0) #=> -3.141592653589793
    #   Math.atan2(-1.0, -1.0) #=> -2.356194490192345
    #   Math.atan2(-1.0, 0.0)  #=> -1.5707963267948966
    #   Math.atan2(-1.0, 1.0)  #=> -0.7853981633974483
    #   Math.atan2(-0.0, 1.0)  #=> -0.0
    #   Math.atan2(0.0, 1.0)   #=> 0.0
    #   Math.atan2(1.0, 1.0)   #=> 0.7853981633974483
    #   Math.atan2(1.0, 0.0)   #=> 1.5707963267948966
    #   Math.atan2(1.0, -1.0)  #=> 2.356194490192345
    #   Math.atan2(0.0, -1.0)  #=> 3.141592653589793
    def self.atan2(y, x)
        #This is a stub, used for indexing
    end
    # Math.cos(x)    -> float
    #  
    # Computes the cosine of <i>x</i> (expressed in radians). Returns
    # -1..1.
    def self.cos(x)
        #This is a stub, used for indexing
    end
    # Math.sin(x)    -> float
    #  
    # Computes the sine of <i>x</i> (expressed in radians). Returns
    # -1..1.
    def self.sin(x)
        #This is a stub, used for indexing
    end
    # Math.tan(x)    -> float
    #  
    # Returns the tangent of <i>x</i> (expressed in radians).
    def self.tan(x)
        #This is a stub, used for indexing
    end
    # Math.acos(x)    -> float
    #  
    # Computes the arc cosine of <i>x</i>. Returns 0..PI.
    def self.acos(x)
        #This is a stub, used for indexing
    end
    # Math.asin(x)    -> float
    #  
    # Computes the arc sine of <i>x</i>. Returns -{PI/2} .. {PI/2}.
    def self.asin(x)
        #This is a stub, used for indexing
    end
    # Math.atan(x)    -> float
    #  
    # Computes the arc tangent of <i>x</i>. Returns -{PI/2} .. {PI/2}.
    def self.atan(x)
        #This is a stub, used for indexing
    end
    # Math.cosh(x)    -> float
    #  
    # Computes the hyperbolic cosine of <i>x</i> (expressed in radians).
    def self.cosh(x)
        #This is a stub, used for indexing
    end
    # Math.sinh(x)    -> float
    #  
    # Computes the hyperbolic sine of <i>x</i> (expressed in
    # radians).
    def self.sinh(x)
        #This is a stub, used for indexing
    end
    # Math.tanh()    -> float
    #  
    # Computes the hyperbolic tangent of <i>x</i> (expressed in
    # radians).
    def self.tanh()
        #This is a stub, used for indexing
    end
    # Math.acosh(x)    -> float
    #  
    # Computes the inverse hyperbolic cosine of <i>x</i>.
    def self.acosh(x)
        #This is a stub, used for indexing
    end
    # Math.asinh(x)    -> float
    #  
    # Computes the inverse hyperbolic sine of <i>x</i>.
    def self.asinh(x)
        #This is a stub, used for indexing
    end
    # Math.atanh(x)    -> float
    #  
    # Computes the inverse hyperbolic tangent of <i>x</i>.
    def self.atanh(x)
        #This is a stub, used for indexing
    end
    # Math.exp(x)    -> float
    #  
    # Returns e**x.
    # 
    #   Math.exp(0)       #=> 1.0
    #   Math.exp(1)       #=> 2.718281828459045
    #   Math.exp(1.5)     #=> 4.4816890703380645
    def self.exp(x)
        #This is a stub, used for indexing
    end
    # Math.log(numeric)    -> float
    # Math.log(num,base)   -> float
    #  
    # Returns the natural logarithm of <i>numeric</i>.
    # If additional second argument is given, it will be the base
    # of logarithm.
    # 
    #   Math.log(1)          #=> 0.0
    #   Math.log(Math::E)    #=> 1.0
    #   Math.log(Math::E**3) #=> 3.0
    #   Math.log(12,3)       #=> 2.2618595071429146
    def self.log(*several_variants)
        #This is a stub, used for indexing
    end
    # Math.log2(numeric)    -> float
    #  
    # Returns the base 2 logarithm of <i>numeric</i>.
    # 
    #   Math.log2(1)      #=> 0.0
    #   Math.log2(2)      #=> 1.0
    #   Math.log2(32768)  #=> 15.0
    #   Math.log2(65536)  #=> 16.0
    def self.log2(numeric)
        #This is a stub, used for indexing
    end
    # Math.log10(numeric)    -> float
    #  
    # Returns the base 10 logarithm of <i>numeric</i>.
    # 
    #   Math.log10(1)       #=> 0.0
    #   Math.log10(10)      #=> 1.0
    #   Math.log10(10**100) #=> 100.0
    def self.log10(numeric)
        #This is a stub, used for indexing
    end
    # Math.sqrt(numeric)    -> float
    #  
    # Returns the non-negative square root of <i>numeric</i>.
    # 
    #   0.upto(10) {|x|
    #     p [x, Math.sqrt(x), Math.sqrt(x)**2]
    #   }
    #   #=>
    #   [0, 0.0, 0.0]
    #   [1, 1.0, 1.0]
    #   [2, 1.4142135623731, 2.0]
    #   [3, 1.73205080756888, 3.0]
    #   [4, 2.0, 4.0]
    #   [5, 2.23606797749979, 5.0]
    #   [6, 2.44948974278318, 6.0]
    #   [7, 2.64575131106459, 7.0]
    #   [8, 2.82842712474619, 8.0]
    #   [9, 3.0, 9.0]
    #   [10, 3.16227766016838, 10.0]
    def self.sqrt(numeric)
        #This is a stub, used for indexing
    end
    # Math.cbrt(numeric)    -> float
    #  
    # Returns the cube root of <i>numeric</i>.
    # 
    #   -9.upto(9) {|x|
    #     p [x, Math.cbrt(x), Math.cbrt(x)**3]
    #   }
    #   #=>
    #   [-9, -2.0800838230519, -9.0]
    #   [-8, -2.0, -8.0]
    #   [-7, -1.91293118277239, -7.0]
    #   [-6, -1.81712059283214, -6.0]
    #   [-5, -1.7099759466767, -5.0]
    #   [-4, -1.5874010519682, -4.0]
    #   [-3, -1.44224957030741, -3.0]
    #   [-2, -1.25992104989487, -2.0]
    #   [-1, -1.0, -1.0]
    #   [0, 0.0, 0.0]
    #   [1, 1.0, 1.0]
    #   [2, 1.25992104989487, 2.0]
    #   [3, 1.44224957030741, 3.0]
    #   [4, 1.5874010519682, 4.0]
    #   [5, 1.7099759466767, 5.0]
    #   [6, 1.81712059283214, 6.0]
    #   [7, 1.91293118277239, 7.0]
    #   [8, 2.0, 8.0]
    #   [9, 2.0800838230519, 9.0]
    def self.cbrt(numeric)
        #This is a stub, used for indexing
    end
    # Math.frexp(numeric)    -> [ fraction, exponent ]
    #  
    # Returns a two-element array containing the normalized fraction (a
    # <code>Float</code>) and exponent (a <code>Fixnum</code>) of
    # <i>numeric</i>.
    # 
    #    fraction, exponent = Math.frexp(1234)   #=> [0.6025390625, 11]
    #    fraction * 2**exponent                  #=> 1234.0
    def self.frexp(numeric)
        #This is a stub, used for indexing
    end
    # Math.ldexp(flt, int) -> float
    #  
    # Returns the value of <i>flt</i>*(2**<i>int</i>).
    # 
    #    fraction, exponent = Math.frexp(1234)
    #    Math.ldexp(fraction, exponent)   #=> 1234.0
    def self.ldexp(flt, int)
        #This is a stub, used for indexing
    end
    # Math.hypot(x, y)    -> float
    #  
    # Returns sqrt(x**2 + y**2), the hypotenuse of a right-angled triangle
    # with sides <i>x</i> and <i>y</i>.
    # 
    #    Math.hypot(3, 4)   #=> 5.0
    def self.hypot(x, y)
        #This is a stub, used for indexing
    end
    # Math.erf(x)  -> float
    #  
    # Calculates the error function of x.
    def self.erf(x)
        #This is a stub, used for indexing
    end
    # Math.erfc(x)  -> float
    #  
    # Calculates the complementary error function of x.
    def self.erfc(x)
        #This is a stub, used for indexing
    end
    # Math.gamma(x)  -> float
    #  
    # Calculates the gamma function of x.
    # 
    # Note that gamma(n) is same as fact(n-1) for integer n > 0.
    # However gamma(n) returns float and can be an approximation.
    # 
    #  def fact(n) (1..n).inject(1) {|r,i| r*i } end
    #  1.upto(26) {|i| p [i, Math.gamma(i), fact(i-1)] }
    #  #=> [1, 1.0, 1]
    #  #   [2, 1.0, 1]
    #  #   [3, 2.0, 2]
    #  #   [4, 6.0, 6]
    #  #   [5, 24.0, 24]
    #  #   [6, 120.0, 120]
    #  #   [7, 720.0, 720]
    #  #   [8, 5040.0, 5040]
    #  #   [9, 40320.0, 40320]
    #  #   [10, 362880.0, 362880]
    #  #   [11, 3628800.0, 3628800]
    #  #   [12, 39916800.0, 39916800]
    #  #   [13, 479001600.0, 479001600]
    #  #   [14, 6227020800.0, 6227020800]
    #  #   [15, 87178291200.0, 87178291200]
    #  #   [16, 1307674368000.0, 1307674368000]
    #  #   [17, 20922789888000.0, 20922789888000]
    #  #   [18, 355687428096000.0, 355687428096000]
    #  #   [19, 6.402373705728e+15, 6402373705728000]
    #  #   [20, 1.21645100408832e+17, 121645100408832000]
    #  #   [21, 2.43290200817664e+18, 2432902008176640000]
    #  #   [22, 5.109094217170944e+19, 51090942171709440000]
    #  #   [23, 1.1240007277776077e+21, 1124000727777607680000]
    #  #   [24, 2.5852016738885062e+22, 25852016738884976640000]
    #  #   [25, 6.204484017332391e+23, 620448401733239439360000]
    #  #   [26, 1.5511210043330954e+25, 15511210043330985984000000]
    def self.gamma(x)
        #This is a stub, used for indexing
    end
    # Math.lgamma(x)  -> [float, -1 or 1]
    #  
    # Calculates the logarithmic gamma of x and
    # the sign of gamma of x.
    # 
    # Math.lgamma(x) is same as
    #  [Math.log(Math.gamma(x).abs), Math.gamma(x) < 0 ? -1 : 1]
    # but avoid overflow by Math.gamma(x) for large x.
    def self.lgamma(x)
        #This is a stub, used for indexing
    end
    # Raised when a mathematical function is evaluated outside of its
    # domain of definition.
    # 
    # For example, since +cos+ returns values in the range -1..1,
    # its inverse function +acos+ is only defined on that interval:
    # 
    #    Math.acos(42)
    # 
    # <em>produces:</em>
    # 
    #    Math::DomainError: Numerical argument is out of domain - "acos"
    class DomainError < StandardError
    end
end
