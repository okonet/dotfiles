# author oleg

$: << File.dirname(__FILE__)
$:.unshift(File.expand_path('./gems/gems/rdoc-3.9.4/lib', File.dirname(__FILE__)))

def debug_print(line)
  puts line if $GEN_DEBUG
end

require 'gen_main_file'

require 'our_rdoc'
rdoc = RDoc::RDoc.new
rdoc.document(%W(#{$RUBY_SOURCE_DIR}))

