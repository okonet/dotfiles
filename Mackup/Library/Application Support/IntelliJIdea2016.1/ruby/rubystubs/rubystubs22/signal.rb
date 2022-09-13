=begin
 This is a machine generated stub using stdlib-doc for <b>module Signal</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

# Many operating systems allow signals to be sent to running
# processes. Some signals have a defined effect on the process, while
# others may be trapped at the code level and acted upon. For
# example, your process may trap the USR1 signal and use it to toggle
# debugging, and may use TERM to initiate a controlled shutdown.
# 
#     pid = fork do
#       Signal.trap("USR1") do
#         $debug = !$debug
#         puts "Debug now: #$debug"
#       end
#       Signal.trap("TERM") do
#         puts "Terminating..."
#         shutdown()
#       end
#       # . . . do some work . . .
#     end
# 
#     Process.detach(pid)
# 
#     # Controlling program:
#     Process.kill("USR1", pid)
#     # ...
#     Process.kill("USR1", pid)
#     # ...
#     Process.kill("TERM", pid)
# 
# produces:
#     Debug now: true
#     Debug now: false
#    Terminating...
# 
# The list of available signal names and their interpretation is
# system dependent. Signal delivery semantics may also vary between
# systems; in particular signal delivery may not always be reliable.
module Signal
    # Signal.trap( signal, command ) -> obj
    # Signal.trap( signal ) {| | block } -> obj
    #  
    # Specifies the handling of signals. The first parameter is a signal
    # name (a string such as ``SIGALRM'', ``SIGUSR1'', and so on) or a
    # signal number. The characters ``SIG'' may be omitted from the
    # signal name. The command or block specifies code to be run when the
    # signal is raised.
    # If the command is the string ``IGNORE'' or ``SIG_IGN'', the signal
    # will be ignored.
    # If the command is ``DEFAULT'' or ``SIG_DFL'', the Ruby's default handler
    # will be invoked.
    # If the command is ``EXIT'', the script will be terminated by the signal.
    # If the command is ``SYSTEM_DEFAULT'', the operating system's default
    # handler will be invoked.
    # Otherwise, the given command or block will be run.
    # The special signal name ``EXIT'' or signal number zero will be
    # invoked just prior to program termination.
    # trap returns the previous handler for the given signal.
    # 
    #     Signal.trap(0, proc { puts "Terminating: #{$$}" })
    #     Signal.trap("CLD")  { puts "Child died" }
    #     fork && Process.wait
    # 
    # produces:
    #     Terminating: 27461
    #     Child died
    #     Terminating: 27460
    def self.trap(*several_variants)
        #This is a stub, used for indexing
    end
    # Signal.list -> a_hash
    #  
    # Returns a list of signal names mapped to the corresponding
    # underlying signal numbers.
    # 
    #   Signal.list   #=> {"EXIT"=>0, "HUP"=>1, "INT"=>2, "QUIT"=>3, "ILL"=>4, "TRAP"=>5, "IOT"=>6, "ABRT"=>6, "FPE"=>8, "KILL"=>9, "BUS"=>7, "SEGV"=>11, "SYS"=>31, "PIPE"=>13, "ALRM"=>14, "TERM"=>15, "URG"=>23, "STOP"=>19, "TSTP"=>20, "CONT"=>18, "CHLD"=>17, "CLD"=>17, "TTIN"=>21, "TTOU"=>22, "IO"=>29, "XCPU"=>24, "XFSZ"=>25, "VTALRM"=>26, "PROF"=>27, "WINCH"=>28, "USR1"=>10, "USR2"=>12, "PWR"=>30, "POLL"=>29}
    def self.list()
        #This is a stub, used for indexing
    end
    # Signal.signame(signo)  ->  string
    #  
    # convert signal number to signal name
    # 
    #    Signal.trap("INT") { |signo| puts Signal.signame(signo) }
    #    Process.kill("INT", 0)
    # 
    # <em>produces:</em>
    # 
    #    INT
    def self.signame(signo)
        #This is a stub, used for indexing
    end
end
