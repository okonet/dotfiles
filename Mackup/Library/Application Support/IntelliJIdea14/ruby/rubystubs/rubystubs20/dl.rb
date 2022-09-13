=begin
 This is a machine generated stub using stdlib-doc for <b>module DL</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A bridge to the dlopen() or dynamic library linker function.
# 
# == Example
# 
#   bash $> cat > sum.c <<EOF
#   double sum(double *arry, int len)
#   {
#           double ret = 0;
#           int i;
#           for(i = 0; i < len; i++){
#                   ret = ret + arry[i];
#           }
#           return ret;
#   }
# 
#   double split(double num)
#   {
#           double ret = 0;
#           ret = num / 2;
#           return ret;
#   }
#   EOF
#   bash $> gcc -o libsum.so -shared sum.c
#   bash $> cat > sum.rb <<EOF
#   require 'dl'
#   require 'dl/import'
# 
#   module LibSum
#           extend DL::Importer
#           dlload './libsum.so'
#           extern 'double sum(double*, int)'
#           extern 'double split(double)'
#   end
# 
#   a = [2.0, 3.0, 4.0]
# 
#   sum = LibSum.sum(a.pack("d*"), a.count)
#   p LibSum.split(sum)
#   EOF
#   bash $> ruby sum.rb
#   4.5
# 
# WIN! :-)
module DL
    #  NULL
    # 
    # A NULL pointer
    NULL = nil #value is unknown, used for indexing.
    # MAX_CALLBACK
    # 
    # Maximum number of callbacks
    MAX_CALLBACK = nil #value is unknown, used for indexing.
    # DLSTACK_SIZE
    # 
    # Dynamic linker stack size
    DLSTACK_SIZE = nil #value is unknown, used for indexing.
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
    # resolved before dlopen() returns.  If this cannot be done an error is
    # returned.
    RTLD_NOW = nil #value is unknown, used for indexing.
    # CFunc type - void
    TYPE_VOID = nil #value is unknown, used for indexing.
    # CFunc type - void*
    TYPE_VOIDP = nil #value is unknown, used for indexing.
    # CFunc type - char
    TYPE_CHAR = nil #value is unknown, used for indexing.
    # CFunc type - short
    TYPE_SHORT = nil #value is unknown, used for indexing.
    # CFunc type - int
    TYPE_INT = nil #value is unknown, used for indexing.
    # CFunc type - long
    TYPE_LONG = nil #value is unknown, used for indexing.
    # CFunc type - long long
    TYPE_LONG_LONG = nil #value is unknown, used for indexing.
    # CFunc type - float
    TYPE_FLOAT = nil #value is unknown, used for indexing.
    # CFunc type - double
    TYPE_DOUBLE = nil #value is unknown, used for indexing.
    # CFunc type - size_t
    TYPE_SIZE_T = nil #value is unknown, used for indexing.
    # CFunc type - ssize_t
    TYPE_SSIZE_T = nil #value is unknown, used for indexing.
    # CFunc type - ptrdiff_t
    TYPE_PTRDIFF_T = nil #value is unknown, used for indexing.
    # CFunc type - intptr_t
    TYPE_INTPTR_T = nil #value is unknown, used for indexing.
    # CFunc type - uintptr_t
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
    # BUILD_RUBY_VERSION
    # 
    # Ruby Version built. (i.e. "1.9.3")
    # 
    # See also RUBY_VERSION
    BUILD_RUBY_VERSION = nil #value is unknown, used for indexing.
    # DL.dlwrap(val)
    #  
    # Returns a memory pointer of a function's hexadecimal address location +val+
    # 
    # Example:
    # 
    #   lib = DL.dlopen('/lib64/libc-2.15.so')
    #   => #<DL::Handle:0x00000001342460>
    # 
    #   DL.dlwrap(lib['strcpy'].to_s(16))
    #   => 25522520
    def self.dlwrap(val)
        #This is a stub, used for indexing
    end
    # DL.dlunwrap(addr)
    #  
    # Returns the hexadecimal representation of a memory pointer address +addr+
    # 
    # Example:
    # 
    #   lib = DL.dlopen('/lib64/libc-2.15.so')
    #   => #<DL::Handle:0x00000001342460>
    # 
    #   lib['strcpy'].to_s(16)
    #   => "7f59de6dd240"
    # 
    #   DL.dlunwrap(DL.dlwrap(lib['strcpy'].to_s(16)))
    #   => "7f59de6dd240"
    def self.dlunwrap(addr)
        #This is a stub, used for indexing
    end
    # DL.dlopen(so_lib)
    #  
    # An interface to the dynamic linking loader
    # 
    # This is a shortcut to DL::Handle.new and takes the same arguments.
    # 
    # Example:
    # 
    #   libc_so = "/lib64/libc.so.6"
    #   => "/lib64/libc.so.6"
    # 
    #   libc = DL.dlopen(libc_so)
    #   => #<DL::Handle:0x00000000e05b00>
    def self.dlopen(so_lib)
        #This is a stub, used for indexing
    end
    # DL.malloc(size)
    #  
    # Allocate +size+ bytes of memory and return the integer memory address
    # for the allocated memory.
    def self.malloc(size)
        #This is a stub, used for indexing
    end
    # DL.realloc(addr, size)
    #  
    # Change the size of the memory allocated at the memory location +addr+ to
    # +size+ bytes.  Returns the memory address of the reallocated memory, which
    # may be different than the address passed in.
    def self.realloc(addr, size)
        #This is a stub, used for indexing
    end
    # DL.free(addr)
    #  
    # Free the memory at address +addr+
    def self.free(addr)
        #This is a stub, used for indexing
    end
    # A direct accessor to a function in a C library
    # 
    # == Example
    # 
    #   libc_so = "/lib64/libc.so.6"
    #   => "/lib64/libc.so.6"
    #   libc = DL::dlopen(libc_so)
    #   => #<DL::Handle:0x00000000e05b00>
    #   @cfunc = DL::CFunc.new(libc,['strcpy'], DL::TYPE_VOIDP, 'strcpy')
    #   => #<DL::CFunc:0x000000012daec0 ptr=0x007f62ca5a8300 type=1 name='strcpy'>
    class CFunc
        # Returns the last error for the current executing thread
        def self.last_error()
            #This is a stub, used for indexing
        end
        # Returns the last win32 error for the current executing thread
        def self.win32_last_error()
            #This is a stub, used for indexing
        end
        # DL::CFunc.new(address, type=DL::TYPE_VOID, name=nil, calltype=:cdecl)
        #  
        # Create a new function that points to +address+ with an optional return type
        # of +type+, a name of +name+ and a calltype of +calltype+.
        def self.new(address, type=DL::TYPE_VOID, name=nil, calltype=:cdecl)
            #This is a stub, used for indexing
        end
        # dlcfunc.call(ary)   => some_value
        # dlcfunc[ary]        => some_value
        #  
        # Calls the function pointer passing in +ary+ as values to the underlying
        # C function.  The return value depends on the ctype.
        def call(ary)
            #This is a stub, used for indexing
        end
        # dlcfunc.call(ary)   => some_value
        # dlcfunc[ary]        => some_value
        #  
        # Calls the function pointer passing in +ary+ as values to the underlying
        # C function.  The return value depends on the ctype.
        def [] ary
            #This is a stub, used for indexing
        end
        # name  => str
        #  
        # Get the name of this function
        def name()
            #This is a stub, used for indexing
        end
        # cfunc.ctype   => num
        #  
        # Get the C function return value type.  See DL for a list of constants
        # corresponding to this method's return value.
        def ctype()
            #This is a stub, used for indexing
        end
        # cfunc.ctype = type
        #  
        # Set the C function return value type to +type+.
        def ctype= type
            #This is a stub, used for indexing
        end
        # cfunc.calltype    => symbol
        #  
        # Get the call type of this function.
        def calltype()
            #This is a stub, used for indexing
        end
        # cfunc.calltype = symbol
        #  
        # Set the call type for this function.
        def calltype= symbol
            #This is a stub, used for indexing
        end
        # cfunc.ptr
        #  
        # Get the underlying function pointer as a DL::CPtr object.
        def ptr()
            #This is a stub, used for indexing
        end
        # cfunc.ptr = pointer
        #  
        # Set the underlying function pointer to a DL::CPtr named +pointer+.
        def ptr= pointer
            #This is a stub, used for indexing
        end
        # inspect
        #  
        # Returns a string formatted with an easily readable representation of the
        # internal state of the DL::CFunc
        def inspect()
            #This is a stub, used for indexing
        end
        # inspect
        #  
        # Returns a string formatted with an easily readable representation of the
        # internal state of the DL::CFunc
        def to_s()
            #This is a stub, used for indexing
        end
        # dlfunc.to_i   => integer
        #  
        # Returns the memory location of this function pointer as an integer.
        def to_i()
            #This is a stub, used for indexing
        end
    end
    # CPtr is a class to handle C pointers
    class CPtr
        # 
        # DL::CPtr.malloc(size, freefunc = nil)  => dl cptr instance
        #  
        # Allocate +size+ bytes of memory and associate it with an optional
        # +freefunc+ that will be called when the pointer is garbage collected.
        # +freefunc+ must be an address pointing to a function or an instance of
        # DL::CFunc
        def self.malloc(size, freefunc = nil)
            #This is a stub, used for indexing
        end
        # DL::CPtr.to_ptr(val)  => cptr
        # DL::CPtr[val]         => cptr
        #  
        # Get the underlying pointer for ruby object +val+ and return it as a
        # DL::CPtr object.
        def self.to_ptr(val)
            #This is a stub, used for indexing
        end
        # DL::CPtr.to_ptr(val)  => cptr
        # DL::CPtr[val]         => cptr
        #  
        # Get the underlying pointer for ruby object +val+ and return it as a
        # DL::CPtr object.
        def self.[] val
            #This is a stub, used for indexing
        end
        # DL::CPtr.new(address)                   => dl_cptr
        # DL::CPtr.new(address, size)             => dl_cptr
        # DL::CPtr.new(address, size, freefunc)   => dl_cptr
        #  
        # Create a new pointer to +address+ with an optional +size+ and +freefunc+.
        # +freefunc+ will be called when the instance is garbage collected.
        def self.new(*several_variants)
            #This is a stub, used for indexing
        end
        # free=(function)
        #  
        # Set the free function for this pointer to the DL::CFunc in +function+.
        def free=(function)
            #This is a stub, used for indexing
        end
        # free
        #  
        # Get the free function for this pointer.  Returns  DL::CFunc or nil.
        def free()
            #This is a stub, used for indexing
        end
        # to_i
        #  
        # Returns the integer memory location of this DL::CPtr.
        def to_i()
            #This is a stub, used for indexing
        end
        # to_i
        #  
        # Returns the integer memory location of this DL::CPtr.
        def to_int()
            #This is a stub, used for indexing
        end
        # to_value
        #  
        # Cast this CPtr to a ruby object.
        def to_value()
            #This is a stub, used for indexing
        end
        # ptr
        #  
        # Returns a DL::CPtr that is a dereferenced pointer for this DL::CPtr.
        # Analogous to the star operator in C.
        def ptr()
            #This is a stub, used for indexing
        end
        # ptr
        #  
        # Returns a DL::CPtr that is a dereferenced pointer for this DL::CPtr.
        # Analogous to the star operator in C.
        def +@()
            #This is a stub, used for indexing
        end
        # ref
        #  
        # Returns a DL::CPtr that is a reference pointer for this DL::CPtr.
        # Analogous to the ampersand operator in C.
        def ref()
            #This is a stub, used for indexing
        end
        # ref
        #  
        # Returns a DL::CPtr that is a reference pointer for this DL::CPtr.
        # Analogous to the ampersand operator in C.
        def -@()
            #This is a stub, used for indexing
        end
        # null?
        #  
        # Returns true if this is a null pointer.
        def null?()
            #This is a stub, used for indexing
        end
        # 
        # ptr.to_s        => string
        # ptr.to_s(len)   => string
        #  
        # Returns the pointer contents as a string.  When called with no arguments,
        # this method will return the contents until the first NULL byte.  When
        # called with +len+, a string of +len+ bytes will be returned.
        def to_s(*several_variants)
            #This is a stub, used for indexing
        end
        # 
        # ptr.to_str        => string
        # ptr.to_str(len)   => string
        #  
        # Returns the pointer contents as a string.  When called with no arguments,
        # this method will return the contents with the length of this pointer's
        # +size+. When called with +len+, a string of +len+ bytes will be returned.
        def to_str(*several_variants)
            #This is a stub, used for indexing
        end
        # inspect
        #  
        # Returns a string formatted with an easily readable representation of the
        # internal state of the DL::CPtr
        def inspect()
            #This is a stub, used for indexing
        end
        # ptr <=> other   => -1, 0, 1, or nil
        #  
        # Returns -1 if less than, 0 if equal to, 1 if greater than +other+.  Returns
        # nil if +ptr+ cannot be compared to +other+.
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
        # Returns a new DL::CPtr that has been advanced +n+ bytes.
        def + n
            #This is a stub, used for indexing
        end
        # ptr - n   => new cptr
        #  
        # Returns a new DL::CPtr that has been moved back +n+ bytes.
        def - n
            #This is a stub, used for indexing
        end
        # ptr[index]                -> an_integer
        # ptr[start, length]        -> a_string
        #  
        # Returns integer stored at _index_.  If _start_ and _length_ are given,
        # a string containing the bytes from _start_ of length _length_ will be
        # returned.
        def [](*several_variants)
            #This is a stub, used for indexing
        end
        # ptr[index]         = int                    ->  int
        # ptr[start, length] = string or cptr or addr ->  string or dl_cptr or addr
        #  
        # Set the value at +index+ to +int+.  Or, set the memory at +start+ until
        # +length+ with the contents of +string+, the memory from +dl_cptr+, or the
        # memory pointed at by the memory address +addr+.
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
    # standard dynamic load exception
    class DLError < StandardError
    end
    # dynamic load incorrect type exception
    class DLTypeError < DLError
    end
    # The DL::Handle is the manner to access the dynamic library
    # 
    # == Example
    # 
    # === Setup
    # 
    #   libc_so = "/lib64/libc.so.6"
    #   => "/lib64/libc.so.6"
    #   @handle = DL::Handle.new(libc_so)
    #   => #<DL::Handle:0x00000000d69ef8>
    # 
    # === Setup, with flags
    # 
    #   libc_so = "/lib64/libc.so.6"
    #   => "/lib64/libc.so.6"
    #   @handle = DL::Handle.new(libc_so, DL::RTLD_LAZY | DL::RTLD_GLOBAL)
    #   => #<DL::Handle:0x00000000d69ef8>
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
        # sym(name)
        #  
        # Document-method: []
        # 
        # Get the address as an Integer for the function named +name+.
        def self.sym(name)
            #This is a stub, used for indexing
        end
        # sym(name)
        #  
        # Get the address as an Integer for the function named +name+.
        def self.[](p1)
            #This is a stub, used for indexing
        end
        # initialize(lib = nil, flags = DL::RTLD_LAZY | DL::RTLD_GLOBAL)
        #  
        # Create a new handler that opens library named +lib+ with +flags+.  If no
        # library is specified, RTLD_DEFAULT is used.
        def self.new(p1 = v1, p2 = v2)
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
        # Close this DL::Handle.  Calling close more than once will raise a
        # DL::DLError exception.
        def close()
            #This is a stub, used for indexing
        end
        # sym(name)
        #  
        # Document-method: []
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
        # Disable a call to dlclose() when this DL::Handle is garbage collected.
        def disable_close()
            #This is a stub, used for indexing
        end
        # enable_close
        #  
        # Enable a call to dlclose() when this DL::Handle is garbage collected.
        def enable_close()
            #This is a stub, used for indexing
        end
        # close_enabled?
        #  
        # Returns +true+ if dlclose() will be called when this DL::Handle is
        # garbage collected.
        def close_enabled?()
            #This is a stub, used for indexing
        end
    end
end
