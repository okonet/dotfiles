=begin
 This is a machine generated stub using stdlib-doc for <b>class Integer</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

require 'rb_m_precision'
# <code>Integer</code> is the basis for the two concrete classes that
# hold whole numbers, <code>Bignum</code> and <code>Fixnum</code>.
class Integer < Numeric
    include rb_mPrecision
    # int.integer? -> true
    #  
    # Always returns <code>true</code>.
    def integer?()
        #This is a stub, used for indexing
    end
    # int.odd? -> true or false
    #  
    # Returns <code>true</code> if <i>int</i> is an odd number.
    def odd?()
        #This is a stub, used for indexing
    end
    # int.even? -> true or false
    #  
    # Returns <code>true</code> if <i>int</i> is an even number.
    def even?()
        #This is a stub, used for indexing
    end
    # int.upto(limit) {|i| block }     => int
    #  
    # Iterates <em>block</em>, passing in integer values from <i>int</i>
    # up to and including <i>limit</i>.
    # 
    #    5.upto(10) { |i| print i, " " }
    # 
    # <em>produces:</em>
    # 
    #    5 6 7 8 9 10
    def upto(limit)
        #This is a stub, used for indexing
    end
    # int.downto(limit) {|i| block }     => int
    #  
    # Iterates <em>block</em>, passing decreasing values from <i>int</i>
    # down to and including <i>limit</i>.
    # 
    #    5.downto(1) { |n| print n, ".. " }
    #    print "  Liftoff!\n"
    # 
    # <em>produces:</em>
    # 
    #    5.. 4.. 3.. 2.. 1..   Liftoff!
    def downto(limit)
        #This is a stub, used for indexing
    end
    # int.times {|i| block }     => int
    #  
    # Iterates block <i>int</i> times, passing in values from zero to
    # <i>int</i> - 1.
    # 
    #    5.times do |i|
    #      print i, " "
    #    end
    # 
    # <em>produces:</em>
    # 
    #    0 1 2 3 4
    def times()
        #This is a stub, used for indexing
    end
    # int.next    => integer
    # int.succ    => integer
    #  
    # Returns the <code>Integer</code> equal to <i>int</i> + 1.
    # 
    #    1.next      #=> 2
    #    (-1).next   #=> 0
    def succ()
        #This is a stub, used for indexing
    end
    # int.next    => integer
    # int.succ    => integer
    #  
    # Returns the <code>Integer</code> equal to <i>int</i> + 1.
    # 
    #    1.next      #=> 2
    #    (-1).next   #=> 0
    def next()
        #This is a stub, used for indexing
    end
    # int.pred    => integer
    #  
    # Returns the <code>Integer</code> equal to <i>int</i> - 1.
    # 
    #    1.pred      #=> 0
    #    (-1).pred   #=> -2
    def pred()
        #This is a stub, used for indexing
    end
    # int.chr    => string
    #  
    # Returns a string containing the ASCII character represented by the
    # receiver's value.
    # 
    #    65.chr    #=> "A"
    #    ?a.chr    #=> "a"
    #    230.chr   #=> "\346"
    def chr()
        #This is a stub, used for indexing
    end
    # int.ord    => int
    #  
    # Returns the int itself.
    # 
    #    ?a.ord    #=> 97
    # 
    # This method is intended for compatibility to
    # character constant in Ruby 1.9.
    # For example, ?a.ord returns 97 both in 1.8 and 1.9.
    def ord()
        #This is a stub, used for indexing
    end
    # int.to_i      => int
    # int.to_int    => int
    # int.floor     => int
    # int.ceil      => int
    # int.round     => int
    # int.truncate  => int
    #  
    # As <i>int</i> is already an <code>Integer</code>, all these
    # methods simply return the receiver.
    def to_i(*several_variants)
        #This is a stub, used for indexing
    end
    # int.to_i      => int
    # int.to_int    => int
    # int.floor     => int
    # int.ceil      => int
    # int.round     => int
    # int.truncate  => int
    #  
    # As <i>int</i> is already an <code>Integer</code>, all these
    # methods simply return the receiver.
    def to_int()
        #This is a stub, used for indexing
    end
    # int.to_i      => int
    # int.to_int    => int
    # int.floor     => int
    # int.ceil      => int
    # int.round     => int
    # int.truncate  => int
    #  
    # As <i>int</i> is already an <code>Integer</code>, all these
    # methods simply return the receiver.
    def floor()
        #This is a stub, used for indexing
    end
    # int.to_i      => int
    # int.to_int    => int
    # int.floor     => int
    # int.ceil      => int
    # int.round     => int
    # int.truncate  => int
    #  
    # As <i>int</i> is already an <code>Integer</code>, all these
    # methods simply return the receiver.
    def ceil()
        #This is a stub, used for indexing
    end
    # int.to_i      => int
    # int.to_int    => int
    # int.floor     => int
    # int.ceil      => int
    # int.round     => int
    # int.truncate  => int
    #  
    # As <i>int</i> is already an <code>Integer</code>, all these
    # methods simply return the receiver.
    def round()
        #This is a stub, used for indexing
    end
    # int.to_i      => int
    # int.to_int    => int
    # int.floor     => int
    # int.ceil      => int
    # int.round     => int
    # int.truncate  => int
    #  
    # As <i>int</i> is already an <code>Integer</code>, all these
    # methods simply return the receiver.
    def truncate()
        #This is a stub, used for indexing
    end
    # Integer.induced_from(obj)    =>  fixnum, bignum
    #  
    # Convert <code>obj</code> to an Integer.
    def self.induced_from(obj)
        #This is a stub, used for indexing
    end
end
