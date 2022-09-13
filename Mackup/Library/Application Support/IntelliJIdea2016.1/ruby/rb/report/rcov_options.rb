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

require 'optparse'

module RubyMine
  module RCov
    module Cli
      class Options
        attr_reader :options
        attr_reader :data_file_path
        attr_reader :rcov_version

        def parse!()
          begin
            do_parse!(ARGV)
          rescue OptionParser::InvalidOption, OptionParser::InvalidArgument, OptionParser::MissingArgument => e
            
            $stderr.puts "Generator arguments: #{ARGV.join(" ")}" 
            $stderr.puts
            $stderr.puts e.message
            exit(-1)
          end
        end

        private
        def do_parse!(args)
          @args = args.clone
          @args.extend(::OptionParser::Arguable)

          @options = {}
          @args.options do |opts|
            opts.banner = <<-EOF
Rcov Report Generator 0.1. Based on Rcov gem.
Usage: rcov_report_generator [options] <coverage_data_file> <output_folder>
            EOF

            opts.separator ""
            opts.separator "Options:"

            opts.on("--rcov-version VERSION", "Use specific rcov gem") do |version|
              options[:rcov_gem_version] = version
            end

            opts.on("--css relative/path/to/custom.css", "Use a custom CSS file for HTML output.", "Specified as a relative path.") do |val|
              options[:css] = val
            end

            opts.on("--[no-]callsites", "Show callsites in generated XHTML report.", "(somewhat slower; disabled by default)") do |val|
              options[:callsites] = val
            end

            opts.on("--[no-]xrefs", "Generate fully cross-referenced report.", "(includes --callsites)") do |val|
              options[:cross_references] = val
              options[:callsites] ||= val
            end

            opts.on("--sort CRITERION", [:name, :loc, :coverage], "Sort files in the output by the specified", "field (name, loc, coverage)") do |criterion|
              options[:sort] = criterion
            end

            opts.on("--sort-reverse", "Reverse files in the output.") do
              options[:sort_reverse] = true
            end

            opts.on("--threshold INT", "Only list files with coverage < INT %.", "(default: 101)") do |threshold|
              begin
                threshold = Integer(threshold)
                raise if threshold <= 0 || threshold > 101
              rescue Exception
                raise OptionParser::InvalidArgument, threshold
              end
              options[:output_threshold] = threshold
            end

            opts.on("--charset CHARSET", "Charset used in Content-Type declaration of HTML reports.") do |c|
              options[:charset] = c
            end

            opts.on("--only-uncovered", "Same as --threshold 100") do
              options[:output_threshold] = 100
            end
          end.parse!
          @data_file_path = @args[0]
          @options[:destdir] = @args[1]
          @rcov_version = @options.delete(:rcov_gem_version)
        end
      end
    end
  end
end