=begin
 This is a machine generated stub using stdlib-doc for <b>class Rational</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:29 +0300 by IntelliJ Ruby Stubs Generator.
=end

# A rational number can be represented as a paired integer number;
# a/b (b>0).  Where a is numerator and b is denominator.  Integer a
# equals rational a/1 mathematically.
# 
# In ruby, you can create rational object with Rational, to_r or
# rationalize method.  The return values will be irreducible.
# 
#    Rational(1)      #=> (1/1)
#    Rational(2, 3)   #=> (2/3)
#    Rational(4, -6)  #=> (-2/3)
#    3.to_r           #=> (3/1)
# 
# You can also create rational object from floating-point numbers or
# strings.
# 
#    Rational(0.3)    #=> (5404319552844595/18014398509481984)
#    Rational('0.3')  #=> (3/10)
#    Rational('2/3')  #=> (2/3)
# 
#    0.3.to_r         #=> (5404319552844595/18014398509481984)
#    '0.3'.to_r       #=> (3/10)
#    '2/3'.to_r       #=> (2/3)
#    0.3.rationalize  #=> (3/10)
# 
# A rational object is an exact number, which helps you to write
# program without any rounding errors.
# 
#    10.times.inject(0){|t,| t + 0.1}              #=> 0.9999999999999999
#    10.times.inject(0){|t,| t + Rational('0.1')}  #=> (1/1)
# 
# However, when an expression has inexact factor (numerical value or
# operation), will produce an inexact result.
# 
#    Rational(10) / 3   #=> (10/3)
#    Rational(10) / 3.0 #=> 3.3333333333333335
# 
#    Rational(-8) ** Rational(1, 3)
#                       #=> (1.0000000000000002+1.7320508075688772i)
class Rational < Numeric
    # rat.numerator  ->  integer
    #  
    # Returns the numerator.
    # 
    #    Rational(7).numerator        #=> 7
    #    Rational(7, 1).numerator     #=> 7
    #    Rational(9, -4).numerator    #=> -9
    #    Rational(-2, -10).numerator  #=> 1
    def numerator()
        #This is a stub, used for indexing
    end
    # rat.denominator  ->  integer
    #  
    # Returns the denominator (always positive).
    # 
    #    Rational(7).denominator             #=> 1
    #    Rational(7, 1).denominator          #=> 1
    #    Rational(9, -4).denominator         #=> 4
    #    Rational(-2, -10).denominator       #=> 5
    #    rat.numerator.gcd(rat.denominator)  #=> 1
    def denominator()
        #This is a stub, used for indexing
    end
    # rat + numeric  ->  numeric
    #  
    # Performs addition.
    # 
    #    Rational(2, 3)  + Rational(2, 3)   #=> (4/3)
    #    Rational(900)   + Rational(1)      #=> (900/1)
    #    Rational(-2, 9) + Rational(-9, 2)  #=> (-85/18)
    #    Rational(9, 8)  + 4                #=> (41/8)
    #    Rational(20, 9) + 9.8              #=> 12.022222222222222
    def + numeric
        #This is a stub, used for indexing
    end
    # rat - numeric  ->  numeric
    #  
    # Performs subtraction.
    # 
    #    Rational(2, 3)  - Rational(2, 3)   #=> (0/1)
    #    Rational(900)   - Rational(1)      #=> (899/1)
    #    Rational(-2, 9) - Rational(-9, 2)  #=> (77/18)
    #    Rational(9, 8)  - 4                #=> (23/8)
    #    Rational(20, 9) - 9.8              #=> -7.577777777777778
    def - numeric
        #This is a stub, used for indexing
    end
    # rat * numeric  ->  numeric
    #  
    # Performs multiplication.
    # 
    #    Rational(2, 3)  * Rational(2, 3)   #=> (4/9)
    #    Rational(900)   * Rational(1)      #=> (900/1)
    #    Rational(-2, 9) * Rational(-9, 2)  #=> (1/1)
    #    Rational(9, 8)  * 4                #=> (9/2)
    #    Rational(20, 9) * 9.8              #=> 21.77777777777778
    def * numeric
        #This is a stub, used for indexing
    end
    # rat / numeric     ->  numeric
    # rat.quo(numeric)  ->  numeric
    #  
    # Performs division.
    # 
    #    Rational(2, 3)  / Rational(2, 3)   #=> (1/1)
    #    Rational(900)   / Rational(1)      #=> (900/1)
    #    Rational(-2, 9) / Rational(-9, 2)  #=> (4/81)
    #    Rational(9, 8)  / 4                #=> (9/32)
    #    Rational(20, 9) / 9.8              #=> 0.22675736961451246
    def / numeric
        #This is a stub, used for indexing
    end
    # rat / numeric     ->  numeric
    # rat.quo(numeric)  ->  numeric
    #  
    # Performs division.
    # 
    #    Rational(2, 3)  / Rational(2, 3)   #=> (1/1)
    #    Rational(900)   / Rational(1)      #=> (900/1)
    #    Rational(-2, 9) / Rational(-9, 2)  #=> (4/81)
    #    Rational(9, 8)  / 4                #=> (9/32)
    #    Rational(20, 9) / 9.8              #=> 0.22675736961451246
    def quo(numeric)
        #This is a stub, used for indexing
    end
    # rat.fdiv(numeric)  ->  float
    #  
    # Performs division and returns the value as a float.
    # 
    #    Rational(2, 3).fdiv(1)       #=> 0.6666666666666666
    #    Rational(2, 3).fdiv(0.5)     #=> 1.3333333333333333
    #    Rational(2).fdiv(3)          #=> 0.6666666666666666
    def fdiv(numeric)
        #This is a stub, used for indexing
    end
    # rat ** numeric  ->  numeric
    #  
    # Performs exponentiation.
    # 
    #    Rational(2)    ** Rational(3)    #=> (8/1)
    #    Rational(10)   ** -2             #=> (1/100)
    #    Rational(10)   ** -2.0           #=> 0.01
    #    Rational(-4)   ** Rational(1,2)  #=> (1.2246063538223773e-16+2.0i)
    #    Rational(1, 2) ** 0              #=> (1/1)
    #    Rational(1, 2) ** 0.0            #=> 1.0
    def ** numeric
        #This is a stub, used for indexing
    end
    # rational <=> numeric  ->  -1, 0, +1 or nil
    #  
    # Performs comparison and returns -1, 0, or +1.
    # 
    # +nil+ is returned if the two values are incomparable.
    # 
    #    Rational(2, 3)  <=> Rational(2, 3)  #=> 0
    #    Rational(5)     <=> 5               #=> 0
    #    Rational(2,3)   <=> Rational(1,3)   #=> 1
    #    Rational(1,3)   <=> 1               #=> -1
    #    Rational(1,3)   <=> 0.3             #=> 1
    def <=> numeric
        #This is a stub, used for indexing
    end
    # rat == object  ->  true or false
    #  
    # Returns true if rat equals object numerically.
    # 
    #    Rational(2, 3)  == Rational(2, 3)   #=> true
    #    Rational(5)     == 5                #=> true
    #    Rational(0)     == 0.0              #=> true
    #    Rational('1/3') == 0.33             #=> false
    #    Rational('1/2') == '1/2'            #=> false
    def == object
        #This is a stub, used for indexing
    end
    # rat.floor               ->  integer
    # rat.floor(precision=0)  ->  rational
    #  
    # Returns the truncated value (toward negative infinity).
    # 
    #    Rational(3).floor      #=> 3
    #    Rational(2, 3).floor   #=> 0
    #    Rational(-3, 2).floor  #=> -1
    # 
    #           decimal      -  1  2  3 . 4  5  6
    #                          ^  ^  ^  ^   ^  ^
    #          precision      -3 -2 -1  0  +1 +2
    # 
    #    '%f' % Rational('-123.456').floor(+1)  #=> "-123.500000"
    #    '%f' % Rational('-123.456').floor(-1)  #=> "-130.000000"
    def floor(*several_variants)
        #This is a stub, used for indexing
    end
    # rat.ceil               ->  integer
    # rat.ceil(precision=0)  ->  rational
    #  
    # Returns the truncated value (toward positive infinity).
    # 
    #    Rational(3).ceil      #=> 3
    #    Rational(2, 3).ceil   #=> 1
    #    Rational(-3, 2).ceil  #=> -1
    # 
    #           decimal      -  1  2  3 . 4  5  6
    #                          ^  ^  ^  ^   ^  ^
    #          precision      -3 -2 -1  0  +1 +2
    # 
    #    '%f' % Rational('-123.456').ceil(+1)  #=> "-123.400000"
    #    '%f' % Rational('-123.456').ceil(-1)  #=> "-120.000000"
    def ceil(*several_variants)
        #This is a stub, used for indexing
    end
    # rat.truncate               ->  integer
    # rat.truncate(precision=0)  ->  rational
    #  
    # Returns the truncated value (toward zero).
    # 
    #    Rational(3).truncate      #=> 3
    #    Rational(2, 3).truncate   #=> 0
    #    Rational(-3, 2).truncate  #=> -1
    # 
    #           decimal      -  1  2  3 . 4  5  6
    #                          ^  ^  ^  ^   ^  ^
    #          precision      -3 -2 -1  0  +1 +2
    # 
    #    '%f' % Rational('-123.456').truncate(+1)  #=>  "-123.400000"
    #    '%f' % Rational('-123.456').truncate(-1)  #=>  "-120.000000"
    def truncate(*several_variants)
        #This is a stub, used for indexing
    end
    # rat.round               ->  integer
    # rat.round(precision=0)  ->  rational
    #  
    # Returns the truncated value (toward the nearest integer;
    # 0.5 => 1; -0.5 => -1).
    # 
    #    Rational(3).round      #=> 3
    #    Rational(2, 3).round   #=> 1
    #    Rational(-3, 2).round  #=> -2
    # 
    #           decimal      -  1  2  3 . 4  5  6
    #                          ^  ^  ^  ^   ^  ^
    #          precision      -3 -2 -1  0  +1 +2
    # 
    #    '%f' % Rational('-123.456').round(+1)  #=> "-123.500000"
    #    '%f' % Rational('-123.456').round(-1)  #=> "-120.000000"
    def round(*several_variants)
        #This is a stub, used for indexing
    end
    # rat.to_i  ->  integer
    #  
    # Returns the truncated value as an integer.
    # 
    # Equivalent to
    #    rat.truncate.
    # 
    #    Rational(2, 3).to_i   #=> 0
    #    Rational(3).to_i      #=> 3
    #    Rational(300.6).to_i  #=> 300
    #    Rational(98,71).to_i  #=> 1
    #    Rational(-30,2).to_i  #=> -15
    def to_i()
        #This is a stub, used for indexing
    end
    # rat.to_f  ->  float
    #  
    # Return the value as a float.
    # 
    #    Rational(2).to_f      #=> 2.0
    #    Rational(9, 4).to_f   #=> 2.25
    #    Rational(-3, 4).to_f  #=> -0.75
    #    Rational(20, 3).to_f  #=> 6.666666666666667
    def to_f()
        #This is a stub, used for indexing
    end
    # rat.to_r  ->  self
    #  
    # Returns self.
    # 
    #    Rational(2).to_r      #=> (2/1)
    #    Rational(-8, 6).to_r  #=> (-4/3)
    def to_r()
        #This is a stub, used for indexing
    end
    # rat.rationalize       ->  self
    # rat.rationalize(eps)  ->  rational
    #  
    # Returns a simpler approximation of the value if the optional
    # argument eps is given (rat-|eps| <= result <= rat+|eps|), self
    # otherwise.
    # 
    #    r = Rational(5033165, 16777216)
    #    r.rationalize                    #=> (5033165/16777216)
    #    r.rationalize(Rational('0.01'))  #=> (3/10)
    #    r.rationalize(Rational('0.1'))   #=> (1/3)
    def rationalize(*several_variants)
        #This is a stub, used for indexing
    end
    # rat.to_s  ->  string
    #  
    # Returns the value as a string.
    # 
    #    Rational(2).to_s      #=> "2/1"
    #    Rational(-8, 6).to_s  #=> "-4/3"
    #    Rational('1/2').to_s  #=> "1/2"
    def to_s()
        #This is a stub, used for indexing
    end
    # rat.inspect  ->  string
    #  
    # Returns the value as a string for inspection.
    # 
    #    Rational(2).inspect      #=> "(2/1)"
    #    Rational(-8, 6).inspect  #=> "(-4/3)"
    #    Rational('1/2').inspect  #=> "(1/2)"
    def inspect()
        #This is a stub, used for indexing
    end
    class compatible
    end
end
