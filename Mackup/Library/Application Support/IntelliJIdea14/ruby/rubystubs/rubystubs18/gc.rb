=begin
 This is a machine generated stub using stdlib-doc for <b>module GC</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The <code>GC</code> module provides an interface to Ruby's mark and
# sweep garbage collection mechanism. Some of the underlying methods
# are also available via the <code>ObjectSpace</code> module.
module GC
    # GC.start                     => nil
    # gc.garbage_collect           => nil
    # ObjectSpace.garbage_collect  => nil
    #  
    # Initiates garbage collection, unless manually disabled.
    def self.start()
        #This is a stub, used for indexing
    end
    # GC.enable    => true or false
    #  
    # Enables garbage collection, returning <code>true</code> if garbage
    # collection was previously disabled.
    # 
    #    GC.disable   #=> false
    #    GC.enable    #=> true
    #    GC.enable    #=> false
    def self.enable()
        #This is a stub, used for indexing
    end
    # GC.disable    => true or false
    #  
    # Disables garbage collection, returning <code>true</code> if garbage
    # collection was already disabled.
    # 
    #    GC.disable   #=> false
    #    GC.disable   #=> true
    def self.disable()
        #This is a stub, used for indexing
    end
    # GC.stress                 => true or false
    #  
    # returns current status of GC stress mode.
    def self.stress()
        #This is a stub, used for indexing
    end
    # GC.stress = bool          => bool
    #  
    # updates GC stress mode.
    # 
    # When GC.stress = true, GC is invoked for all GC opportunity:
    # all memory and object allocation.
    # 
    # Since it makes Ruby very slow, it is only for debugging.
    def self.stress= bool
        #This is a stub, used for indexing
    end
    # GC.start                     => nil
    # gc.garbage_collect           => nil
    # ObjectSpace.garbage_collect  => nil
    #  
    # Initiates garbage collection, unless manually disabled.
    def garbage_collect(*several_variants)
        #This is a stub, used for indexing
    end
end
