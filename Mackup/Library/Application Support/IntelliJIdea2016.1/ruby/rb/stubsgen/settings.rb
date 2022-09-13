# author oleg, den

require "optparse"

opts = OptionParser.new do |opt|
  opt.on("--source-directory=DIR", "-d", "Directory with source files") do |value|
    $RUBY_SOURCE_DIR = value
  end

  opt.on("--generate-builtin", "-b", "Generate file with built-in global variables") do
    $GENERATE_BUILTIN = true
  end

  opt.on("--verbose", "-v", "Print generation information") do
    $GEN_DEBUG = true
  end

  opt.on("--output-directory=DIR", "-o", "Directory where ruby stubs for native files will be written") do |value|
    $DIRECTORY = value
  end

  opt.on("--source-name=NAME", "-s", "Source identifier to be written in file header") do |value|
    $RUBY_SOURCE_VERSION = value
  end

  opt.on_tail("-h", "--help", "Show this message") do
    puts opts
    exit
  end
end
opts.parse ARGV

$RUBY_SOURCE_VERSION ||= "Ruby-1.8.8 stable"
$RUBY_SOURCE_DIR ||= "/Users/denofevil/.rvm/src/ruby-1.9.2-p290"

$DIRECTORY ||= "rubystubs"
$MAIN_FILE = "builtin.rb"
