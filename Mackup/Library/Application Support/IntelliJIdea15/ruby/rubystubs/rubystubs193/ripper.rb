=begin
 This is a machine generated stub using stdlib-doc for <b>class Ripper</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

class Ripper
    Version = nil #value is unknown, used for indexing.
    # Ripper.new(src, filename="(ripper)", lineno=1) -> ripper
    #  
    # Create a new Ripper object.
    # _src_ must be a String, an IO, or an Object which has #gets method.
    # 
    # This method does not starts parsing.
    # See also Ripper#parse and Ripper.parse.
    def self.new(p1, p2 = v2, p3 = v3)
        #This is a stub, used for indexing
    end
    # ripper#parse
    #  
    # Start parsing and returns the value of the root action.
    def parse()
        #This is a stub, used for indexing
    end
    # ripper#column   -> Integer
    #  
    # Return column number of current parsing line.
    # This number starts from 0.
    def column()
        #This is a stub, used for indexing
    end
    # ripper#filename   -> String
    #  
    # Return current parsing filename.
    def filename()
        #This is a stub, used for indexing
    end
    # ripper#lineno   -> Integer
    #  
    # Return line number of current parsing line.
    # This number starts from 1.
    def lineno()
        #This is a stub, used for indexing
    end
    # ripper#end_seen?   -> Boolean
    #  
    # Return true if parsed source ended by +\_\_END\_\_+.
    def end_seen?()
        #This is a stub, used for indexing
    end
    # ripper#encoding   -> encoding
    #  
    # Return encoding of the source.
    def encoding()
        #This is a stub, used for indexing
    end
    # ripper.yydebug   -> true or false
    #  
    # Get yydebug.
    def yydebug()
        #This is a stub, used for indexing
    end
    # ripper.yydebug = flag
    #  
    # Set yydebug.
    def yydebug= flag
        #This is a stub, used for indexing
    end
end
