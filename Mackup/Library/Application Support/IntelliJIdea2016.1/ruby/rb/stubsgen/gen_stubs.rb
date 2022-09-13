# author oleg

rdoc_version = if RUBY_VERSION < '2.3.0'
                 '3.9.4'
               else
                 '4.2.1'
               end

$: << File.dirname(__FILE__)
$:.unshift(File.expand_path("./gems/gems/rdoc-#{rdoc_version}/lib", File.dirname(__FILE__)))

def debug_print(line)
  puts line if $GEN_DEBUG
end

require 'gen_main_file'

require 'our_rdoc'
debug_print "Using RDOC #{RDoc::VERSION}"
rdoc = RDoc::RDoc.new
rdoc.document(%W(#{$RUBY_SOURCE_DIR}))

