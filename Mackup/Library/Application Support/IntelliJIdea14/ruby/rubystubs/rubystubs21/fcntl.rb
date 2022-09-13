=begin
 This is a machine generated stub using stdlib-doc for <b>module Fcntl</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Fcntl loads the constants defined in the system's <fcntl.h> C header
# file, and used with both the fcntl(2) and open(2) POSIX system calls.
# 
# To perform a fcntl(2) operation, use IO::fcntl.
# 
# To perform an open(2) operation, use IO::sysopen.
# 
# The set of operations and constants available depends upon specific
# operating system.  Some values listed below may not be supported on your
# system.
# 
# See your fcntl(2) man page for complete details.
# 
# Open /tmp/tempfile as a write-only file that is created if it doesn't
# exist:
# 
#   require 'fcntl'
# 
#   fd = IO.sysopen('/tmp/tempfile',
#                   Fcntl::O_WRONLY | Fcntl::O_EXCL | Fcntl::O_CREAT)
#   f = IO.open(fd)
#   f.syswrite("TEMP DATA")
#   f.close
# 
# Get the flags on file +s+:
# 
#   m = s.fcntl(Fcntl::F_GETFL, 0)
# 
# Set the non-blocking flag on +f+ in addition to the existing flags in +m+.
# 
#   f.fcntl(Fcntl::F_SETFL, Fcntl::O_NONBLOCK|m)
module Fcntl
    # F_DUPFD
    # 
    # Duplicate a file descriptor to the mimimum unused file descriptor
    # greater than or equal to the argument.
    # 
    # The close-on-exec flag of the duplicated file descriptor is set.
    # (Ruby uses F_DUPFD_CLOEXEC internally if available to avoid race
    # condition.  F_SETFD is used if F_DUPFD_CLOEXEC is not available.)
    F_DUPFD = nil #value is unknown, used for indexing.
    # F_GETFD
    # 
    # Read the close-on-exec flag of a file descriptor.
    F_GETFD = nil #value is unknown, used for indexing.
    # F_GETLK
    # 
    # Determine whether a given region of a file is locked.  This uses one of
    # the F_*LK flags.
    F_GETLK = nil #value is unknown, used for indexing.
    # F_SETFD
    # 
    # Set the close-on-exec flag of a file descriptor.
    F_SETFD = nil #value is unknown, used for indexing.
    # F_GETFL
    # 
    # Get the file descriptor flags.  This will be one or more of the O_*
    # flags.
    F_GETFL = nil #value is unknown, used for indexing.
    # F_SETFL
    # 
    # Set the file descriptor flags.  This will be one or more of the O_*
    # flags.
    F_SETFL = nil #value is unknown, used for indexing.
    # F_SETLK
    # 
    # Acquire a lock on a region of a file.  This uses one of the F_*LCK
    # flags.
    F_SETLK = nil #value is unknown, used for indexing.
    # F_SETLKW
    # 
    # Acquire a lock on a region of a file, waiting if necessary.  This uses
    # one of the F_*LCK flags
    F_SETLKW = nil #value is unknown, used for indexing.
    # FD_CLOEXEC
    # 
    # the value of the close-on-exec flag.
    FD_CLOEXEC = nil #value is unknown, used for indexing.
    # F_RDLCK
    # 
    # Read lock for a region of a file
    F_RDLCK = nil #value is unknown, used for indexing.
    # F_UNLCK
    # 
    # Remove lock for a region of a file
    F_UNLCK = nil #value is unknown, used for indexing.
    # F_WRLCK
    # 
    # Write lock for a region of a file
    F_WRLCK = nil #value is unknown, used for indexing.
    # O_CREAT
    # 
    # Create the file if it doesn't exist
    O_CREAT = nil #value is unknown, used for indexing.
    # O_EXCL
    # 
    # Used with O_CREAT, fail if the file exists
    O_EXCL = nil #value is unknown, used for indexing.
    # O_NOCTTY
    # 
    # Open TTY without it becoming the controlling TTY
    O_NOCTTY = nil #value is unknown, used for indexing.
    # O_TRUNC
    # 
    # Truncate the file on open
    O_TRUNC = nil #value is unknown, used for indexing.
    # O_APPEND
    # 
    # Open the file in append mode
    O_APPEND = nil #value is unknown, used for indexing.
    # O_NONBLOCK
    # 
    # Open the file in non-blocking mode
    O_NONBLOCK = nil #value is unknown, used for indexing.
    # O_NDELAY
    # 
    # Open the file in non-blocking mode
    O_NDELAY = nil #value is unknown, used for indexing.
    # O_RDONLY
    # 
    # Open the file in read-only mode
    O_RDONLY = nil #value is unknown, used for indexing.
    # O_RDWR
    # 
    # Open the file in read-write mode
    O_RDWR = nil #value is unknown, used for indexing.
    # O_WRONLY
    # 
    # Open the file in write-only mode.
    O_WRONLY = nil #value is unknown, used for indexing.
    # O_ACCMODE
    # 
    # Mask to extract the read/write flags
    O_ACCMODE = nil #value is unknown, used for indexing.
end
