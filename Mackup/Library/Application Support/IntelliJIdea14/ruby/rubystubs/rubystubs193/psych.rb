=begin
 This is a machine generated stub using stdlib-doc for <b>module Psych</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

module Psych
    # Psych.libyaml_version
    #  
    # Returns the version of libyaml being used
    def self.libyaml_version()
        #This is a stub, used for indexing
    end
    class Emitter < Handler
        # Psych::Emitter.new(io, options = Psych::Emitter::OPTIONS)
        #  
        # Create a new Psych::Emitter that writes to +io+.
        def self.new(io, options = Psych::Emitter::OPTIONS)
            #This is a stub, used for indexing
        end
        # emitter.start_stream(encoding)
        #  
        # Start a stream emission with +encoding+
        # 
        # See Psych::Handler#start_stream
        def start_stream(encoding)
            #This is a stub, used for indexing
        end
        # emitter.end_stream
        #  
        # End a stream emission
        # 
        # See Psych::Handler#end_stream
        def end_stream()
            #This is a stub, used for indexing
        end
        # emitter.start_document(version, tags, implicit)
        #  
        # Start a document emission with YAML +version+, +tags+, and an +implicit+
        # start.
        # 
        # See Psych::Handler#start_document
        def start_document(version, tags, implicit)
            #This is a stub, used for indexing
        end
        # emitter.end_document(implicit)
        #  
        # End a document emission with an +implicit+ ending.
        # 
        # See Psych::Handler#end_document
        def end_document(implicit)
            #This is a stub, used for indexing
        end
        # emitter.scalar(value, anchor, tag, plain, quoted, style)
        #  
        # Emit a scalar with +value+, +anchor+, +tag+, and a +plain+ or +quoted+
        # string type with +style+.
        # 
        # See Psych::Handler#scalar
        def scalar(value, anchor, tag, plain, quoted, style)
            #This is a stub, used for indexing
        end
        # emitter.start_sequence(anchor, tag, implicit, style)
        #  
        # Start emitting a sequence with +anchor+, a +tag+, +implicit+ sequence
        # start and end, along with +style+.
        # 
        # See Psych::Handler#start_sequence
        def start_sequence(anchor, tag, implicit, style)
            #This is a stub, used for indexing
        end
        # emitter.end_sequence
        #  
        # End sequence emission.
        # 
        # See Psych::Handler#end_sequence
        def end_sequence()
            #This is a stub, used for indexing
        end
        # emitter.start_mapping(anchor, tag, implicit, style)
        #  
        # Start emitting a YAML map with +anchor+, +tag+, an +implicit+ start
        # and end, and +style+.
        # 
        # See Psych::Handler#start_mapping
        def start_mapping(anchor, tag, implicit, style)
            #This is a stub, used for indexing
        end
        # emitter.end_mapping
        #  
        # Emit the end of a mapping.
        # 
        # See Psych::Handler#end_mapping
        def end_mapping()
            #This is a stub, used for indexing
        end
        # emitter.alias(anchor)
        #  
        # Emit an alias with +anchor+.
        # 
        # See Psych::Handler#alias
        def alias(anchor)
            #This is a stub, used for indexing
        end
        # emitter.canonical
        #  
        # Get the output style, canonical or not.
        def canonical()
            #This is a stub, used for indexing
        end
        # emitter.canonical = true
        #  
        # Set the output style to canonical, or not.
        def canonical=(p1)
            #This is a stub, used for indexing
        end
        # emitter.indentation
        #  
        # Get the indentation level.
        def indentation()
            #This is a stub, used for indexing
        end
        # emitter.indentation = level
        #  
        # Set the indentation level to +level+.  The level must be less than 10 and
        # greater than 1.
        def indentation= level
            #This is a stub, used for indexing
        end
        # emitter.line_width
        #  
        # Get the preferred line width.
        def line_width()
            #This is a stub, used for indexing
        end
        # emitter.line_width = width
        #  
        # Set the preferred line with to +width+.
        def line_width= width
            #This is a stub, used for indexing
        end
    end
    class Handler
    end
    class Parser
        # Let the parser choose the encoding   
        ANY = nil #value is unknown, used for indexing.
        # UTF-8 Encoding   
        UTF8 = nil #value is unknown, used for indexing.
        # UTF-16-LE Encoding with BOM   
        UTF16LE = nil #value is unknown, used for indexing.
        # UTF-16-BE Encoding with BOM   
        UTF16BE = nil #value is unknown, used for indexing.
        # parser.parse(yaml)
        #  
        # Parse the YAML document contained in +yaml+.  Events will be called on
        # the handler set on the parser instance.
        # 
        # See Psych::Parser and Psych::Parser#handler
        def parse(yaml)
            #This is a stub, used for indexing
        end
        # parser.mark # => #<Psych::Parser::Mark>
        #  
        # Returns a Psych::Parser::Mark object that contains line, column, and index
        # information.
        def mark()
            #This is a stub, used for indexing
        end
    end
    class SyntaxError < SyntaxError
    end
    module Visitors
        class ToRuby < Visitor
            # vis.build_exception(klass, message)
            #  
            # Create an exception with class +klass+ and +message+
            def build_exception(klass, message)
                #This is a stub, used for indexing
            end
            # vis.path2class(path)
            #  
            # Convert +path+ string to a class
            def path2class(path)
                #This is a stub, used for indexing
            end
        end
        class Visitor
        end
        class YAMLTree < Visitor
            # private_iv_get(target, prop)
            #  
            # Get the private instance variable +prop+ from +target+
            def private_iv_get(target, prop)
                #This is a stub, used for indexing
            end
        end
    end
end
