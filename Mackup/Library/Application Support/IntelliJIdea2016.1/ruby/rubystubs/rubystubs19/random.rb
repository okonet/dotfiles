=begin
 This is a machine generated stub using stdlib-doc for <b>class Random</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

class Random
    # Random.new([seed]) -> prng
    #  
    # Creates new Mersenne Twister based pseudorandom number generator with
    # seed.  When the argument seed is omitted, the generator is initialized
    # with Random.new_seed.
    # 
    # The argument seed is used to ensure repeatable sequences of random numbers
    # between different runs of the program.
    # 
    #     prng = Random.new(1234)
    #     [ prng.rand, prng.rand ]   #=> [0.191519450378892, 0.622108771039832]
    #     [ prng.integer(10), prng.integer(1000) ]  #=> [4, 664]
    #     prng = Random.new(1234)
    #     [ prng.rand, prng.rand ]   #=> [0.191519450378892, 0.622108771039832]
    def self.new(*seed)
        #This is a stub, used for indexing
    end
    # prng.rand -> float
    # prng.rand(limit) -> number
    #  
    # When the argument is an +Integer+ or a +Bignum+, it returns a
    # random integer greater than or equal to zero and less than the
    # argument.  Unlike Random.rand, when the argument is a negative
    # integer or zero, it raises an ArgumentError.
    # 
    # When the argument is a +Float+, it returns a random floating point
    # number between 0.0 and _max_, including 0.0 and excluding _max_.
    # 
    # When the argument _limit_ is a +Range+, it returns a random
    # number where range.member?(number) == true.
    #     prng.rand(5..9)  #=> one of [5, 6, 7, 8, 9]
    #     prng.rand(5...9) #=> one of [5, 6, 7, 8]
    #     prng.rand(5.0..9.0) #=> between 5.0 and 9.0, including 9.0
    #     prng.rand(5.0...9.0) #=> between 5.0 and 9.0, excluding 9.0
    # 
    # +begin+/+end+ of the range have to have subtract and add methods.
    # 
    # Otherwise, it raises an ArgumentError.
    def rand(*several_variants)
        #This is a stub, used for indexing
    end
    # prng.bytes(size) -> prng
    #  
    # Returns a random binary string.  The argument size specified the length of
    # the result string.
    def bytes(size)
        #This is a stub, used for indexing
    end
    # prng.seed -> integer
    #  
    # Returns the seed of the generator.
    def seed()
        #This is a stub, used for indexing
    end
    # prng1 == prng2 -> true or false
    #  
    # Returns true if the generators' states equal.
    def == prng2
        #This is a stub, used for indexing
    end
    # srand(number=0)    -> old_seed
    #  
    # Seeds the pseudorandom number generator to the value of
    # <i>number</i>. If <i>number</i> is omitted
    # or zero, seeds the generator using a combination of the time, the
    # process id, and a sequence number. (This is also the behavior if
    # <code>Kernel::rand</code> is called without previously calling
    # <code>srand</code>, but without the sequence.) By setting the seed
    # to a known value, scripts can be made deterministic during testing.
    # The previous seed value is returned. Also see <code>Kernel::rand</code>.
    def self.srand(number=0)
        #This is a stub, used for indexing
    end
    # rand(max=0)    -> number
    #  
    # Converts <i>max</i> to an integer using max1 =
    # max<code>.to_i.abs</code>. If _max_ is +nil+ the result is zero, returns a
    # pseudorandom floating point number greater than or equal to 0.0 and
    # less than 1.0. Otherwise, returns a pseudorandom integer greater
    # than or equal to zero and less than max1. <code>Kernel::srand</code>
    # may be used to ensure repeatable sequences of random numbers between
    # different runs of the program. Ruby currently uses a modified
    # Mersenne Twister with a period of 2**19937-1.
    # 
    #    srand 1234                 #=> 0
    #    [ rand,  rand ]            #=> [0.191519450163469, 0.49766366626136]
    #    [ rand(10), rand(1000) ]   #=> [6, 817]
    #    srand 1234                 #=> 1234
    #    [ rand,  rand ]            #=> [0.191519450163469, 0.49766366626136]
    def self.rand(max=0)
        #This is a stub, used for indexing
    end
    # Random.new_seed -> integer
    #  
    # Returns arbitrary value for seed.
    def self.new_seed()
        #This is a stub, used for indexing
    end
end
