# author oleg, Roman.Chernyatchik

require 'string_ext'
require 'fileutils'
require 'rdoc/top_level'
require 'rdoc/options'
require 'cgi'
require 'set'
require 'call_seq/call_seq_def_parser'
require 'manually_fixed_definitions'

module Generators
  class RBGenerator

    INDENT = "    "
    UNKNOWN_PARAMETERS = "(*smth) #parameteres couldn't be extracted"
    METHOD_COMMENT  = "This is a stub, used for indexing"

    def create_indent indent
      @file << INDENT * indent
    end

    def create_comment comment, indent
      comment = comment.split("\n") if comment.is_a? String
      unless comment.empty?
        comment.each do |line|
          create_indent indent
          @file << "# #{line.gsub("\n", "")}\n"
        end
      end
    end

    # Generators may need to return specific subclasses depending
    # on the options they are passed. Because of this
    # we create them using a factory

    def RBGenerator.for(options)
      new(options)
    end

    class <<self
      protected :new
    end

    # Set up a new HTML generator. Basically all we do here is load
    # up the correct output template

    def initialize(options) #:not-new:
      @options   = options
    end


    ##
    # Build the initial indices and output objects
    # based on an array of TopLevel objects containing
    # the extracted information.

    def generate(top_levels)
        @method_smth_params = []
        @method_incorrect_call_seq = []
        @method_patched_params = []

        RDoc::TopLevel.complete(:private)
        RDoc::TopLevel.unique_classes_and_modules.each do |class_or_module|
            next unless class_or_module.parent.is_a? RDoc::TopLevel
            @loaded_files = Set.new
            name = class_or_module.name
            @top_class_sym = (MANUALLY_PATCHED_FILE_NAMES[name] || name.underscore).to_sym
            @loaded_files.add @top_class_sym
            @file = File.new("#{@top_class_sym}.rb", File::CREAT|File::TRUNC|File::RDWR)
            @file << <<-DOC
=begin
 This is a machine generated stub using stdlib-doc for <b>#{(class_or_module.module? ? "module " : "class ") + class_or_module.name}</b>
 Sources used:  #{$RUBY_SOURCE_VERSION}
 Created on #{Time.now} by IntelliJ Ruby Stubs Generator.
=end

            DOC
            process_class class_or_module
            @file.close
        end

        debug_print "\n\nCall_seq is invalid, patched params [#{@method_patched_params.size}]"
        debug_print @method_patched_params
        debug_print "\n\nIncorrect call_seqs(patched and not patched) [#{@method_incorrect_call_seq.size}]"
        debug_print @method_incorrect_call_seq
        debug_print "\n\n'*smth' params [#{@method_smth_params.size}]:"
        debug_print @method_smth_params
    end

    def get_top_level(class_or_module)
      while class_or_module.parent do
        class_or_module = class_or_module.parent
      end
      class_or_module
    end

    def require_if_needed class_or_module, name, indent = 0
      if name.is_a? RDoc::ClassModule
        return if (get_top_level(class_or_module) == get_top_level(name))
        name = name.name
      end
      name = name.gsub /::.+/, ""
      symbol = name.underscore.to_sym
      unless CORE_CLASSES.include? symbol or @loaded_files.include? symbol
        @loaded_files.add symbol
        create_indent indent
        @file << "require '#{symbol}'\n"
      end

    end

    def process_class class_or_module, indent=0
      superclass = nil
      if !class_or_module.module?
          patched_superclass = get_patched_superclass_name(@file.path, class_or_module.name)
          superclass = patched_superclass ? patched_superclass : class_or_module.superclass
          superclass_name = superclass.is_a?(RDoc::ClassModule) ? superclass.name : superclass
      end

      # superclass require
      unless class_or_module.module?
        require_if_needed class_or_module, superclass, indent if superclass
      end

      # mixin requires if needed
      class_or_module.includes.map do |included|
        require_if_needed class_or_module, included.module, indent
      end

      # Putting the comment
      create_comment class_or_module.comment, indent

      # Putting the header
      if class_or_module.module?
        create_indent indent
        @file << "module #{class_or_module.name}\n"
      else
        create_indent indent
        @file << "class #{class_or_module.name}"
        @file << " < #{superclass_name}" if superclass_name && superclass_name != "Object"
        @file << "\n"
      end


      #includes handling
      class_or_module.includes.map do |included|
        create_indent indent+1
        @file << "include #{included.name}\n"
      end

      #constants handling
      class_or_module.constants.map do |constant|
        patched_constant_info = get_patched_constant_info(@file.path, constant.name)
        constant_comment = patched_constant_info ? patched_constant_info[0] : constant.comment

        if constant_comment
           create_comment(constant_comment.split("\n"), indent + 1)
        end

        create_indent(indent + 1)
        @file << "#{constant.name} #{patched_constant_info ? patched_constant_info[1] : VALUE_UNKNOWN}\n"
      end

      #generating methods
      class_or_module.method_list.each do |method|
        process_method method, indent+1
      end

      # now process into this class constituent classess
      class_or_module.each_classmodule do |mod|
        process_class mod, indent+1
      end

      # putting end
      create_indent indent
      @file << "end\n"
    end

    def process_method method, indent = 0
      # don't append visibility, public in stubs
      #create_indent indent
      #@file << "#{method.visibility.to_s}\n"

      # Putting the comment
      if method.call_seq
          create_comment "", indent
          create_comment method.call_seq, indent
      end
      create_comment method.comment, indent

      create_indent indent
      @file << "def "
      @file << "self." if method.singleton
      @file << "#{method.name}"

      ########### Method parameters Parsing
      if method.call_seq
        params = params_from_call_seq(method)
        if ((params == UNKNOWN_PARAMS_SET) or !_method_params_syntax_is_ok(params)) and
             (method.params and (!method.params.empty?) and !(method.params =~ /.*\(\.\.\.\).*/))
          old_params = params
          params = params_of(method)
          @method_patched_params << "  file:[#{@file.path}], method: '#{method.name}', patched_params=[#{params}], call_seq_params: [#{old_params}]"
        end
      else
        params = params_of(method)
      end
      params = UNKNOWN_PARAMETERS if params =~ /.*\(\.\.\.\).*/
      if (params == UNKNOWN_PARAMETERS)
        @method_smth_params << "  file:[#{@file.path}], method=[#{method.name}],call_seq=[#{method.call_seq}], method_params=[#{method.params}]"
      end
      if !_method_params_syntax_is_ok(params)
        @method_incorrect_call_seq << "  file:[#{@file.path}], method: '#{method.name}', call_seq=[#{method.call_seq}], params [#{params}], method_params=[#{method.params}]"
        params = UNKNOWN_PARAMETERS
      end
      #################################

      @file << "#{params}\n"

      create_indent indent+1
      @file << "##{METHOD_COMMENT}\n"

      create_indent indent
      @file << "end\n"

      method.aliases.map do |alias_name|
        create_indent indent
        @file << "alias #{alias_name.name} #{method.name}\n"
      end
    end

    private

    def params_of(method)
      params = method.params || ""

      p = params.gsub(/\s*\#.*/, '')
      p = p.tr("\n", " ").squeeze(" ")
      p = "(" + p + ")" unless p[0] == ?(

      if (block = method.block_params)
        block.gsub!(/\s*\#.*/, '')
        block = block.tr("\n", " ").squeeze(" ")
        if block[0] == ?(
          block.sub!(/^\(/, '').sub!(/\)/, '')
        end
        p << " {|#{block.strip}| ...}"
      end
      p
    end

  end
end