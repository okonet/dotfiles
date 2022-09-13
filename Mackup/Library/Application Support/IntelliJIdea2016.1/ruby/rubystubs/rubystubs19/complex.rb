=begin
 This is a machine generated stub using stdlib-doc for <b>class Complex</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A complex number can be represented as a paired real number with
# imaginary unit; a+bi.  Where a is real part, b is imaginary part
# and i is imaginary unit.  Real a equals complex a+0i
# mathematically.
# 
# In ruby, you can create complex object with Complex, Complex::rect,
# Complex::polar or to_c method.
# 
#    Complex(1)           #=> (1+0i)
#    Complex(2, 3)        #=> (2+3i)
#    Complex.polar(2, 3)  #=> (-1.9799849932008908+0.2822400161197344i)
#    3.to_c               #=> (3+0i)
# 
# You can also create complex object from floating-point numbers or
# strings.
# 
#    Complex(0.3)         #=> (0.3+0i)
#    Complex('0.3-0.5i')  #=> (0.3-0.5i)
#    Complex('2/3+3/4i')  #=> ((2/3)+(3/4)*i)
#    Complex('1@2')       #=> (-0.4161468365471424+0.9092974268256817i)
# 
#    0.3.to_c             #=> (0.3+0i)
#    '0.3-0.5i'.to_c      #=> (0.3-0.5i)
#    '2/3+3/4i'.to_c      #=> ((2/3)+(3/4)*i)
#    '1@2'.to_c           #=> (-0.4161468365471424+0.9092974268256817i)
# 
# A complex object is either an exact or an inexact number.
# 
#    Complex(1, 1) / 2    #=> ((1/2)+(1/2)*i)
#    Complex(1, 1) / 2.0  #=> (0.5+0.5i)
class Complex < Numeric
    I = nil #value is unknown, used for indexing.
    # Complex.rect(real[, imag])         ->  complex
    # Complex.rectangular(real[, imag])  ->  complex
    #  
    # Returns a complex object which denotes the given rectangular form.
    def self.rectangular(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # Complex.rect(real[, imag])         ->  complex
    # Complex.rectangular(real[, imag])  ->  complex
    #  
    # Returns a complex object which denotes the given rectangular form.
    def self.rect(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # Complex.polar(abs[, arg])  ->  complex
    #  
    # Returns a complex object which denotes the given polar form.
    def self.polar(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # cmp.real  ->  real
    #  
    # Returns the real part.
    def real()
        #This is a stub, used for indexing
    end
    # cmp.imag       ->  real
    # cmp.imaginary  ->  real
    #  
    # Returns the imaginary part.
    def imaginary()
        #This is a stub, used for indexing
    end
    # cmp.imag       ->  real
    # cmp.imaginary  ->  real
    #  
    # Returns the imaginary part.
    def imag(*several_variants)
        #This is a stub, used for indexing
    end
    # -cmp  ->  complex
    #  
    # Returns negation of the value.
    def -@ cmp
        #This is a stub, used for indexing
    end
    # cmp + numeric  ->  complex
    #  
    # Performs addition.
    def + numeric
        #This is a stub, used for indexing
    end
    # cmp - numeric  ->  complex
    #  
    # Performs subtraction.
    def - numeric
        #This is a stub, used for indexing
    end
    # cmp * numeric  ->  complex
    #  
    # Performs multiplication.
    def * numeric
        #This is a stub, used for indexing
    end
    # cmp / numeric     ->  complex
    # cmp.quo(numeric)  ->  complex
    #  
    # Performs division.
    # 
    # For example:
    # 
    #     Complex(10.0) / 3  #=> (3.3333333333333335+(0/1)*i)
    #     Complex(10)   / 3  #=> ((10/3)+(0/1)*i)  # not (3+0i)
    def / numeric
        #This is a stub, used for indexing
    end
    # cmp / numeric     ->  complex
    # cmp.quo(numeric)  ->  complex
    #  
    # Performs division.
    # 
    # For example:
    # 
    #     Complex(10.0) / 3  #=> (3.3333333333333335+(0/1)*i)
    #     Complex(10)   / 3  #=> ((10/3)+(0/1)*i)  # not (3+0i)
    def quo(numeric)
        #This is a stub, used for indexing
    end
    # cmp.fdiv(numeric)  ->  complex
    #  
    # Performs division as each part is a float, never returns a float.
    # 
    # For example:
    # 
    #     Complex(11,22).fdiv(3)  #=> (3.6666666666666665+7.333333333333333i)
    def fdiv(numeric)
        #This is a stub, used for indexing
    end
    # cmp ** numeric  ->  complex
    #  
    # Performs exponentiation.
    # 
    # For example:
    # 
    #     Complex('i') ** 2             #=> (-1+0i)
    #     Complex(-8) ** Rational(1,3)  #=> (1.0000000000000002+1.7320508075688772i)
    def ** numeric
        #This is a stub, used for indexing
    end
    # cmp == object  ->  true or false
    #  
    # Returns true if cmp equals object numerically.
    def == object
        #This is a stub, used for indexing
    end
    # cmp.abs        ->  real
    # cmp.magnitude  ->  real
    #  
    # Returns the absolute part of its polar form.
    def abs()
        #This is a stub, used for indexing
    end
    # cmp.abs        ->  real
    # cmp.magnitude  ->  real
    #  
    # Returns the absolute part of its polar form.
    def magnitude()
        #This is a stub, used for indexing
    end
    # cmp.abs2  ->  real
    #  
    # Returns square of the absolute value.
    def abs2()
        #This is a stub, used for indexing
    end
    # cmp.arg    ->  float
    # cmp.angle  ->  float
    # cmp.phase  ->  float
    #  
    # Returns the angle part of its polar form.
    def arg()
        #This is a stub, used for indexing
    end
    # cmp.arg    ->  float
    # cmp.angle  ->  float
    # cmp.phase  ->  float
    #  
    # Returns the angle part of its polar form.
    def angle()
        #This is a stub, used for indexing
    end
    # cmp.arg    ->  float
    # cmp.angle  ->  float
    # cmp.phase  ->  float
    #  
    # Returns the angle part of its polar form.
    def phase()
        #This is a stub, used for indexing
    end
    # cmp.rect         ->  array
    # cmp.rectangular  ->  array
    #  
    # Returns an array; [cmp.real, cmp.imag].
    def rectangular()
        #This is a stub, used for indexing
    end
    # cmp.rect         ->  array
    # cmp.rectangular  ->  array
    #  
    # Returns an array; [cmp.real, cmp.imag].
    def rect(*several_variants)
        #This is a stub, used for indexing
    end
    # cmp.polar  ->  array
    #  
    # Returns an array; [cmp.abs, cmp.arg].
    def polar()
        #This is a stub, used for indexing
    end
    # cmp.conj       ->  complex
    # cmp.conjugate  ->  complex
    #  
    # Returns the complex conjugate.
    def conjugate()
        #This is a stub, used for indexing
    end
    # cmp.conj       ->  complex
    # cmp.conjugate  ->  complex
    #  
    # Returns the complex conjugate.
    def conj(*several_variants)
        #This is a stub, used for indexing
    end
    # cmp.conj       ->  complex
    # cmp.conjugate  ->  complex
    #  
    # Returns the complex conjugate.
    def ~()
        #This is a stub, used for indexing
    end
    # cmp.real?  ->  false
    #  
    # Returns false.
    def real?()
        #This is a stub, used for indexing
    end
    # cmp.numerator  ->  numeric
    #  
    # Returns the numerator.
    # 
    # For example:
    # 
    #        1   2       3+4i  <-  numerator
    #        - + -i  ->  ----
    #        2   3        6    <-  denominator
    # 
    #    c = Complex('1/2+2/3i')  #=> ((1/2)+(2/3)*i)
    #    n = c.numerator          #=> (3+4i)
    #    d = c.denominator        #=> 6
    #    n / d                    #=> ((1/2)+(2/3)*i)
    #    Complex(Rational(n.real, d), Rational(n.imag, d))
    #                             #=> ((1/2)+(2/3)*i)
    # See denominator.
    def numerator()
        #This is a stub, used for indexing
    end
    # cmp.denominator  ->  integer
    #  
    # Returns the denominator (lcm of both denominator, real and imag).
    # 
    # See numerator.
    def denominator()
        #This is a stub, used for indexing
    end
    # cmp.to_s  ->  string
    #  
    # Returns the value as a string.
    def to_s()
        #This is a stub, used for indexing
    end
    # cmp.inspect  ->  string
    #  
    # Returns the value as a string for inspection.
    def inspect()
        #This is a stub, used for indexing
    end
    # cmp.to_i  ->  integer
    #  
    # Returns the value as an integer if possible.
    def to_i()
        #This is a stub, used for indexing
    end
    # cmp.to_f  ->  float
    #  
    # Returns the value as a float if possible.
    def to_f()
        #This is a stub, used for indexing
    end
    # cmp.to_r  ->  rational
    #  
    # Returns the value as a rational if possible.
    def to_r()
        #This is a stub, used for indexing
    end
    # cmp.rationalize([eps])  ->  rational
    #  
    # Returns the value as a rational if possible.  An optional argument
    # eps is always ignored.
    def rationalize(*eps)
        #This is a stub, used for indexing
    end
end
