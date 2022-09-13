=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLE_PARAM</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# <code>WIN32OLE_PARAM</code> objects represent param information of
# the OLE method.
class WIN32OLE_PARAM
    # WIN32OLE_PARAM.new(method, n) -> WIN32OLE_PARAM object
    #  
    # Returns WIN32OLE_PARAM object which represents OLE parameter information.
    # 1st argument should be WIN32OLE_METHOD object.
    # 2nd argument `n' is n-th parameter of the method specified by 1st argument.
    # 
    #    tobj = WIN32OLE_TYPE.new('Microsoft Scripting Runtime', 'IFileSystem')
    #    method = WIN32OLE_METHOD.new(tobj, 'CreateTextFile')
    #    param = WIN32OLE_PARAM.new(method, 2) # => #<WIN32OLE_PARAM:Overwrite=true>
    def self.new(method, n)
        #This is a stub, used for indexing
    end
    # WIN32OLE_PARAM#name
    #  
    # Returns name.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    #    param1 = method.params[0]
    #    puts param1.name # => Filename
    def name()
        #This is a stub, used for indexing
    end
    alias to_s name
    # WIN32OLE_PARAM#ole_type
    #  
    # Returns OLE type of WIN32OLE_PARAM object(parameter of OLE method).
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    #    param1 = method.params[0]
    #    puts param1.ole_type # => VARIANT
    def ole_type()
        #This is a stub, used for indexing
    end
    # WIN32OLE_PARAM#ole_type_detail
    #  
    # Returns detail information of type of argument.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'IWorksheetFunction')
    #    method = WIN32OLE_METHOD.new(tobj, 'SumIf')
    #    param1 = method.params[0]
    #    p param1.ole_type_detail # => ["PTR", "USERDEFINED", "Range"]
    def ole_type_detail()
        #This is a stub, used for indexing
    end
    # WIN32OLE_PARAM#input?
    #  
    # Returns true if the parameter is input.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    #    param1 = method.params[0]
    #    puts param1.input? # => true
    def input?()
        #This is a stub, used for indexing
    end
    # WIN32OLE#output?
    #  
    # Returns true if argument is output.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Internet Controls', 'DWebBrowserEvents')
    #    method = WIN32OLE_METHOD.new(tobj, 'NewWindow')
    #    method.params.each do |param|
    #      puts "#{param.name} #{param.output?}"
    #    end
    # 
    #    The result of above script is following:
    #      URL false
    #      Flags false
    #      TargetFrameName false
    #      PostData false
    #      Headers false
    #      Processed true
    def output?()
        #This is a stub, used for indexing
    end
    # WIN32OLE_PARAM#optional?
    #  
    # Returns true if argument is optional.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    #    param1 = method.params[0]
    #    puts "#{param1.name} #{param1.optional?}" # => Filename true
    def optional?()
        #This is a stub, used for indexing
    end
    # WIN32OLE_PARAM#retval?
    #  
    # Returns true if argument is return value.
    #    tobj = WIN32OLE_TYPE.new('DirectX 7 for Visual Basic Type Library',
    #                             'DirectPlayLobbyConnection')
    #    method = WIN32OLE_METHOD.new(tobj, 'GetPlayerShortName')
    #    param = method.params[0]
    #    puts "#{param.name} #{param.retval?}"  # => name true
    def retval?()
        #This is a stub, used for indexing
    end
    # WIN32OLE_PARAM#default
    #  
    # Returns default value. If the default value does not exist,
    # this method returns nil.
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Workbook')
    #    method = WIN32OLE_METHOD.new(tobj, 'SaveAs')
    #    method.params.each do |param|
    #      if param.default
    #        puts "#{param.name} (= #{param.default})"
    #      else
    #        puts "#{param}"
    #      end
    #    end
    # 
    #    The above script result is following:
    #        Filename
    #        FileFormat
    #        Password
    #        WriteResPassword
    #        ReadOnlyRecommended
    #        CreateBackup
    #        AccessMode (= 1)
    #        ConflictResolution
    #        AddToMru
    #        TextCodepage
    #        TextVisualLayout
    def default()
        #This is a stub, used for indexing
    end
    # WIN32OLE_PARAM#inspect -> String
    #  
    # Returns the parameter name with class name. If the parameter has default value,
    # then returns name=value string with class name.
    def inspect()
        #This is a stub, used for indexing
    end
    def to_s()
        #This is a stub, used for indexing
    end
end
