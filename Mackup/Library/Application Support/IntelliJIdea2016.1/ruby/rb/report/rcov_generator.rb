#
# Copyright 2000-2010 JetBrains s.r.o.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require File.expand_path(File.dirname(__FILE__) + '/rcov_options')

def load_rcov_gem(version)
  version ||= ">= 0"

  require 'rubygems'
  require 'cgi'
  gem 'rcov', version
  require 'rcov'
end

def load_state(data_file_path, formatter)
  format, state = File.open(data_file_path){|f| Marshal.load(f) }
  state

  state.each_pair do |file_path, data|
    formatter.add_file(file_path, data[:lines], data[:coverage], data[:counts])
  end
end

# Parse cmdline option
opts = RubyMine::RCov::Cli::Options.new
opts.parse!()

# Load RCov gem
load_rcov_gem(opts.rcov_version)

# Rcov HTML formatter
options = Rcov::HTMLCoverage::DEFAULT_OPTS.clone.update(opts.options)
formatter = Rcov::HTMLCoverage.new(options)

# load data
load_state(opts.data_file_path, formatter)

# generate report
formatter.execute
puts "\nReport was successfully generated!"