# author oleg

require 'settings'
require 'rdoc/options'

class RDoc::Options

  alias old_parse parse

  def parse(argv)
    old_parse argv
    @op_dir = $DIRECTORY
    @generator_name = 'rb'
  end

end
