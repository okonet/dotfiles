=begin
 This is a machine generated stub using stdlib-doc for <b>module Fiddle</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# A libffi wrapper for Ruby.
# 
# == Description
# 
# Fiddle is an extension to translate a foreign function interface (FFI)
# with ruby.
# 
# It wraps {libffi}[http://sourceware.org/libffi/], a popular C library
# which provides a portable interface that allows code written in one
# language to call code written in another language.
# 
# == Example
# 
# Here we will use Fiddle::Function to wrap {floor(3) from
# libm}[http://linux.die.net/man/3/floor]
# 
#      require 'fiddle'
# 
#      libm = Fiddle.dlopen('/lib/libm.so.6')
# 
#      floor = Fiddle::Function.new(
#        libm['floor'],
#        [Fiddle::TYPE_DOUBLE],
#        Fiddle::TYPE_DOUBLE
#      )
# 
#      puts floor.call(3.14159) #=> 3.0
module Fiddle
    # TYPE_VOID
    # 
    # C type - void
    TYPE_VOID = nil #value is unknown, used for indexing.
    # TYPE_VOIDP
    # 
    # C type - void*
    TYPE_VOIDP = nil #value is unknown, used for indexing.
    # TYPE_CHAR
    # 
    # C type - char
    TYPE_CHAR = nil #value is unknown, used for indexing.
    # TYPE_SHORT
    # 
    # C type - short
    TYPE_SHORT = nil #value is unknown, used for indexing.
    # TYPE_INT
    # 
    # C type - int
    TYPE_INT = nil #value is unknown, used for indexing.
    # TYPE_LONG
    # 
    # C type - long
    TYPE_LONG = nil #value is unknown, used for indexing.
    # TYPE_LONG_LONG
    # 
    # C type - long long
    TYPE_LONG_LONG = nil #value is unknown, used for indexing.
    # TYPE_FLOAT
    # 
    # C type - float
    TYPE_FLOAT = nil #value is unknown, used for indexing.
    # TYPE_DOUBLE
    # 
    # C type - double
    TYPE_DOUBLE = nil #value is unknown, used for indexing.
    # TYPE_SIZE_T
    # 
    # C type - size_t
    TYPE_SIZE_T = nil #value is unknown, used for indexing.
    # TYPE_SSIZE_T
    # 
    # C type - ssize_t
    TYPE_SSIZE_T = nil #value is unknown, used for indexing.
    # TYPE_PTRDIFF_T
    # 
    # C type - ptrdiff_t
    TYPE_PTRDIFF_T = nil #value is unknown, used for indexing.
    # TYPE_INTPTR_T
    # 
    # C type - intptr_t
    TYPE_INTPTR_T = nil #value is unknown, used for indexing.
    # TYPE_UINTPTR_T
    # 
    # C type - uintptr_t
    TYPE_UINTPTR_T = nil #value is unknown, used for indexing.
    # ALIGN_VOIDP
    # 
    # The alignment size of a void*
    ALIGN_VOIDP = nil #value is unknown, used for indexing.
    # ALIGN_CHAR
    # 
    # The alignment size of a char
    ALIGN_CHAR = nil #value is unknown, used for indexing.
    # ALIGN_SHORT
    # 
    # The alignment size of a short
    ALIGN_SHORT = nil #value is unknown, used for indexing.
    # ALIGN_INT
    # 
    # The alignment size of an int
    ALIGN_INT = nil #value is unknown, used for indexing.
    # ALIGN_LONG
    # 
    # The alignment size of a long
    ALIGN_LONG = nil #value is unknown, used for indexing.
    # ALIGN_LONG_LONG
    # 
    # The alignment size of a long long
    ALIGN_LONG_LONG = nil #value is unknown, used for indexing.
    # ALIGN_FLOAT
    # 
    # The alignment size of a float
    ALIGN_FLOAT = nil #value is unknown, used for indexing.
    # ALIGN_DOUBLE
    # 
    # The alignment size of a double
    ALIGN_DOUBLE = nil #value is unknown, used for indexing.
    # ALIGN_SIZE_T
    # 
    # The alignment size of a size_t
    ALIGN_SIZE_T = nil #value is unknown, used for indexing.
    # ALIGN_SSIZE_T
    # 
    # The alignment size of a ssize_t
    ALIGN_SSIZE_T = nil #value is unknown, used for indexing.
    # ALIGN_PTRDIFF_T
    # 
    # The alignment size of a ptrdiff_t
    ALIGN_PTRDIFF_T = nil #value is unknown, used for indexing.
    # ALIGN_INTPTR_T
    # 
    # The alignment size of a intptr_t
    ALIGN_INTPTR_T = nil #value is unknown, used for indexing.
    # ALIGN_UINTPTR_T
    # 
    # The alignment size of a uintptr_t
    ALIGN_UINTPTR_T = nil #value is unknown, used for indexing.
    # Returns a boolean regarding whether the host is WIN32
    WINDOWS = nil #value is unknown, used for indexing.
    # SIZEOF_VOIDP
    # 
    # size of a void*
    SIZEOF_VOIDP = nil #value is unknown, used for indexing.
    # SIZEOF_CHAR
    # 
    # size of a char
    SIZEOF_CHAR = nil #value is unknown, used for indexing.
    # SIZEOF_SHORT
    # 
    # size of a short
    SIZEOF_SHORT = nil #value is unknown, used for indexing.
    # SIZEOF_INT
    # 
    # size of an int
    SIZEOF_INT = nil #value is unknown, used for indexing.
    # SIZEOF_LONG
    # 
    # size of a long
    SIZEOF_LONG = nil #value is unknown, used for indexing.
    # SIZEOF_LONG_LONG
    # 
    # size of a long long
    SIZEOF_LONG_LONG = nil #value is unknown, used for indexing.
    # SIZEOF_FLOAT
    # 
    # size of a float
    SIZEOF_FLOAT = nil #value is unknown, used for indexing.
    # SIZEOF_DOUBLE
    # 
    # size of a double
    SIZEOF_DOUBLE = nil #value is unknown, used for indexing.
    # SIZEOF_SIZE_T
    # 
    # size of a size_t
    SIZEOF_SIZE_T = nil #value is unknown, used for indexing.
    # SIZEOF_SSIZE_T
    # 
    # size of a ssize_t
    SIZEOF_SSIZE_T = nil #value is unknown, used for indexing.
    # SIZEOF_PTRDIFF_T
    # 
    # size of a ptrdiff_t
    SIZEOF_PTRDIFF_T = nil #value is unknown, used for indexing.
    # SIZEOF_INTPTR_T
    # 
    # size of a intptr_t
    SIZEOF_INTPTR_T = nil #value is unknown, used for indexing.
    # SIZEOF_UINTPTR_T
    # 
    # size of a uintptr_t
    SIZEOF_UINTPTR_T = nil #value is unknown, used for indexing.
    # RUBY_FREE
    # 
    # Address of the ruby_xfree() function
    RUBY_FREE = nil #value is unknown, used for indexing.
    # BUILD_RUBY_PLATFORM
    # 
    # Platform built against (i.e. "x86_64-linux", etc.)
    # 
    # See also RUBY_PLATFORM
    BUILD_RUBY_PLATFORM = nil #value is unknown, used for indexing.
    # Fiddle.dlwrap(val)
    #  
    # Returns a memory pointer of a function's hexadecimal address location +val+
    # 
    # Example:
    # 
    #   lib = Fiddle.dlopen('/lib64/libc-2.15.so')
    #   => #<Fiddle::Handle:0x00000001342460>
    # 
    #   Fiddle.dlwrap(lib['strcpy'].to_s(16))
    #   => 25522520
    def self.dlwrap(val)
        #This is a stub, used for indexing
    end
    # Fiddle.dlunwrap(addr)
    #  
    # Returns the hexadecimal representation of a memory pointer address +addr+
    # 
    # Example:
    # 
    #   lib = Fiddle.dlopen('/lib64/libc-2.15.so')
    #   => #<Fiddle::Handle:0x00000001342460>
    # 
    #   lib['strcpy'].to_s(16)
    #   => "7f59de6dd240"
    # 
    #   Fiddle.dlunwrap(Fiddle.dlwrap(lib['strcpy'].to_s(16)))
    #   => "7f59de6dd240"
    def self.dlunwrap(addr)
        #This is a stub, used for indexing
    end
    # Fiddle.malloc(size)
    #  
    # Allocate +size+ bytes of memory and return the integer memory address
    # for the allocated memory.
    def self.malloc(size)
        #This is a stub, used for indexing
    end
    # Fiddle.realloc(addr, size)
    #  
    # Change the size of the memory allocated at the memory location +addr+ to
    # +size+ bytes.  Returns the memory address of the reallocated memory, which
    # may be different than the address passed in.
    def self.realloc(addr, size)
        #This is a stub, used for indexing
    end
    # Fiddle.free(addr)
    #  
    # Free the memory at address +addr+
    def self.free(addr)
        #This is a stub, used for indexing
    end
    # == Description
    # 
    # An FFI closure wrapper, for handling callbacks.
    # 
    # == Example
    # 
    #   closure = Class.new(Fiddle::Closure) {
    #     def call
    #       10
    #     end
    #   }.new(Fiddle::TYPE_INT, [])
    #      #=> #<#<Class:0x0000000150d308>:0x0000000150d240>
    #   func = Fiddle::Function.new(closure, [], Fiddle::TYPE_INT)
    #      #=> #<Fiddle::Function:0x00000001516e58>
    #   func.call
    #      #=> 10
    class Closure
        # new(ret, args, abi = Fiddle::DEFAULT)
        #  
        # Construct a new Closure object.
        # 
        # * +ret+ is the C type to be returned
        # * +args+ is an Array of arguments, passed to the callback function
        # * +abi+ is the abi of the closure
        # 
        # If there is an error in preparing the ffi_cif or ffi_prep_closure,
        # then a RuntimeError will be raised.
        def self.new(ret, args, abi = Fiddle::DEFAULT)
            #This is a stub, used for indexing
        end
        # Returns the memory address for this closure
        def to_i()
            #This is a stub, used for indexing
        end
    end
    # standard dynamic load exception
    class DLError < StandardError
    end
    # == Description
    # 
    # A representation of a C function
    # 
    # == Examples
    # 
    # === 'strcpy'
    # 
    #   @libc = Fiddle.dlopen "/lib/libc.so.6"
    #      #=> #<Fiddle::Handle:0x00000001d7a8d8>
    #   f = Fiddle::Function.new(
    #     @libc['strcpy'],
    #     [Fiddle::TYPE_VOIDP, Fiddle::TYPE_VOIDP],
    #     Fiddle::TYPE_VOIDP)
    #      #=> #<Fiddle::Function:0x00000001d8ee00>
    #   buff = "000"
    #      #=> "000"
    #   str = f.call(buff, "123")
    #      #=> #<Fiddle::Pointer:0x00000001d0c380 ptr=0x000000018a21b8 size=0 free=0x00000000000000>
    #   str.to_s
    #   => "123"
    # 
    # === ABI check
    # 
    #   @libc = Fiddle.dlopen "/lib/libc.so.6"
    #      #=> #<Fiddle::Handle:0x00000001d7a8d8>
    #   f = Fiddle::Function.new(@libc['strcpy'], [TYPE_VOIDP, TYPE_VOIDP], TYPE_VOIDP)
    #      #=> #<Fiddle::Function:0x00000001d8ee00>
    #   f.abi == Fiddle::Function::DEFAULT
    #      #=> true
    class Function
        # DEFAULT
        # 
        # Default ABI
        DEFAULT = nil #value is unknown, used for indexing.
        # STDCALL
        # 
        # FFI implementation of WIN32 stdcall convention
        STDCALL = nil #value is unknown, used for indexing.
        # Calls the constructed Function, with +args+
        # 
        # For an example see Fiddle::Function
        def call(*args)
            #This is a stub, used for indexing
        end
        # new(ptr, args, ret_type, abi = DEFAULT)
        #  
        # Constructs a Function object.
        # * +ptr+ is a referenced function, of a Fiddle::Handle
        # * +args+ is an Array of arguments, passed to the +ptr+ function
        # * +ret_type+ is the return type of the function
        # * +abi+ is the ABI of the function
        def self.new(ptr, args, ret_type, abi = DEFAULT)
            #This is a stub, used for indexing
        end
    end
    # The Fiddle::Handle is the manner to access the dynamic library
    # 
    # == Example
    # 
    # === Setup
    # 
    #   libc_so = "/lib64/libc.so.6"
    #   => "/lib64/libc.so.6"
    #   @handle = Fiddle::Handle.new(libc_so)
    #   => #<Fiddle::Handle:0x00000000d69ef8>
    # 
    # === Setup, with flags
    # 
    #   libc_so = "/lib64/libc.so.6"
    #   => "/lib64/libc.so.6"
    #   @handle = Fiddle::Handle.new(libc_so, Fiddle::RTLD_LAZY | Fiddle::RTLD_GLOBAL)
    #   => #<Fiddle::Handle:0x00000000d69ef8>
    # 
    # See RTLD_LAZY and RTLD_GLOBAL
    # 
    # === Addresses to symbols
    # 
    #   strcpy_addr = @handle['strcpy']
    #   => 140062278451968
    # 
    # or
    # 
    #   strcpy_addr = @handle.sym('strcpy')
    #   => 140062278451968
    class Handle
        # NEXT
        # 
        # A predefined pseudo-handle of RTLD_NEXT
        # 
        # Which will find the next occurrence of a function in the search order
        # after the current library.
        NEXT = nil #value is unknown, used for indexing.
        # DEFAULT
        # 
        # A predefined pseudo-handle of RTLD_DEFAULT
        # 
        # Which will find the first occurrence of the desired symbol using the
        # default library search order
        DEFAULT = nil #value is unknown, used for indexing.
        # Handle flag.
        # 
        # The symbols defined by this library will be made available for symbol
        # resolution of subsequently loaded libraries.
        RTLD_GLOBAL = nil #value is unknown, used for indexing.
        # Handle flag.
        # 
        # Perform lazy binding.  Only resolve symbols as the code that references
        # them is executed.  If the  symbol is never referenced, then it is never
        # resolved.  (Lazy binding is only performed for function references;
        # references to variables are always immediately bound when the library
        # is loaded.)
        RTLD_LAZY = nil #value is unknown, used for indexing.
        # Handle flag.
        # 
        # If this value is specified or the environment variable LD_BIND_NOW is
        # set to a nonempty string, all undefined symbols in the library are
        # resolved before Fiddle.dlopen returns.  If this cannot be done an error
        # is returned.
        RTLD_NOW = nil #value is unknown, used for indexing.
        # sym(name)
        #  
        # Get the address as an Integer for the function named +name+.
        def self.sym(name)
            #This is a stub, used for indexing
        end
        # sym(name)
        #  
        # Get the address as an Integer for the function named +name+.  The function
        # is searched via dlsym on RTLD_NEXT.
        # 
        # See man(3) dlsym() for more info.
        def self.[](p1)
            #This is a stub, used for indexing
        end
        # new(library = nil, flags = Fiddle::RTLD_LAZY | Fiddle::RTLD_GLOBAL)
        #  
        # Create a new handler that opens +library+ with +flags+.
        # 
        # If no +library+ is specified or +nil+ is given, DEFAULT is used, which is
        # the equivalent to RTLD_DEFAULT. See <code>man 3 dlopen</code> for more.
        # 
        #      lib = Fiddle::Handle.new
        # 
        # The default is dependent on OS, and provide a handle for all libraries
        # already loaded. For example, in most cases you can use this to access +libc+
        # functions, or ruby functions like +rb_str_new+.
        def self.new(library = nil, flags = Fiddle::RTLD_LAZY | Fiddle::RTLD_GLOBAL)
            #This is a stub, used for indexing
        end
        # to_i
        #  
        # Returns the memory address for this handle.
        def to_i()
            #This is a stub, used for indexing
        end
        # close
        #  
        # Close this handle.
        # 
        # Calling close more than once will raise a Fiddle::DLError exception.
        def close()
            #This is a stub, used for indexing
        end
        # sym(name)
        #  
        # Get the address as an Integer for the function named +name+.
        def sym(name)
            #This is a stub, used for indexing
        end
        # sym(name)
        #  
        # Get the address as an Integer for the function named +name+.
        def [](p1)
            #This is a stub, used for indexing
        end
        # disable_close
        #  
        # Disable a call to dlclose() when this handle is garbage collected.
        def disable_close()
            #This is a stub, used for indexing
        end
        # enable_close
        #  
        # Enable a call to dlclose() when this handle is garbage collected.
        def enable_close()
            #This is a stub, used for indexing
        end
        # close_enabled?
        #  
        # Returns +true+ if dlclose() will be called when this handle is garbage collected.
        # 
        # See man(3) dlclose() for more info.
        def close_enabled?()
            #This is a stub, used for indexing
        end
    end
    # Fiddle::Pointer is a class to handle C pointers
    class Pointer
        # 
        # Fiddle::Pointer.malloc(size, freefunc = nil)  => fiddle pointer instance
        #  
        # Allocate +size+ bytes of memory and associate it with an optional
        # +freefunc+ that will be called when the pointer is garbage collected.
        # 
        # +freefunc+ must be an address pointing to a function or an instance of
        # Fiddle::Function
        def self.malloc(size, freefunc = nil)
            #This is a stub, used for indexing
        end
        # Fiddle::Pointer[val]         => cptr
        # to_ptr(val)  => cptr
        #  
        # Get the underlying pointer for ruby object +val+ and return it as a
        # Fiddle::Pointer object.
        def self.to_ptr(val)
            #This is a stub, used for indexing
        end
        # Fiddle::Pointer[val]         => cptr
        # to_ptr(val)  => cptr
        #  
        # Get the underlying pointer for ruby object +val+ and return it as a
        # Fiddle::Pointer object.
        def self.[] val
            #This is a stub, used for indexing
        end
        # Fiddle::Pointer.new(address)      => fiddle_cptr
        # new(address, size)                => fiddle_cptr
        # new(address, size, freefunc)      => fiddle_cptr
        #  
        # Create a new pointer to +address+ with an optional +size+ and +freefunc+.
        # 
        # +freefunc+ will be called when the instance is garbage collected.
        def self.new(*several_variants)
            #This is a stub, used for indexing
        end
        # free=(function)
        #  
        # Set the free function for this pointer to +function+ in the given
        # Fiddle::Function.
        def free=(function)
            #This is a stub, used for indexing
        end
        # free => Fiddle::Function
        #  
        # Get the free function for this pointer.
        # 
        # Returns a new instance of Fiddle::Function.
        # 
        # See Fiddle::Function.new
        def free()
            #This is a stub, used for indexing
        end
        # to_i
        #  
        # Returns the integer memory location of this pointer.
        def to_i()
            #This is a stub, used for indexing
        end
        # to_i
        #  
        # Returns the integer memory location of this pointer.
        def to_int()
            #This is a stub, used for indexing
        end
        # to_value
        #  
        # Cast this pointer to a ruby object.
        def to_value()
            #This is a stub, used for indexing
        end
        # ptr
        #  
        # Returns a new Fiddle::Pointer instance that is a dereferenced pointer for
        # this pointer.
        # 
        # Analogous to the star operator in C.
        def ptr()
            #This is a stub, used for indexing
        end
        # ptr
        #  
        # Returns a new Fiddle::Pointer instance that is a dereferenced pointer for
        # this pointer.
        # 
        # Analogous to the star operator in C.
        def +@()
            #This is a stub, used for indexing
        end
        # ref
        #  
        # Returns a new Fiddle::Pointer instance that is a reference pointer for this
        # pointer.
        # 
        # Analogous to the ampersand operator in C.
        def ref()
            #This is a stub, used for indexing
        end
        # ref
        #  
        # Returns a new Fiddle::Pointer instance that is a reference pointer for this
        # pointer.
        # 
        # Analogous to the ampersand operator in C.
        def -@()
            #This is a stub, used for indexing
        end
        # null?
        #  
        # Returns +true+ if this is a null pointer.
        def null?()
            #This is a stub, used for indexing
        end
        # 
        # ptr.to_s        => string
        # ptr.to_s(len)   => string
        #  
        # Returns the pointer contents as a string.
        # 
        # When called with no arguments, this method will return the contents until
        # the first NULL byte.
        # 
        # When called with +len+, a string of +len+ bytes will be returned.
        # 
        # See to_str
        def to_s(*several_variants)
            #This is a stub, used for indexing
        end
        # 
        # ptr.to_str        => string
        # ptr.to_str(len)   => string
        #  
        # Returns the pointer contents as a string.
        # 
        # When called with no arguments, this method will return the contents with the
        # length of this pointer's +size+.
        # 
        # When called with +len+, a string of +len+ bytes will be returned.
        # 
        # See to_s
        def to_str(*several_variants)
            #This is a stub, used for indexing
        end
        # inspect
        #  
        # Returns a string formatted with an easily readable representation of the
        # internal state of the pointer.
        def inspect()
            #This is a stub, used for indexing
        end
        # ptr <=> other   => -1, 0, 1, or nil
        #  
        # Returns -1 if less than, 0 if equal to, 1 if greater than +other+.
        # 
        # Returns nil if +ptr+ cannot be compared to +other+.
        def <=> other
            #This is a stub, used for indexing
        end
        # ptr == other    => true or false
        # ptr.eql?(other) => true or false
        #  
        # Returns true if +other+ wraps the same pointer, otherwise returns
        # false.
        def == other
            #This is a stub, used for indexing
        end
        # ptr == other    => true or false
        # ptr.eql?(other) => true or false
        #  
        # Returns true if +other+ wraps the same pointer, otherwise returns
        # false.
        def eql?(other)
            #This is a stub, used for indexing
        end
        # ptr + n   => new cptr
        #  
        # Returns a new pointer instance that has been advanced +n+ bytes.
        def + n
            #This is a stub, used for indexing
        end
        # ptr - n   => new cptr
        #  
        # Returns a new pointer instance that has been moved back +n+ bytes.
        def - n
            #This is a stub, used for indexing
        end
        # ptr[index]                -> an_integer
        # ptr[start, length]        -> a_string
        #  
        # Returns integer stored at _index_.
        # 
        # If _start_ and _length_ are given, a string containing the bytes from
        # _start_ of _length_ will be returned.
        def [](*several_variants)
            #This is a stub, used for indexing
        end
        # ptr[index]         = int                    ->  int
        # ptr[start, length] = string or cptr or addr ->  string or dl_cptr or addr
        #  
        # Set the value at +index+ to +int+.
        # 
        # Or, set the memory at +start+ until +length+ with the contents of +string+,
        # the memory from +dl_cptr+, or the memory pointed at by the memory address
        # +addr+.
        def []=(index, int)
            #This is a stub, used for indexing
        end
        # size
        #  
        # Get the size of this pointer.
        def size()
            #This is a stub, used for indexing
        end
        # size=(size)
        #  
        # Set the size of this pointer to +size+
        def size=(size)
            #This is a stub, used for indexing
        end
    end
end
