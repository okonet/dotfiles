=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLE_VARIANT</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

class WIN32OLE_VARIANT
    Empty = nil #value is unknown, used for indexing.
    Null = nil #value is unknown, used for indexing.
    Nothing = nil #value is unknown, used for indexing.
    # WIN32OLE_VARIANT.array(ary, vt)
    #  
    # Returns Ruby object wrapping OLE variant whose variant type is VT_ARRAY.
    # The first argument should be Array object which specifies dimensions
    # and each size of dimensions of OLE array.
    # The second argument specifies variant type of the element of OLE array.
    # 
    # The following create 2 dimensions OLE array. The first dimensions size
    # is 3, and the second is 4.
    # 
    #    ole_ary = WIN32OLE_VARIANT.array([3,4], VT_I4)
    #    ruby_ary = ole_ary.value # => [[0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 0, 0]]
    def self.array(ary, vt)
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIANT.new(val, vartype) #=> WIN32OLE_VARIANT object.
    #  
    # Returns Ruby object wrapping OLE variant.
    # The first argument specifies Ruby object to convert OLE variant variable.
    # The second argument specifies VARIANT type.
    # In some situation, you need the WIN32OLE_VARIANT object to pass OLE method
    # 
    #    shell = WIN32OLE.new("Shell.Application")
    #    folder = shell.NameSpace("C:\\Windows")
    #    item = folder.ParseName("tmp.txt")
    #    # You can't use Ruby String object to call FolderItem.InvokeVerb.
    #    # Instead, you have to use WIN32OLE_VARIANT object to call the method.
    #    shortcut = WIN32OLE_VARIANT.new("Create Shortcut(\&S)")
    #    item.invokeVerb(shortcut)
    def self.new(val, vartype)
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIANT.value #=> Ruby object.
    #  
    # Returns Ruby object value from OLE variant.
    #    obj = WIN32OLE_VARIANT.new(1, WIN32OLE::VARIANT::VT_BSTR)
    #    obj.value # => "1" (not Fixnum object, but String object "1")
    def value()
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIANT.value = val #=> set WIN32OLE_VARIANT value to val.
    #  
    # Sets variant value to val. If the val type does not match variant value
    # type(vartype), then val is changed to match variant value type(vartype)
    # before setting val.
    # Thie method is not available when vartype is VT_ARRAY(except VT_UI1|VT_ARRAY).
    # If the vartype is VT_UI1|VT_ARRAY, the val should be String object.
    # 
    #    obj = WIN32OLE_VARIANT.new(1) # obj.vartype is WIN32OLE::VARIANT::VT_I4
    #    obj.value = 3.2 # 3.2 is changed to 3 when setting value.
    #    p obj.value # => 3
    def value= val
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIANT.vartype #=> OLE variant type.
    #  
    # Returns OLE variant type.
    #    obj = WIN32OLE_VARIANT.new("string")
    #    obj.vartype # => WIN32OLE::VARIANT::VT_BSTR
    def vartype()
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIANT[i,j,...] #=> element of OLE array.
    #  
    # Returns the element of WIN32OLE_VARIANT object(OLE array).
    # This method is available only when the variant type of
    # WIN32OLE_VARIANT object is VT_ARRAY.
    # 
    # REMARK:
    #    The all indicies should be 0 or natural number and
    #    lower than or equal to max indicies.
    #    (This point is different with Ruby Array indicies.)
    # 
    #    obj = WIN32OLE_VARIANT.new([[1,2,3],[4,5,6]])
    #    p obj[0,0] # => 1
    #    p obj[1,0] # => 4
    #    p obj[2,0] # => WIN32OLERuntimeError
    #    p obj[0, -1] # => WIN32OLERuntimeError
    def [](*args)
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIANT[i,j,...] = val #=> set the element of OLE array
    #  
    # Set the element of WIN32OLE_VARIANT object(OLE array) to val.
    # This method is available only when the variant type of
    # WIN32OLE_VARIANT object is VT_ARRAY.
    # 
    # REMARK:
    #    The all indicies should be 0 or natural number and
    #    lower than or equal to max indicies.
    #    (This point is different with Ruby Array indicies.)
    # 
    #    obj = WIN32OLE_VARIANT.new([[1,2,3],[4,5,6]])
    #    obj[0,0] = 7
    #    obj[1,0] = 8
    #    p obj.value # => [[7,2,3], [8,5,6]]
    #    obj[2,0] = 9 # => WIN32OLERuntimeError
    #    obj[0, -1] = 9 # => WIN32OLERuntimeError
    def []=(i,j,*smth, val)
        #This is a stub, used for indexing
    end
end
