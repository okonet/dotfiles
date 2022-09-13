=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLE_VARIABLE</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>WIN32OLE_VARIABLE</code> objects represent OLE variable information.
class WIN32OLE_VARIABLE
    # WIN32OLE_VARIABLE#name
    #  
    # Returns the name of variable.
    # 
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'XlSheetType')
    #    variables = tobj.variables
    #    variables.each do |variable|
    #      puts "#{variable.name}"
    #    end
    # 
    #    The result of above script is following:
    #      xlChart
    #      xlDialogSheet
    #      xlExcel4IntlMacroSheet
    #      xlExcel4MacroSheet
    #      xlWorksheet
    def name()
        #This is a stub, used for indexing
    end
    alias to_s name
    # WIN32OLE_VARIABLE#ole_type
    #  
    # Returns OLE type string.
    # 
    #   tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'XlSheetType')
    #   variables = tobj.variables
    #   variables.each do |variable|
    #     puts "#{variable.ole_type} #{variable.name}"
    #   end
    # 
    #   The result of above script is following:
    #     INT xlChart
    #     INT xlDialogSheet
    #     INT xlExcel4IntlMacroSheet
    #     INT xlExcel4MacroSheet
    #     INT xlWorksheet
    def ole_type()
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIABLE#ole_type_detail
    #  
    # Returns detail information of type. The information is array of type.
    # 
    #    tobj = WIN32OLE_TYPE.new('DirectX 7 for Visual Basic Type Library', 'D3DCLIPSTATUS')
    #    variable = tobj.variables.find {|variable| variable.name == 'lFlags'}
    #    tdetail  = variable.ole_type_detail
    #    p tdetail # => ["USERDEFINED", "CONST_D3DCLIPSTATUSFLAGS"]
    def ole_type_detail()
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIABLE#value
    #  
    # Returns value if value is exists. If the value does not exist,
    # this method returns nil.
    # 
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'XlSheetType')
    #    variables = tobj.variables
    #    variables.each do |variable|
    #      puts "#{variable.name} #{variable.value}"
    #    end
    # 
    #    The result of above script is following:
    #      xlChart = -4109
    #      xlDialogSheet = -4116
    #      xlExcel4IntlMacroSheet = 4
    #      xlExcel4MacroSheet = 3
    #      xlWorksheet = -4167
    def value()
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIABLE#visible?
    #  
    # Returns true if the variable is public.
    # 
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'XlSheetType')
    #    variables = tobj.variables
    #    variables.each do |variable|
    #      puts "#{variable.name} #{variable.visible?}"
    #    end
    # 
    #    The result of above script is following:
    #      xlChart true
    #      xlDialogSheet true
    #      xlExcel4IntlMacroSheet true
    #      xlExcel4MacroSheet true
    #      xlWorksheet true
    def visible?()
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIABLE#variable_kind
    #  
    # Returns variable kind string.
    # 
    #    tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'XlSheetType')
    #    variables = tobj.variables
    #    variables.each do |variable|
    #      puts "#{variable.name} #{variable.variable_kind}"
    #    end
    # 
    #    The result of above script is following:
    #      xlChart CONSTANT
    #      xlDialogSheet CONSTANT
    #      xlExcel4IntlMacroSheet CONSTANT
    #      xlExcel4MacroSheet CONSTANT
    #      xlWorksheet CONSTANT
    def variable_kind()
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIABLE#varkind
    #  
    # Returns the number which represents variable kind.
    #   tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'XlSheetType')
    #   variables = tobj.variables
    #   variables.each do |variable|
    #     puts "#{variable.name} #{variable.varkind}"
    #   end
    # 
    #   The result of above script is following:
    #      xlChart 2
    #      xlDialogSheet 2
    #      xlExcel4IntlMacroSheet 2
    #      xlExcel4MacroSheet 2
    #      xlWorksheet 2
    def varkind()
        #This is a stub, used for indexing
    end
    # WIN32OLE_VARIABLE#inspect -> String
    #  
    # Returns the OLE variable name and the value with class name.
    def inspect()
        #This is a stub, used for indexing
    end
    def to_s()
        #This is a stub, used for indexing
    end
end
