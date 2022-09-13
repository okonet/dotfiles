# author Roman.Chernyatchik

require "rdoc/known_classes"

VALUE_UNKNOWN_COMMENT = "#value is unknown, used for indexing."
VALUE_UNKNOWN = "= nil #{VALUE_UNKNOWN_COMMENT}"
SEVERAL_VARIANTS = "(*several_variants)"

module Generators
    class RBGenerator
        # Hash map of manully patched Global constants.
        # Format:
        #  key = "{file name}#{constant name}"
        #  value = ["comment", "default value with additional comment"]
        MANUALLY_PATCHED_CONSTANTS = {
                "object.rb#ARGF" => ["The alias to $<.", "= $< #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#ARGV" => ["The alias to $*.", "= $* #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#ENV" => ["A hash-like object containing current environment variables.", "= {} #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#DATA" => ["Contains lines following after __END__.", "= IO.new #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#FALSE" => ["The alias to 'false'.", "= false"],
                "object.rb#NIL" => ["The alias to 'nil'.", "= nil"],
                "object.rb#RUBY_PLATFORM" => ["The identifier string of the current ruby platform. ", "= \"\" #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#RUBY_RELEASE_DATE" => ["The release date string of the current ruby platform. ", "= \"\" #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#RUBY_VERSION" => ["The version string of the ruby interpreter.", " = \"\" #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#RUBY_PATCHLEVEL" => ["The identifier string of the current ruby platform patch number.", " = \"\" #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#STDERR" => ["Current standard error output stream, $stderr be default", "= $stderr #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#STDIN" => ["Current standard input stream, $stdin be default.", "= $stdin #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#STDOUT" => ["Current standard output stream, $stdout be default.", "= $stdout"],
                "object.rb#TOPLEVEL_BINDING" => ["The top level binding object.", "= Binding.new #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#TRUE" => ["The alias to 'true'.", "= true"],

                "object.rb#VERSION" => ["Obsolete. Use RUBY_VERSION", "= \"\" #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#RELEASE_DATE" => ["Obsolete. Use RUBY_RELEASE_DATE", "= \"\" #{VALUE_UNKNOWN_COMMENT}"],
                "object.rb#PLATFORM" => ["Obsolete. Use RUBY_PLATFORM", "= \"\" #{VALUE_UNKNOWN_COMMENT}"]
        }

        # Hash map of manully patched SuperClasses Names.
        # Format:
        #  key = "{file name}#{class name}"
        #  value = "super class name"
        MANUALLY_PATCHED_SUPERCLASSES = {
                "file.rb#File" => "IO"
        }

        def get_patched_constant_info(file_name, constant_name)
            MANUALLY_PATCHED_CONSTANTS["#{file_name}##{constant_name}"]
        end

        def get_patched_superclass_name(file_name, class_name)
            MANUALLY_PATCHED_SUPERCLASSES["#{file_name}##{class_name}"]
        end


        #Here key  is multiline call_seq
        MANUALLY_PATCHED_CALL_SEQ_MULTIDEF_VARIANTS = {
                "array[index]         = obj                     ->  obj\narray[start, length] = obj or an_array or nil  ->  obj or an_array or nil\narray[range]         = obj or an_array or nil  ->  obj or an_array or nil" => SEVERAL_VARIANTS,
                "IO.select(read_array \n[, write_array \n[, error_array \n[, timeout]]] ) =>  array  or  nil" => "(read_array, *write_error_arrays_timeout)",
                "str[fixnum] = fixnum\nstr[fixnum] = new_str\nstr[fixnum, fixnum] = new_str\nstr[range] = aString\nstr[regexp] = new_str\nstr[regexp, fixnum] = new_str\nstr[other_str] = new_str" => SEVERAL_VARIANTS,
        }

        #Here key = {method_name}.{one_call_seq_def}
        MANUALLY_PATCHED_CALL_SEQ_SINGLEDEF_VARIANTS = {
                "catch.catch(symbol) {| | block }  > obj" => "(symbol)",

             #file.rb
                "fnmatch.File.fnmatch( pattern, path, [flags] ) => (true or false)" => "(pattern, path, *flags)",
                "fnmatch?.File.fnmatch?( pattern, path, [flags] ) => (true or false)" => "(pattern, path, *flags)",
                "lchown.file.lchown(owner_int, group_int, file_name,..) => integer" => "(owner_int, group_int, file_name, *smth)",

                "expand_path.File.expand_path(file_name [, dir_string] ) -> abs_file_name" => "(file_name, *dir_string)",
                "basename.File.basename(file_name [, suffix] ) -> base_name" => "(file_name, *suffix)",
             #nomethoderror.rb
                "new.NoMethodError.new(msg, name [, args])  => no_method_error" => "(msg, name, *args)",

             #regexp.rb
                "union.Regexp.union([pattern]*)   => new_str" => "(*patterns)",

             #marshal.rb
                "dump.dump( obj [, anIO] , limit=--1 ) => anIO" => "(obj, anIo, limit=--1)",
                "load.load( source [, proc] ) => obj" => "(source, *proc)",
                "restore.restore( source [, proc] ) => obj" => "(source, *proc)",

             #method.rb
                "[].meth[args, ...]         => obj" => "(args, *smth)",

             #time.rb
                "now.Time.new -> time" => "()",
                "utc.Time.utc( year [, month, day, hour, min, sec, usec] ) => time" => SEVERAL_VARIANTS,
                "gm.Time.gm( year [, month, day, hour, min, sec, usec] ) => time" => SEVERAL_VARIANTS,
                "local.Time.local( year [, month, day, hour, min, sec, usec] ) => time" => SEVERAL_VARIANTS,

             #win32ole_type.rb
                "ole_methods.WIN32OLE_TYPE#ole_methods # the array of WIN32OLE_METHOD objects." => "()",

             #mathcdata.rb
                "select.mtch.select([index]*)   => array" => "(*index)",

             #hash.rb
                "[].Hash[ [key =>|, value]* ]   => hash" => "(*key_value)",

             #win32ole.rb
                "new.WIN32OLE.new(server, [host]) -> WIN32OLE object" => "(server, *host)",
                "ole_show_help.WIN32OLE.ole_show_help(obj [,helpcontext])" => "(obj, *helpcontext)",
                "method_missing.WIN32OLE#method_missing(id [,arg1, arg2, ...])" => "(id, *args)",
                "setproperty.WIN32OLE.setproperty('property', [arg1, arg2,...] val)" => "(property, *args)",
                "[]=.WIN32OLE['property']=val" => "(property_name, val)",
                "invoke.WIN32OLE#invoke(method, [arg1,...])  => return value of method." => "(method, *args)",
                "[].WIN32OLE['property']" => "(property_name)",
                "WIN32OLE['property']=val" => "(property_name)",
                "codepage=.WIN32OLE.codepage = CP" => "(code_page)",

             #win32ole_event.rb
                "on_event.WIN32OLE_EVENT#on_event([event]){...}" => "(*event)",
                "on_event_with_outargs.WIN32OLE_EVENT#on_event_with_outargs([event]){...}" => "(*event)",

             #nameerror.rb
                "new.NameError.new(msg [, name])  => name_error" => "(msg, *name)",
             #continuation.rb
                "[].cont[args, ...]" => "(args, *smth)",

             #proc.rb
                "call.prc.call(params,...)      => obj" => "(*params)",
                "[].prc[params,...]        => obj" => "(*params)",
                "call.prc.call(params,...)   -> obj" => "(*params)",
                "[].prc[params,...]        -> obj" => "(*params)",
             #dir.rb
                "mkdir.Dir.mkdir( string [, integer] ) => 0" => "(string, *permissions_int)",
             #io.rb
                "sysopen.IO.sysopen(path, [mode, [perm]])  => fixnum" => "(path, *mode_perm)",
                "read.IO.read(name, [length [, offset]] )   => string" => "(name, *length_offset)",
                "printf.ios.printf(format_string [, obj, ...] )   => nil" => "(format_string, *objects)",
                "read.ios.read([length [, buffer]])    => string, buffer, or nil" => "(*args)",
                "puts.ios.puts(obj, ...)    => nil" => "(obj='', *arg)",

             #string.rb
                "split.str.split(pattern=$;, [limit])   => anArray" => "(pattern=$;, *limit)",
                "delete.str.delete([other_str]+)   => new_str" => "(*other_strings)",
                "delete!.str.delete!([other_str]+>)   => str or nil" => "(*other_strings)",
                "squeeze.str.squeeze([other_str]*)    => new_str" => "(*other_strings)",
                "squeeze!.str.squeeze!([other_str]*)   => str or nil" => "(*other_strings)",
                "count.str.count([other_str]+)   => fixnum" => "(*other_strings)",
                "center.str.center(integer, padstr)   => new_str" => "(integer, padstr=\"\")",

             #zlib.rb
                "deflate.Zlib::Deflate.deflate(string[, level])" => "(string, level)",
                "deflate.deflate(string[, flush])" => "(string, *flush)",
                "new.Zlib::Inflate.new(window_bits)" => "(window_bits = nil)",
                "adler32.Zlib.adler32(string, adler)" => "(string = nil, adler = nil)",
                "crc32.Zlib.crc32(string, adler)" => "(string = nil, adler = nil)",

             #kernel.rb
                "eval.eval(string [, binding [, filename [,lineno]]])  => obj" => "(string, *binding_filename_lineno)",
                "method_missing.obj.method_missing(symbol [, *args] )   => result" => "(symbol, *args)",
                "throw.throw(symbol [, obj])" => "(symbol, *obj)",
                "untrace_var.untrace_var(symbol [, cmd] )   => array or nil" => "(symbol, *cmd)",
                "untrace_var.untrace_var(symbol [, cmd] )   => array or nil" => "(symbol, *cmd)",
                "test.test(int_cmd, file1 [, file2] ) => obj" => "(int_cmd, file1, *file2)",
                "syscall.syscall(fixnum [, args...])   => integer" => "(fixnum, *args)",
                "format.format(format_string [, arguments...] )   => string" => "(format_string, *args)",
                "sprintf.sprintf(format_string [, arguments...] )  => string" => "(format_string, *args)",
                "exec.exec(command [, arg, ...])" => "(command, *arg)",
                "system.system(cmd [, arg, ...])    => true or false" => "(cmd, *arg)",
                "sleep.sleep([duration])    => fixnum" => "(*duration)",
                "split.split([pattern [, limit]])    => array" => "*pattern_limit",
                "select.IO.select(read_array\n[, write_array\n[, error_array\n[, timeout]]] ) =>  array  or  nil" => "(*args)",
                "method_missing.obj.method_missing(symbol [, *args] )   => result" => "(symbol, *args)",
                "autoload.autoload(module, filename)   => nil" => "(module1, filename)",
                "include?.mod.include?(module)    => true or false" => "(module1)",
                "p(obj, ...)    => nil" => "(*arg)",
                "puts(obj, *smth)" => "(obj='', *arg)",
                "puts.puts(obj, ...)    => nil" => "(obj='', *arg)",
                "abort.Kernel::abort" => "(message='')",
                "abort.Kernel::abort([msg])" => "(message='')",

             #object.rb
                "instance_of?.obj.instance_of?(class)    => true or false" => "(class1)",
                "kind_of?.obj.kind_of?(class)    => true or false" => "(class1)",
                "is_a?.obj.is_a?(class)       => true or false" => "(class1)",

             #objectspace.rb
                "define_finalizer.ObjectSpace.define_finalizer(obj, aProc=proc())" => "(obj, aProc=proc())",
                "each_object.ObjectSpace.each_object([module]) {|obj| ... } => fixnum" => "(*module1)",

             #array.rb
                "insert.array.insert(index, obj...)  -> array" => "(index, *objects)",
                "indexes.array.indexes( i1, i2, ... iN )   -> an_array" => "(*i1_i2__in)",
                "indices.array.indices( i1, i2, ... iN )   -> an_array" => "(*i1_i2__in)",

             #module.rb
                "include.include(module, ...)    => self" => "(module1, *smth)",
                "class_eval.mod.class_eval(string [, filename [, lineno]])  => obj" => "(string=nil, filename=nil, lineno=nil)",
                "module_eval.mod.module_eval {|| block }                     => obj" => "(string=nil, filename=nil, lineno=nil)",
                "module_function.module_function(symbol, ...)    -> self" => "(*args)",

             #stringio.rb
                "open.StringIO.open(string=\"\"[, mode]) {|strio| ...}" => "(string=\"\", *mode)",
                "new.StringIO.new(string=\"\"[, mode])" => "(string=\"\", *mode)",
                "read.strio.read([length [, buffer]])    -> string, buffer, or nil" => "(*args)",
                "sysread.strio.sysread(integer[, outbuf])    -> string" => "(integer, *outbuf)",
                "printf.strio.printf(format_string [, obj, ...] )   -> nil" => "(format_string, *objects)",
                "send.obj.send(symbol [, args...])        => obj" => "(symbol, *args)",
                "__send__.obj.__send__(symbol [, args...])    => obj" => "(symbol, *args)",
                "puts.strio.puts(obj, ...)    => nil" => "(obj='', *arg)",

             #object.rb
                "extend.obj.extend(module, ...)    => obj" => "(module1, *args)",

             #thread.rb
                "new.Thread.new([arg]*) {|args| block }   => thread" => "(*args)",
                "start.Thread.start([args]*) {|args| block }   => thread" => "(*args)",
                "fork.Thread.fork([args]*) {|args| block }    => thread" => "(*args)",
             #range.rb
                "new.Range.new(start, end, exclusive=false)    => range" => "(r_start, r_end, exclusive=false)",
             #time.rb
                "mktime.Time.mktime( year, month, day, hour, min, sec, usec )   => time" => "(year, *args)",
             #marshal.rb
                "dump.dump( obj [, anIO] , limit=--1 ) => anIO" => "(obj, anIO=IO, limit=--1)",
             #exception.rb
                "Exception.new(msg = nil)   =>  exception" => "(msg = nil, *args)",
             #method.rb
                "call.meth.call(args, ...)    => obj" => "(*args)",
                "[].meth.call(args, ...)    => obj" => "(*args)",
             #zlib.rb
                "deflate.Zlib::Deflate.deflate(string[, level])" => "(string, level=nil)",
             #big_decimal.rb
               "new.new(initial, digits)" => "(initial, digits=nil)",
             #class.rb
               "new.class.new(args, ...)    ->  obj" => "(*args)",
        }

        MANUALLY_PATCHED_FILE_NAMES = {
                "StringScanner" => "strscan",
                "StringIO" => "stringio"
        }
    end
end

RDoc::KNOWN_CLASSES["rb_eEncodingError"] = "EncodingError"
RDoc::KNOWN_CLASSES["ArgError"] = "ArgumentError"
RDoc::KNOWN_CLASSES["rb_cTCPSocket"] = "TCPSocket"
RDoc::KNOWN_CLASSES["rb_cIPSocket"]  = "IPSocket"
RDoc::KNOWN_CLASSES["rb_cBasicSocket"] = "BasicSocket"
RDoc::KNOWN_CLASSES["rb_cUNIXSocket"] = "UNIXSocket"
RDoc::KNOWN_CLASSES["cPKey"] = "PKey"
RDoc::KNOWN_CLASSES["ePKeyError"] = "PKeyError"
RDoc::KNOWN_CLASSES["eOSSLError"] = "OpenSSLError"
RDoc::KNOWN_CLASSES["mDigest"] = "Digest"
RDoc::KNOWN_CLASSES["cASN1ObjectId"] = "ASN1ObjectId"
RDoc::KNOWN_CLASSES["rb_mObjSpace"] = "ObjectSpace"