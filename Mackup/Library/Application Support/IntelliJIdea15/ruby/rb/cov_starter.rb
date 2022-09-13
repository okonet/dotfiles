require 'rcov'
require 'yaml'

module Rcov
  class TextCoverageDiff
    alias_method :rm_old_record_state, :record_state

    def record_state
      yaml_state_file = @state_file + "_yaml"
      state = {}
      each_file_pair_sorted do |filename, fileinfo|
        state[filename] = {:lines => SCRIPT_LINES__[filename], :coverage => fileinfo.coverage.to_a, :counts => fileinfo.counts}
      end
      File.open(yaml_state_file, "w") do |f|
        YAML.dump(state, f)
      end
      rm_old_record_state
    end
  end
end
