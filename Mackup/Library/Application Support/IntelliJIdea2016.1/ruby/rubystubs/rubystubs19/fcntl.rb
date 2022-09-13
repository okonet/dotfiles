=begin
 This is a machine generated stub using stdlib-doc for <b>module Fcntl</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Fcntl loads the constants defined in the system's <fcntl.h> C header
# file, and used with both the fcntl(2) and open(2) POSIX system calls.
# 
# Copyright (C) 1997-2001 Yukihiro Matsumoto
# 
# Documented by mathew <meta@pobox.com>
# 
# = Usage
# 
# To perform a fcntl(2) operation, use IO::fcntl in the core classes.
# 
# To perform an open(2) operation, use IO::sysopen.
# 
# The set of operations and constants available depends upon specific OS
# platform. Some values listed below may not be supported on your system.
# 
# The constants supported by Ruby for use with IO::fcntl are:
# 
# - F_DUPFD - duplicate a close-on-exec file handle to a non-close-on-exec
#   file handle.
# 
# - F_GETFD - read the close-on-exec flag of a file handle.
# 
# - F_SETFD - set the close-on-exec flag of a file handle.
# 
# - FD_CLOEXEC - the value of the close-on-exec flag.
# 
# - F_GETFL - get file descriptor flags.
# 
# - F_SETFL - set file descriptor flags.
# 
# - O_APPEND, O_NONBLOCK, etc (see below) - file descriptor flag
#   values for the above.
# 
# - F_GETLK - determine whether a given region of a file is locked.
# 
# - F_SETLK - acquire a lock on a region of a file.
# 
# - F_SETLKW - acquire a lock on a region of a file, waiting if necessary.
# 
# - F_RDLCK, F_WRLCK, F_UNLCK - types of lock for the above.
# 
# The constants supported by Ruby for use with IO::sysopen are:
# 
# - O_APPEND - open file in append mode.
# 
# - O_NOCTTY - open tty without it becoming controlling tty.
# 
# - O_CREAT - create file if it doesn't exist.
# 
# - O_EXCL - used with O_CREAT, fail if file exists.
# 
# - O_TRUNC - truncate file on open.
# 
# - O_NONBLOCK / O_NDELAY - open in non-blocking mode.
# 
# - O_RDONLY - open read-only.
# 
# - O_WRONLY - open write-only.
# 
# - O_RDWR - open read-write.
# 
# - O_ACCMODE - mask to extract read/write flags.
# 
# Example:
# 
#   require 'fcntl'
# 
#   fd = IO::sysopen('/tmp/tempfile',
#        Fcntl::O_WRONLY | Fcntl::O_EXCL | Fcntl::O_CREAT)
#   f = IO.open(fd)
#   f.syswrite("TEMP DATA")
#   f.close
module Fcntl
    F_DUPFD = nil #value is unknown, used for indexing.
    F_GETFD = nil #value is unknown, used for indexing.
    F_GETLK = nil #value is unknown, used for indexing.
    F_SETFD = nil #value is unknown, used for indexing.
    F_GETFL = nil #value is unknown, used for indexing.
    F_SETFL = nil #value is unknown, used for indexing.
    F_SETLK = nil #value is unknown, used for indexing.
    F_SETLKW = nil #value is unknown, used for indexing.
    FD_CLOEXEC = nil #value is unknown, used for indexing.
    F_RDLCK = nil #value is unknown, used for indexing.
    F_UNLCK = nil #value is unknown, used for indexing.
    F_WRLCK = nil #value is unknown, used for indexing.
    O_CREAT = nil #value is unknown, used for indexing.
    O_EXCL = nil #value is unknown, used for indexing.
    O_NOCTTY = nil #value is unknown, used for indexing.
    O_TRUNC = nil #value is unknown, used for indexing.
    O_APPEND = nil #value is unknown, used for indexing.
    O_NONBLOCK = nil #value is unknown, used for indexing.
    O_NDELAY = nil #value is unknown, used for indexing.
    O_RDONLY = nil #value is unknown, used for indexing.
    O_RDWR = nil #value is unknown, used for indexing.
    O_WRONLY = nil #value is unknown, used for indexing.
    O_ACCMODE = nil #value is unknown, used for indexing.
end
