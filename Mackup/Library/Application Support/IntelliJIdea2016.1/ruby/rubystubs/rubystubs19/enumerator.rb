=begin
 This is a machine generated stub using stdlib-doc for <b>class Enumerator</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A class which provides a method `each' to be used as an Enumerable
# object.
# 
# An enumerator can be created by following methods.
# - Kernel#to_enum
# - Kernel#enum_for
# - Enumerator.new
# 
# Also, most iteration methods without a block returns an enumerator.
# For example, Array#map returns an enumerator if a block is not given.
# The enumerator has the with_index method.
# So ary.map.with_index works as follows.
# 
#   p %w[foo bar baz].map.with_index {|w,i| "#{i}:#{w}" }
#   #=> ["0:foo", "1:bar", "2:baz"]
# 
# An enumerator object can be used as an external iterator.
# I.e.  Enumerator#next returns the next value of the iterator.
# Enumerator#next raises StopIteration at end.
# 
#   e = [1,2,3].each   # returns an enumerator object.
#   p e.next   #=> 1
#   p e.next   #=> 2
#   p e.next   #=> 3
#   p e.next   #raises StopIteration
# 
# An external iterator can be used to implement an internal iterator as follows.
# 
#   def ext_each(e)
#     while true
#       begin
#         vs = e.next_values
#       rescue StopIteration
#         return $!.result
#       end
#       y = yield(*vs)
#       e.feed y
#     end
#   end
# 
#   o = Object.new
#   def o.each
#     p yield
#     p yield(1)
#     p yield(1, 2)
#     3
#   end
# 
#   # use o.each as an internal iterator directly.
#   p o.each {|*x| p x; [:b, *x] }
#   #=> [], [:b], [1], [:b, 1], [1, 2], [:b, 1, 2], 3
# 
#   # convert o.each to an external iterator for
#   # implementing an internal iterator.
#   p ext_each(o.to_enum) {|*x| p x; [:b, *x] }
#   #=> [], [:b], [1], [:b, 1], [1, 2], [:b, 1, 2], 3
class Enumerator
    include Enumerable
    # Enumerator.new(obj, method = :each, *args)
    # Enumerator.new { |y| ... }
    #  
    # Creates a new Enumerator object, which is to be used as an
    # Enumerable object iterating in a given way.
    # 
    # In the first form, a generated Enumerator iterates over the given
    # object using the given method with the given arguments passed.
    # Use of this form is discouraged.  Use Kernel#enum_for(), alias
    # to_enum, instead.
    # 
    #   e = Enumerator.new(ObjectSpace, :each_object)
    #       #-> ObjectSpace.enum_for(:each_object)
    # 
    #   e.select { |obj| obj.is_a?(Class) }  #=> array of all classes
    # 
    # In the second form, iteration is defined by the given block, in
    # which a "yielder" object given as block parameter can be used to
    # yield a value by calling the +yield+ method, alias +<<+.
    # 
    #   fib = Enumerator.new { |y|
    #     a = b = 1
    #     loop {
    #       y << a
    #       a, b = b, a + b
    #     }
    #   }
    # 
    #   p fib.take(10) #=> [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # enum.each {...}
    #  
    # Iterates the given block using the object and the method specified
    # in the first place.  If no block is given, returns self.
    def each()
        #This is a stub, used for indexing
    end
    # e.each_with_index {|(*args), idx| ... }
    # e.each_with_index
    #  
    # Same as Enumerator#with_index, except each_with_index does not
    # receive an offset argument.
    def each_with_index(*several_variants)
        #This is a stub, used for indexing
    end
    # e.with_object(obj) {|(*args), memo_obj| ... }
    # e.with_object(obj)
    #  
    # Iterates the given block for each element with an arbitrary
    # object given, and returns the initially given object.
    # 
    # If no block is given, returns an enumerator.
    def each_with_object(p1)
        #This is a stub, used for indexing
    end
    # e.with_index(offset = 0) {|(*args), idx| ... }
    # e.with_index(offset = 0)
    #  
    # Iterates the given block for each element with an index, which
    # starts from +offset+.  If no block is given, returns an enumerator.
    def with_index(*several_variants)
        #This is a stub, used for indexing
    end
    # e.with_object(obj) {|(*args), memo_obj| ... }
    # e.with_object(obj)
    #  
    # Iterates the given block for each element with an arbitrary
    # object given, and returns the initially given object.
    # 
    # If no block is given, returns an enumerator.
    def with_object(*several_variants)
        #This is a stub, used for indexing
    end
    # e.next_values   -> array
    #  
    # Returns the next object as an array in the enumerator,
    # and move the internal position forward.
    # When the position reached at the end, StopIteration is raised.
    # 
    # This method can be used to distinguish <code>yield</code> and <code>yield nil</code>.
    # 
    #   o = Object.new
    #   def o.each
    #     yield
    #     yield 1
    #     yield 1, 2
    #     yield nil
    #     yield [1, 2]
    #   end
    #   e = o.to_enum
    #   p e.next_values
    #   p e.next_values
    #   p e.next_values
    #   p e.next_values
    #   p e.next_values
    #   e = o.to_enum
    #   p e.next
    #   p e.next
    #   p e.next
    #   p e.next
    #   p e.next
    # 
    #   ## yield args       next_values      next
    #   #  yield            []               nil
    #   #  yield 1          [1]              1
    #   #  yield 1, 2       [1, 2]           [1, 2]
    #   #  yield nil        [nil]            nil
    #   #  yield [1, 2]     [[1, 2]]         [1, 2]
    # 
    # Note that enumeration sequence by next_values method does not affect other
    # non-external enumeration methods, unless underlying iteration
    # methods itself has side-effect, e.g. IO#each_line.
    def next_values()
        #This is a stub, used for indexing
    end
    # e.peek_values   -> array
    #  
    # Returns the next object as an array in the enumerator,
    # but don't move the internal position forward.
    # When the position reached at the end, StopIteration is raised.
    # 
    #   o = Object.new
    #   def o.each
    #     yield
    #     yield 1
    #     yield 1, 2
    #   end
    #   e = o.to_enum
    #   p e.peek_values    #=> []
    #   e.next
    #   p e.peek_values    #=> [1]
    #   p e.peek_values    #=> [1]
    #   e.next
    #   p e.peek_values    #=> [1, 2]
    #   e.next
    #   p e.peek_values    # raises StopIteration
    def peek_values()
        #This is a stub, used for indexing
    end
    # e.next   -> object
    #  
    # Returns the next object in the enumerator, and move the internal
    # position forward.  When the position reached at the end, StopIteration
    # is raised.
    # 
    #   a = [1,2,3]
    #   e = a.to_enum
    #   p e.next   #=> 1
    #   p e.next   #=> 2
    #   p e.next   #=> 3
    #   p e.next   #raises StopIteration
    # 
    # Note that enumeration sequence by next method does not affect other
    # non-external enumeration methods, unless underlying iteration
    # methods itself has side-effect, e.g. IO#each_line.
    def next()
        #This is a stub, used for indexing
    end
    # e.peek   -> object
    #  
    # Returns the next object in the enumerator, but don't move the internal
    # position forward.  When the position reached at the end, StopIteration
    # is raised.
    # 
    #   a = [1,2,3]
    #   e = a.to_enum
    #   p e.next   #=> 1
    #   p e.peek   #=> 2
    #   p e.peek   #=> 2
    #   p e.peek   #=> 2
    #   p e.next   #=> 2
    #   p e.next   #=> 3
    #   p e.next   #raises StopIteration
    def peek()
        #This is a stub, used for indexing
    end
    # e.feed obj   -> nil
    #  
    # Set the value for the next yield in the enumerator returns.
    # 
    # If the value is not set, the yield returns nil.
    # 
    # This value is cleared after used.
    # 
    #   o = Object.new
    #   def o.each
    #     # (2)
    #     x = yield
    #     p x          #=> "foo"
    #     # (5)
    #     x = yield
    #     p x          #=> nil
    #     # (7)
    #     x = yield
    #     # not reached
    #     p x
    #   end
    #   e = o.to_enum
    #   # (1)
    #   e.next
    #   # (3)
    #   e.feed "foo"
    #   # (4)
    #   e.next
    #   # (6)
    #   e.next
    #   # (8)
    def feed obj
        #This is a stub, used for indexing
    end
    # e.rewind   -> e
    #  
    # Rewinds the enumeration sequence by the next method.
    # 
    # If the enclosed object responds to a "rewind" method, it is called.
    def rewind()
        #This is a stub, used for indexing
    end
    # e.inspect  -> string
    #  
    # Create a printable version of <i>e</i>.
    def inspect()
        #This is a stub, used for indexing
    end
    class Generator
        include Enumerable
    end
    class Yielder
    end
end
