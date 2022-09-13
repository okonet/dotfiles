=begin
 This is a machine generated stub using stdlib-doc for <b>module Coverage</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Coverage provides coverage measurement feature for Ruby.
# This feature is experimental, so these APIs may be changed in future.
# 
# = Usage
# 
# (1) require "coverage.so"
# (2) do Coverage.start
# (3) require or load Ruby source file
# (4) Coverage.result will return a hash that contains filename as key and
#     coverage array as value.
# 
# = Example
# 
#   [foo.rb]
#   s = 0
#   10.times do |x|
#     s += x
#   end
# 
#   if s == 45
#     p :ok
#   else
#     p :ng
#   end
#   [EOF]
# 
#   require "coverage.so"
#   Coverage.start
#   require "foo.rb"
#   p Coverage.result  #=> {"foo.rb"=>[1, 1, 10, nil, nil, 1, 1, nil, 0, nil]}
module Coverage
    # Coverage.start  => nil
    #  
    # Enables coverage measurement.
    def self.start()
        #This is a stub, used for indexing
    end
    # Coverage.result  => hash
    #  
    # Returns a hash that contains filename as key and coverage array as value
    # and disables coverage measurement.
    def self.result()
        #This is a stub, used for indexing
    end
end
