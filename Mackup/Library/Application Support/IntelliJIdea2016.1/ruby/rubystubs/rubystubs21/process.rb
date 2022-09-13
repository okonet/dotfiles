=begin
 This is a machine generated stub using stdlib-doc for <b>module Process</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The <code>Process</code> module is a collection of methods used to
# manipulate processes.
module Process
    # see Process.wait   
    WNOHANG = nil #value is unknown, used for indexing.
    # see Process.wait   
    WUNTRACED = nil #value is unknown, used for indexing.
    # see Process.setpriority   
    PRIO_PROCESS = nil #value is unknown, used for indexing.
    # see Process.setpriority   
    PRIO_PGRP = nil #value is unknown, used for indexing.
    # see Process.setpriority   
    PRIO_USER = nil #value is unknown, used for indexing.
    # see Process.setrlimit   
    RLIM_SAVED_MAX = nil #value is unknown, used for indexing.
    # see Process.setrlimit   
    RLIM_INFINITY = nil #value is unknown, used for indexing.
    # see Process.setrlimit   
    RLIM_SAVED_CUR = nil #value is unknown, used for indexing.
    # Maximum size of the process's virtual memory (address space) in bytes.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_AS = nil #value is unknown, used for indexing.
    # Maximum size of the core file.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_CORE = nil #value is unknown, used for indexing.
    # CPU time limit in seconds.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_CPU = nil #value is unknown, used for indexing.
    # Maximum size of the process's data segment.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_DATA = nil #value is unknown, used for indexing.
    # Maximum size of files that the process may create.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_FSIZE = nil #value is unknown, used for indexing.
    # Maximum number of bytes of memory that may be locked into RAM.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_MEMLOCK = nil #value is unknown, used for indexing.
    # Specifies the limit on the number of bytes that can be allocated
    # for POSIX message queues for the real user ID of the calling process.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_MSGQUEUE = nil #value is unknown, used for indexing.
    # Specifies a ceiling to which the process's nice value can be raised.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_NICE = nil #value is unknown, used for indexing.
    # Specifies a value one greater than the maximum file descriptor
    # number that can be opened by this process.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_NOFILE = nil #value is unknown, used for indexing.
    # The maximum number of processes that can be created for the
    # real user ID of the calling process.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_NPROC = nil #value is unknown, used for indexing.
    # Specifies the limit (in pages) of the process's resident set.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_RSS = nil #value is unknown, used for indexing.
    # Specifies a ceiling on the real-time priority that may be set for this process.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_RTPRIO = nil #value is unknown, used for indexing.
    # Specifies limit on CPU time this process scheduled under a real-time
    # scheduling policy can consume.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_RTTIME = nil #value is unknown, used for indexing.
    # Maximum size of the socket buffer.
    RLIMIT_SBSIZE = nil #value is unknown, used for indexing.
    # Specifies a limit on the number of signals that may be queued for
    # the real user ID of the calling process.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_SIGPENDING = nil #value is unknown, used for indexing.
    # Maximum size of the stack, in bytes.
    # 
    # see the system getrlimit(2) manual for details.
    RLIMIT_STACK = nil #value is unknown, used for indexing.
    CLOCK_REALTIME = nil #value is unknown, used for indexing.
    CLOCK_MONOTONIC = nil #value is unknown, used for indexing.
    CLOCK_PROCESS_CPUTIME_ID = nil #value is unknown, used for indexing.
    CLOCK_THREAD_CPUTIME_ID = nil #value is unknown, used for indexing.
    CLOCK_VIRTUAL = nil #value is unknown, used for indexing.
    CLOCK_PROF = nil #value is unknown, used for indexing.
    CLOCK_REALTIME_FAST = nil #value is unknown, used for indexing.
    CLOCK_REALTIME_PRECISE = nil #value is unknown, used for indexing.
    CLOCK_REALTIME_COARSE = nil #value is unknown, used for indexing.
    CLOCK_REALTIME_ALARM = nil #value is unknown, used for indexing.
    CLOCK_MONOTONIC_FAST = nil #value is unknown, used for indexing.
    CLOCK_MONOTONIC_PRECISE = nil #value is unknown, used for indexing.
    CLOCK_MONOTONIC_RAW = nil #value is unknown, used for indexing.
    CLOCK_MONOTONIC_COARSE = nil #value is unknown, used for indexing.
    CLOCK_BOOTTIME = nil #value is unknown, used for indexing.
    CLOCK_BOOTTIME_ALARM = nil #value is unknown, used for indexing.
    CLOCK_UPTIME = nil #value is unknown, used for indexing.
    CLOCK_UPTIME_FAST = nil #value is unknown, used for indexing.
    CLOCK_UPTIME_PRECISE = nil #value is unknown, used for indexing.
    CLOCK_SECOND = nil #value is unknown, used for indexing.
    # exec([env,] command... [,options])
    #  
    # Replaces the current process by running the given external _command_, which
    # can take one of the following forms:
    # 
    # [<code>exec(commandline)</code>]
    #     command line string which is passed to the standard shell
    # [<code>exec(cmdname, arg1, ...)</code>]
    #     command name and one or more arguments (no shell)
    # [<code>exec([cmdname, argv0], arg1, ...)</code>]
    #     command name, argv[0] and zero or more arguments (no shell)
    # 
    # In the first form, the string is taken as a command line that is subject to
    # shell expansion before being executed.
    # 
    # The standard shell always means <code>"/bin/sh"</code> on Unix-like systems,
    # same as <code>ENV["RUBYSHELL"]</code>
    # (or <code>ENV["COMSPEC"]</code> on Windows NT series), and similar.
    # 
    # If the string from the first form (<code>exec("command")</code>) follows
    # these simple rules:
    # 
    # * no meta characters
    # * no shell reserved word and no special built-in
    # * Ruby invokes the command directly without shell
    # 
    # You can force shell invocation by adding ";" to the string (because ";" is
    # a meta character).
    # 
    # Note that this behavior is observable by pid obtained
    # (return value of spawn() and IO#pid for IO.popen) is the pid of the invoked
    # command, not shell.
    # 
    # In the second form (<code>exec("command1", "arg1", ...)</code>), the first
    # is taken as a command name and the rest are passed as parameters to command
    # with no shell expansion.
    # 
    # In the third form (<code>exec(["command", "argv0"], "arg1", ...)</code>),
    # starting a two-element array at the beginning of the command, the first
    # element is the command to be executed, and the second argument is used as
    # the <code>argv[0]</code> value, which may show up in process listings.
    # 
    # In order to execute the command, one of the <code>exec(2)</code> system
    # calls are used, so the running command may inherit some of the environment
    # of the original program (including open file descriptors).
    # 
    # This behavior is modified by the given +env+ and +options+ parameters. See
    # ::spawn for details.
    # 
    # If the command fails to execute (typically <code>Errno::ENOENT</code> when
    # it was not found) a SystemCallError exception is raised.
    # 
    # This method modifies process attributes according to given +options+ before
    # <code>exec(2)</code> system call. See ::spawn for more details about the
    # given +options+.
    # 
    # The modified attributes may be retained when <code>exec(2)</code> system
    # call fails.
    # 
    # For example, hard resource limits are not restorable.
    # 
    # Consider to create a child process using ::spawn or Kernel#system if this
    # is not acceptable.
    # 
    #    exec "echo *"       # echoes list of files in current directory
    #    # never get here
    # 
    #    exec "echo", "*"    # echoes an asterisk
    #    # never get here
    def self.exec(*args)
        #This is a stub, used for indexing
    end
    # Kernel.fork  [{ block }]   -> fixnum or nil
    # Process.fork [{ block }]   -> fixnum or nil
    #  
    # Creates a subprocess. If a block is specified, that block is run
    # in the subprocess, and the subprocess terminates with a status of
    # zero. Otherwise, the +fork+ call returns twice, once in
    # the parent, returning the process ID of the child, and once in
    # the child, returning _nil_. The child process can exit using
    # <code>Kernel.exit!</code> to avoid running any
    # <code>at_exit</code> functions. The parent process should
    # use <code>Process.wait</code> to collect the termination statuses
    # of its children or use <code>Process.detach</code> to register
    # disinterest in their status; otherwise, the operating system
    # may accumulate zombie processes.
    # 
    # The thread calling fork is the only thread in the created child process.
    # fork doesn't copy other threads.
    # 
    # If fork is not usable, Process.respond_to?(:fork) returns false.
    # 
    # Note that fork(2) is not avaiable on some platforms like Windows and NetBSD 4.
    # Therefore you should use spawn() instead of fork().
    def self.fork()
        #This is a stub, used for indexing
    end
    # spawn([env,] command... [,options])     -> pid
    # Process.spawn([env,] command... [,options])     -> pid
    #  
    # spawn executes specified command and return its pid.
    # 
    #   pid = spawn("tar xf ruby-2.0.0-p195.tar.bz2")
    #   Process.wait pid
    # 
    #   pid = spawn(RbConfig.ruby, "-eputs'Hello, world!'")
    #   Process.wait pid
    # 
    # This method is similar to Kernel#system but it doesn't wait for the command
    # to finish.
    # 
    # The parent process should
    # use <code>Process.wait</code> to collect
    # the termination status of its child or
    # use <code>Process.detach</code> to register
    # disinterest in their status;
    # otherwise, the operating system may accumulate zombie processes.
    # 
    # spawn has bunch of options to specify process attributes:
    # 
    #   env: hash
    #     name => val : set the environment variable
    #     name => nil : unset the environment variable
    #   command...:
    #     commandline                 : command line string which is passed to the standard shell
    #     cmdname, arg1, ...          : command name and one or more arguments (This form does not use the shell. See below for caveats.)
    #     [cmdname, argv0], arg1, ... : command name, argv[0] and zero or more arguments (no shell)
    #   options: hash
    #     clearing environment variables:
    #       :unsetenv_others => true   : clear environment variables except specified by env
    #       :unsetenv_others => false  : don't clear (default)
    #     process group:
    #       :pgroup => true or 0 : make a new process group
    #       :pgroup => pgid      : join to specified process group
    #       :pgroup => nil       : don't change the process group (default)
    #     create new process group: Windows only
    #       :new_pgroup => true  : the new process is the root process of a new process group
    #       :new_pgroup => false : don't create a new process group (default)
    #     resource limit: resourcename is core, cpu, data, etc.  See Process.setrlimit.
    #       :rlimit_resourcename => limit
    #       :rlimit_resourcename => [cur_limit, max_limit]
    #     umask:
    #       :umask => int
    #     redirection:
    #       key:
    #         FD              : single file descriptor in child process
    #         [FD, FD, ...]   : multiple file descriptor in child process
    #       value:
    #         FD                        : redirect to the file descriptor in parent process
    #         string                    : redirect to file with open(string, "r" or "w")
    #         [string]                  : redirect to file with open(string, File::RDONLY)
    #         [string, open_mode]       : redirect to file with open(string, open_mode, 0644)
    #         [string, open_mode, perm] : redirect to file with open(string, open_mode, perm)
    #         [:child, FD]              : redirect to the redirected file descriptor
    #         :close                    : close the file descriptor in child process
    #       FD is one of follows
    #         :in     : the file descriptor 0 which is the standard input
    #         :out    : the file descriptor 1 which is the standard output
    #         :err    : the file descriptor 2 which is the standard error
    #         integer : the file descriptor of specified the integer
    #         io      : the file descriptor specified as io.fileno
    #     file descriptor inheritance: close non-redirected non-standard fds (3, 4, 5, ...) or not
    #       :close_others => true  : don't inherit
    #     current directory:
    #       :chdir => str
    # 
    #     The 'cmdname, arg1, ...' form does not use the shell. However,
    #     on different OSes, different things are provided as built-in
    #     commands. An example of this is 'echo', which is a built-in
    #     on Windows, but is a normal program on Linux and Mac OS X.
    #     This means that `Process.spawn 'echo', '%Path%'` will display
    #     the contents of the `%Path%` environment variable on Windows,
    #     but `Process.spawn 'echo', '$PATH'` prints the literal '$PATH'.
    # 
    # If a hash is given as +env+, the environment is
    # updated by +env+ before <code>exec(2)</code> in the child process.
    # If a pair in +env+ has nil as the value, the variable is deleted.
    # 
    #   # set FOO as BAR and unset BAZ.
    #   pid = spawn({"FOO"=>"BAR", "BAZ"=>nil}, command)
    # 
    # If a hash is given as +options+,
    # it specifies
    # process group,
    # create new process group,
    # resource limit,
    # current directory,
    # umask and
    # redirects for the child process.
    # Also, it can be specified to clear environment variables.
    # 
    # The <code>:unsetenv_others</code> key in +options+ specifies
    # to clear environment variables, other than specified by +env+.
    # 
    #   pid = spawn(command, :unsetenv_others=>true) # no environment variable
    #   pid = spawn({"FOO"=>"BAR"}, command, :unsetenv_others=>true) # FOO only
    # 
    # The <code>:pgroup</code> key in +options+ specifies a process group.
    # The corresponding value should be true, zero or positive integer.
    # true and zero means the process should be a process leader of a new
    # process group.
    # Other values specifies a process group to be belongs.
    # 
    #   pid = spawn(command, :pgroup=>true) # process leader
    #   pid = spawn(command, :pgroup=>10) # belongs to the process group 10
    # 
    # The <code>:new_pgroup</code> key in +options+ specifies to pass
    # +CREATE_NEW_PROCESS_GROUP+ flag to <code>CreateProcessW()</code> that is
    # Windows API. This option is only for Windows.
    # true means the new process is the root process of the new process group.
    # The new process has CTRL+C disabled. This flag is necessary for
    # <code>Process.kill(:SIGINT, pid)</code> on the subprocess.
    # :new_pgroup is false by default.
    # 
    #   pid = spawn(command, :new_pgroup=>true)  # new process group
    #   pid = spawn(command, :new_pgroup=>false) # same process group
    # 
    # The <code>:rlimit_</code><em>foo</em> key specifies a resource limit.
    # <em>foo</em> should be one of resource types such as <code>core</code>.
    # The corresponding value should be an integer or an array which have one or
    # two integers: same as cur_limit and max_limit arguments for
    # Process.setrlimit.
    # 
    #   cur, max = Process.getrlimit(:CORE)
    #   pid = spawn(command, :rlimit_core=>[0,max]) # disable core temporary.
    #   pid = spawn(command, :rlimit_core=>max) # enable core dump
    #   pid = spawn(command, :rlimit_core=>0) # never dump core.
    # 
    # The <code>:umask</code> key in +options+ specifies the umask.
    # 
    #   pid = spawn(command, :umask=>077)
    # 
    # The :in, :out, :err, a fixnum, an IO and an array key specifies a redirection.
    # The redirection maps a file descriptor in the child process.
    # 
    # For example, stderr can be merged into stdout as follows:
    # 
    #   pid = spawn(command, :err=>:out)
    #   pid = spawn(command, 2=>1)
    #   pid = spawn(command, STDERR=>:out)
    #   pid = spawn(command, STDERR=>STDOUT)
    # 
    # The hash keys specifies a file descriptor
    # in the child process started by <code>spawn</code>.
    # :err, 2 and STDERR specifies the standard error stream (stderr).
    # 
    # The hash values specifies a file descriptor
    # in the parent process which invokes <code>spawn</code>.
    # :out, 1 and STDOUT specifies the standard output stream (stdout).
    # 
    # In the above example,
    # the standard output in the child process is not specified.
    # So it is inherited from the parent process.
    # 
    # The standard input stream (stdin) can be specified by :in, 0 and STDIN.
    # 
    # A filename can be specified as a hash value.
    # 
    #   pid = spawn(command, :in=>"/dev/null") # read mode
    #   pid = spawn(command, :out=>"/dev/null") # write mode
    #   pid = spawn(command, :err=>"log") # write mode
    #   pid = spawn(command, 3=>"/dev/null") # read mode
    # 
    # For stdout and stderr,
    # it is opened in write mode.
    # Otherwise read mode is used.
    # 
    # For specifying flags and permission of file creation explicitly,
    # an array is used instead.
    # 
    #   pid = spawn(command, :in=>["file"]) # read mode is assumed
    #   pid = spawn(command, :in=>["file", "r"])
    #   pid = spawn(command, :out=>["log", "w"]) # 0644 assumed
    #   pid = spawn(command, :out=>["log", "w", 0600])
    #   pid = spawn(command, :out=>["log", File::WRONLY|File::EXCL|File::CREAT, 0600])
    # 
    # The array specifies a filename, flags and permission.
    # The flags can be a string or an integer.
    # If the flags is omitted or nil, File::RDONLY is assumed.
    # The permission should be an integer.
    # If the permission is omitted or nil, 0644 is assumed.
    # 
    # If an array of IOs and integers are specified as a hash key,
    # all the elements are redirected.
    # 
    #   # stdout and stderr is redirected to log file.
    #   # The file "log" is opened just once.
    #   pid = spawn(command, [:out, :err]=>["log", "w"])
    # 
    # Another way to merge multiple file descriptors is [:child, fd].
    # \[:child, fd] means the file descriptor in the child process.
    # This is different from fd.
    # For example, :err=>:out means redirecting child stderr to parent stdout.
    # But :err=>[:child, :out] means redirecting child stderr to child stdout.
    # They differ if stdout is redirected in the child process as follows.
    # 
    #   # stdout and stderr is redirected to log file.
    #   # The file "log" is opened just once.
    #   pid = spawn(command, :out=>["log", "w"], :err=>[:child, :out])
    # 
    # \[:child, :out] can be used to merge stderr into stdout in IO.popen.
    # In this case, IO.popen redirects stdout to a pipe in the child process
    # and [:child, :out] refers the redirected stdout.
    # 
    #   io = IO.popen(["sh", "-c", "echo out; echo err >&2", :err=>[:child, :out]])
    #   p io.read #=> "out\nerr\n"
    # 
    # The <code>:chdir</code> key in +options+ specifies the current directory.
    # 
    #   pid = spawn(command, :chdir=>"/var/tmp")
    # 
    # spawn closes all non-standard unspecified descriptors by default.
    # The "standard" descriptors are 0, 1 and 2.
    # This behavior is specified by :close_others option.
    # :close_others doesn't affect the standard descriptors which are
    # closed only if :close is specified explicitly.
    # 
    #   pid = spawn(command, :close_others=>true)  # close 3,4,5,... (default)
    #   pid = spawn(command, :close_others=>false) # don't close 3,4,5,...
    # 
    # :close_others is true by default for spawn and IO.popen.
    # 
    # Note that fds which close-on-exec flag is already set are closed
    # regardless of :close_others option.
    # 
    # So IO.pipe and spawn can be used as IO.popen.
    # 
    #   # similar to r = IO.popen(command)
    #   r, w = IO.pipe
    #   pid = spawn(command, :out=>w)   # r, w is closed in the child process.
    #   w.close
    # 
    # :close is specified as a hash value to close a fd individually.
    # 
    #   f = open(foo)
    #   system(command, f=>:close)        # don't inherit f.
    # 
    # If a file descriptor need to be inherited,
    # io=>io can be used.
    # 
    #   # valgrind has --log-fd option for log destination.
    #   # log_w=>log_w indicates log_w.fileno inherits to child process.
    #   log_r, log_w = IO.pipe
    #   pid = spawn("valgrind", "--log-fd=#{log_w.fileno}", "echo", "a", log_w=>log_w)
    #   log_w.close
    #   p log_r.read
    # 
    # It is also possible to exchange file descriptors.
    # 
    #   pid = spawn(command, :out=>:err, :err=>:out)
    # 
    # The hash keys specify file descriptors in the child process.
    # The hash values specifies file descriptors in the parent process.
    # So the above specifies exchanging stdout and stderr.
    # Internally, +spawn+ uses an extra file descriptor to resolve such cyclic
    # file descriptor mapping.
    # 
    # See <code>Kernel.exec</code> for the standard shell.
    def self.spawn(*several_variants)
        #This is a stub, used for indexing
    end
    # Process.exit!(status=false)
    #  
    # Exits the process immediately. No exit handlers are
    # run. <em>status</em> is returned to the underlying system as the
    # exit status.
    # 
    #    Process.exit!(true)
    def self.exit!(status=false)
        #This is a stub, used for indexing
    end
    # exit(status=true)
    # Kernel::exit(status=true)
    # Process::exit(status=true)
    #  
    # Initiates the termination of the Ruby script by raising the
    # <code>SystemExit</code> exception. This exception may be caught. The
    # optional parameter is used to return a status code to the invoking
    # environment.
    # +true+ and +FALSE+ of _status_ means success and failure
    # respectively.  The interpretation of other integer values are
    # system dependent.
    # 
    #    begin
    #      exit
    #      puts "never get here"
    #    rescue SystemExit
    #      puts "rescued a SystemExit exception"
    #    end
    #    puts "after begin block"
    # 
    # <em>produces:</em>
    # 
    #    rescued a SystemExit exception
    #    after begin block
    # 
    # Just prior to termination, Ruby executes any <code>at_exit</code> functions
    # (see Kernel::at_exit) and runs any object finalizers (see
    # ObjectSpace::define_finalizer).
    # 
    #    at_exit { puts "at_exit function" }
    #    ObjectSpace.define_finalizer("string",  proc { puts "in finalizer" })
    #    exit
    # 
    # <em>produces:</em>
    # 
    #    at_exit function
    #    in finalizer
    def self.exit(status=true)
        #This is a stub, used for indexing
    end
    # abort
    # Kernel::abort([msg])
    # Process::abort([msg])
    #  
    # Terminate execution immediately, effectively by calling
    # <code>Kernel.exit(false)</code>. If _msg_ is given, it is written
    # to STDERR prior to terminating.
    def self.abort(message='')
        #This is a stub, used for indexing
    end
    # Process.kill(signal, pid, ...)    -> fixnum
    #  
    # Sends the given signal to the specified process id(s) if _pid_ is positive.
    # If _pid_ is zero _signal_ is sent to all processes whose group ID is equal
    # to the group ID of the process. _signal_ may be an integer signal number or
    # a POSIX signal name (either with or without a +SIG+ prefix). If _signal_ is
    # negative (or starts with a minus sign), kills process groups instead of
    # processes. Not all signals are available on all platforms.
    # 
    #    pid = fork do
    #       Signal.trap("HUP") { puts "Ouch!"; exit }
    #       # ... do some work ...
    #    end
    #    # ...
    #    Process.kill("HUP", pid)
    #    Process.wait
    # 
    # <em>produces:</em>
    # 
    #    Ouch!
    # 
    # If _signal_ is an integer but wrong for signal,
    # <code>Errno::EINVAL</code> or +RangeError+ will be raised.
    # Otherwise unless _signal_ is a +String+ or a +Symbol+, and a known
    # signal name, +ArgumentError+ will be raised.
    # 
    # Also, <code>Errno::ESRCH</code> or +RangeError+ for invalid _pid_,
    # <code>Errno::EPERM</code> when failed because of no privilege,
    # will be raised.  In these cases, signals may have been sent to
    # preceding processes.
    def self.kill(signal, pid, *smth)
        #This is a stub, used for indexing
    end
    # Process.wait()                     -> fixnum
    # Process.wait(pid=-1, flags=0)      -> fixnum
    # Process.waitpid(pid=-1, flags=0)   -> fixnum
    #  
    # Waits for a child process to exit, returns its process id, and
    # sets <code>$?</code> to a <code>Process::Status</code> object
    # containing information on that process. Which child it waits on
    # depends on the value of _pid_:
    # 
    # > 0::   Waits for the child whose process ID equals _pid_.
    # 
    # 0::     Waits for any child whose process group ID equals that of the
    #         calling process.
    # 
    # -1::    Waits for any child process (the default if no _pid_ is
    #         given).
    # 
    # < -1::  Waits for any child whose process group ID equals the absolute
    #         value of _pid_.
    # 
    # The _flags_ argument may be a logical or of the flag values
    # <code>Process::WNOHANG</code> (do not block if no child available)
    # or <code>Process::WUNTRACED</code> (return stopped children that
    # haven't been reported). Not all flags are available on all
    # platforms, but a flag value of zero will work on all platforms.
    # 
    # Calling this method raises a SystemCallError if there are no child
    # processes. Not available on all platforms.
    # 
    #    include Process
    #    fork { exit 99 }                 #=> 27429
    #    wait                             #=> 27429
    #    $?.exitstatus                    #=> 99
    # 
    #    pid = fork { sleep 3 }           #=> 27440
    #    Time.now                         #=> 2008-03-08 19:56:16 +0900
    #    waitpid(pid, Process::WNOHANG)   #=> nil
    #    Time.now                         #=> 2008-03-08 19:56:16 +0900
    #    waitpid(pid, 0)                  #=> 27440
    #    Time.now                         #=> 2008-03-08 19:56:19 +0900
    def self.wait(*several_variants)
        #This is a stub, used for indexing
    end
    # Process.wait2(pid=-1, flags=0)      -> [pid, status]
    # Process.waitpid2(pid=-1, flags=0)   -> [pid, status]
    #  
    # Waits for a child process to exit (see Process::waitpid for exact
    # semantics) and returns an array containing the process id and the
    # exit status (a <code>Process::Status</code> object) of that
    # child. Raises a SystemCallError if there are no child processes.
    # 
    #    Process.fork { exit 99 }   #=> 27437
    #    pid, status = Process.wait2
    #    pid                        #=> 27437
    #    status.exitstatus          #=> 99
    def self.wait2(pid=-1, flags=0)
        #This is a stub, used for indexing
    end
    # Process.wait()                     -> fixnum
    # Process.wait(pid=-1, flags=0)      -> fixnum
    # Process.waitpid(pid=-1, flags=0)   -> fixnum
    #  
    # Waits for a child process to exit, returns its process id, and
    # sets <code>$?</code> to a <code>Process::Status</code> object
    # containing information on that process. Which child it waits on
    # depends on the value of _pid_:
    # 
    # > 0::   Waits for the child whose process ID equals _pid_.
    # 
    # 0::     Waits for any child whose process group ID equals that of the
    #         calling process.
    # 
    # -1::    Waits for any child process (the default if no _pid_ is
    #         given).
    # 
    # < -1::  Waits for any child whose process group ID equals the absolute
    #         value of _pid_.
    # 
    # The _flags_ argument may be a logical or of the flag values
    # <code>Process::WNOHANG</code> (do not block if no child available)
    # or <code>Process::WUNTRACED</code> (return stopped children that
    # haven't been reported). Not all flags are available on all
    # platforms, but a flag value of zero will work on all platforms.
    # 
    # Calling this method raises a SystemCallError if there are no child
    # processes. Not available on all platforms.
    # 
    #    include Process
    #    fork { exit 99 }                 #=> 27429
    #    wait                             #=> 27429
    #    $?.exitstatus                    #=> 99
    # 
    #    pid = fork { sleep 3 }           #=> 27440
    #    Time.now                         #=> 2008-03-08 19:56:16 +0900
    #    waitpid(pid, Process::WNOHANG)   #=> nil
    #    Time.now                         #=> 2008-03-08 19:56:16 +0900
    #    waitpid(pid, 0)                  #=> 27440
    #    Time.now                         #=> 2008-03-08 19:56:19 +0900
    def self.waitpid(pid=-1, flags=0)
        #This is a stub, used for indexing
    end
    # Process.wait2(pid=-1, flags=0)      -> [pid, status]
    # Process.waitpid2(pid=-1, flags=0)   -> [pid, status]
    #  
    # Waits for a child process to exit (see Process::waitpid for exact
    # semantics) and returns an array containing the process id and the
    # exit status (a <code>Process::Status</code> object) of that
    # child. Raises a SystemCallError if there are no child processes.
    # 
    #    Process.fork { exit 99 }   #=> 27437
    #    pid, status = Process.wait2
    #    pid                        #=> 27437
    #    status.exitstatus          #=> 99
    def self.waitpid2(pid=-1, flags=0)
        #This is a stub, used for indexing
    end
    # Process.waitall   -> [ [pid1,status1], ...]
    #  
    # Waits for all children, returning an array of
    # _pid_/_status_ pairs (where _status_ is a
    # <code>Process::Status</code> object).
    # 
    #    fork { sleep 0.2; exit 2 }   #=> 27432
    #    fork { sleep 0.1; exit 1 }   #=> 27433
    #    fork {            exit 0 }   #=> 27434
    #    p Process.waitall
    # 
    # <em>produces</em>:
    # 
    #    [[30982, #<Process::Status: pid 30982 exit 0>],
    #     [30979, #<Process::Status: pid 30979 exit 1>],
    #     [30976, #<Process::Status: pid 30976 exit 2>]]
    def self.waitall()
        #This is a stub, used for indexing
    end
    # Process.detach(pid)   -> thread
    #  
    # Some operating systems retain the status of terminated child
    # processes until the parent collects that status (normally using
    # some variant of <code>wait()</code>. If the parent never collects
    # this status, the child stays around as a <em>zombie</em> process.
    # <code>Process::detach</code> prevents this by setting up a
    # separate Ruby thread whose sole job is to reap the status of the
    # process _pid_ when it terminates. Use <code>detach</code>
    # only when you do not intent to explicitly wait for the child to
    # terminate.
    # 
    # The waiting thread returns the exit status of the detached process
    # when it terminates, so you can use <code>Thread#join</code> to
    # know the result.  If specified _pid_ is not a valid child process
    # ID, the thread returns +nil+ immediately.
    # 
    # The waiting thread has <code>pid</code> method which returns the pid.
    # 
    # In this first example, we don't reap the first child process, so
    # it appears as a zombie in the process status display.
    # 
    #    p1 = fork { sleep 0.1 }
    #    p2 = fork { sleep 0.2 }
    #    Process.waitpid(p2)
    #    sleep 2
    #    system("ps -ho pid,state -p #{p1}")
    # 
    # <em>produces:</em>
    # 
    #    27389 Z
    # 
    # In the next example, <code>Process::detach</code> is used to reap
    # the child automatically.
    # 
    #    p1 = fork { sleep 0.1 }
    #    p2 = fork { sleep 0.2 }
    #    Process.detach(p1)
    #    Process.waitpid(p2)
    #    sleep 2
    #    system("ps -ho pid,state -p #{p1}")
    # 
    # <em>(produces no output)</em>
    def self.detach(pid)
        #This is a stub, used for indexing
    end
    # Process.pid   -> fixnum
    #  
    # Returns the process id of this process. Not available on all
    # platforms.
    # 
    #    Process.pid   #=> 27415
    def self.pid()
        #This is a stub, used for indexing
    end
    # Process.ppid   -> fixnum
    #  
    # Returns the process id of the parent of this process. Returns
    # untrustworthy value on Win32/64. Not available on all platforms.
    # 
    #    puts "I am #{Process.pid}"
    #    Process.fork { puts "Dad is #{Process.ppid}" }
    # 
    # <em>produces:</em>
    # 
    #    I am 27417
    #    Dad is 27417
    def self.ppid()
        #This is a stub, used for indexing
    end
    # Process.getpgrp   -> integer
    #  
    # Returns the process group ID for this process. Not available on
    # all platforms.
    # 
    #    Process.getpgid(0)   #=> 25527
    #    Process.getpgrp      #=> 25527
    def self.getpgrp()
        #This is a stub, used for indexing
    end
    # Process.setpgrp   -> 0
    #  
    # Equivalent to <code>setpgid(0,0)</code>. Not available on all
    # platforms.
    def self.setpgrp()
        #This is a stub, used for indexing
    end
    # Process.getpgid(pid)   -> integer
    #  
    # Returns the process group ID for the given process id. Not
    # available on all platforms.
    # 
    #    Process.getpgid(Process.ppid())   #=> 25527
    def self.getpgid(pid)
        #This is a stub, used for indexing
    end
    # Process.setpgid(pid, integer)   -> 0
    #  
    # Sets the process group ID of _pid_ (0 indicates this
    # process) to <em>integer</em>. Not available on all platforms.
    def self.setpgid(pid, integer)
        #This is a stub, used for indexing
    end
    # Process.getsid()      -> integer
    # Process.getsid(pid)   -> integer
    #  
    # Returns the session ID for for the given process id. If not give,
    # return current process sid. Not available on all platforms.
    # 
    #    Process.getsid()                #=> 27422
    #    Process.getsid(0)               #=> 27422
    #    Process.getsid(Process.pid())   #=> 27422
    def self.getsid(*several_variants)
        #This is a stub, used for indexing
    end
    # Process.setsid   -> fixnum
    #  
    # Establishes this process as a new session and process group
    # leader, with no controlling tty. Returns the session id. Not
    # available on all platforms.
    # 
    #    Process.setsid   #=> 27422
    def self.setsid()
        #This is a stub, used for indexing
    end
    # Process.getpriority(kind, integer)   -> fixnum
    #  
    # Gets the scheduling priority for specified process, process group,
    # or user. <em>kind</em> indicates the kind of entity to find: one
    # of <code>Process::PRIO_PGRP</code>,
    # <code>Process::PRIO_USER</code>, or
    # <code>Process::PRIO_PROCESS</code>. _integer_ is an id
    # indicating the particular process, process group, or user (an id
    # of 0 means _current_). Lower priorities are more favorable
    # for scheduling. Not available on all platforms.
    # 
    #    Process.getpriority(Process::PRIO_USER, 0)      #=> 19
    #    Process.getpriority(Process::PRIO_PROCESS, 0)   #=> 19
    def self.getpriority(kind, integer)
        #This is a stub, used for indexing
    end
    # Process.setpriority(kind, integer, priority)   -> 0
    #  
    # See <code>Process#getpriority</code>.
    # 
    #    Process.setpriority(Process::PRIO_USER, 0, 19)      #=> 0
    #    Process.setpriority(Process::PRIO_PROCESS, 0, 19)   #=> 0
    #    Process.getpriority(Process::PRIO_USER, 0)          #=> 19
    #    Process.getpriority(Process::PRIO_PROCESS, 0)       #=> 19
    def self.setpriority(kind, integer, priority)
        #This is a stub, used for indexing
    end
    # Process.getrlimit(resource)   -> [cur_limit, max_limit]
    #  
    # Gets the resource limit of the process.
    # _cur_limit_ means current (soft) limit and
    # _max_limit_ means maximum (hard) limit.
    # 
    # _resource_ indicates the kind of resource to limit.
    # It is specified as a symbol such as <code>:CORE</code>,
    # a string such as <code>"CORE"</code> or
    # a constant such as <code>Process::RLIMIT_CORE</code>.
    # See Process.setrlimit for details.
    # 
    # _cur_limit_ and _max_limit_ may be <code>Process::RLIM_INFINITY</code>,
    # <code>Process::RLIM_SAVED_MAX</code> or
    # <code>Process::RLIM_SAVED_CUR</code>.
    # See Process.setrlimit and the system getrlimit(2) manual for details.
    def self.getrlimit(resource)
        #This is a stub, used for indexing
    end
    # Process.setrlimit(resource, cur_limit, max_limit)        -> nil
    # Process.setrlimit(resource, cur_limit)                   -> nil
    #  
    # Sets the resource limit of the process.
    # _cur_limit_ means current (soft) limit and
    # _max_limit_ means maximum (hard) limit.
    # 
    # If _max_limit_ is not given, _cur_limit_ is used.
    # 
    # _resource_ indicates the kind of resource to limit.
    # It should be a symbol such as <code>:CORE</code>,
    # a string such as <code>"CORE"</code> or
    # a constant such as <code>Process::RLIMIT_CORE</code>.
    # The available resources are OS dependent.
    # Ruby may support following resources.
    # 
    # [AS] total available memory (bytes) (SUSv3, NetBSD, FreeBSD, OpenBSD but 4.4BSD-Lite)
    # [CORE] core size (bytes) (SUSv3)
    # [CPU] CPU time (seconds) (SUSv3)
    # [DATA] data segment (bytes) (SUSv3)
    # [FSIZE] file size (bytes) (SUSv3)
    # [MEMLOCK] total size for mlock(2) (bytes) (4.4BSD, GNU/Linux)
    # [MSGQUEUE] allocation for POSIX message queues (bytes) (GNU/Linux)
    # [NICE] ceiling on process's nice(2) value (number) (GNU/Linux)
    # [NOFILE] file descriptors (number) (SUSv3)
    # [NPROC] number of processes for the user (number) (4.4BSD, GNU/Linux)
    # [RSS] resident memory size (bytes) (4.2BSD, GNU/Linux)
    # [RTPRIO] ceiling on the process's real-time priority (number) (GNU/Linux)
    # [RTTIME] CPU time for real-time process (us) (GNU/Linux)
    # [SBSIZE] all socket buffers (bytes) (NetBSD, FreeBSD)
    # [SIGPENDING] number of queued signals allowed (signals) (GNU/Linux)
    # [STACK] stack size (bytes) (SUSv3)
    # 
    # _cur_limit_ and _max_limit_ may be
    # <code>:INFINITY</code>, <code>"INFINITY"</code> or
    # <code>Process::RLIM_INFINITY</code>,
    # which means that the resource is not limited.
    # They may be <code>Process::RLIM_SAVED_MAX</code>,
    # <code>Process::RLIM_SAVED_CUR</code> and
    # corresponding symbols and strings too.
    # See system setrlimit(2) manual for details.
    # 
    # The following example raises the soft limit of core size to
    # the hard limit to try to make core dump possible.
    # 
    #   Process.setrlimit(:CORE, Process.getrlimit(:CORE)[1])
    def self.setrlimit(*several_variants)
        #This is a stub, used for indexing
    end
    # Process.uid           -> fixnum
    # Process::UID.rid      -> fixnum
    # Process::Sys.getuid   -> fixnum
    #  
    # Returns the (real) user ID of this process.
    # 
    #    Process.uid   #=> 501
    def self.uid()
        #This is a stub, used for indexing
    end
    # Process.uid= user   -> numeric
    #  
    # Sets the (user) user ID for this process. Not available on all
    # platforms.
    def self.uid= user
        #This is a stub, used for indexing
    end
    # Process.gid           -> fixnum
    # Process::GID.rid      -> fixnum
    # Process::Sys.getgid   -> fixnum
    #  
    # Returns the (real) group ID for this process.
    # 
    #    Process.gid   #=> 500
    def self.gid()
        #This is a stub, used for indexing
    end
    # Process.gid= fixnum   -> fixnum
    #  
    # Sets the group ID for this process.
    def self.gid= fixnum
        #This is a stub, used for indexing
    end
    # Process.euid           -> fixnum
    # Process::UID.eid       -> fixnum
    # Process::Sys.geteuid   -> fixnum
    #  
    # Returns the effective user ID for this process.
    # 
    #    Process.euid   #=> 501
    def self.euid()
        #This is a stub, used for indexing
    end
    # Process.euid= user
    #  
    # Sets the effective user ID for this process. Not available on all
    # platforms.
    def self.euid= user
        #This is a stub, used for indexing
    end
    # Process.egid          -> fixnum
    # Process::GID.eid      -> fixnum
    # Process::Sys.geteid   -> fixnum
    #  
    # Returns the effective group ID for this process. Not available on
    # all platforms.
    # 
    #    Process.egid   #=> 500
    def self.egid()
        #This is a stub, used for indexing
    end
    # Process.egid = fixnum   -> fixnum
    #  
    # Sets the effective group ID for this process. Not available on all
    # platforms.
    def self.egid= fixnum
        #This is a stub, used for indexing
    end
    # Process.initgroups(username, gid)   -> array
    #  
    # Initializes the supplemental group access list by reading the
    # system group database and using all groups of which the given user
    # is a member. The group with the specified <em>gid</em> is also
    # added to the list. Returns the resulting <code>Array</code> of the
    # gids of all the groups in the supplementary group access list. Not
    # available on all platforms.
    # 
    #    Process.groups   #=> [0, 1, 2, 3, 4, 6, 10, 11, 20, 26, 27]
    #    Process.initgroups( "mgranger", 30 )   #=> [30, 6, 10, 11]
    #    Process.groups   #=> [30, 6, 10, 11]
    def self.initgroups(username, gid)
        #This is a stub, used for indexing
    end
    # Process.groups   -> array
    #  
    # Get an <code>Array</code> of the gids of groups in the
    # supplemental group access list for this process.
    # 
    #    Process.groups   #=> [27, 6, 10, 11]
    def self.groups()
        #This is a stub, used for indexing
    end
    # Process.groups= array   -> array
    #  
    # Set the supplemental group access list to the given
    # <code>Array</code> of group IDs.
    # 
    #    Process.groups   #=> [0, 1, 2, 3, 4, 6, 10, 11, 20, 26, 27]
    #    Process.groups = [27, 6, 10, 11]   #=> [27, 6, 10, 11]
    #    Process.groups   #=> [27, 6, 10, 11]
    def self.groups= array
        #This is a stub, used for indexing
    end
    # Process.maxgroups   -> fixnum
    #  
    # Returns the maximum number of gids allowed in the supplemental
    # group access list.
    # 
    #    Process.maxgroups   #=> 32
    def self.maxgroups()
        #This is a stub, used for indexing
    end
    # Process.maxgroups= fixnum   -> fixnum
    #  
    # Sets the maximum number of gids allowed in the supplemental group
    # access list.
    def self.maxgroups= fixnum
        #This is a stub, used for indexing
    end
    # Process.daemon()                        -> 0
    # Process.daemon(nochdir=nil,noclose=nil) -> 0
    #  
    # Detach the process from controlling terminal and run in
    # the background as system daemon.  Unless the argument
    # nochdir is true (i.e. non false), it changes the current
    # working directory to the root ("/"). Unless the argument
    # noclose is true, daemon() will redirect standard input,
    # standard output and standard error to /dev/null.
    # Return zero on success, or raise one of Errno::*.
    def self.daemon(*several_variants)
        #This is a stub, used for indexing
    end
    # Process.times   -> aProcessTms
    #  
    # Returns a <code>Tms</code> structure (see <code>Process::Tms</code>)
    # that contains user and system CPU times for this process,
    # and also for children processes.
    # 
    #    t = Process.times
    #    [ t.utime, t.stime, t.cutime, t.cstime ]   #=> [0.0, 0.02, 0.00, 0.00]
    def self.times()
        #This is a stub, used for indexing
    end
    # Process.clock_gettime(clock_id [, unit])   -> number
    #  
    # Returns a time returned by POSIX clock_gettime() function.
    # 
    #   p Process.clock_gettime(Process::CLOCK_MONOTONIC)
    #   #=> 896053.968060096
    # 
    # +clock_id+ specifies a kind of clock.
    # It is specifed as a constant which begins with <code>Process::CLOCK_</code>
    # such as Process::CLOCK_REALTIME and Process::CLOCK_MONOTONIC.
    # 
    # The supported constants depends on OS and version.
    # Ruby provides following types of +clock_id+ if available.
    # 
    # [CLOCK_REALTIME] SUSv2 to 4, Linux 2.5.63, FreeBSD 3.0, NetBSD 2.0, OpenBSD 2.1
    # [CLOCK_MONOTONIC] SUSv3 to 4, Linux 2.5.63, FreeBSD 3.0, NetBSD 2.0, OpenBSD 3.4
    # [CLOCK_PROCESS_CPUTIME_ID] SUSv3 to 4, Linux 2.5.63
    # [CLOCK_THREAD_CPUTIME_ID] SUSv3 to 4, Linux 2.5.63, FreeBSD 7.1
    # [CLOCK_VIRTUAL] FreeBSD 3.0, OpenBSD 2.1
    # [CLOCK_PROF] FreeBSD 3.0, OpenBSD 2.1
    # [CLOCK_REALTIME_FAST] FreeBSD 8.1
    # [CLOCK_REALTIME_PRECISE] FreeBSD 8.1
    # [CLOCK_REALTIME_COARSE] Linux 2.6.32
    # [CLOCK_REALTIME_ALARM] Linux 3.0
    # [CLOCK_MONOTONIC_FAST] FreeBSD 8.1
    # [CLOCK_MONOTONIC_PRECISE] FreeBSD 8.1
    # [CLOCK_MONOTONIC_COARSE] Linux 2.6.32
    # [CLOCK_MONOTONIC_RAW] Linux 2.6.28
    # [CLOCK_BOOTTIME] Linux 2.6.39
    # [CLOCK_BOOTTIME_ALARM] Linux 3.0
    # [CLOCK_UPTIME] FreeBSD 7.0
    # [CLOCK_UPTIME_FAST] FreeBSD 8.1
    # [CLOCK_UPTIME_PRECISE] FreeBSD 8.1
    # [CLOCK_SECOND] FreeBSD 8.1
    # 
    # Note that SUS stands for Single Unix Specification.
    # SUS contains POSIX and clock_gettime is defined in the POSIX part.
    # SUS defines CLOCK_REALTIME mandatory but
    # CLOCK_MONOTONIC, CLOCK_PROCESS_CPUTIME_ID and CLOCK_THREAD_CPUTIME_ID are optional.
    # 
    # Also, several symbols are accepted as +clock_id+.
    # There are emulations for clock_gettime().
    # 
    # For example, Process::CLOCK_REALTIME is defined as
    # +:GETTIMEOFDAY_BASED_CLOCK_REALTIME+ when clock_gettime() is not available.
    # 
    # Emulations for +CLOCK_REALTIME+:
    # [:GETTIMEOFDAY_BASED_CLOCK_REALTIME]
    #   Use gettimeofday() defined by SUS.
    #   (SUSv4 obsoleted it, though.)
    #   The resolution is 1 microsecond.
    # [:TIME_BASED_CLOCK_REALTIME]
    #   Use time() defined by ISO C.
    #   The resolution is 1 second.
    # 
    # Emulations for +CLOCK_MONOTONIC+:
    # [:MACH_ABSOLUTE_TIME_BASED_CLOCK_MONOTONIC]
    #   Use mach_absolute_time(), available on Darwin.
    #   The resolution is CPU dependent.
    # [:TIMES_BASED_CLOCK_MONOTONIC]
    #   Use the result value of times() defined by POSIX.
    #   POSIX defines it as "times() shall return the elapsed real time, in clock ticks, since an arbitrary point in the past (for example, system start-up time)".
    #   For example, GNU/Linux returns a value based on jiffies and it is monotonic.
    #   However, 4.4BSD uses gettimeofday() and it is not monotonic.
    #   (FreeBSD uses clock_gettime(CLOCK_MONOTONIC) instead, though.)
    #   The resolution is the clock tick.
    #   "getconf CLK_TCK" command shows the clock ticks per second.
    #   (The clock ticks per second is defined by HZ macro in older systems.)
    #   If it is 100 and clock_t is 32 bits integer type, the resolution is 10 millisecond and
    #   cannot represent over 497 days.
    # 
    # Emulations for +CLOCK_PROCESS_CPUTIME_ID+:
    # [:GETRUSAGE_BASED_CLOCK_PROCESS_CPUTIME_ID]
    #   Use getrusage() defined by SUS.
    #   getrusage() is used with RUSAGE_SELF to obtain the time only for
    #   the calling process (excluding the time for child processes).
    #   The result is addition of user time (ru_utime) and system time (ru_stime).
    #   The resolution is 1 microsecond.
    # [:TIMES_BASED_CLOCK_PROCESS_CPUTIME_ID]
    #   Use times() defined by POSIX.
    #   The result is addition of user time (tms_utime) and system time (tms_stime).
    #   tms_cutime and tms_cstime are ignored to exclude the time for child processes.
    #   The resolution is the clock tick.
    #   "getconf CLK_TCK" command shows the clock ticks per second.
    #   (The clock ticks per second is defined by HZ macro in older systems.)
    #   If it is 100, the resolution is 10 millisecond.
    # [:CLOCK_BASED_CLOCK_PROCESS_CPUTIME_ID]
    #   Use clock() defined by ISO C.
    #   The resolution is 1/CLOCKS_PER_SEC.
    #   CLOCKS_PER_SEC is the C-level macro defined by time.h.
    #   SUS defines CLOCKS_PER_SEC is 1000000.
    #   Non-Unix systems may define it a different value, though.
    #   If CLOCKS_PER_SEC is 1000000 as SUS, the resolution is 1 microsecond.
    #   If CLOCKS_PER_SEC is 1000000 and clock_t is 32 bits integer type, it cannot represent over 72 minutes.
    # 
    # If the given +clock_id+ is not supported, Errno::EINVAL is raised.
    # 
    # +unit+ specifies a type of the return value.
    # 
    # [:float_second] number of seconds as a float (default)
    # [:float_millisecond] number of milliseconds as a float
    # [:float_microsecond] number of microseconds as a float
    # [:second] number of seconds as an integer
    # [:millisecond] number of milliseconds as an integer
    # [:microsecond] number of microseconds as an integer
    # [:nanosecond] number of nanoseconds as an integer
    # 
    # The underlying function, clock_gettime(), returns a number of nanoseconds.
    # Float object (IEEE 754 double) is not enough to represent
    # the return value for CLOCK_REALTIME.
    # If the exact nanoseconds value is required, use +:nanoseconds+ as the +unit+.
    # 
    # The origin (zero) of the returned value varies.
    # For example, system start up time, process start up time, the Epoch, etc.
    # 
    # The origin in CLOCK_REALTIME is defined as the Epoch
    # (1970-01-01 00:00:00 UTC).
    # But some systems count leap seconds and others doesn't.
    # So the result can be interpreted differently across systems.
    # Time.now is recommended over CLOCK_REALTIME.
    def self.clock_gettime(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # Process.clock_getres(clock_id [, unit])   -> number
    #  
    # Returns the time resolution returned by POSIX clock_getres() function.
    # 
    # +clock_id+ specifies a kind of clock.
    # See the document of +Process.clock_gettime+ for details.
    # 
    # +clock_id+ can be a symbol as +Process.clock_gettime+.
    # However the result may not be accurate.
    # For example, +Process.clock_getres(:GETTIMEOFDAY_BASED_CLOCK_REALTIME)+
    # returns 1.0e-06 which means 1 microsecond, but actual resolution can be more coarse.
    # 
    # If the given +clock_id+ is not supported, Errno::EINVAL is raised.
    # 
    # +unit+ specifies a type of the return value.
    # +Process.clock_getres+ accepts +unit+ as +Process.clock_gettime+.
    # The default value, +:float_second+, is also same as
    # +Process.clock_gettime+.
    # 
    # +Process.clock_getres+ also accepts +:hertz+ as +unit+.
    # +:hertz+ means a the reciprocal of +:float_second+.
    # 
    # +:hertz+ can be used to obtain the exact value of
    # the clock ticks per second for times() function and
    # CLOCKS_PER_SEC for clock() function.
    # 
    # +Process.clock_getres(:TIMES_BASED_CLOCK_PROCESS_CPUTIME_ID, :hertz)+
    # returns the clock ticks per second.
    # 
    # +Process.clock_getres(:CLOCK_BASED_CLOCK_PROCESS_CPUTIME_ID, :hertz)+
    # returns CLOCKS_PER_SEC.
    # 
    #   p Process.clock_getres(Process::CLOCK_MONOTONIC)
    #   #=> 1.0e-09
    def self.clock_getres(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # Process.argv0  -> frozen_string
    #  
    # Returns the name of the script being executed.  The value is not
    # affected by assigning a new value to $0.
    # 
    # This method first appeared in Ruby 2.1 to serve as a global
    # variable free means to get the script name.
    def self.argv0()
        #This is a stub, used for indexing
    end
    # Process.setproctitle(string)  -> string
    #  
    # Sets the process title that appears on the ps(1) command.  Not
    # necessarily effective on all platforms.  No exception will be
    # raised regardless of the result, nor will NotImplementedError be
    # raised even if the platform does not support the feature.
    # 
    # Calling this method does not affect the value of $0.
    # 
    #    Process.setproctitle('myapp: worker #%d' % worker_id)
    # 
    # This method first appeared in Ruby 2.1 to serve as a global
    # variable free means to change the process title.
    def self.setproctitle(string)
        #This is a stub, used for indexing
    end
    # The <code>Process::GID</code> module contains a collection of
    # module functions which can be used to portably get, set, and
    # switch the current process's real, effective, and saved group IDs.
    module GID
        # Process.gid           -> fixnum
        # Process::GID.rid      -> fixnum
        # Process::Sys.getgid   -> fixnum
        #  
        # Returns the (real) group ID for this process.
        # 
        #    Process.gid   #=> 500
        def self.rid()
            #This is a stub, used for indexing
        end
        # Process.egid          -> fixnum
        # Process::GID.eid      -> fixnum
        # Process::Sys.geteid   -> fixnum
        #  
        # Returns the effective group ID for this process. Not available on
        # all platforms.
        # 
        #    Process.egid   #=> 500
        def self.eid()
            #This is a stub, used for indexing
        end
        # Process::GID.change_privilege(group)   -> fixnum
        #  
        # Change the current process's real and effective group ID to that
        # specified by _group_. Returns the new group ID. Not
        # available on all platforms.
        # 
        #    [Process.gid, Process.egid]          #=> [0, 0]
        #    Process::GID.change_privilege(33)    #=> 33
        #    [Process.gid, Process.egid]          #=> [33, 33]
        def self.change_privilege(group)
            #This is a stub, used for indexing
        end
        # Process::GID.grant_privilege(group)    -> fixnum
        # Process::GID.eid = group               -> fixnum
        #  
        # Set the effective group ID, and if possible, the saved group ID of
        # the process to the given _group_. Returns the new
        # effective group ID. Not available on all platforms.
        # 
        #    [Process.gid, Process.egid]          #=> [0, 0]
        #    Process::GID.grant_privilege(31)     #=> 33
        #    [Process.gid, Process.egid]          #=> [0, 33]
        def self.grant_privilege(group)
            #This is a stub, used for indexing
        end
        # Process::GID.re_exchange   -> fixnum
        #  
        # Exchange real and effective group IDs and return the new effective
        # group ID. Not available on all platforms.
        # 
        #    [Process.gid, Process.egid]   #=> [0, 33]
        #    Process::GID.re_exchange      #=> 0
        #    [Process.gid, Process.egid]   #=> [33, 0]
        def self.re_exchange()
            #This is a stub, used for indexing
        end
        # Process::GID.re_exchangeable?   -> true or false
        #  
        # Returns +true+ if the real and effective group IDs of a
        # process may be exchanged on the current platform.
        def self.re_exchangeable?()
            #This is a stub, used for indexing
        end
        # Process::GID.sid_available?   -> true or false
        #  
        # Returns +true+ if the current platform has saved group
        # ID functionality.
        def self.sid_available?()
            #This is a stub, used for indexing
        end
        # Process::GID.switch              -> fixnum
        # Process::GID.switch {|| block}   -> object
        #  
        # Switch the effective and real group IDs of the current process. If
        # a <em>block</em> is given, the group IDs will be switched back
        # after the block is executed. Returns the new effective group ID if
        # called without a block, and the return value of the block if one
        # is given.
        def self.switch(*several_variants)
            #This is a stub, used for indexing
        end
        # Process::GID.from_name(name)   -> gid
        #  
        # Get the group ID by the _name_.
        # If the group is not found, +ArgumentError+ will be raised.
        # 
        #    Process::GID.from_name("wheel") #=> 0
        #    Process::GID.from_name("nosuchgroup") #=> can't find group for nosuchgroup (ArgumentError)
        def self.from_name(name)
            #This is a stub, used for indexing
        end
    end
    # <code>Process::Status</code> encapsulates the information on the
    # status of a running or terminated system process. The built-in
    # variable <code>$?</code> is either +nil+ or a
    # <code>Process::Status</code> object.
    # 
    #    fork { exit 99 }   #=> 26557
    #    Process.wait       #=> 26557
    #    $?.class           #=> Process::Status
    #    $?.to_i            #=> 25344
    #    $? >> 8            #=> 99
    #    $?.stopped?        #=> false
    #    $?.exited?         #=> true
    #    $?.exitstatus      #=> 99
    # 
    # Posix systems record information on processes using a 16-bit
    # integer.  The lower bits record the process status (stopped,
    # exited, signaled) and the upper bits possibly contain additional
    # information (for example the program's return code in the case of
    # exited processes). Pre Ruby 1.8, these bits were exposed directly
    # to the Ruby program. Ruby now encapsulates these in a
    # <code>Process::Status</code> object. To maximize compatibility,
    # however, these objects retain a bit-oriented interface. In the
    # descriptions that follow, when we talk about the integer value of
    # _stat_, we're referring to this 16 bit value.
    class Status
        # stat == other   -> true or false
        #  
        # Returns +true+ if the integer value of _stat_
        # equals <em>other</em>.
        def == other
            #This is a stub, used for indexing
        end
        # stat & num   -> fixnum
        #  
        # Logical AND of the bits in _stat_ with <em>num</em>.
        # 
        #    fork { exit 0x37 }
        #    Process.wait
        #    sprintf('%04x', $?.to_i)       #=> "3700"
        #    sprintf('%04x', $? & 0x1e00)   #=> "1600"
        def & num
            #This is a stub, used for indexing
        end
        # stat >> num   -> fixnum
        #  
        # Shift the bits in _stat_ right <em>num</em> places.
        # 
        #    fork { exit 99 }   #=> 26563
        #    Process.wait       #=> 26563
        #    $?.to_i            #=> 25344
        #    $? >> 8            #=> 99
        def >> num
            #This is a stub, used for indexing
        end
        # stat.to_i     -> fixnum
        # stat.to_int   -> fixnum
        #  
        # Returns the bits in _stat_ as a <code>Fixnum</code>. Poking
        # around in these bits is platform dependent.
        # 
        #    fork { exit 0xab }         #=> 26566
        #    Process.wait               #=> 26566
        #    sprintf('%04x', $?.to_i)   #=> "ab00"
        def to_i(*several_variants)
            #This is a stub, used for indexing
        end
        # stat.to_s   -> string
        #  
        # Show pid and exit status as a string.
        # 
        #   system("false")
        #   p $?.to_s         #=> "pid 12766 exit 1"
        def to_s()
            #This is a stub, used for indexing
        end
        # stat.inspect   -> string
        #  
        # Override the inspection method.
        # 
        #   system("false")
        #   p $?.inspect #=> "#<Process::Status: pid 12861 exit 1>"
        def inspect()
            #This is a stub, used for indexing
        end
        # stat.pid   -> fixnum
        #  
        # Returns the process ID that this status object represents.
        # 
        #    fork { exit }   #=> 26569
        #    Process.wait    #=> 26569
        #    $?.pid          #=> 26569
        def pid()
            #This is a stub, used for indexing
        end
        # stat.stopped?   -> true or false
        #  
        # Returns +true+ if this process is stopped. This is only
        # returned if the corresponding <code>wait</code> call had the
        # <code>WUNTRACED</code> flag set.
        def stopped?()
            #This is a stub, used for indexing
        end
        # stat.stopsig   -> fixnum or nil
        #  
        # Returns the number of the signal that caused _stat_ to stop
        # (or +nil+ if self is not stopped).
        def stopsig()
            #This is a stub, used for indexing
        end
        # stat.signaled?   -> true or false
        #  
        # Returns +true+ if _stat_ terminated because of
        # an uncaught signal.
        def signaled?()
            #This is a stub, used for indexing
        end
        # stat.termsig   -> fixnum or nil
        #  
        # Returns the number of the signal that caused _stat_ to
        # terminate (or +nil+ if self was not terminated by an
        # uncaught signal).
        def termsig()
            #This is a stub, used for indexing
        end
        # stat.exited?   -> true or false
        #  
        # Returns +true+ if _stat_ exited normally (for
        # example using an <code>exit()</code> call or finishing the
        # program).
        def exited?()
            #This is a stub, used for indexing
        end
        # stat.exitstatus   -> fixnum or nil
        #  
        # Returns the least significant eight bits of the return code of
        # _stat_. Only available if <code>exited?</code> is
        # +true+.
        # 
        #    fork { }           #=> 26572
        #    Process.wait       #=> 26572
        #    $?.exited?         #=> true
        #    $?.exitstatus      #=> 0
        # 
        #    fork { exit 99 }   #=> 26573
        #    Process.wait       #=> 26573
        #    $?.exited?         #=> true
        #    $?.exitstatus      #=> 99
        def exitstatus()
            #This is a stub, used for indexing
        end
        # stat.success?   -> true, false or nil
        #  
        # Returns +true+ if _stat_ is successful, +false+ if not.
        # Returns +nil+ if <code>exited?</code> is not +true+.
        def success?()
            #This is a stub, used for indexing
        end
        # stat.coredump?   -> true or false
        #  
        # Returns +true+ if _stat_ generated a coredump
        # when it terminated. Not available on all platforms.
        def coredump?()
            #This is a stub, used for indexing
        end
    end
    # The <code>Process::Sys</code> module contains UID and GID
    # functions which provide direct bindings to the system calls of the
    # same names instead of the more-portable versions of the same
    # functionality found in the <code>Process</code>,
    # <code>Process::UID</code>, and <code>Process::GID</code> modules.
    module Sys
        # Process.uid           -> fixnum
        # Process::UID.rid      -> fixnum
        # Process::Sys.getuid   -> fixnum
        #  
        # Returns the (real) user ID of this process.
        # 
        #    Process.uid   #=> 501
        def self.getuid()
            #This is a stub, used for indexing
        end
        # Process.euid           -> fixnum
        # Process::UID.eid       -> fixnum
        # Process::Sys.geteuid   -> fixnum
        #  
        # Returns the effective user ID for this process.
        # 
        #    Process.euid   #=> 501
        def self.geteuid()
            #This is a stub, used for indexing
        end
        # Process.gid           -> fixnum
        # Process::GID.rid      -> fixnum
        # Process::Sys.getgid   -> fixnum
        #  
        # Returns the (real) group ID for this process.
        # 
        #    Process.gid   #=> 500
        def self.getgid()
            #This is a stub, used for indexing
        end
        # Process.egid          -> fixnum
        # Process::GID.eid      -> fixnum
        # Process::Sys.geteid   -> fixnum
        #  
        # Returns the effective group ID for this process. Not available on
        # all platforms.
        # 
        #    Process.egid   #=> 500
        def self.getegid()
            #This is a stub, used for indexing
        end
        # Process::Sys.setuid(user)   -> nil
        #  
        # Set the user ID of the current process to _user_. Not
        # available on all platforms.
        def self.setuid(user)
            #This is a stub, used for indexing
        end
        # Process::Sys.setgid(group)   -> nil
        #  
        # Set the group ID of the current process to _group_. Not
        # available on all platforms.
        def self.setgid(group)
            #This is a stub, used for indexing
        end
        # Process::Sys.setruid(user)   -> nil
        #  
        # Set the real user ID of the calling process to _user_.
        # Not available on all platforms.
        def self.setruid(user)
            #This is a stub, used for indexing
        end
        # Process::Sys.setrgid(group)   -> nil
        #  
        # Set the real group ID of the calling process to _group_.
        # Not available on all platforms.
        def self.setrgid(group)
            #This is a stub, used for indexing
        end
        # Process::Sys.seteuid(user)   -> nil
        #  
        # Set the effective user ID of the calling process to
        # _user_.  Not available on all platforms.
        def self.seteuid(user)
            #This is a stub, used for indexing
        end
        # Process::Sys.setegid(group)   -> nil
        #  
        # Set the effective group ID of the calling process to
        # _group_.  Not available on all platforms.
        def self.setegid(group)
            #This is a stub, used for indexing
        end
        # Process::Sys.setreuid(rid, eid)   -> nil
        #  
        # Sets the (user) real and/or effective user IDs of the current
        # process to _rid_ and _eid_, respectively. A value of
        # <code>-1</code> for either means to leave that ID unchanged. Not
        # available on all platforms.
        def self.setreuid(rid, eid)
            #This is a stub, used for indexing
        end
        # Process::Sys.setregid(rid, eid)   -> nil
        #  
        # Sets the (group) real and/or effective group IDs of the current
        # process to <em>rid</em> and <em>eid</em>, respectively. A value of
        # <code>-1</code> for either means to leave that ID unchanged. Not
        # available on all platforms.
        def self.setregid(rid, eid)
            #This is a stub, used for indexing
        end
        # Process::Sys.setresuid(rid, eid, sid)   -> nil
        #  
        # Sets the (user) real, effective, and saved user IDs of the
        # current process to _rid_, _eid_, and _sid_ respectively. A
        # value of <code>-1</code> for any value means to
        # leave that ID unchanged. Not available on all platforms.
        def self.setresuid(rid, eid, sid)
            #This is a stub, used for indexing
        end
        # Process::Sys.setresgid(rid, eid, sid)   -> nil
        #  
        # Sets the (group) real, effective, and saved user IDs of the
        # current process to <em>rid</em>, <em>eid</em>, and <em>sid</em>
        # respectively. A value of <code>-1</code> for any value means to
        # leave that ID unchanged. Not available on all platforms.
        def self.setresgid(rid, eid, sid)
            #This is a stub, used for indexing
        end
        # Process::Sys.issetugid   -> true or false
        #  
        # Returns +true+ if the process was created as a result
        # of an execve(2) system call which had either of the setuid or
        # setgid bits set (and extra privileges were given as a result) or
        # if it has changed any of its real, effective or saved user or
        # group IDs since it began execution.
        def self.issetugid()
            #This is a stub, used for indexing
        end
    end
    # The <code>Process::UID</code> module contains a collection of
    # module functions which can be used to portably get, set, and
    # switch the current process's real, effective, and saved user IDs.
    module UID
        # Process.uid           -> fixnum
        # Process::UID.rid      -> fixnum
        # Process::Sys.getuid   -> fixnum
        #  
        # Returns the (real) user ID of this process.
        # 
        #    Process.uid   #=> 501
        def self.rid()
            #This is a stub, used for indexing
        end
        # Process.euid           -> fixnum
        # Process::UID.eid       -> fixnum
        # Process::Sys.geteuid   -> fixnum
        #  
        # Returns the effective user ID for this process.
        # 
        #    Process.euid   #=> 501
        def self.eid()
            #This is a stub, used for indexing
        end
        # Process::UID.change_privilege(user)   -> fixnum
        #  
        # Change the current process's real and effective user ID to that
        # specified by _user_. Returns the new user ID. Not
        # available on all platforms.
        # 
        #    [Process.uid, Process.euid]          #=> [0, 0]
        #    Process::UID.change_privilege(31)    #=> 31
        #    [Process.uid, Process.euid]          #=> [31, 31]
        def self.change_privilege(user)
            #This is a stub, used for indexing
        end
        # Process::UID.grant_privilege(user)   -> fixnum
        # Process::UID.eid= user               -> fixnum
        #  
        # Set the effective user ID, and if possible, the saved user ID of
        # the process to the given _user_. Returns the new
        # effective user ID. Not available on all platforms.
        # 
        #    [Process.uid, Process.euid]          #=> [0, 0]
        #    Process::UID.grant_privilege(31)     #=> 31
        #    [Process.uid, Process.euid]          #=> [0, 31]
        def self.grant_privilege(user)
            #This is a stub, used for indexing
        end
        # Process::UID.re_exchange   -> fixnum
        #  
        # Exchange real and effective user IDs and return the new effective
        # user ID. Not available on all platforms.
        # 
        #    [Process.uid, Process.euid]   #=> [0, 31]
        #    Process::UID.re_exchange      #=> 0
        #    [Process.uid, Process.euid]   #=> [31, 0]
        def self.re_exchange()
            #This is a stub, used for indexing
        end
        # Process::UID.re_exchangeable?   -> true or false
        #  
        # Returns +true+ if the real and effective user IDs of a
        # process may be exchanged on the current platform.
        def self.re_exchangeable?()
            #This is a stub, used for indexing
        end
        # Process::UID.sid_available?   -> true or false
        #  
        # Returns +true+ if the current platform has saved user
        # ID functionality.
        def self.sid_available?()
            #This is a stub, used for indexing
        end
        # Process::UID.switch              -> fixnum
        # Process::UID.switch {|| block}   -> object
        #  
        # Switch the effective and real user IDs of the current process. If
        # a <em>block</em> is given, the user IDs will be switched back
        # after the block is executed. Returns the new effective user ID if
        # called without a block, and the return value of the block if one
        # is given.
        def self.switch(*several_variants)
            #This is a stub, used for indexing
        end
        # Process::UID.from_name(name)   -> uid
        #  
        # Get the user ID by the _name_.
        # If the user is not found, +ArgumentError+ will be raised.
        # 
        #    Process::UID.from_name("root") #=> 0
        #    Process::UID.from_name("nosuchuser") #=> can't find user for nosuchuser (ArgumentError)
        def self.from_name(name)
            #This is a stub, used for indexing
        end
    end
end
