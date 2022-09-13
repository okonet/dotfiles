=begin
 This is a machine generated stub using stdlib-doc for <b>class StopIteration</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Raised to stop the iteration, in particular by Enumerator#next. It is
# rescued by Kernel#loop.
# 
#    loop do
#      puts "Hello"
#      raise StopIteration
#      puts "World"
#    end
#    puts "Done!"
# 
# <em>produces:</em>
# 
#    Hello
#    Done!
class StopIteration < IndexError
    # stopiteration.result       -> value
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
    #   e = o.to_enum
    #   p e.next                   #=> 1
    #   p e.next                   #=> 2
    #   p e.next                   #=> 3
    #   begin
    #     e.next
    #   rescue StopIteration
    #     p $!.result              #=> 100
    #   end
    def result()
        #This is a stub, used for indexing
    end
end
