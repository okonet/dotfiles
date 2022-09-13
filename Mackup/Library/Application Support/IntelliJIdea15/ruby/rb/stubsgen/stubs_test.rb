# author oleg

def get_content symbol
    content = []
    content += eval("#{symbol}.methods")
    content += eval("#{symbol}.singleton_methods")
    begin
        content += eval("#{symbol}.constants")
    rescue
        # ignore, Object has no constants method
    end
    content.uniq.sort
end

top_level_content = get_content :self
top_level_content = top_level_content.find_all {|m| m != :get_content}

object_content = get_content :Object
kernel_content = get_content :Kernel
class_content = get_content :Class
module_content = get_content :Module

puts "Top_Level"
p top_level_content

puts "Kernel"
p kernel_content

puts "Top_Level - Kernel"
p top_level_content - kernel_content

puts "Object - Kenel"
p object_content - kernel_content

puts "Module - Object"
#p object_methods
p module_content - object_content

puts "Class - Module"
#p module_methods
p class_content - module_content

#puts "Class"
#p class_methods
