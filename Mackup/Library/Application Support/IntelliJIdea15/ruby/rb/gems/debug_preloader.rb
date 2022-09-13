if RUBY_VERSION < '2.0' || defined?(JRUBY_VERSION)
  require 'ruby-debug-base'
else
  require 'debase'
end
require 'ruby-debug-ide'