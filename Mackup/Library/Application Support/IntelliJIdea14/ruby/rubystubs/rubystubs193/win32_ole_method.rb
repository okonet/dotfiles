=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLE_METHOD</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>WIN32OLE_METHOD</code> objects represent OLE method information.
class WIN32OLE_METHOD
    # WIN32OLE_METHOD.new(ole_type,  method) -> WIN32OLE_METHOD object
    #  
    # Returns a new WIN32OLE_METHOD object which represents the information
    # about OLE method.
    # The first argument <i>ole_type</i> specifies WIN32OLE_TYPE object.
    # The second argument <i>method</i> specifies OLE method name defined OLE class
    # which represents WIN32OLE_TYPE object.
    # 
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    def self.new(ole_type,  method)
        #This is a stub, used for indexing
    end
    # call-seq
    #    WIN32OLE_METHOD#name
    # 
    # Returns the name of the method.
    # 
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    #    puts method.name # => SaveAs
    def name()
        #This is a stub, used for indexing
    end
    alias to_s name
    # WIN32OLE_METHOD#return_type
    #  
    # Returns string of return value type of method.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #    method = WIN32OLE_METHOD.new(tobj, 'Add')
    #    puts method.return_type # => Workbook
    def return_type()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#return_vtype
    #  
    # Returns number of return value type of method.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #    method = WIN32OLE_METHOD.new(tobj, 'Add')
    #    puts method.return_vtype # => 26
    def return_vtype()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#return_type_detail
    #  
    # Returns detail information of return value type of method.
    # The information is array.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #    method = WIN32OLE_METHOD.new(tobj, 'Add')
    #    p method.return_type_detail # => ["PTR", "USERDEFINED", "Workbook"]
    def return_type_detail()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#invoke_kind
    #  
    # Returns the method kind string. The string is "UNKNOWN" or "PROPERTY"
    # or "PROPERTY" or "PROPERTYGET" or "PROPERTYPUT" or "PROPERTYPPUTREF"
    # or "FUNC".
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #    method = WIN32OLE_METHOD.new(tobj, 'Add')
    #    puts method.invoke_kind # => "FUNC"
    def invoke_kind()
        #This is a stub, used for indexing
    end
    # WIN32OLE_MTHOD#invkind
    #  
    # Returns the method invoke kind.
    #   tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #   method = WIN32OLE_METHOD.new(tobj, 'Add')
    #   puts method.invkind # => 1
    def invkind()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#visible?
    #  
    # Returns true if the method is public.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #    method = WIN32OLE_METHOD.new(tobj, 'Add')
    #    puts method.visible? # => true
    def visible?()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#event?
    #  
    # Returns true if the method is event.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SheetActivate')
    #    puts method.event? # => true
    def event?()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#event_interface
    #  
    # Returns event interface name if the method is event.
    #   tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #   method = WIN32OLE_METHOD.new(tobj, 'SheetActivate')
    #   puts method.event_interface # =>  WorkbookEvents
    def event_interface()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#helpstring
    #  
    # Returns help string of OLE method. If the help string is not found,
    # then the method returns nil.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Internet Controls', 'IWebBrowser')
    #    method = WIN32OLE_METHOD.new(tobj, 'Navigate')
    #    puts method.helpstring # => Navigates to a URL or file.
    def helpstring()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#helpfile
    #  
    # Returns help file. If help file is not found, then
    # the method returns nil.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #    method = WIN32OLE_METHOD.new(tobj, 'Add')
    #    puts method.helpfile # => C:\...\VBAXL9.CHM
    def helpfile()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#helpcontext
    #  
    # Returns help context.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #    method = WIN32OLE_METHOD.new(tobj, 'Add')
    #    puts method.helpcontext # => 65717
    def helpcontext()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#dispid
    #  
    # Returns dispatch ID.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #    method = WIN32OLE_METHOD.new(tobj, 'Add')
    #    puts method.dispid # => 181
    def dispid()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#offset_vtbl
    #  
    # Returns the offset ov VTBL.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbooks')
    #    method = WIN32OLE_METHOD.new(tobj, 'Add')
    #    puts method.offset_vtbl # => 40
    def offset_vtbl()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#size_params
    #  
    # Returns the size of arguments of the method.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    #    puts method.size_params # => 11
    def size_params()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#size_opt_params
    #  
    # Returns the size of optional parameters.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    #    puts method.size_opt_params # => 4
    def size_opt_params()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#params
    #  
    # returns array of WIN32OLE_PARAM object corresponding with method parameters.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    #    p method.params # => [Filename, FileFormat, Password, WriteResPassword,
    #                          ReadOnlyRecommended, CreateBackup, AccessMode,
    #                          ConflictResolution, AddToMru, TextCodepage,
    #                          TextVisualLayout]
    def params()
        #This is a stub, used for indexing
    end
    # WIN32OLE_METHOD#inspect -> String
    #  
    # Returns the method name with class name.
    def inspect()
        #This is a stub, used for indexing
    end
    def to_s()
        #This is a stub, used for indexing
    end
end
