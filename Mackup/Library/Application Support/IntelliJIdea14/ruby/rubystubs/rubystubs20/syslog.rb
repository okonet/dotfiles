=begin
 This is a machine generated stub using stdlib-doc for <b>module Syslog</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The syslog package provides a Ruby interface to the POSIX system logging
# facility.
# 
# Syslog messages are typically passed to a central logging daemon.
# The daemon may filter them; route them into different files (usually
# found under /var/log); place them in SQL databases; forward
# them to centralized logging servers via TCP or UDP; or even alert the
# system administrator via email, pager or text message.
# 
# Unlike application-level logging via Logger or Log4r, syslog is designed
# to allow secure tamper-proof logging.
# 
# The syslog protocol is standardized in RFC 5424.
module Syslog
    # open(ident, options, facility) => syslog
    #  
    # Open the syslog facility.
    # Raises a runtime exception if it is already open.
    # 
    # Can be called with or without a code block. If called with a block, the
    # Syslog object created is passed to the block.
    # 
    # If the syslog is already open, raises a RuntimeError.
    # 
    # +ident+ is a String which identifies the calling program.
    # 
    # +options+ is the logical OR of any of the following:
    # 
    # LOG_CONS:: If there is an error while sending to the system logger,
    #            write directly to the console instead.
    # 
    # LOG_NDELAY:: Open the connection now, rather than waiting for the first
    #              message to be written.
    # 
    # LOG_NOWAIT:: Don't wait for any child processes created while logging
    #              messages. (Has no effect on Linux.)
    # 
    # LOG_ODELAY:: Opposite of LOG_NDELAY; wait until a message is sent before
    #              opening the connection. (This is the default.)
    # 
    # LOG_PERROR:: Print the message to stderr as well as sending it to syslog.
    #              (Not in POSIX.1-2001.)
    # 
    # LOG_PID:: Include the current process ID with each message.
    # 
    # +facility+ describes the type of program opening the syslog, and is
    # the logical OR of any of the following which are defined for the host OS:
    # 
    # LOG_AUTH:: Security or authorization. Deprecated, use LOG_AUTHPRIV
    #            instead.
    # 
    # LOG_AUTHPRIV:: Security or authorization messages which should be kept
    #                private.
    # 
    # LOG_CONSOLE:: System console message.
    # 
    # LOG_CRON:: System task scheduler (cron or at).
    # 
    # LOG_DAEMON:: A system daemon which has no facility value of its own.
    # 
    # LOG_FTP:: An FTP server.
    # 
    # LOG_KERN:: A kernel message (not sendable by user processes, so not of
    #            much use to Ruby, but listed here for completeness).
    # 
    # LOG_LPR:: Line printer subsystem.
    # 
    # LOG_MAIL:: Mail delivery or transport subsystem.
    # 
    # LOG_NEWS:: Usenet news system.
    # 
    # LOG_NTP:: Network Time Protocol server.
    # 
    # LOG_SECURITY:: General security message.
    # 
    # LOG_SYSLOG:: Messages generated internally by syslog.
    # 
    # LOG_USER:: Generic user-level message.
    # 
    # LOG_UUCP:: UUCP subsystem.
    # 
    # LOG_LOCAL0 to LOG_LOCAL7:: Locally-defined facilities.
    # 
    # Example:
    # 
    #  Syslog.open("webrick", Syslog::LOG_PID,
    #              Syslog::LOG_DAEMON | Syslog::LOG_LOCAL3)
    def self.open(ident, options, facility)
        #This is a stub, used for indexing
    end
    # reopen(ident, options, facility) => syslog
    #  
    # Closes and then reopens the syslog.
    # 
    # Arguments are the same as for open().
    def self.reopen(ident, options, facility)
        #This is a stub, used for indexing
    end
    # reopen(ident, options, facility) => syslog
    #  
    # Closes and then reopens the syslog.
    # 
    # Arguments are the same as for open().
    def self.open!(*smth) #parameteres couldn't be extracted
        #This is a stub, used for indexing
    end
    # opened?
    #  
    # Returns true if the syslog is open.
    def self.opened?()
        #This is a stub, used for indexing
    end
    # Returns the identity string used in the last call to open()
    def self.ident()
        #This is a stub, used for indexing
    end
    # Returns the options bitmask used in the last call to open()
    def self.options()
        #This is a stub, used for indexing
    end
    # Returns the facility number used in the last call to open()
    def self.facility()
        #This is a stub, used for indexing
    end
    # log(priority, format_string, *format_args)
    #  
    # Log a message with the specified priority. Example:
    # 
    #   Syslog.log(Syslog::LOG_CRIT, "Out of disk space")
    #   Syslog.log(Syslog::LOG_CRIT, "User %s logged in", ENV['USER'])
    # 
    # The priority levels, in descending order, are:
    # 
    # LOG_EMERG::   System is unusable
    # LOG_ALERT::   Action needs to be taken immediately
    # LOG_CRIT::    A critical condition has occurred
    # LOG_ERR::     An error occurred
    # LOG_WARNING:: Warning of a possible problem
    # LOG_NOTICE::  A normal but significant condition occurred
    # LOG_INFO::    Informational message
    # LOG_DEBUG::   Debugging information
    # 
    # Each priority level also has a shortcut method that logs with it's named priority.
    # As an example, the two following statements would produce the same result:
    # 
    #   Syslog.log(Syslog::LOG_ALERT, "Out of memory")
    #   Syslog.alert("Out of memory")
    # 
    # Format strings are as for printf/sprintf, except that in addition %m is
    # replaced with the error message string that would be returned by
    # strerror(errno).
    def self.log(priority, format_string, *format_args)
        #This is a stub, used for indexing
    end
    # Closes the syslog facility.
    # Raises a runtime exception if it is not open.
    def self.close()
        #This is a stub, used for indexing
    end
    # Returns the log priority mask in effect. The mask is not reset by opening
    # or closing syslog.
    def self.mask()
        #This is a stub, used for indexing
    end
    # mask=(priority_mask)
    #  
    # Sets the log priority mask. A method LOG_UPTO is defined to make it easier
    # to set mask values. Example:
    # 
    #   Syslog.mask = Syslog::LOG_UPTO(Syslog::LOG_ERR)
    # 
    # Alternatively, specific priorities can be selected and added together using
    # binary OR. Example:
    # 
    #   Syslog.mask = Syslog::LOG_MASK(Syslog::LOG_ERR) | Syslog::LOG_MASK(Syslog::LOG_CRIT)
    # 
    # The priority mask persists through calls to open() and close().
    def self.mask=(priority_mask)
        #This is a stub, used for indexing
    end
    # Returns an inspect() string summarizing the object state.
    def self.inspect()
        #This is a stub, used for indexing
    end
    # Returns self, for backward compatibility.
    def self.instance()
        #This is a stub, used for indexing
    end
    module Constants
        include Syslog::Option
        include Syslog::Facility
        include Syslog::Level
        def self.included(p1)
            #This is a stub, used for indexing
        end
    end
    module Facility
    end
    module Level
    end
    module Macros
        # LOG_MASK(priority_level) => priority_mask
        #  
        # Generates a mask bit for a priority level. See #mask=
        def LOG_MASK(priority_level)
            #This is a stub, used for indexing
        end
        # LOG_UPTO(priority_level) => priority_mask
        #  
        # Generates a mask value for priority levels at or below the level specified.
        # See #mask=
        def LOG_UPTO(priority_level)
            #This is a stub, used for indexing
        end
        def self.included(p1)
            #This is a stub, used for indexing
        end
    end
    module Option
    end
end
