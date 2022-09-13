=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLE_RECORD</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# <code>WIN32OLE_RECORD</code> objects represents VT_RECORD OLE variant.
# Win32OLE returns WIN32OLE_RECORD object if the result value of invoking
# OLE methods.
# 
# If COM server in VB.NET ComServer project is the following:
# 
#   Imports System.Runtime.InteropServices
#   Public Class ComClass
#       Public Structure Book
#           <MarshalAs(UnmanagedType.BStr)> _
#           Public title As String
#           Public cost As Integer
#       End Structure
#       Public Function getBook() As Book
#           Dim book As New Book
#           book.title = "The Ruby Book"
#           book.cost = 20
#           Return book
#       End Function
#   End Class
# 
# then, you can retrieve getBook return value from the following
# Ruby script:
# 
#   require 'win32ole'
#   obj = WIN32OLE.new('ComServer.ComClass')
#   book = obj.getBook
#   book.class # => WIN32OLE_RECORD
#   book.title # => "The Ruby Book"
#   book.cost  # => 20
class WIN32OLE_RECORD
    # WIN32OLE_RECORD.new(typename, obj) -> WIN32OLE_RECORD object
    #  
    # Returns WIN32OLE_RECORD object. The first argument is struct name (String
    # or Symbol).
    # The second parameter obj should be WIN32OLE object or WIN32OLE_TYPELIB object.
    # If COM server in VB.NET ComServer project is the following:
    # 
    #   Imports System.Runtime.InteropServices
    #   Public Class ComClass
    #       Public Structure Book
    #           <MarshalAs(UnmanagedType.BStr)> _
    #           Public title As String
    #           Public cost As Integer
    #       End Structure
    #   End Class
    # 
    # then, you can create WIN32OLE_RECORD object is as following:
    # 
    #   require 'win32ole'
    #   obj = WIN32OLE.new('ComServer.ComClass')
    #   book1 = WIN32OLE_RECORD.new('Book', obj) # => WIN32OLE_RECORD object
    #   tlib = obj.ole_typelib
    #   book2 = WIN32OLE_RECORD.new('Book', tlib) # => WIN32OLE_RECORD object
    def self.new(typename, obj)
        #This is a stub, used for indexing
    end
    # WIN32OLE_RECORD#to_h #=> Ruby Hash object.
    #  
    # Returns Ruby Hash object which represents VT_RECORD variable.
    # The keys of Hash object are member names of VT_RECORD OLE variable and
    # the values of Hash object are values of VT_RECORD OLE variable.
    # 
    # If COM server in VB.NET ComServer project is the following:
    # 
    #    Imports System.Runtime.InteropServices
    #    Public Class ComClass
    #        Public Structure Book
    #            <MarshalAs(UnmanagedType.BStr)> _
    #            Public title As String
    #            Public cost As Integer
    #        End Structure
    #        Public Function getBook() As Book
    #            Dim book As New Book
    #            book.title = "The Ruby Book"
    #            book.cost = 20
    #            Return book
    #        End Function
    #    End Class
    # 
    # then, the result of WIN32OLE_RECORD#to_h is the following:
    # 
    #    require 'win32ole'
    #    obj = WIN32OLE.new('ComServer.ComClass')
    #    book = obj.getBook
    #    book.to_h # => {"title"=>"The Ruby Book", "cost"=>20}
    def to_h()
        #This is a stub, used for indexing
    end
    # WIN32OLE_RECORD#typename #=> String object
    #  
    # Returns the type name of VT_RECORD OLE variable.
    # 
    # If COM server in VB.NET ComServer project is the following:
    # 
    #    Imports System.Runtime.InteropServices
    #    Public Class ComClass
    #        Public Structure Book
    #            <MarshalAs(UnmanagedType.BStr)> _
    #            Public title As String
    #            Public cost As Integer
    #        End Structure
    #        Public Function getBook() As Book
    #            Dim book As New Book
    #            book.title = "The Ruby Book"
    #            book.cost = 20
    #            Return book
    #        End Function
    #    End Class
    # 
    # then, the result of WIN32OLE_RECORD#typename is the following:
    # 
    #    require 'win32ole'
    #    obj = WIN32OLE.new('ComServer.ComClass')
    #    book = obj.getBook
    #    book.typename # => "Book"
    def typename()
        #This is a stub, used for indexing
    end
    # WIN32OLE_RECORD#method_missing(name)
    #  
    # Returns value specified by the member name of VT_RECORD OLE variable.
    # Or sets value specified by the member name of VT_RECORD OLE variable.
    # If the member name is not correct, KeyError exception is raised.
    # 
    # If COM server in VB.NET ComServer project is the following:
    # 
    #    Imports System.Runtime.InteropServices
    #    Public Class ComClass
    #        Public Structure Book
    #            <MarshalAs(UnmanagedType.BStr)> _
    #            Public title As String
    #            Public cost As Integer
    #        End Structure
    #    End Class
    # 
    # Then getting/setting value from Ruby is as the following:
    # 
    #    obj = WIN32OLE.new('ComServer.ComClass')
    #    book = WIN32OLE_RECORD.new('Book', obj)
    #    book.title # => nil ( book.method_missing(:title) is invoked. )
    #    book.title = "Ruby" # ( book.method_missing(:title=, "Ruby") is invoked. )
    def method_missing(name)
        #This is a stub, used for indexing
    end
    # WIN32OLE_RECORD#ole_instance_variable_get(name)
    #  
    # Returns value specified by the member name of VT_RECORD OLE object.
    # If the member name is not correct, KeyError exception is raised.
    # If you can't access member variable of VT_RECORD OLE object directly,
    # use this method.
    # 
    # If COM server in VB.NET ComServer project is the following:
    # 
    #    Imports System.Runtime.InteropServices
    #    Public Class ComClass
    #        Public Structure ComObject
    #            Public object_id As Ineger
    #        End Structure
    #    End Class
    # 
    # and Ruby Object class has title attribute:
    # 
    # then accessing object_id of ComObject from Ruby is as the following:
    # 
    #    srver = WIN32OLE.new('ComServer.ComClass')
    #    obj = WIN32OLE_RECORD.new('ComObject', server)
    #    # obj.object_id returns Ruby Object#object_id
    #    obj.ole_instance_variable_get(:object_id) # => nil
    def ole_instance_variable_get(name)
        #This is a stub, used for indexing
    end
    # WIN32OLE_RECORD#ole_instance_variable_set(name, val)
    #  
    # Sets value specified by the member name of VT_RECORD OLE object.
    # If the member name is not correct, KeyError exception is raised.
    # If you can't set value of member of VT_RECORD OLE object directly,
    # use this method.
    # 
    # If COM server in VB.NET ComServer project is the following:
    # 
    #    Imports System.Runtime.InteropServices
    #    Public Class ComClass
    #        <MarshalAs(UnmanagedType.BStr)> _
    #        Public title As String
    #        Public cost As Integer
    #    End Class
    # 
    # then setting value of the `title' member is as following:
    # 
    #    srver = WIN32OLE.new('ComServer.ComClass')
    #    obj = WIN32OLE_RECORD.new('Book', server)
    #    obj.ole_instance_variable_set(:title, "The Ruby Book")
    def ole_instance_variable_set(name, val)
        #This is a stub, used for indexing
    end
    # WIN32OLE_RECORD#inspect -> String
    #  
    # Returns the OLE struct name and member name and the value of member
    # 
    # If COM server in VB.NET ComServer project is the following:
    # 
    #    Imports System.Runtime.InteropServices
    #    Public Class ComClass
    #        <MarshalAs(UnmanagedType.BStr)> _
    #        Public title As String
    #        Public cost As Integer
    #    End Class
    # 
    # then
    # 
    #    srver = WIN32OLE.new('ComServer.ComClass')
    #    obj = WIN32OLE_RECORD.new('Book', server)
    #    obj.inspect # => <WIN32OLE_RECORD(ComClass) {"title" => nil, "cost" => nil}>
    def inspect()
        #This is a stub, used for indexing
    end
end
