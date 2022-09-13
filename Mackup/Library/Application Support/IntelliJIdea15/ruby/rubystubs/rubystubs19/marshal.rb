=begin
 This is a machine generated stub using stdlib-doc for <b>module Marshal</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The marshaling library converts collections of Ruby objects into a
# byte stream, allowing them to be stored outside the currently
# active script. This data may subsequently be read and the original
# objects reconstituted.
# 
# Marshaled data has major and minor version numbers stored along
# with the object information. In normal use, marshaling can only
# load data written with the same major version number and an equal
# or lower minor version number. If Ruby's ``verbose'' flag is set
# (normally using -d, -v, -w, or --verbose) the major and minor
# numbers must match exactly. Marshal versioning is independent of
# Ruby's version numbers. You can extract the version by reading the
# first two bytes of marshaled data.
# 
#     str = Marshal.dump("thing")
#     RUBY_VERSION   #=> "1.9.0"
#     str[0].ord     #=> 4
#     str[1].ord     #=> 8
# 
# Some objects cannot be dumped: if the objects to be dumped include
# bindings, procedure or method objects, instances of class IO, or
# singleton objects, a TypeError will be raised.
# 
# If your class has special serialization needs (for example, if you
# want to serialize in some specific format), or if it contains
# objects that would otherwise not be serializable, you can implement
# your own serialization strategy.
# 
# There are two methods of doing this, your object can define either
# marshal_dump and marshal_load or _dump and _load.  marshal_dump will take
# precedence over _dump if both are defined.  marshal_dump may result in
# smaller Marshal strings.
# 
# == marshal_dump and marshal_load
# 
# When dumping an object the method marshal_dump will be called.
# marshal_dump must return a result containing the information necessary for
# marshal_load to reconstitute the object.  The result can be any object.
# 
# When loading an object dumped using marshal_dump the object is first
# allocated then marshal_load is called with the result from marshal_dump.
# marshal_load must recreate the object from the information in the result.
# 
# Example:
# 
#   class MyObj
#     def initialize name, version, data
#       @name    = name
#       @version = version
#       @data    = data
#     end
# 
#     def marshal_dump
#       [@name, @version]
#     end
# 
#     def marshal_load array
#       @name, @version = array
#     end
#   end
# 
# == _dump and _load
# 
# Use _dump and _load when you need to allocate the object you're restoring
# yourself.
# 
# When dumping an object the instance method _dump is called with an Integer
# which indicates the maximum depth of objects to dump (a value of -1 implies
# that you should disable depth checking).  _dump must return a String
# containing the information necessary to reconstitute the object.
# 
# The class method _load should take a String and use it to return an object
# of the same class.
# 
# Example:
# 
#   class MyObj
#     def initialize name, version, data
#       @name    = name
#       @version = version
#       @data    = data
#     end
# 
#     def _dump level
#       [@name, @version].join ':'
#     end
# 
#     def self._load args
#       new(*args.split(':'))
#     end
#   end
# 
# Since Marhsal.dump outputs a string you can have _dump return a Marshal
# string which is Marshal.loaded in _load for complex objects.
module Marshal
    MAJOR_VERSION = nil #value is unknown, used for indexing.
    MINOR_VERSION = nil #value is unknown, used for indexing.
    # dump( obj [, anIO] , limit=--1 ) -> anIO
    #  
    # Serializes obj and all descendant objects. If anIO is
    # specified, the serialized data will be written to it, otherwise the
    # data will be returned as a String. If limit is specified, the
    # traversal of subobjects will be limited to that depth. If limit is
    # negative, no checking of depth will be performed.
    # 
    #     class Klass
    #       def initialize(str)
    #         @str = str
    #       end
    #       def sayHello
    #         @str
    #       end
    #     end
    # 
    # (produces no output)
    # 
    #     o = Klass.new("hello\n")
    #     data = Marshal.dump(o)
    #     obj = Marshal.load(data)
    #     obj.sayHello   #=> "hello\n"
    # 
    # Marshal can't dump following objects:
    # * anonymous Class/Module.
    # * objects which related to its system (ex: Dir, File::Stat, IO, File, Socket
    #   and so on)
    # * an instance of MatchData, Data, Method, UnboundMethod, Proc, Thread,
    #   ThreadGroup, Continuation
    # * objects which defines singleton methods
    def self.dump(obj, anIO=IO, limit=--1)
        #This is a stub, used for indexing
    end
    # load( source [, proc] ) -> obj
    # restore( source [, proc] ) -> obj
    #  
    # Returns the result of converting the serialized data in source into a
    # Ruby object (possibly with associated subordinate objects). source
    # may be either an instance of IO or an object that responds to
    # to_str. If proc is specified, it will be passed each object as it
    # is deserialized.
    def self.load(source, *proc)
        #This is a stub, used for indexing
    end
    # load( source [, proc] ) -> obj
    # restore( source [, proc] ) -> obj
    #  
    # Returns the result of converting the serialized data in source into a
    # Ruby object (possibly with associated subordinate objects). source
    # may be either an instance of IO or an object that responds to
    # to_str. If proc is specified, it will be passed each object as it
    # is deserialized.
    def self.restore(source, *proc)
        #This is a stub, used for indexing
    end
end
