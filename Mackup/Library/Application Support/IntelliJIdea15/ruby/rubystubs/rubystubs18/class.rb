=begin
 This is a machine generated stub using stdlib-doc for <b>class Class</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Classes in Ruby are first-class objects---each is an instance of
# class <code>Class</code>.
# 
# When a new class is created (typically using <code>class Name ...
# end</code>), an object of type <code>Class</code> is created and
# assigned to a global constant (<code>Name</code> in this case). When
# <code>Name.new</code> is called to create a new object, the
# <code>new</code> method in <code>Class</code> is run by default.
# This can be demonstrated by overriding <code>new</code> in
# <code>Class</code>:
# 
#    class Class
#       alias oldNew  new
#       def new(*args)
#         print "Creating a new ", self.name, "\n"
#         oldNew(*args)
#       end
#     end
# 
#     class Name
#     end
# 
#     n = Name.new
# 
# <em>produces:</em>
# 
#    Creating a new Name
# 
# Classes, modules, and objects are interrelated. In the diagram
# that follows, the vertical arrows represent inheritance, and the
# parentheses meta-classes. All metaclasses are instances 
# of the class `Class'.
# 
#                           +------------------+
#                           |                  |
#             Object---->(Object)              |
#              ^  ^        ^  ^                |
#              |  |        |  |                |
#              |  |  +-----+  +---------+      |
#              |  |  |                  |      |
#              |  +-----------+         |      |
#              |     |        |         |      |
#       +------+     |     Module--->(Module)  |
#       |            |        ^         ^      |
#  OtherClass-->(OtherClass)  |         |      |
#                             |         |      |
#                           Class---->(Class)  |
#                             ^                |
#                             |                |
#                             +----------------+
class Class < Module
    # inherited(subclass)
    #  
    # Callback invoked whenever a subclass of the current class is created.
    # 
    # Example:
    # 
    #    class Foo
    #       def self.inherited(subclass)
    #          puts "New subclass: #{subclass}"
    #       end
    #    end
    # 
    #    class Bar < Foo
    #    end
    # 
    #    class Baz < Bar
    #    end
    # 
    # produces:
    # 
    #    New subclass: Bar
    #    New subclass: Baz
    def inherited(subclass)
        #This is a stub, used for indexing
    end
    # class.allocate()   =>   obj
    #  
    # Allocates space for a new object of <i>class</i>'s class and does not
    # call initialize on the new instance. The returned object must be an
    # instance of <i>class</i>.
    # 
    #     klass = Class.new do
    #       def initialize(*args)
    #         @initialized = true
    #       end
    # 
    #       def initialized?
    #         @initialized || false
    #       end
    #     end
    # 
    #     klass.allocate.initialized? #=> false
    def allocate()
        #This is a stub, used for indexing
    end
    # class.new(args, ...)    =>  obj
    #  
    # Calls <code>allocate</code> to create a new object of
    # <i>class</i>'s class, then invokes that object's
    # <code>initialize</code> method, passing it <i>args</i>.
    # This is the method that ends up getting called whenever
    # an object is constructed using .new.
    def new(*args)
        #This is a stub, used for indexing
    end
    # Class.new(super_class=Object)   =>    a_class
    #  
    # Creates a new anonymous (unnamed) class with the given superclass
    # (or <code>Object</code> if no parameter is given). You can give a
    # class a name by assigning the class object to a constant.
    def self.new(super_class=Object)
        #This is a stub, used for indexing
    end
    # class.superclass -> a_super_class or nil
    #  
    # Returns the superclass of <i>class</i>, or <code>nil</code>.
    # 
    #    File.superclass     #=> IO
    #    IO.superclass       #=> Object
    #    Object.superclass   #=> nil
    def superclass()
        #This is a stub, used for indexing
    end
end
