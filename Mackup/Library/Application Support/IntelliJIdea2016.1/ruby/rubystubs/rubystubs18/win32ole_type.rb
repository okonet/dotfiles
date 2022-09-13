=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLE_TYPE</b>
 Ruby sources used:  Ruby-1.8.8 stable
 Created on Thu Mar 12 13:37:35 +0300 2009 by IntelliJ Ruby Stubs Generator.
=end

#   
#      <code>WIN32OLE_TYPE</code> objects represent OLE type libarary information.
#    
class WIN32OLE_TYPE < Object
  #
  # WIN32OLE_TYPE.ole_classes(typelib)
  #
  #
  #      Returns array of WIN32OLE_TYPE objects defined by the <i>typelib</i> type library.
  #
  def self.ole_classes(typelib)
    #This is a stub, used for indexing
  end
  #
  # WIN32OLE_TYPE.typelibs
  #
  #
  #     Returns array of type libraries.
  #
  #
  def self.typelibs()
    #This is a stub, used for indexing
  end
  #
  # WIN32OLE_TYPE.progids
  #
  #
  #     Returns array of ProgID.
  #
  def self.progids()
    #This is a stub, used for indexing
  end
  #
  # WIN32OLE_TYPE.new(typelib, ole_class) -> WIN32OLE_TYPE object
  #
  #
  #     Returns a new WIN32OLE_TYPE object.
  #     The first argument <i>typelib</i> specifies OLE type library name.
  #     The second argument specifies OLE class name.
  #
  #         WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Application')
  #             # => WIN32OLE_TYPE object of Application class of Excel.
  #
  def self.new(typelib, ole_class)
    #This is a stub, used for indexing
  end
  #
  # WIN32OLE_TYPE#name #=> OLE type name
  #
  #
  #    Returns OLE type name.
  #       tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Application')
  #       puts tobj.name  # => Application
  #

  def name()
    #This is a stub, used for indexing
  end

  alias to_s name
  #
  # WIN32OLE_TYPE#ole_type #=> OLE type string.
  #
  #
  #     returns type of OLE class.
  #       tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Application')
  #       puts tobj.ole_type  # => Class
  #

  def ole_type()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#guid  #=> GUID
  #
  #
  #     Returns GUID.
  #       tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Application')
  #       puts tobj.guid  # => {00024500-0000-0000-C000-000000000046}
  #

  def guid()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#progid  #=> ProgID
  #
  #
  #    Returns ProgID if it exists. If not found, then returns nil.
  #       tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Application')
  #       puts tobj.progid  # =>   Excel.Application.9
  #

  def progid()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#visible  #=> true or false
  #
  #
  #     Returns true if the OLE class is public.
  #       tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Application')
  #       puts tobj.visible  # => true
  #

  def visible?()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#major_version
  #
  #
  #     Returns major version.
  #        tobj = WIN32OLE_TYPE.new('Microsoft Word 10.0 Object Library', 'Documents')
  #        puts tobj.major_version # => 8
  #

  def major_version()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#minor_version #=> OLE minor version
  #
  #
  #     Returns minor version.
  #        tobj = WIN32OLE_TYPE.new('Microsoft Word 10.0 Object Library', 'Documents')
  #        puts tobj.minor_version # => 2
  #

  def minor_version()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#typekind #=> number of type.
  #
  #
  #     Returns number which represents type.
  #       tobj = WIN32OLE_TYPE.new('Microsoft Word 10.0 Object Library', 'Documents')
  #       puts tobj.typekind # => 4
  #
  #

  def typekind()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#helpstring #=> help string.
  #
  #
  #     Returns help string.
  #       tobj = WIN32OLE_TYPE.new('Microsoft Internet Controls', 'IWebBrowser')
  #       puts tobj.helpstring # => Web Browser interface
  #

  def helpstring()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#src_type #=> OLE source class
  #
  #
  #     Returns source class when the OLE class is 'Alias'.
  #        tobj =  WIN32OLE_TYPE.new('Microsoft Office 9.0 Object Library', 'MsoRGBType')
  #        puts tobj.src_type # => I4
  #
  #

  def src_type()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#helpfile
  #
  #
  #     Returns helpfile path. If helpfile is not found, then returns nil.
  #        tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Worksheet')
  #        puts tobj.helpfile # => C:\...\VBAXL9.CHM
  #
  #

  def helpfile()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#helpcontext
  #
  #
  #     Returns helpcontext. If helpcontext is not found, then returns nil.
  #        tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Worksheet')
  #        puts tobj.helpfile # => 131185
  #

  def helpcontext()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#variables
  #
  #
  #     Returns array of WIN32OLE_VARIABLE objects which represent variables
  #     defined in OLE class.
  #        tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'XlSheetType')
  #        vars = tobj.variables
  #        vars.each do |v|
  #          puts "#{v.name} = #{v.value}"
  #        end
  #
  #        The result of above sample script is follows:
  #          xlChart = -4109
  #          xlDialogSheet = -4116
  #          xlExcel4IntlMacroSheet = 4
  #          xlExcel4MacroSheet = 3
  #          xlWorksheet = -4167
  #
  #

  def variables()
    #This is a stub, used for indexing
  end

  #
  # WIN32OLE_TYPE#ole_methods # the array of WIN32OLE_METHOD objects.
  #
  #
  #     Returns array of WIN32OLE_METHOD objects which represent OLE method defined in
  #     OLE type library.
  #       tobj = WIN32OLE_TYPE.new('Microsoft Excel 9.0 Object Library', 'Worksheet')
  #       methods = tobj.ole_methods.collect{|m|
  #         m.name
  #       }
  #       # => ['Activate', 'Copy', 'Delete',....]
  #

  def ole_methods()
    #This is a stub, used for indexing
  end

  # Alias for #name

  def to_s()
    #This is a stub, used for indexing
  end
end
