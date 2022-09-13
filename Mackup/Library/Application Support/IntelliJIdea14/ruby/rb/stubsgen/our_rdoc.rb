# author oleg

require 'rdoc/rdoc'

require 'options'
require 'rb_generator'


module RDoc
  class RDoc
    # Given a list of files and directories, create a list
    # of all the Ruby files they contain.
    #
    # If +force_doc+ is true, we always add the given files.
    # If false, only add files that we guarantee we can parse
    # It is true when looking at files given on the command line,
    # false when recursing through subdirectories.
    #
    # The effect of this is that if you want a file with a non-
    # standard extension parsed, you must name it explicity.
    #

    def normalized_file_list(relative_files, force_doc = false, exclude_pattern=nil)
      file_list = []

      relative_files.each do |rel_file_name|
        next if exclude_pattern && exclude_pattern =~ rel_file_name
        case type = File.stat(rel_file_name).ftype
        when "file"
          file_list << rel_file_name.sub(/^\.\//, '') if rel_file_name =~ /\.c/ #&& ParserFactory.can_parse(rel_file_name)
        when "directory"
          next if rel_file_name == "CVS" || rel_file_name == ".svn"
          dot_doc = File.join(rel_file_name, DOT_DOC_FILENAME)
          if File.file?(dot_doc)
            file_list.concat(parse_dot_doc_file(rel_file_name, dot_doc))
          else
            file_list.concat(list_files_in_directory(rel_file_name))
          end
        else
          raise RDocError.new("I can't deal with a #{type} #{rel_file_name}")
        end
      end
      file_list
    end

    def setup_output_dir(op_dir)
        FileUtils.mkdir_p(op_dir)
    end

    ###################################################################
    #
    # Format up one or more files according to the given arguments.
    # For simplicity, _argv_ is an array of strings, equivalent to the
    # strings that would be passed on the command line. (This isn't a
    # coincidence, as we _do_ pass in ARGV when running
    # interactively). For a list of options, see rdoc/rdoc.rb. By
    # default, output will be stored in a directory called +doc+ below
    # the current directory, so make sure you're somewhere writable
    # before invoking.
    #
    # Throws: RDocError on error

    public :document

    def document(argv)

      TopLevel::reset

      options = Options.new
      options.parse(argv)
      @options = options
      setup_output_dir(options.op_dir)

      file_info = parse_files(options.files)

      @stats = Stats.new file_info.size
      unless file_info.empty?
        gen = Generators::RBGenerator.for options

        pwd = Dir.pwd

        Dir.chdir(options.op_dir)

        begin
          gen.generate(file_info)
        ensure
          Dir.chdir(pwd)
        end
      end

      puts @stats.summary
    end
  end
end

