=begin
 This is a machine generated stub using stdlib-doc for <b>module PTY</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Creates and managed pseudo terminals (PTYs).  See also
# http://en.wikipedia.org/wiki/Pseudo_terminal
module PTY
    # PTY.spawn(command_line)  { |r, w, pid| ... }
    # PTY.spawn(command_line)  => [r, w, pid]
    # PTY.spawn(command, args, ...)  { |r, w, pid| ... }
    # PTY.spawn(command, args, ...)  => [r, w, pid]
    # PTY.getpty(command_line)  { |r, w, pid| ... }
    # PTY.getpty(command_line)  => [r, w, pid]
    # PTY.getpty(command, args, ...)  { |r, w, pid| ... }
    # PTY.getpty(command, args, ...)  => [r, w, pid]
    #  
    # Spawns the specified command on a newly allocated pty.
    # 
    # The command's controlling tty is set to the slave device of the pty
    # and its standard input/output/error is redirected to the slave device.
    # 
    # <tt>command_line</tt>:: The full command line to run
    # <tt>command</tt>:: The command to run, as a String.
    # <tt>args</tt>:: Zero or more arguments, as Strings, representing
    #                 the arguments to +command+
    # 
    # In the non-block form this returns an array of size three,
    # <tt>[r, w, pid]</tt>.  In the block form the block will be called with
    # these as arguments, <tt>|r,w,pid|</tt>:
    # 
    # +r+:: An IO that can be read from that contains the command's
    #       standard output and standard error
    # +w+:: An IO that can be written to that is the command's
    #       standard input
    # +pid+:: The process identifier for the command.
    def self.getpty(*several_variants)
        #This is a stub, used for indexing
    end
    # PTY.spawn(command_line)  { |r, w, pid| ... }
    # PTY.spawn(command_line)  => [r, w, pid]
    # PTY.spawn(command, args, ...)  { |r, w, pid| ... }
    # PTY.spawn(command, args, ...)  => [r, w, pid]
    # PTY.getpty(command_line)  { |r, w, pid| ... }
    # PTY.getpty(command_line)  => [r, w, pid]
    # PTY.getpty(command, args, ...)  { |r, w, pid| ... }
    # PTY.getpty(command, args, ...)  => [r, w, pid]
    #  
    # Spawns the specified command on a newly allocated pty.
    # 
    # The command's controlling tty is set to the slave device of the pty
    # and its standard input/output/error is redirected to the slave device.
    # 
    # <tt>command_line</tt>:: The full command line to run
    # <tt>command</tt>:: The command to run, as a String.
    # <tt>args</tt>:: Zero or more arguments, as Strings, representing
    #                 the arguments to +command+
    # 
    # In the non-block form this returns an array of size three,
    # <tt>[r, w, pid]</tt>.  In the block form the block will be called with
    # these as arguments, <tt>|r,w,pid|</tt>:
    # 
    # +r+:: An IO that can be read from that contains the command's
    #       standard output and standard error
    # +w+:: An IO that can be written to that is the command's
    #       standard input
    # +pid+:: The process identifier for the command.
    def self.spawn(*several_variants)
        #This is a stub, used for indexing
    end
    # PTY.check(pid, raise = false) => Process::Status or nil
    # PTY.check(pid, true)          => nil or raises PTY::ChildExited
    #  
    # Checks the status of the child process specified by +pid+.
    # Returns +nil+ if the process is still alive.  If the process
    # is not alive, will return a <tt>Process::Status</tt> or raise
    # a <tt>PTY::ChildExited</tt> (if +raise+ was true).
    # 
    # +pid+:: The process id of the process to check
    # +raise+:: If true and the process identified by +pid+ is no longer
    #           alive a <tt>PTY::ChildExited</tt> is raised.
    # 
    # Returns nil or a <tt>Process::Status</tt> when +raise+ is false.
    def self.check(*several_variants)
        #This is a stub, used for indexing
    end
    # PTY.open => [master_io, slave_file]
    # PTY.open {|master_io, slave_file| ... } => block value
    #  
    # Allocates a pty (pseudo-terminal).
    # 
    # In the non-block form, returns a two element array, <tt>[master_io,
    # slave_file]</tt>.
    # 
    # In the block form, yields two arguments <tt>master_io, slave_file</tt>
    # and the value of the block is returned from +open+.
    # 
    # The IO and File are both closed after the block completes if they haven't
    # been already closed.
    # 
    # The arguments in both forms are:
    # 
    # <tt>master_io</tt>:: the master of the pty, as an IO.
    # <tt>slave_file</tt>:: the slave of the pty, as a File.  The path to the
    #                       terminal device is available via
    #                       <tt>slave_file.path</tt>
    # 
    # === Example
    # 
    #   PTY.open {|m, s|
    #     p m      #=> #<IO:masterpty:/dev/pts/1>
    #     p s      #=> #<File:/dev/pts/1>
    #     p s.path #=> "/dev/pts/1"
    #   }
    # 
    #   # Change the buffering type in factor command,
    #   # assuming that factor uses stdio for stdout buffering.
    #   # If IO.pipe is used instead of PTY.open,
    #   # this code deadlocks because factor's stdout is fully buffered.
    #   require 'io/console' # for IO#raw!
    #   m, s = PTY.open
    #   s.raw! # disable newline conversion.
    #   r, w = IO.pipe
    #   pid = spawn("factor", :in=>r, :out=>s)
    #   r.close
    #   s.close
    #   w.puts "42"
    #   p m.gets #=> "42: 2 3 7\n"
    #   w.puts "144"
    #   p m.gets #=> "144: 2 2 2 2 3 3\n"
    #   w.close
    #   # The result of read operation when pty slave is closed is platform
    #   # dependent.
    #   ret = begin
    #           m.gets          # FreeBSD returns nil.
    #         rescue Errno::EIO # GNU/Linux raises EIO.
    #           nil
    #         end
    #   p ret #=> nil
    def self.open(*several_variants)
        #This is a stub, used for indexing
    end
    # Thrown when PTY#check is called for a pid that represents a process that
    # has exited.
    class ChildExited < RuntimeError
        # Returns the exit status of the child for which PTY#check
        # raised this exception
        def status()
            #This is a stub, used for indexing
        end
    end
end
