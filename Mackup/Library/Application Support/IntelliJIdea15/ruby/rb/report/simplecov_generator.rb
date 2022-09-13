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

def load_simplecov_gem(version)
  version ||= ">= 0"

  require 'rubygems'
  gem 'simplecov', version
  require 'simplecov'
end

load_simplecov_gem(ARGV[3])

module SimpleCov::ResultMerger
  def self.resultset_path
    ARGV[0]
  end
end

class SimpleCov::Formatter::HTMLFormatter
  def output_path
    ARGV[1]
  end
end

# i guess one month is more than enough for keeping results
SimpleCov.merge_timeout(60 * 60 * 24 * 31)
result = SimpleCov::ResultMerger.merged_result
result.format!