=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLE_TYPELIB</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>WIN32OLE_TYPELIB</code> objects represent OLE tyblib information.
class WIN32OLE_TYPELIB
    # 
    # WIN32OLE_TYPELIB.typelibs
    #  
    # Returns the array of WIN32OLE_TYPELIB object.
    # 
    #    tlibs = WIN32OLE_TYPELIB.typelibs
    def self.typelibs()
        #This is a stub, used for indexing
    end
    # WIN32OLE_TYPELIB.new(typelib [, version1, version2]) -> WIN32OLE_TYPELIB object
    #  
    # Returns a new WIN32OLE_TYPELIB object.
    # 
    # The first argument <i>typelib</i>  specifies OLE type library name or GUID or
    # OLE library file.
    # The second argument is major version or version of the type library.
    # The third argument is minor version.
    # The second argument and third argument are optional.
    # If the first argument is type library name, then the second and third argument
    # are ignored.
    # 
    #     tlib1 = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #     tlib2 = WIN32OLE_TYPELIB.new('{00020813-0000-0000-C000-000000000046}')
    #     tlib3 = WIN32OLE_TYPELIB.new('{00020813-0000-0000-C000-000000000046}', 1.3)
    #     tlib4 = WIN32OLE_TYPELIB.new('{00020813-0000-0000-C000-000000000046}', 1, 3)
    #     tlib5 = WIN32OLE_TYPELIB.new("C:\\WINNT\\SYSTEM32\\SHELL32.DLL")
    #     puts tlib1.name  # -> 'Microsoft Excel 9.0 Object Library'
    #     puts tlib2.name  # -> 'Microsoft Excel 9.0 Object Library'
    #     puts tlib3.name  # -> 'Microsoft Excel 9.0 Object Library'
    #     puts tlib4.name  # -> 'Microsoft Excel 9.0 Object Library'
    #     puts tlib5.name  # -> 'Microsoft Shell Controls And Automation'
    def self.new(*args)
        #This is a stub, used for indexing
    end
    # WIN32OLE_TYPELIB#guid -> The guid string.
    #  
    # Returns guid string which specifies type library.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    guid = tlib.guid # -> '{00020813-0000-0000-C000-000000000046}'
    def guid()
        #This is a stub, used for indexing
    end
    # WIN32OLE_TYPELIB#name -> The type library name
    #  
    # Returns the type library name.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    name = tlib.name # -> 'Microsoft Excel 9.0 Object Library'
    def name()
        #This is a stub, used for indexing
    end
    alias to_s name
    # WIN32OLE_TYPELIB#version -> The type library version.
    #  
    # Returns the type library version.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    puts tlib.version #-> 1.3
    def version()
        #This is a stub, used for indexing
    end
    # WIN32OLE_TYPELIB#major_version -> The type library major version.
    #  
    # Returns the type library major version.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    puts tlib.major_version # -> 1
    def major_version()
        #This is a stub, used for indexing
    end
    # WIN32OLE_TYPELIB#minor_version -> The type library minor version.
    #  
    # Returns the type library minor version.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    puts tlib.minor_version # -> 3
    def minor_version()
        #This is a stub, used for indexing
    end
    # WIN32OLE_TYPELIB#path -> The type library file path.
    #  
    # Returns the type library file path.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    puts tlib.path #-> 'C:\...\EXCEL9.OLB'
    def path()
        #This is a stub, used for indexing
    end
    # WIN32OLE_TYPELIB#ole_types -> The array of WIN32OLE_TYPE object included the type library.
    #  
    # Returns the type library file path.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    classes = tlib.ole_types.collect{|k| k.name} # -> ['AddIn', 'AddIns' ...]
    def ole_types()
        #This is a stub, used for indexing
    end
    alias ole_classes ole_types
    # WIN32OLE_TYPELIB#visible?
    #  
    # Returns true if the type library information is not hidden.
    # If wLibFlags of TLIBATTR is 0 or LIBFLAG_FRESTRICTED or LIBFLAG_FHIDDEN,
    # the method returns false, otherwise, returns true.
    # If the method fails to access the TLIBATTR information, then
    # WIN32OLERuntimeError is raised.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    tlib.visible? # => true
    def visible?()
        #This is a stub, used for indexing
    end
    # WIN32OLE_TYPELIB#library_name
    #  
    # Returns library name.
    # If the method fails to access library name, WIN32OLERuntimeError is raised.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    tlib.library_name # => Excel
    def library_name()
        #This is a stub, used for indexing
    end
    # WIN32OLE_TYPELIB#inspect -> String
    #  
    # Returns the type library name with class name.
    # 
    #    tlib = WIN32OLE_TYPELIB.new('Microsoft Excel 9.0 Object Library')
    #    tlib.inspect # => "<#WIN32OLE_TYPELIB:Microsoft Excel 9.0 Object Library>"
    def inspect()
        #This is a stub, used for indexing
    end
    def ole_classes()
        #This is a stub, used for indexing
    end
    def to_s()
        #This is a stub, used for indexing
    end
end
