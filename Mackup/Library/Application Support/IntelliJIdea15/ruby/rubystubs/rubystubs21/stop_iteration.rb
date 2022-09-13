=begin
 This is a machine generated stub using stdlib-doc for <b>class StopIteration</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:26 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised to stop the iteration, in particular by Enumerator#next. It is
# rescued by Kernel#loop.
# 
#   loop do
#     puts "Hello"
#     raise StopIteration
#     puts "World"
#   end
#   puts "Done!"
# 
# <em>produces:</em>
# 
#   Hello
#   Done!
class StopIteration < IndexError
    # result       -> value
    #  
    # Returns the return value of the iterator.
    # 
    #   o = Object.new
    #   def o.each
    #     yield 1
    #     yield 2
    #     yield 3
    #     100
    #   end
    # 
    #   e = o.to_enum
    # 
    #   puts e.next                   #=> 1
    #   puts e.next                   #=> 2
    #   puts e.next                   #=> 3
    # 
    #   begin
    #     e.next
    #   rescue StopIteration => ex
    #     puts ex.result              #=> 100
    #   end
    def result()
        #This is a stub, used for indexing
    end
end
