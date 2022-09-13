=begin
 This is a machine generated stub using stdlib-doc for <b>module Etc</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The etc module provides access to information from the running OS.
# 
# Documented by mathew <meta@pobox.com>.
module Etc
    Passwd = nil #value is unknown, used for indexing.
    Group = nil #value is unknown, used for indexing.
    # Returns the short user name of the currently logged in user.
    # Unfortunately, it is often rather easy to fool getlogin().
    # Avoid getlogin() for security-related purposes.
    # 
    # e.g.
    #   Etc.getlogin -> 'guest'
    def self.getlogin()
        #This is a stub, used for indexing
    end
    # Returns the /etc/passwd information for the user with specified integer
    # user id (uid).
    # 
    # The information is returned as a Struct::Passwd; see getpwent above for
    # details.
    # 
    # e.g.  * Etc.getpwuid(0) -> #<struct Struct::Passwd name="root",
    # passwd="x", uid=0, gid=0, gecos="root",dir="/root", shell="/bin/bash">
    def self.getpwuid(p1 = v1)
        #This is a stub, used for indexing
    end
    # Returns the /etc/passwd information for the user with specified login name.
    # 
    # The information is returned as a Struct::Passwd; see getpwent above for
    # details.
    # 
    # e.g.  * Etc.getpwnam('root') -> #<struct Struct::Passwd name="root",
    # passwd="x", uid=0, gid=0, gecos="root",dir="/root", shell="/bin/bash">
    def self.getpwnam(p1)
        #This is a stub, used for indexing
    end
    # Resets the process of reading the /etc/passwd file, so that the next call
    # to getpwent will return the first entry again.
    def self.setpwent()
        #This is a stub, used for indexing
    end
    # Ends the process of scanning through the /etc/passwd file begun with
    # getpwent, and closes the file.
    def self.endpwent()
        #This is a stub, used for indexing
    end
    # Returns an entry from the /etc/passwd file. The first time it is called it
    # opens the file and returns the first entry; each successive call returns
    # the next entry, or nil if the end of the file has been reached.
    # 
    # To close the file when processing is complete, call endpwent.
    # 
    # Each entry is returned as a Struct::Passwd:
    # 
    # - Passwd#name contains the short login name of the user as a String.
    # 
    # - Passwd#passwd contains the encrypted password of the user as a String.
    #   an 'x' is returned if shadow passwords are in use. An '*' is returned
    #   if the user cannot log in using a password.
    # 
    # - Passwd#uid contains the integer user ID (uid) of the user.
    # 
    # - Passwd#gid contains the integer group ID (gid) of the user's primary group.
    # 
    # - Passwd#gecos contains a longer String description of the user, such as
    #   a full name. Some Unix systems provide structured information in the
    #   gecos field, but this is system-dependent.
    # 
    # - Passwd#dir contains the path to the home directory of the user as a String.
    # 
    # - Passwd#shell contains the path to the login shell of the user as a String.
    def self.getpwent()
        #This is a stub, used for indexing
    end
    # Provides a convenient Ruby iterator which executes a block for each entry
    # in the /etc/passwd file.
    # 
    # The code block is passed an Struct::Passwd struct; see getpwent above for
    # details.
    # 
    # Example:
    # 
    #     require 'etc'
    # 
    #     Etc.passwd {|u|
    #       puts u.name + " = " + u.gecos
    #     }
    def self.passwd()
        #This is a stub, used for indexing
    end
    # Returns information about the group with specified integer group id (gid),
    # as found in /etc/group.
    # 
    # The information is returned as a Struct::Group; see getgrent above for
    # details.
    # 
    # e.g.  Etc.getgrgid(100) -> #<struct Struct::Group name="users", passwd="x",
    # gid=100, mem=["meta", "root"]>
    def self.getgrgid(p1 = v1)
        #This is a stub, used for indexing
    end
    # Returns information about the group with specified String name, as found
    # in /etc/group.
    # 
    # The information is returned as a Struct::Group; see getgrent above for
    # details.
    # 
    # e.g.  Etc.getgrnam('users') -> #<struct Struct::Group name="users",
    # passwd="x", gid=100, mem=["meta", "root"]>
    def self.getgrnam(p1)
        #This is a stub, used for indexing
    end
    # Provides a convenient Ruby iterator which executes a block for each entry
    # in the /etc/group file.
    # 
    # The code block is passed an Struct::Group struct; see getgrent above for
    # details.
    # 
    # Example:
    # 
    #     require 'etc'
    # 
    #     Etc.group {|g|
    #       puts g.name + ": " + g.mem.join(', ')
    #     }
    def self.group()
        #This is a stub, used for indexing
    end
    # Resets the process of reading the /etc/group file, so that the next call
    # to getgrent will return the first entry again.
    def self.setgrent()
        #This is a stub, used for indexing
    end
    # Ends the process of scanning through the /etc/group file begun by
    # getgrent, and closes the file.
    def self.endgrent()
        #This is a stub, used for indexing
    end
    # Returns an entry from the /etc/group file. The first time it is called it
    # opens the file and returns the first entry; each successive call returns
    # the next entry, or nil if the end of the file has been reached.
    # 
    # To close the file when processing is complete, call endgrent.
    # 
    # Each entry is returned as a Struct::Group:
    # 
    # - Group#name contains the name of the group as a String.
    # 
    # - Group#passwd contains the encrypted password as a String. An 'x' is
    #   returned if password access to the group is not available; an empty
    #   string is returned if no password is needed to obtain membership of
    #   the group.
    # 
    # - Group#gid contains the group's numeric ID as an integer.
    # 
    # - Group#mem is an Array of Strings containing the short login names of the
    #   members of the group.
    def self.getgrent()
        #This is a stub, used for indexing
    end
    # Returns system configuration directory.
    def self.sysconfdir()
        #This is a stub, used for indexing
    end
    # Returns system temporary directory.
    def self.systmpdir()
        #This is a stub, used for indexing
    end
end
