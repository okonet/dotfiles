=begin
 This is a machine generated stub using stdlib-doc for <b>class Numeric</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

class Numeric
    include Comparable
    # Trap attempts to add methods to <code>Numeric</code> objects. Always
    # raises a <code>TypeError</code>
    def singleton_method_added(p1)
        #This is a stub, used for indexing
    end
    # num.coerce(numeric)   => array
    #  
    # If <i>aNumeric</i> is the same type as <i>num</i>, returns an array
    # containing <i>aNumeric</i> and <i>num</i>. Otherwise, returns an
    # array with both <i>aNumeric</i> and <i>num</i> represented as
    # <code>Float</code> objects. This coercion mechanism is used by
    # Ruby to handle mixed-type numeric operations: it is intended to
    # find a compatible common type between the two operands of the operator.
    # 
    #    1.coerce(2.5)   #=> [2.5, 1.0]
    #    1.2.coerce(3)   #=> [3.0, 1.2]
    #    1.coerce(2)     #=> [2, 1]
    def coerce(numeric)
        #This is a stub, used for indexing
    end
    # +num    => num
    #  
    # Unary Plus---Returns the receiver's value.
    def +@ num
        #This is a stub, used for indexing
    end
    # -num    => numeric
    #  
    # Unary Minus---Returns the receiver's value, negated.
    def -@ num
        #This is a stub, used for indexing
    end
    # num <=> other -> 0 or nil
    #  
    # Returns zero if <i>num</i> equals <i>other</i>, <code>nil</code>
    # otherwise.
    def <=> other
        #This is a stub, used for indexing
    end
    # num.eql?(numeric)    => true or false
    #  
    # Returns <code>true</code> if <i>num</i> and <i>numeric</i> are the
    # same type and have equal values.
    # 
    #    1 == 1.0          #=> true
    #    1.eql?(1.0)       #=> false
    #    (1.0).eql?(1.0)   #=> true
    def eql?(numeric)
        #This is a stub, used for indexing
    end
    # num.quo(numeric)    =>   result
    # num.fdiv(numeric)   =>   result
    #  
    # Equivalent to <code>Numeric#/</code>, but overridden in subclasses.
    def quo(numeric)
        #This is a stub, used for indexing
    end
    # num.quo(numeric)    =>   result
    # num.fdiv(numeric)   =>   result
    #  
    # Equivalent to <code>Numeric#/</code>, but overridden in subclasses.
    def fdiv(numeric)
        #This is a stub, used for indexing
    end
    # num.div(numeric)    => integer
    #  
    # Uses <code>/</code> to perform division, then converts the result to
    # an integer. <code>Numeric</code> does not define the <code>/</code>
    # operator; this is left to subclasses.
    def div(numeric)
        #This is a stub, used for indexing
    end
    # num.divmod( aNumeric ) -> anArray
    #  
    # Returns an array containing the quotient and modulus obtained by
    # dividing <i>num</i> by <i>aNumeric</i>. If <code>q, r =
    # x.divmod(y)</code>, then
    # 
    #     q = floor(float(x)/float(y))
    #     x = q*y + r
    # 
    # The quotient is rounded toward -infinity, as shown in the following table:
    # 
    #    a    |  b  |  a.divmod(b)  |   a/b   | a.modulo(b) | a.remainder(b)
    #   ------+-----+---------------+---------+-------------+---------------
    #    13   |  4  |   3,    1     |   3     |    1        |     1
    #   ------+-----+---------------+---------+-------------+---------------
    #    13   | -4  |  -4,   -3     |  -3     |   -3        |     1
    #   ------+-----+---------------+---------+-------------+---------------
    #   -13   |  4  |  -4,    3     |  -4     |    3        |    -1
    #   ------+-----+---------------+---------+-------------+---------------
    #   -13   | -4  |   3,   -1     |   3     |   -1        |    -1
    #   ------+-----+---------------+---------+-------------+---------------
    #    11.5 |  4  |   2,    3.5   |   2.875 |    3.5      |     3.5
    #   ------+-----+---------------+---------+-------------+---------------
    #    11.5 | -4  |  -3,   -0.5   |  -2.875 |   -0.5      |     3.5
    #   ------+-----+---------------+---------+-------------+---------------
    #   -11.5 |  4  |  -3,    0.5   |  -2.875 |    0.5      |    -3.5
    #   ------+-----+---------------+---------+-------------+---------------
    #   -11.5 | -4  |   2    -3.5   |   2.875 |   -3.5      |    -3.5
    # 
    # Examples
    #    11.divmod(3)         #=> [3, 2]
    #    11.divmod(-3)        #=> [-4, -1]
    #    11.divmod(3.5)       #=> [3, 0.5]
    #    (-11).divmod(3.5)    #=> [-4, 3.0]
    #    (11.5).divmod(3.5)   #=> [3, 1.0]
    def divmod( aNumeric )
        #This is a stub, used for indexing
    end
    # num.modulo(numeric)    => result
    #  
    # Equivalent to
    # <i>num</i>.<code>divmod(</code><i>aNumeric</i><code>)[1]</code>.
    def modulo(numeric)
        #This is a stub, used for indexing
    end
    # num.remainder(numeric)    => result
    #  
    # If <i>num</i> and <i>numeric</i> have different signs, returns
    # <em>mod</em>-<i>numeric</i>; otherwise, returns <em>mod</em>. In
    # both cases <em>mod</em> is the value
    # <i>num</i>.<code>modulo(</code><i>numeric</i><code>)</code>. The
    # differences between <code>remainder</code> and modulo
    # (<code>%</code>) are shown in the table under <code>Numeric#divmod</code>.
    def remainder(numeric)
        #This is a stub, used for indexing
    end
    # num.abs   => num or numeric
    #  
    # Returns the absolute value of <i>num</i>.
    # 
    #    12.abs         #=> 12
    #    (-34.56).abs   #=> 34.56
    #    -34.56.abs     #=> 34.56
    def abs()
        #This is a stub, used for indexing
    end
    # num.to_int    => integer
    #  
    # Invokes the child class's <code>to_i</code> method to convert
    # <i>num</i> to an integer.
    def to_int()
        #This is a stub, used for indexing
    end
    # num.integer? -> true or false
    #  
    # Returns <code>true</code> if <i>num</i> is an <code>Integer</code>
    # (including <code>Fixnum</code> and <code>Bignum</code>).
    def integer?()
        #This is a stub, used for indexing
    end
    # num.zero?    => true or false
    #  
    # Returns <code>true</code> if <i>num</i> has a zero value.
    def zero?()
        #This is a stub, used for indexing
    end
    # num.nonzero?    => num or nil
    #  
    # Returns <i>num</i> if <i>num</i> is not zero, <code>nil</code>
    # otherwise. This behavior is useful when chaining comparisons:
    # 
    #    a = %w( z Bb bB bb BB a aA Aa AA A )
    #    b = a.sort {|a,b| (a.downcase <=> b.downcase).nonzero? || a <=> b }
    #    b   #=> ["A", "a", "AA", "Aa", "aA", "BB", "Bb", "bB", "bb", "z"]
    def nonzero?()
        #This is a stub, used for indexing
    end
    # num.floor    => integer
    #  
    # Returns the largest integer less than or equal to <i>num</i>.
    # <code>Numeric</code> implements this by converting <i>anInteger</i>
    # to a <code>Float</code> and invoking <code>Float#floor</code>.
    # 
    #    1.floor      #=> 1
    #    (-1).floor   #=> -1
    def floor()
        #This is a stub, used for indexing
    end
    # num.ceil    => integer
    #  
    # Returns the smallest <code>Integer</code> greater than or equal to
    # <i>num</i>. Class <code>Numeric</code> achieves this by converting
    # itself to a <code>Float</code> then invoking
    # <code>Float#ceil</code>.
    # 
    #    1.ceil        #=> 1
    #    1.2.ceil      #=> 2
    #    (-1.2).ceil   #=> -1
    #    (-1.0).ceil   #=> -1
    def ceil()
        #This is a stub, used for indexing
    end
    # num.round    => integer
    #  
    # Rounds <i>num</i> to the nearest integer. <code>Numeric</code>
    # implements this by converting itself to a
    # <code>Float</code> and invoking <code>Float#round</code>.
    def round()
        #This is a stub, used for indexing
    end
    # num.truncate    => integer
    #  
    # Returns <i>num</i> truncated to an integer. <code>Numeric</code>
    # implements this by converting its value to a float and invoking
    # <code>Float#truncate</code>.
    def truncate()
        #This is a stub, used for indexing
    end
    # num.step(limit, step ) {|i| block }     => num
    #  
    # Invokes <em>block</em> with the sequence of numbers starting at
    # <i>num</i>, incremented by <i>step</i> on each call. The loop
    # finishes when the value to be passed to the block is greater than
    # <i>limit</i> (if <i>step</i> is positive) or less than
    # <i>limit</i> (if <i>step</i> is negative). If all the arguments are
    # integers, the loop operates using an integer counter. If any of the
    # arguments are floating point numbers, all are converted to floats,
    # and the loop is executed <i>floor(n + n*epsilon)+ 1</i> times,
    # where <i>n = (limit - num)/step</i>. Otherwise, the loop
    # starts at <i>num</i>, uses either the <code><</code> or
    # <code>></code> operator to compare the counter against
    # <i>limit</i>, and increments itself using the <code>+</code>
    # operator.
    # 
    #    1.step(10, 2) { |i| print i, " " }
    #    Math::E.step(Math::PI, 0.2) { |f| print f, " " }
    # 
    # <em>produces:</em>
    # 
    #    1 3 5 7 9
    #    2.71828182845905 2.91828182845905 3.11828182845905
    def step(limit, step )
        #This is a stub, used for indexing
    end
end
