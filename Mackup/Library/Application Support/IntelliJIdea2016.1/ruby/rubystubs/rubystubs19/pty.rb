=begin
 This is a machine generated stub using stdlib-doc for <b>module PTY</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

module PTY
    # PTY.spawn(command...) {|r, w, pid| ... }   => nil
    # PTY.spawn(command...)                      => r, w, pid
    # PTY.getpty(command...) {|r, w, pid| ... }  => nil
    # PTY.getpty(command...)                     => r, w, pid
    #  
    # spawns the specified command on a newly allocated pty.
    # 
    # The command's controlling tty is set to the slave device of the pty.
    # Also its standard input/output/error is redirected to the slave device.
    # 
    # PTY.spawn returns two IO objects and PID.
    # PID is the process ID of the command.
    # The two IO objects are connected to the master device of the pty.
    # The first IO object is opened as read mode and
    # The second is opened as write mode.
    # 
    # If a block is given, two IO objects and PID is yielded.
    def self.getpty(*several_variants)
        #This is a stub, used for indexing
    end
    # PTY.spawn(command...) {|r, w, pid| ... }   => nil
    # PTY.spawn(command...)                      => r, w, pid
    # PTY.getpty(command...) {|r, w, pid| ... }  => nil
    # PTY.getpty(command...)                     => r, w, pid
    #  
    # spawns the specified command on a newly allocated pty.
    # 
    # The command's controlling tty is set to the slave device of the pty.
    # Also its standard input/output/error is redirected to the slave device.
    # 
    # PTY.spawn returns two IO objects and PID.
    # PID is the process ID of the command.
    # The two IO objects are connected to the master device of the pty.
    # The first IO object is opened as read mode and
    # The second is opened as write mode.
    # 
    # If a block is given, two IO objects and PID is yielded.
    def self.spawn(*several_variants)
        #This is a stub, used for indexing
    end
    # PTY.check(pid[, raise=false])   => Process::Status or nil
    #  
    # checks the status of the child process specified by _pid_, and
    # returns +nil+ if the process is still alive and active.  Otherwise,
    # returns +Process::Status+ about the process if _raise_ is false, or
    # +PTY::ChildExited+ exception is raised.
    def self.check(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # PTY.open   => [master_io, slave_file]
    # PTY.open {|master_io, slave_file| ... }    => block value
    #  
    # Allocates a pty (pseudo-terminal).
    # 
    # It returns an array which contains an IO object and a File object.
    # The former is the master of the pty.
    # The latter is the slave of the pty.
    # 
    # If a block is given, it yields the array instead of return.
    # The value of the block is returned.
    # master_io and slave_file is closed when return if they are not closed.
    # 
    # The path name of the terminal device can be gotten by slave_file.path.
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
    #   m, s = PTY.open
    #   system("stty raw", :in=>s) # disable newline conversion.
    #   r, w = IO.pipe
    #   pid = spawn("factor", :in=>r, :out=>s)
    #   r.close
    #   s.close
    #   w.puts "42"
    #   p m.gets #=> "42: 2 3 7\n"
    #   w.puts "144"
    #   p m.gets #=> "144: 2 2 2 2 3 3\n"
    #   w.close
    #   # The result of read operation when pty slave is closed is platform dependnet.
    #   ret = begin
    #           m.gets          # FreeBSD returns nil.
    #         rescue Errno::EIO # GNU/Linux raises EIO.
    #           nil
    #         end
    #   p ret #=> nil
    def self.open(*several_variants)
        #This is a stub, used for indexing
    end
    class ChildExited < RuntimeError
        def status()
            #This is a stub, used for indexing
        end
    end
end
