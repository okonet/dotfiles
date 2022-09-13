=begin
 This is a machine generated stub using stdlib-doc for <b>class Class</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

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
    # class.allocate()   ->   obj
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
    # class.new(args, ...)    ->  obj
    #  
    # Calls <code>allocate</code> to create a new object of
    # <i>class</i>'s class, then invokes that object's
    # <code>initialize</code> method, passing it <i>args</i>.
    # This is the method that ends up getting called whenever
    # an object is constructed using .new.
    def new(*args)
        #This is a stub, used for indexing
    end
    # Class.new(super_class=Object)   ->    a_class
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
    #    File.superclass          #=> IO
    #    IO.superclass            #=> Object
    #    Object.superclass        #=> BasicObject
    #    class Foo; end
    #    class Bar < Foo; end
    #    Bar.superclass           #=> Foo
    # 
    # returns nil when the given class hasn't a parent class:
    # 
    #    BasicObject.superclass   #=> nil
    def superclass()
        #This is a stub, used for indexing
    end
end
