=begin
 This is a machine generated stub using stdlib-doc for <b>module Math</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# The Math module contains module functions for basic
# trigonometric and transcendental functions. See class
# Float for a list of constants that
# define Ruby's floating point accuracy.
# 
# Domains and codomains are given only for real (not complex) numbers.
module Math
    # Definition of the mathematical constant PI as a Float number.   
    PI = nil #value is unknown, used for indexing.
    # Definition of the mathematical constant E (e) as a Float number.   
    E = nil #value is unknown, used for indexing.
    # Math.atan2(y, x)  -> Float
    #  
    # Computes the arc tangent given +y+ and +x+.
    # Returns a Float in the range -PI..PI.
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: [-PI, PI]
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
    #   Math.atan2(INFINITY, INFINITY)   #=> 0.7853981633974483
    #   Math.atan2(INFINITY, -INFINITY)  #=> 2.356194490192345
    #   Math.atan2(-INFINITY, INFINITY)  #=> -0.7853981633974483
    #   Math.atan2(-INFINITY, -INFINITY) #=> -2.356194490192345
    def self.atan2(y, x)
        #This is a stub, used for indexing
    end
    # Math.cos(x)    -> Float
    #  
    # Computes the cosine of +x+ (expressed in radians).
    # Returns a Float in the range -1.0..1.0.
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: [-1, 1]
    # 
    #   Math.cos(Math::PI) #=> -1.0
    def self.cos(x)
        #This is a stub, used for indexing
    end
    # Math.sin(x)    -> Float
    #  
    # Computes the sine of +x+ (expressed in radians).
    # Returns a Float in the range -1.0..1.0.
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: [-1, 1]
    # 
    #   Math.sin(Math::PI/2) #=> 1.0
    def self.sin(x)
        #This is a stub, used for indexing
    end
    # Math.tan(x)    -> Float
    #  
    # Computes the tangent of +x+ (expressed in radians).
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: (-INFINITY, INFINITY)
    # 
    #   Math.tan(0) #=> 0.0
    def self.tan(x)
        #This is a stub, used for indexing
    end
    # Math.acos(x)    -> Float
    #  
    # Computes the arc cosine of +x+. Returns 0..PI.
    # 
    # Domain: [-1, 1]
    # 
    # Codomain: [0, PI]
    # 
    #   Math.acos(0) == Math::PI/2  #=> true
    def self.acos(x)
        #This is a stub, used for indexing
    end
    # Math.asin(x)    -> Float
    #  
    # Computes the arc sine of +x+. Returns -PI/2..PI/2.
    # 
    # Domain: [-1, -1]
    # 
    # Codomain: [-PI/2, PI/2]
    # 
    #   Math.asin(1) == Math::PI/2  #=> true
    def self.asin(x)
        #This is a stub, used for indexing
    end
    # Math.atan(x)    -> Float
    #  
    # Computes the arc tangent of +x+. Returns -PI/2..PI/2.
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: (-PI/2, PI/2)
    # 
    #   Math.atan(0) #=> 0.0
    def self.atan(x)
        #This is a stub, used for indexing
    end
    # Math.cosh(x)    -> Float
    #  
    # Computes the hyperbolic cosine of +x+ (expressed in radians).
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: [1, INFINITY)
    # 
    #   Math.cosh(0) #=> 1.0
    def self.cosh(x)
        #This is a stub, used for indexing
    end
    # Math.sinh(x)    -> Float
    #  
    # Computes the hyperbolic sine of +x+ (expressed in radians).
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: (-INFINITY, INFINITY)
    # 
    #   Math.sinh(0) #=> 0.0
    def self.sinh(x)
        #This is a stub, used for indexing
    end
    # Math.tanh(x)    -> Float
    #  
    # Computes the hyperbolic tangent of +x+ (expressed in radians).
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: (-1, 1)
    # 
    #   Math.tanh(0) #=> 0.0
    def self.tanh(x)
        #This is a stub, used for indexing
    end
    # Math.acosh(x)    -> Float
    #  
    # Computes the inverse hyperbolic cosine of +x+.
    # 
    # Domain: [1, INFINITY)
    # 
    # Codomain: [0, INFINITY)
    # 
    #   Math.acosh(1) #=> 0.0
    def self.acosh(x)
        #This is a stub, used for indexing
    end
    # Math.asinh(x)    -> Float
    #  
    # Computes the inverse hyperbolic sine of +x+.
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: (-INFINITY, INFINITY)
    # 
    #   Math.asinh(1) #=> 0.881373587019543
    def self.asinh(x)
        #This is a stub, used for indexing
    end
    # Math.atanh(x)    -> Float
    #  
    # Computes the inverse hyperbolic tangent of +x+.
    # 
    # Domain: (-1, 1)
    # 
    # Codomain: (-INFINITY, INFINITY)
    # 
    #  Math.atanh(1) #=> Infinity
    def self.atanh(x)
        #This is a stub, used for indexing
    end
    # Math.exp(x)    -> Float
    #  
    # Returns e**x.
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: (0, INFINITY)
    # 
    #   Math.exp(0)       #=> 1.0
    #   Math.exp(1)       #=> 2.718281828459045
    #   Math.exp(1.5)     #=> 4.4816890703380645
    def self.exp(x)
        #This is a stub, used for indexing
    end
    # Math.log(x)          -> Float
    # Math.log(x, base)    -> Float
    #  
    # Returns the logarithm of +x+.
    # If additional second argument is given, it will be the base
    # of logarithm. Otherwise it is +e+ (for the natural logarithm).
    # 
    # Domain: (0, INFINITY)
    # 
    # Codomain: (-INFINITY, INFINITY)
    # 
    #   Math.log(0)          #=> -Infinity
    #   Math.log(1)          #=> 0.0
    #   Math.log(Math::E)    #=> 1.0
    #   Math.log(Math::E**3) #=> 3.0
    #   Math.log(12, 3)      #=> 2.2618595071429146
    def self.log(*several_variants)
        #This is a stub, used for indexing
    end
    # Math.log2(x)    -> Float
    #  
    # Returns the base 2 logarithm of +x+.
    # 
    # Domain: (0, INFINITY)
    # 
    # Codomain: (-INFINITY, INFINITY)
    # 
    #   Math.log2(1)      #=> 0.0
    #   Math.log2(2)      #=> 1.0
    #   Math.log2(32768)  #=> 15.0
    #   Math.log2(65536)  #=> 16.0
    def self.log2(x)
        #This is a stub, used for indexing
    end
    # Math.log10(x)    -> Float
    #  
    # Returns the base 10 logarithm of +x+.
    # 
    # Domain: (0, INFINITY)
    # 
    # Codomain: (-INFINITY, INFINITY)
    # 
    #   Math.log10(1)       #=> 0.0
    #   Math.log10(10)      #=> 1.0
    #   Math.log10(10**100) #=> 100.0
    def self.log10(x)
        #This is a stub, used for indexing
    end
    # Math.sqrt(x)    -> Float
    #  
    # Returns the non-negative square root of +x+.
    # 
    # Domain: [0, INFINITY)
    # 
    # Codomain:[0, INFINITY)
    # 
    #   0.upto(10) {|x|
    #     p [x, Math.sqrt(x), Math.sqrt(x)**2]
    #   }
    #   #=> [0, 0.0, 0.0]
    #   #   [1, 1.0, 1.0]
    #   #   [2, 1.4142135623731, 2.0]
    #   #   [3, 1.73205080756888, 3.0]
    #   #   [4, 2.0, 4.0]
    #   #   [5, 2.23606797749979, 5.0]
    #   #   [6, 2.44948974278318, 6.0]
    #   #   [7, 2.64575131106459, 7.0]
    #   #   [8, 2.82842712474619, 8.0]
    #   #   [9, 3.0, 9.0]
    #   #   [10, 3.16227766016838, 10.0]
    def self.sqrt(x)
        #This is a stub, used for indexing
    end
    # Math.cbrt(x)    -> Float
    #  
    # Returns the cube root of +x+.
    # 
    # Domain: [0, INFINITY)
    # 
    # Codomain:[0, INFINITY)
    # 
    #   -9.upto(9) {|x|
    #     p [x, Math.cbrt(x), Math.cbrt(x)**3]
    #   }
    #   #=> [-9, -2.0800838230519, -9.0]
    #   #   [-8, -2.0, -8.0]
    #   #   [-7, -1.91293118277239, -7.0]
    #   #   [-6, -1.81712059283214, -6.0]
    #   #   [-5, -1.7099759466767, -5.0]
    #   #   [-4, -1.5874010519682, -4.0]
    #   #   [-3, -1.44224957030741, -3.0]
    #   #   [-2, -1.25992104989487, -2.0]
    #   #   [-1, -1.0, -1.0]
    #   #   [0, 0.0, 0.0]
    #   #   [1, 1.0, 1.0]
    #   #   [2, 1.25992104989487, 2.0]
    #   #   [3, 1.44224957030741, 3.0]
    #   #   [4, 1.5874010519682, 4.0]
    #   #   [5, 1.7099759466767, 5.0]
    #   #   [6, 1.81712059283214, 6.0]
    #   #   [7, 1.91293118277239, 7.0]
    #   #   [8, 2.0, 8.0]
    #   #   [9, 2.0800838230519, 9.0]
    def self.cbrt(x)
        #This is a stub, used for indexing
    end
    # Math.frexp(x)    -> [fraction, exponent]
    #  
    # Returns a two-element array containing the normalized fraction (a Float)
    # and exponent (a Fixnum) of +x+.
    # 
    #    fraction, exponent = Math.frexp(1234)   #=> [0.6025390625, 11]
    #    fraction * 2**exponent                  #=> 1234.0
    def self.frexp(x)
        #This is a stub, used for indexing
    end
    # Math.ldexp(fraction, exponent) -> float
    #  
    # Returns the value of +fraction+*(2**+exponent+).
    # 
    #    fraction, exponent = Math.frexp(1234)
    #    Math.ldexp(fraction, exponent)   #=> 1234.0
    def self.ldexp(fraction, exponent)
        #This is a stub, used for indexing
    end
    # Math.hypot(x, y)    -> Float
    #  
    # Returns sqrt(x**2 + y**2), the hypotenuse of a right-angled triangle with
    # sides +x+ and +y+.
    # 
    #    Math.hypot(3, 4)   #=> 5.0
    def self.hypot(x, y)
        #This is a stub, used for indexing
    end
    # Math.erf(x)  -> Float
    #  
    # Calculates the error function of +x+.
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: (-1, 1)
    # 
    #   Math.erf(0) #=> 0.0
    def self.erf(x)
        #This is a stub, used for indexing
    end
    # Math.erfc(x)  -> Float
    #  
    # Calculates the complementary error function of x.
    # 
    # Domain: (-INFINITY, INFINITY)
    # 
    # Codomain: (0, 2)
    # 
    #   Math.erfc(0) #=> 1.0
    def self.erfc(x)
        #This is a stub, used for indexing
    end
    # Math.gamma(x)  -> Float
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
    # Calculates the logarithmic gamma of +x+ and the sign of gamma of +x+.
    # 
    # Math.lgamma(x) is same as
    #  [Math.log(Math.gamma(x).abs), Math.gamma(x) < 0 ? -1 : 1]
    # but avoid overflow by Math.gamma(x) for large x.
    # 
    #   Math.lgamma(0) #=> [Infinity, 1]
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
