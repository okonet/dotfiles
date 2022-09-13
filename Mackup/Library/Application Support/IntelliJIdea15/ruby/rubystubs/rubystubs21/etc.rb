=begin
 This is a machine generated stub using stdlib-doc for <b>module Etc</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# The Etc module provides access to information typically stored in
# files in the /etc directory on Unix systems.
# 
# The information accessible consists of the information found in the
# /etc/passwd and /etc/group files, plus information about the system's
# temporary directory (/tmp) and configuration directory (/etc).
# 
# The Etc module provides a more reliable way to access information about
# the logged in user than environment variables such as +$USER+.
# 
# == Example:
# 
#     require 'etc'
# 
#     login = Etc.getlogin
#     info = Etc.getpwnam(login)
#     username = info.gecos.split(/,/).first
#     puts "Hello #{username}, I see your login name is #{login}"
# 
# Note that the methods provided by this module are not always secure.
# It should be used for informational purposes, and not for security.
# 
# All operations defined in this module are class methods, so that you can
# include the Etc module into your class.
module Etc
    # account expiration time(integer) must be compiled with +HAVE_STRUCT_PASSWD_PW_EXPIRE+
    Passwd = nil #value is unknown, used for indexing.
    # is an Array of Strings containing the short login names of the
    #      members of the group.
    Group = nil #value is unknown, used for indexing.
    # getlogin     ->  String
    #  
    # Returns the short user name of the currently logged in user.
    # Unfortunately, it is often rather easy to fool ::getlogin.
    # 
    # Avoid ::getlogin for security-related purposes.
    # 
    # If ::getlogin fails, try ::getpwuid.
    # 
    # See the unix manpage for <code>getpwuid(3)</code> for more detail.
    # 
    # e.g.
    #   Etc.getlogin -> 'guest'
    def self.getlogin()
        #This is a stub, used for indexing
    end
    # getpwuid(uid)        ->  Passwd
    #  
    # Returns the /etc/passwd information for the user with the given integer +uid+.
    # 
    # The information is returned as a Passwd struct.
    # 
    # If +uid+ is omitted, the value from <code>Passwd[:uid]</code> is returned
    # instead.
    # 
    # See the unix manpage for <code>getpwuid(3)</code> for more detail.
    # 
    # === Example:
    # 
    #      Etc.getpwuid(0)
    #      #=> #<struct Etc::Passwd name="root", passwd="x", uid=0, gid=0, gecos="root",dir="/root", shell="/bin/bash">
    def self.getpwuid(uid)
        #This is a stub, used for indexing
    end
    # getpwnam(name)       ->  Passwd
    #  
    # Returns the /etc/passwd information for the user with specified login
    # +name+.
    # 
    # The information is returned as a Passwd struct.
    # 
    # See the unix manpage for <code>getpwnam(3)</code> for more detail.
    # 
    # === Example:
    # 
    #      Etc.getpwnam('root')
    #      #=> #<struct Etc::Passwd name="root", passwd="x", uid=0, gid=0, gecos="root",dir="/root", shell="/bin/bash">
    def self.getpwnam(name)
        #This is a stub, used for indexing
    end
    # Resets the process of reading the /etc/passwd file, so that the next call
    # to ::getpwent will return the first entry again.
    def self.setpwent()
        #This is a stub, used for indexing
    end
    # Ends the process of scanning through the /etc/passwd file begun with
    # ::getpwent, and closes the file.
    def self.endpwent()
        #This is a stub, used for indexing
    end
    # Returns an entry from the /etc/passwd file.
    # 
    # The first time it is called it opens the file and returns the first entry;
    # each successive call returns the next entry, or +nil+ if the end of the file
    # has been reached.
    # 
    # To close the file when processing is complete, call ::endpwent.
    # 
    # Each entry is returned as a Passwd struct.
    def self.getpwent()
        #This is a stub, used for indexing
    end
    # Etc.passwd { |struct| block }        ->  Passwd
    # Etc.passwd                   ->  Passwd
    #  
    # Provides a convenient Ruby iterator which executes a block for each entry
    # in the /etc/passwd file.
    # 
    # The code block is passed an Passwd struct.
    # 
    # See ::getpwent above for details.
    # 
    # Example:
    # 
    #     require 'etc'
    # 
    #     Etc.passwd {|u|
    #       puts u.name + " = " + u.gecos
    #     }
    def self.passwd(*several_variants)
        #This is a stub, used for indexing
    end
    # getgrgid(group_id)  ->       Group
    #  
    # Returns information about the group with specified integer +group_id+,
    # as found in /etc/group.
    # 
    # The information is returned as a Group struct.
    # 
    # See the unix manpage for <code>getgrgid(3)</code> for more detail.
    # 
    # === Example:
    # 
    #      Etc.getgrgid(100)
    #      #=> #<struct Etc::Group name="users", passwd="x", gid=100, mem=["meta", "root"]>
    def self.getgrgid(group_id)
        #This is a stub, used for indexing
    end
    # getgrnam(name)       ->  Group
    #  
    # Returns information about the group with specified +name+, as found in
    # /etc/group.
    # 
    # The information is returned as a Group struct.
    # 
    # See the unix manpage for <code>getgrnam(3)</code> for more detail.
    # 
    # === Example:
    # 
    #      Etc.getgrnam('users')
    #      #=> #<struct Etc::Group name="users", passwd="x", gid=100, mem=["meta", "root"]>
    def self.getgrnam(name)
        #This is a stub, used for indexing
    end
    # Provides a convenient Ruby iterator which executes a block for each entry
    # in the /etc/group file.
    # 
    # The code block is passed an Group struct.
    # 
    # See ::getgrent above for details.
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
    # to ::getgrent will return the first entry again.
    def self.setgrent()
        #This is a stub, used for indexing
    end
    # Ends the process of scanning through the /etc/group file begun by
    # ::getgrent, and closes the file.
    def self.endgrent()
        #This is a stub, used for indexing
    end
    # Returns an entry from the /etc/group file.
    # 
    # The first time it is called it opens the file and returns the first entry;
    # each successive call returns the next entry, or +nil+ if the end of the file
    # has been reached.
    # 
    # To close the file when processing is complete, call ::endgrent.
    # 
    # Each entry is returned as a Group struct
    def self.getgrent()
        #This is a stub, used for indexing
    end
    # Returns system configuration directory.
    # 
    # This is typically "/etc", but is modified by the prefix used when Ruby was
    # compiled. For example, if Ruby is built and installed in /usr/local, returns
    # "/usr/local/etc".
    def self.sysconfdir()
        #This is a stub, used for indexing
    end
    # Returns system temporary directory; typically "/tmp".
    def self.systmpdir()
        #This is a stub, used for indexing
    end
end
