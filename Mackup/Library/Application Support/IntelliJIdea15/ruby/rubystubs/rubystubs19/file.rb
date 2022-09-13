=begin
 This is a machine generated stub using stdlib-doc for <b>class File</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A <code>File</code> is an abstraction of any file object accessible
# by the program and is closely associated with class <code>IO</code>
# <code>File</code> includes the methods of module
# <code>FileTest</code> as class methods, allowing you to write (for
# example) <code>File.exist?("foo")</code>.
# 
# In the description of File methods,
# <em>permission bits</em> are a platform-specific
# set of bits that indicate permissions of a file. On Unix-based
# systems, permissions are viewed as a set of three octets, for the
# owner, the group, and the rest of the world. For each of these
# entities, permissions may be set to read, write, or execute the
# file:
# 
# The permission bits <code>0644</code> (in octal) would thus be
# interpreted as read/write for owner, and read-only for group and
# other. Higher-order bits may also be used to indicate the type of
# file (plain, directory, pipe, socket, and so on) and various other
# special features. If the permissions are for a directory, the
# meaning of the execute bit changes; when set the directory can be
# searched.
# 
# On non-Posix operating systems, there may be only the ability to
# make a file read-only or read-write. In this case, the remaining
# permission bits will be synthesized to resemble typical values. For
# instance, on Windows NT the default permission bits are
# <code>0644</code>, which means read/write for owner, read-only for
# all others. The only change that can be made is to make the file
# read-only, which is reported as <code>0444</code>.
class File < IO
    Separator = nil #value is unknown, used for indexing.
    SEPARATOR = nil #value is unknown, used for indexing.
    ALT_SEPARATOR = nil #value is unknown, used for indexing.
    PATH_SEPARATOR = nil #value is unknown, used for indexing.
    # File.fnmatch( pattern, path, [flags] ) -> (true or false)
    # File.fnmatch?( pattern, path, [flags] ) -> (true or false)
    #  
    # Returns true if <i>path</i> matches against <i>pattern</i> The
    # pattern is not a regular expression; instead it follows rules
    # similar to shell filename globbing. It may contain the following
    # metacharacters:
    # 
    # <code>*</code>::        Matches any file. Can be restricted by
    #                         other values in the glob. <code>*</code>
    #                         will match all files; <code>c*</code> will
    #                         match all files beginning with
    #                         <code>c</code>; <code>*c</code> will match
    #                         all files ending with <code>c</code>; and
    #                         <code>*c*</code> will match all files that
    #                         have <code>c</code> in them (including at
    #                         the beginning or end). Equivalent to
    #                         <code>/ .* /x</code> in regexp.
    # <code>**</code>::       Matches directories recursively or files
    #                         expansively.
    # <code>?</code>::        Matches any one character. Equivalent to
    #                         <code>/.{1}/</code> in regexp.
    # <code>[set]</code>::    Matches any one character in +set+.
    #                         Behaves exactly like character sets in
    #                         Regexp, including set negation
    #                         (<code>[^a-z]</code>).
    # <code>\</code>::        Escapes the next metacharacter.
    # 
    # <i>flags</i> is a bitwise OR of the <code>FNM_xxx</code>
    # parameters. The same glob pattern and flags are used by
    # <code>Dir::glob</code>.
    # 
    #    File.fnmatch('cat',       'cat')        #=> true  # match entire string
    #    File.fnmatch('cat',       'category')   #=> false # only match partial string
    #    File.fnmatch('c{at,ub}s', 'cats')       #=> false # { } isn't supported
    # 
    #    File.fnmatch('c?t',     'cat')          #=> true  # '?' match only 1 character
    #    File.fnmatch('c??t',    'cat')          #=> false # ditto
    #    File.fnmatch('c*',      'cats')         #=> true  # '*' match 0 or more characters
    #    File.fnmatch('c*t',     'c/a/b/t')      #=> true  # ditto
    #    File.fnmatch('ca[a-z]', 'cat')          #=> true  # inclusive bracket expression
    #    File.fnmatch('ca[^t]',  'cat')          #=> false # exclusive bracket expression ('^' or '!')
    # 
    #    File.fnmatch('cat', 'CAT')                     #=> false # case sensitive
    #    File.fnmatch('cat', 'CAT', File::FNM_CASEFOLD) #=> true  # case insensitive
    # 
    #    File.fnmatch('?',   '/', File::FNM_PATHNAME)  #=> false # wildcard doesn't match '/' on FNM_PATHNAME
    #    File.fnmatch('*',   '/', File::FNM_PATHNAME)  #=> false # ditto
    #    File.fnmatch('[/]', '/', File::FNM_PATHNAME)  #=> false # ditto
    # 
    #    File.fnmatch('\?',   '?')                       #=> true  # escaped wildcard becomes ordinary
    #    File.fnmatch('\a',   'a')                       #=> true  # escaped ordinary remains ordinary
    #    File.fnmatch('\a',   '\a', File::FNM_NOESCAPE)  #=> true  # FNM_NOESACPE makes '\' ordinary
    #    File.fnmatch('[\?]', '?')                       #=> true  # can escape inside bracket expression
    # 
    #    File.fnmatch('*',   '.profile')                      #=> false # wildcard doesn't match leading
    #    File.fnmatch('*',   '.profile', File::FNM_DOTMATCH)  #=> true  # period by default.
    #    File.fnmatch('.*',  '.profile')                      #=> true
    # 
    #    rbfiles = '**' '/' '*.rb' # you don't have to do like this. just write in single string.
    #    File.fnmatch(rbfiles, 'main.rb')                    #=> false
    #    File.fnmatch(rbfiles, './main.rb')                  #=> false
    #    File.fnmatch(rbfiles, 'lib/song.rb')                #=> true
    #    File.fnmatch('**.rb', 'main.rb')                    #=> true
    #    File.fnmatch('**.rb', './main.rb')                  #=> false
    #    File.fnmatch('**.rb', 'lib/song.rb')                #=> true
    #    File.fnmatch('*',           'dave/.profile')                      #=> true
    # 
    #    pattern = '*' '/' '*'
    #    File.fnmatch(pattern, 'dave/.profile', File::FNM_PATHNAME)  #=> false
    #    File.fnmatch(pattern, 'dave/.profile', File::FNM_PATHNAME | File::FNM_DOTMATCH) #=> true
    # 
    #    pattern = '**' '/' 'foo'
    #    File.fnmatch(pattern, 'a/b/c/foo', File::FNM_PATHNAME)     #=> true
    #    File.fnmatch(pattern, '/a/b/c/foo', File::FNM_PATHNAME)    #=> true
    #    File.fnmatch(pattern, 'c:/a/b/c/foo', File::FNM_PATHNAME)  #=> true
    #    File.fnmatch(pattern, 'a/.b/c/foo', File::FNM_PATHNAME)    #=> false
    #    File.fnmatch(pattern, 'a/.b/c/foo', File::FNM_PATHNAME | File::FNM_DOTMATCH) #=> true
    def self.fnmatch(pattern, path, *flags)
        #This is a stub, used for indexing
    end
    # File.fnmatch( pattern, path, [flags] ) -> (true or false)
    # File.fnmatch?( pattern, path, [flags] ) -> (true or false)
    #  
    # Returns true if <i>path</i> matches against <i>pattern</i> The
    # pattern is not a regular expression; instead it follows rules
    # similar to shell filename globbing. It may contain the following
    # metacharacters:
    # 
    # <code>*</code>::        Matches any file. Can be restricted by
    #                         other values in the glob. <code>*</code>
    #                         will match all files; <code>c*</code> will
    #                         match all files beginning with
    #                         <code>c</code>; <code>*c</code> will match
    #                         all files ending with <code>c</code>; and
    #                         <code>*c*</code> will match all files that
    #                         have <code>c</code> in them (including at
    #                         the beginning or end). Equivalent to
    #                         <code>/ .* /x</code> in regexp.
    # <code>**</code>::       Matches directories recursively or files
    #                         expansively.
    # <code>?</code>::        Matches any one character. Equivalent to
    #                         <code>/.{1}/</code> in regexp.
    # <code>[set]</code>::    Matches any one character in +set+.
    #                         Behaves exactly like character sets in
    #                         Regexp, including set negation
    #                         (<code>[^a-z]</code>).
    # <code>\</code>::        Escapes the next metacharacter.
    # 
    # <i>flags</i> is a bitwise OR of the <code>FNM_xxx</code>
    # parameters. The same glob pattern and flags are used by
    # <code>Dir::glob</code>.
    # 
    #    File.fnmatch('cat',       'cat')        #=> true  # match entire string
    #    File.fnmatch('cat',       'category')   #=> false # only match partial string
    #    File.fnmatch('c{at,ub}s', 'cats')       #=> false # { } isn't supported
    # 
    #    File.fnmatch('c?t',     'cat')          #=> true  # '?' match only 1 character
    #    File.fnmatch('c??t',    'cat')          #=> false # ditto
    #    File.fnmatch('c*',      'cats')         #=> true  # '*' match 0 or more characters
    #    File.fnmatch('c*t',     'c/a/b/t')      #=> true  # ditto
    #    File.fnmatch('ca[a-z]', 'cat')          #=> true  # inclusive bracket expression
    #    File.fnmatch('ca[^t]',  'cat')          #=> false # exclusive bracket expression ('^' or '!')
    # 
    #    File.fnmatch('cat', 'CAT')                     #=> false # case sensitive
    #    File.fnmatch('cat', 'CAT', File::FNM_CASEFOLD) #=> true  # case insensitive
    # 
    #    File.fnmatch('?',   '/', File::FNM_PATHNAME)  #=> false # wildcard doesn't match '/' on FNM_PATHNAME
    #    File.fnmatch('*',   '/', File::FNM_PATHNAME)  #=> false # ditto
    #    File.fnmatch('[/]', '/', File::FNM_PATHNAME)  #=> false # ditto
    # 
    #    File.fnmatch('\?',   '?')                       #=> true  # escaped wildcard becomes ordinary
    #    File.fnmatch('\a',   'a')                       #=> true  # escaped ordinary remains ordinary
    #    File.fnmatch('\a',   '\a', File::FNM_NOESCAPE)  #=> true  # FNM_NOESACPE makes '\' ordinary
    #    File.fnmatch('[\?]', '?')                       #=> true  # can escape inside bracket expression
    # 
    #    File.fnmatch('*',   '.profile')                      #=> false # wildcard doesn't match leading
    #    File.fnmatch('*',   '.profile', File::FNM_DOTMATCH)  #=> true  # period by default.
    #    File.fnmatch('.*',  '.profile')                      #=> true
    # 
    #    rbfiles = '**' '/' '*.rb' # you don't have to do like this. just write in single string.
    #    File.fnmatch(rbfiles, 'main.rb')                    #=> false
    #    File.fnmatch(rbfiles, './main.rb')                  #=> false
    #    File.fnmatch(rbfiles, 'lib/song.rb')                #=> true
    #    File.fnmatch('**.rb', 'main.rb')                    #=> true
    #    File.fnmatch('**.rb', './main.rb')                  #=> false
    #    File.fnmatch('**.rb', 'lib/song.rb')                #=> true
    #    File.fnmatch('*',           'dave/.profile')                      #=> true
    # 
    #    pattern = '*' '/' '*'
    #    File.fnmatch(pattern, 'dave/.profile', File::FNM_PATHNAME)  #=> false
    #    File.fnmatch(pattern, 'dave/.profile', File::FNM_PATHNAME | File::FNM_DOTMATCH) #=> true
    # 
    #    pattern = '**' '/' 'foo'
    #    File.fnmatch(pattern, 'a/b/c/foo', File::FNM_PATHNAME)     #=> true
    #    File.fnmatch(pattern, '/a/b/c/foo', File::FNM_PATHNAME)    #=> true
    #    File.fnmatch(pattern, 'c:/a/b/c/foo', File::FNM_PATHNAME)  #=> true
    #    File.fnmatch(pattern, 'a/.b/c/foo', File::FNM_PATHNAME)    #=> false
    #    File.fnmatch(pattern, 'a/.b/c/foo', File::FNM_PATHNAME | File::FNM_DOTMATCH) #=> true
    def self.fnmatch?(pattern, path, *flags)
        #This is a stub, used for indexing
    end
    # File.stat(file_name)   ->  stat
    #  
    # Returns a <code>File::Stat</code> object for the named file (see
    # <code>File::Stat</code>).
    # 
    #    File.stat("testfile").mtime   #=> Tue Apr 08 12:58:04 CDT 2003
    def self.stat(file_name)
        #This is a stub, used for indexing
    end
    # File.lstat(file_name)   -> stat
    #  
    # Same as <code>File::stat</code>, but does not follow the last symbolic
    # link. Instead, reports on the link itself.
    # 
    #    File.symlink("testfile", "link2test")   #=> 0
    #    File.stat("testfile").size              #=> 66
    #    File.lstat("link2test").size            #=> 8
    #    File.stat("link2test").size             #=> 66
    def self.lstat(file_name)
        #This is a stub, used for indexing
    end
    # File.ftype(file_name)   -> string
    #  
    # Identifies the type of the named file; the return string is one of
    # ``<code>file</code>'', ``<code>directory</code>'',
    # ``<code>characterSpecial</code>'', ``<code>blockSpecial</code>'',
    # ``<code>fifo</code>'', ``<code>link</code>'',
    # ``<code>socket</code>'', or ``<code>unknown</code>''.
    # 
    #    File.ftype("testfile")            #=> "file"
    #    File.ftype("/dev/tty")            #=> "characterSpecial"
    #    File.ftype("/tmp/.X11-unix/X0")   #=> "socket"
    def self.ftype(file_name)
        #This is a stub, used for indexing
    end
    # File.atime(file_name)  ->  time
    #  
    # Returns the last access time for the named file as a Time object).
    # 
    #    File.atime("testfile")   #=> Wed Apr 09 08:51:48 CDT 2003
    def self.atime(file_name)
        #This is a stub, used for indexing
    end
    # File.mtime(file_name)  ->  time
    #  
    # Returns the modification time for the named file as a Time object.
    # 
    #    File.mtime("testfile")   #=> Tue Apr 08 12:58:04 CDT 2003
    def self.mtime(file_name)
        #This is a stub, used for indexing
    end
    # File.ctime(file_name)  -> time
    #  
    # Returns the change time for the named file (the time at which
    # directory information about the file was changed, not the file
    # itself).
    # 
    #    File.ctime("testfile")   #=> Wed Apr 09 08:53:13 CDT 2003
    def self.ctime(file_name)
        #This is a stub, used for indexing
    end
    # File.utime(atime, mtime, file_name,...)   ->  integer
    #  
    # Sets the access and modification times of each
    # named file to the first two arguments. Returns
    # the number of file names in the argument list.
    def self.utime(atime, mtime, file_name,*smth)
        #This is a stub, used for indexing
    end
    # File.chmod(mode_int, file_name, ... )  ->  integer
    #  
    # Changes permission bits on the named file(s) to the bit pattern
    # represented by <i>mode_int</i>. Actual effects are operating system
    # dependent (see the beginning of this section). On Unix systems, see
    # <code>chmod(2)</code> for details. Returns the number of files
    # processed.
    # 
    #    File.chmod(0644, "testfile", "out")   #=> 2
    def self.chmod(mode_int, file_name, *smth)
        #This is a stub, used for indexing
    end
    # File.chown(owner_int, group_int, file_name,... )  ->  integer
    #  
    # Changes the owner and group of the named file(s) to the given
    # numeric owner and group id's. Only a process with superuser
    # privileges may change the owner of a file. The current owner of a
    # file may change the file's group to any group to which the owner
    # belongs. A <code>nil</code> or -1 owner or group id is ignored.
    # Returns the number of files processed.
    # 
    #    File.chown(nil, 100, "testfile")
    def self.chown(owner_int, group_int, file_name,*smth)
        #This is a stub, used for indexing
    end
    # File.lchmod(mode_int, file_name, ...)  -> integer
    #  
    # Equivalent to <code>File::chmod</code>, but does not follow symbolic
    # links (so it will change the permissions associated with the link,
    # not the file referenced by the link). Often not available.
    def self.lchmod(mode_int, file_name, *smth)
        #This is a stub, used for indexing
    end
    # file.lchown(owner_int, group_int, file_name,..) -> integer
    #  
    # Equivalent to <code>File::chown</code>, but does not follow symbolic
    # links (so it will change the owner associated with the link, not the
    # file referenced by the link). Often not available. Returns number
    # of files in the argument list.
    def self.lchown(owner_int, group_int, file_name, *smth)
        #This is a stub, used for indexing
    end
    # File.link(old_name, new_name)    -> 0
    #  
    # Creates a new name for an existing file using a hard link. Will not
    # overwrite <i>new_name</i> if it already exists (raising a subclass
    # of <code>SystemCallError</code>). Not available on all platforms.
    # 
    #    File.link("testfile", ".testfile")   #=> 0
    #    IO.readlines(".testfile")[0]         #=> "This is line one\n"
    def self.link(old_name, new_name)
        #This is a stub, used for indexing
    end
    # File.symlink(old_name, new_name)   -> 0
    #  
    # Creates a symbolic link called <i>new_name</i> for the existing file
    # <i>old_name</i>. Raises a <code>NotImplemented</code> exception on
    # platforms that do not support symbolic links.
    # 
    #    File.symlink("testfile", "link2test")   #=> 0
    def self.symlink(old_name, new_name)
        #This is a stub, used for indexing
    end
    # File.readlink(link_name)  ->  file_name
    #  
    # Returns the name of the file referenced by the given link.
    # Not available on all platforms.
    # 
    #    File.symlink("testfile", "link2test")   #=> 0
    #    File.readlink("link2test")              #=> "testfile"
    def self.readlink(link_name)
        #This is a stub, used for indexing
    end
    # File.delete(file_name, ...)  -> integer
    # File.unlink(file_name, ...)  -> integer
    #  
    # Deletes the named files, returning the number of names
    # passed as arguments. Raises an exception on any error.
    # See also <code>Dir::rmdir</code>.
    def self.unlink(file_name, *smth)
        #This is a stub, used for indexing
    end
    # File.delete(file_name, ...)  -> integer
    # File.unlink(file_name, ...)  -> integer
    #  
    # Deletes the named files, returning the number of names
    # passed as arguments. Raises an exception on any error.
    # See also <code>Dir::rmdir</code>.
    def self.delete(file_name, *smth)
        #This is a stub, used for indexing
    end
    # File.rename(old_name, new_name)   -> 0
    #  
    # Renames the given file to the new name. Raises a
    # <code>SystemCallError</code> if the file cannot be renamed.
    # 
    #    File.rename("afile", "afile.bak")   #=> 0
    def self.rename(old_name, new_name)
        #This is a stub, used for indexing
    end
    # File.umask()          -> integer
    # File.umask(integer)   -> integer
    #  
    # Returns the current umask value for this process. If the optional
    # argument is given, set the umask to that value and return the
    # previous value. Umask values are <em>subtracted</em> from the
    # default permissions, so a umask of <code>0222</code> would make a
    # file read-only for everyone.
    # 
    #    File.umask(0006)   #=> 18
    #    File.umask         #=> 6
    def self.umask(*several_variants)
        #This is a stub, used for indexing
    end
    # File.truncate(file_name, integer)  -> 0
    #  
    # Truncates the file <i>file_name</i> to be at most <i>integer</i>
    # bytes long. Not available on all platforms.
    # 
    #    f = File.new("out", "w")
    #    f.write("1234567890")     #=> 10
    #    f.close                   #=> nil
    #    File.truncate("out", 5)   #=> 0
    #    File.size("out")          #=> 5
    def self.truncate(file_name, integer)
        #This is a stub, used for indexing
    end
    # File.expand_path(file_name [, dir_string] )  ->  abs_file_name
    #  
    # Converts a pathname to an absolute pathname. Relative paths are
    # referenced from the current working directory of the process unless
    # <i>dir_string</i> is given, in which case it will be used as the
    # starting point. The given pathname may start with a
    # ``<code>~</code>'', which expands to the process owner's home
    # directory (the environment variable <code>HOME</code> must be set
    # correctly). ``<code>~</code><i>user</i>'' expands to the named
    # user's home directory.
    # 
    #    File.expand_path("~oracle/bin")           #=> "/home/oracle/bin"
    #    File.expand_path("../../bin", "/tmp/x")   #=> "/bin"
    def self.expand_path(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # File.absolute_path(file_name [, dir_string] )  ->  abs_file_name
    #  
    # Converts a pathname to an absolute pathname. Relative paths are
    # referenced from the current working directory of the process unless
    # <i>dir_string</i> is given, in which case it will be used as the
    # starting point. If the given pathname starts with a ``<code>~</code>''
    # it is NOT expanded, it is treated as a normal directory name.
    # 
    #    File.absolute_path("~oracle/bin")       #=> "<relative_path>/~oracle/bin"
    def self.absolute_path(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # File.realpath(pathname [, dir_string])  ->  real_pathname
    #  
    # Returns the real (absolute) pathname of _pathname_ in the actual
    # filesystem not containing symlinks or useless dots.
    # 
    # If _dir_string_ is given, it is used as a base directory
    # for interpreting relative pathname instead of the current directory.
    # 
    # All components of the pathname must exist when this method is
    # called.
    def self.realpath(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # File.realdirpath(pathname [, dir_string])  ->  real_pathname
    #  
    # Returns the real (absolute) pathname of _pathname_ in the actual filesystem.
    # The real pathname doesn't contain symlinks or useless dots.
    # 
    # If _dir_string_ is given, it is used as a base directory
    # for interpreting relative pathname instead of the current directory.
    # 
    # The last component of the real pathname can be nonexistent.
    def self.realdirpath(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # File.basename(file_name [, suffix] )  ->  base_name
    #  
    # Returns the last component of the filename given in <i>file_name</i>,
    # which must be formed using forward slashes (``<code>/</code>'')
    # regardless of the separator used on the local file system. If
    # <i>suffix</i> is given and present at the end of <i>file_name</i>,
    # it is removed.
    # 
    #    File.basename("/home/gumby/work/ruby.rb")          #=> "ruby.rb"
    #    File.basename("/home/gumby/work/ruby.rb", ".rb")   #=> "ruby"
    def self.basename(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # File.dirname(file_name )  ->  dir_name
    #  
    # Returns all components of the filename given in <i>file_name</i>
    # except the last one. The filename must be formed using forward
    # slashes (``<code>/</code>'') regardless of the separator used on the
    # local file system.
    # 
    #    File.dirname("/home/gumby/work/ruby.rb")   #=> "/home/gumby/work"
    def self.dirname(file_name )
        #This is a stub, used for indexing
    end
    # File.extname(path)  ->  string
    #  
    # Returns the extension (the portion of file name in <i>path</i>
    # after the period).
    # 
    #    File.extname("test.rb")         #=> ".rb"
    #    File.extname("a/b/d/test.rb")   #=> ".rb"
    #    File.extname("test")            #=> ""
    #    File.extname(".profile")        #=> ""
    def self.extname(path)
        #This is a stub, used for indexing
    end
    # File.path(path)  ->  string
    #  
    # Returns the string representation of the path
    # 
    #    File.path("/dev/null")          #=> "/dev/null"
    #    File.path(Pathname.new("/tmp")) #=> "/tmp"
    def self.path(path)
        #This is a stub, used for indexing
    end
    # File.split(file_name)   -> array
    #  
    # Splits the given string into a directory and a file component and
    # returns them in a two-element array. See also
    # <code>File::dirname</code> and <code>File::basename</code>.
    # 
    #    File.split("/home/gumby/.profile")   #=> ["/home/gumby", ".profile"]
    def self.split(file_name)
        #This is a stub, used for indexing
    end
    # File.join(string, ...)  ->  path
    #  
    # Returns a new string formed by joining the strings using
    # <code>File::SEPARATOR</code>.
    # 
    #    File.join("usr", "mail", "gumby")   #=> "usr/mail/gumby"
    def self.join(string, *smth)
        #This is a stub, used for indexing
    end
    # file.lstat   ->  stat
    #  
    # Same as <code>IO#stat</code>, but does not follow the last symbolic
    # link. Instead, reports on the link itself.
    # 
    #    File.symlink("testfile", "link2test")   #=> 0
    #    File.stat("testfile").size              #=> 66
    #    f = File.new("link2test")
    #    f.lstat.size                            #=> 8
    #    f.stat.size                             #=> 66
    def lstat()
        #This is a stub, used for indexing
    end
    # file.atime    -> time
    #  
    # Returns the last access time (a <code>Time</code> object)
    #  for <i>file</i>, or epoch if <i>file</i> has not been accessed.
    # 
    #    File.new("testfile").atime   #=> Wed Dec 31 18:00:00 CST 1969
    def atime()
        #This is a stub, used for indexing
    end
    # file.mtime  ->  time
    #  
    # Returns the modification time for <i>file</i>.
    # 
    #    File.new("testfile").mtime   #=> Wed Apr 09 08:53:14 CDT 2003
    def mtime()
        #This is a stub, used for indexing
    end
    # file.ctime  ->  time
    #  
    # Returns the change time for <i>file</i> (that is, the time directory
    # information about the file was changed, not the file itself).
    # 
    #    File.new("testfile").ctime   #=> Wed Apr 09 08:53:14 CDT 2003
    def ctime()
        #This is a stub, used for indexing
    end
    # file.size    -> integer
    #  
    # Returns the size of <i>file</i> in bytes.
    # 
    #    File.new("testfile").size   #=> 66
    def size()
        #This is a stub, used for indexing
    end
    # file.chmod(mode_int)   -> 0
    #  
    # Changes permission bits on <i>file</i> to the bit pattern
    # represented by <i>mode_int</i>. Actual effects are platform
    # dependent; on Unix systems, see <code>chmod(2)</code> for details.
    # Follows symbolic links. Also see <code>File#lchmod</code>.
    # 
    #    f = File.new("out", "w");
    #    f.chmod(0644)   #=> 0
    def chmod(mode_int)
        #This is a stub, used for indexing
    end
    # file.chown(owner_int, group_int )   -> 0
    #  
    # Changes the owner and group of <i>file</i> to the given numeric
    # owner and group id's. Only a process with superuser privileges may
    # change the owner of a file. The current owner of a file may change
    # the file's group to any group to which the owner belongs. A
    # <code>nil</code> or -1 owner or group id is ignored. Follows
    # symbolic links. See also <code>File#lchown</code>.
    # 
    #    File.new("testfile").chown(502, 1000)
    def chown(owner_int, group_int )
        #This is a stub, used for indexing
    end
    # file.truncate(integer)    -> 0
    #  
    # Truncates <i>file</i> to at most <i>integer</i> bytes. The file
    # must be opened for writing. Not available on all platforms.
    # 
    #    f = File.new("out", "w")
    #    f.syswrite("1234567890")   #=> 10
    #    f.truncate(5)              #=> 0
    #    f.close()                  #=> nil
    #    File.size("out")           #=> 5
    def truncate(integer)
        #This is a stub, used for indexing
    end
    # file.flock (locking_constant )-> 0 or false
    #  
    # Locks or unlocks a file according to <i>locking_constant</i> (a
    # logical <em>or</em> of the values in the table below).
    # Returns <code>false</code> if <code>File::LOCK_NB</code> is
    # specified and the operation would otherwise have blocked. Not
    # available on all platforms.
    # 
    # Locking constants (in class File):
    # 
    #    LOCK_EX   | Exclusive lock. Only one process may hold an
    #              | exclusive lock for a given file at a time.
    #    ----------+------------------------------------------------
    #    LOCK_NB   | Don't block when locking. May be combined
    #              | with other lock options using logical or.
    #    ----------+------------------------------------------------
    #    LOCK_SH   | Shared lock. Multiple processes may each hold a
    #              | shared lock for a given file at the same time.
    #    ----------+------------------------------------------------
    #    LOCK_UN   | Unlock.
    # 
    # Example:
    # 
    #    # update a counter using write lock
    #    # don't use "w" because it truncates the file before lock.
    #    File.open("counter", File::RDWR|File::CREAT, 0644) {|f|
    #      f.flock(File::LOCK_EX)
    #      value = f.read.to_i + 1
    #      f.rewind
    #      f.write("#{value}\n")
    #      f.flush
    #      f.truncate(f.pos)
    #    }
    # 
    #    # read the counter using read lock
    #    File.open("counter", "r") {|f|
    #      f.flock(File::LOCK_SH)
    #      p f.read
    #    }
    def flock(locking_constant )
        #This is a stub, used for indexing
    end
    # file.path  ->  filename
    #  
    # Returns the pathname used to create <i>file</i> as a string. Does
    # not normalize the name.
    # 
    #    File.new("testfile").path               #=> "testfile"
    #    File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"
    def path()
        #This is a stub, used for indexing
    end
    # file.path  ->  filename
    #  
    # Returns the pathname used to create <i>file</i> as a string. Does
    # not normalize the name.
    # 
    #    File.new("testfile").path               #=> "testfile"
    #    File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"
    def to_path()
        #This is a stub, used for indexing
    end
    # File.directory?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a directory,
    # or a symlink that points at a directory, and <code>false</code>
    # otherwise.
    # 
    #    File.directory?(".")
    def self.directory?(file_name)
        #This is a stub, used for indexing
    end
    # Dir.exist?(file_name)   ->  true or false
    # Dir.exists?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a directory,
    # <code>false</code> otherwise.
    def self.exist?(file_name)
        #This is a stub, used for indexing
    end
    # File.exist?(file_name)    ->  true or false
    # File.exists?(file_name)   ->  true or false
    #  
    # Return <code>true</code> if the named file exists.
    def self.exists?(file_name)
        #This is a stub, used for indexing
    end
    # File.readable?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is readable by the effective
    # user id of this process.
    def self.readable?(file_name)
        #This is a stub, used for indexing
    end
    # File.readable_real?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is readable by the real
    # user id of this process.
    def self.readable_real?(file_name)
        #This is a stub, used for indexing
    end
    # File.world_readable?(file_name)   -> fixnum or nil
    #  
    # If <i>file_name</i> is readable by others, returns an integer
    # representing the file permission bits of <i>file_name</i>. Returns
    # <code>nil</code> otherwise. The meaning of the bits is platform
    # dependent; on Unix systems, see <code>stat(2)</code>.
    # 
    #    File.world_readable?("/etc/passwd")           #=> 420
    #    m = File.world_readable?("/etc/passwd")
    #    sprintf("%o", m)                              #=> "644"
    def self.world_readable?(file_name)
        #This is a stub, used for indexing
    end
    # File.writable?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is writable by the effective
    # user id of this process.
    def self.writable?(file_name)
        #This is a stub, used for indexing
    end
    # File.writable_real?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is writable by the real
    # user id of this process.
    def self.writable_real?(file_name)
        #This is a stub, used for indexing
    end
    # File.world_writable?(file_name)   -> fixnum or nil
    #  
    # If <i>file_name</i> is writable by others, returns an integer
    # representing the file permission bits of <i>file_name</i>. Returns
    # <code>nil</code> otherwise. The meaning of the bits is platform
    # dependent; on Unix systems, see <code>stat(2)</code>.
    # 
    #    File.world_writable?("/tmp")                  #=> 511
    #    m = File.world_writable?("/tmp")
    #    sprintf("%o", m)                              #=> "777"
    def self.world_writable?(file_name)
        #This is a stub, used for indexing
    end
    # File.executable?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is executable by the effective
    # user id of this process.
    def self.executable?(file_name)
        #This is a stub, used for indexing
    end
    # File.executable_real?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is executable by the real
    # user id of this process.
    def self.executable_real?(file_name)
        #This is a stub, used for indexing
    end
    # File.file?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file exists and is a
    # regular file.
    def self.file?(file_name)
        #This is a stub, used for indexing
    end
    # File.zero?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file exists and has
    # a zero size.
    def self.zero?(file_name)
        #This is a stub, used for indexing
    end
    # File.size?(file_name)   -> Integer or nil
    #  
    # Returns +nil+ if +file_name+ doesn't exist or has zero size, the size of the
    # file otherwise.
    def self.size?(file_name)
        #This is a stub, used for indexing
    end
    # File.size(file_name)   -> integer
    #  
    # Returns the size of <code>file_name</code>.
    def self.size(file_name)
        #This is a stub, used for indexing
    end
    # File.owned?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file exists and the
    # effective used id of the calling process is the owner of
    # the file.
    def self.owned?(file_name)
        #This is a stub, used for indexing
    end
    # File.grpowned?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file exists and the
    # effective group id of the calling process is the owner of
    # the file. Returns <code>false</code> on Windows.
    def self.grpowned?(file_name)
        #This is a stub, used for indexing
    end
    # File.pipe?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a pipe.
    def self.pipe?(file_name)
        #This is a stub, used for indexing
    end
    # File.symlink?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a symbolic link.
    def self.symlink?(file_name)
        #This is a stub, used for indexing
    end
    # File.socket?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a socket.
    def self.socket?(file_name)
        #This is a stub, used for indexing
    end
    # File.blockdev?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a block device.
    def self.blockdev?(file_name)
        #This is a stub, used for indexing
    end
    # File.chardev?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a character device.
    def self.chardev?(file_name)
        #This is a stub, used for indexing
    end
    # File.setuid?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file has the setuid bit set.
    def self.setuid?(file_name)
        #This is a stub, used for indexing
    end
    # File.setgid?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file has the setgid bit set.
    def self.setgid?(file_name)
        #This is a stub, used for indexing
    end
    # File.sticky?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file has the sticky bit set.
    def self.sticky?(file_name)
        #This is a stub, used for indexing
    end
    # File.identical?(file_1, file_2)   ->  true or false
    #  
    # Returns <code>true</code> if the named files are identical.
    # 
    #     open("a", "w") {}
    #     p File.identical?("a", "a")      #=> true
    #     p File.identical?("a", "./a")    #=> true
    #     File.link("a", "b")
    #     p File.identical?("a", "b")      #=> true
    #     File.symlink("a", "c")
    #     p File.identical?("a", "c")      #=> true
    #     open("d", "w") {}
    #     p File.identical?("a", "d")      #=> false
    def self.identical?(file_1, file_2)
        #This is a stub, used for indexing
    end
    # File.open(filename, mode="r" [, opt])                 -> file
    # File.open(filename [, mode [, perm]] [, opt])         -> file
    # File.open(filename, mode="r" [, opt]) {|file| block } -> obj
    # File.open(filename [, mode [, perm]] [, opt]) {|file| block } -> obj
    #  
    # With no associated block, <code>open</code> is a synonym for
    # <code>File.new</code>. If the optional code block is given, it will
    # be passed <i>file</i> as an argument, and the File object will
    # automatically be closed when the block terminates. In this instance,
    # <code>File.open</code> returns the value of the block.
    def self.open(*several_variants)
        #This is a stub, used for indexing
    end
    # File.new(filename, mode="r" [, opt])            -> file
    # File.new(filename [, mode [, perm]] [, opt])    -> file
    #  
    # Opens the file named by _filename_ according to
    # _mode_ (default is ``r'') and returns a new
    # <code>File</code> object.
    # 
    # === Parameters
    # See the description of class +IO+ for a description of _mode_.
    # The file mode may optionally be specified as a +Fixnum+
    # by _or_-ing together the flags (O_RDONLY etc,
    # again described under +IO+).
    # 
    # Optional permission bits may be given in _perm_.
    # These mode and permission bits are platform dependent;
    # on Unix systems, see <code>open(2)</code> for details.
    # 
    # Optional _opt_ parameter is same as in <code.IO.open</code>.
    # 
    # === Examples
    # 
    #    f = File.new("testfile", "r")
    #    f = File.new("newfile",  "w+")
    #    f = File.new("newfile", File::CREAT|File::TRUNC|File::RDWR, 0644)
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    module Constants
    end
    # Objects of class <code>File::Stat</code> encapsulate common status
    # information for <code>File</code> objects. The information is
    # recorded at the moment the <code>File::Stat</code> object is
    # created; changes made to the file after that point will not be
    # reflected. <code>File::Stat</code> objects are returned by
    # <code>IO#stat</code>, <code>File::stat</code>,
    # <code>File#lstat</code>, and <code>File::lstat</code>. Many of these
    # methods return platform-specific values, and not all values are
    # meaningful on all systems. See also <code>Kernel#test</code>.
    class Stat
        include Comparable
        # 
        # File::Stat.new(file_name)  -> stat
        #  
        # Create a File::Stat object for the given file name (raising an
        # exception if the file doesn't exist).
        def self.new(file_name)
            #This is a stub, used for indexing
        end
        # stat <=> other_stat    -> -1, 0, 1, nil
        #  
        # Compares <code>File::Stat</code> objects by comparing their
        # respective modification times.
        # 
        #    f1 = File.new("f1", "w")
        #    sleep 1
        #    f2 = File.new("f2", "w")
        #    f1.stat <=> f2.stat   #=> -1
        def <=> other_stat
            #This is a stub, used for indexing
        end
        # stat.dev    -> fixnum
        #  
        # Returns an integer representing the device on which <i>stat</i>
        # resides.
        # 
        #    File.stat("testfile").dev   #=> 774
        def dev()
            #This is a stub, used for indexing
        end
        # stat.dev_major   -> fixnum
        #  
        # Returns the major part of <code>File_Stat#dev</code> or
        # <code>nil</code>.
        # 
        #    File.stat("/dev/fd1").dev_major   #=> 2
        #    File.stat("/dev/tty").dev_major   #=> 5
        def dev_major()
            #This is a stub, used for indexing
        end
        # stat.dev_minor   -> fixnum
        #  
        # Returns the minor part of <code>File_Stat#dev</code> or
        # <code>nil</code>.
        # 
        #    File.stat("/dev/fd1").dev_minor   #=> 1
        #    File.stat("/dev/tty").dev_minor   #=> 0
        def dev_minor()
            #This is a stub, used for indexing
        end
        # stat.ino   -> fixnum
        #  
        # Returns the inode number for <i>stat</i>.
        # 
        #    File.stat("testfile").ino   #=> 1083669
        def ino()
            #This is a stub, used for indexing
        end
        # stat.mode   -> fixnum
        #  
        # Returns an integer representing the permission bits of
        # <i>stat</i>. The meaning of the bits is platform dependent; on
        # Unix systems, see <code>stat(2)</code>.
        # 
        #    File.chmod(0644, "testfile")   #=> 1
        #    s = File.stat("testfile")
        #    sprintf("%o", s.mode)          #=> "100644"
        def mode()
            #This is a stub, used for indexing
        end
        # stat.nlink   -> fixnum
        #  
        # Returns the number of hard links to <i>stat</i>.
        # 
        #    File.stat("testfile").nlink             #=> 1
        #    File.link("testfile", "testfile.bak")   #=> 0
        #    File.stat("testfile").nlink             #=> 2
        def nlink()
            #This is a stub, used for indexing
        end
        # stat.uid    -> fixnum
        #  
        # Returns the numeric user id of the owner of <i>stat</i>.
        # 
        #    File.stat("testfile").uid   #=> 501
        def uid()
            #This is a stub, used for indexing
        end
        # stat.gid   -> fixnum
        #  
        # Returns the numeric group id of the owner of <i>stat</i>.
        # 
        #    File.stat("testfile").gid   #=> 500
        def gid()
            #This is a stub, used for indexing
        end
        # stat.rdev   ->  fixnum or nil
        #  
        # Returns an integer representing the device type on which
        # <i>stat</i> resides. Returns <code>nil</code> if the operating
        # system doesn't support this feature.
        # 
        #    File.stat("/dev/fd1").rdev   #=> 513
        #    File.stat("/dev/tty").rdev   #=> 1280
        def rdev()
            #This is a stub, used for indexing
        end
        # stat.rdev_major   -> fixnum
        #  
        # Returns the major part of <code>File_Stat#rdev</code> or
        # <code>nil</code>.
        # 
        #    File.stat("/dev/fd1").rdev_major   #=> 2
        #    File.stat("/dev/tty").rdev_major   #=> 5
        def rdev_major()
            #This is a stub, used for indexing
        end
        # stat.rdev_minor   -> fixnum
        #  
        # Returns the minor part of <code>File_Stat#rdev</code> or
        # <code>nil</code>.
        # 
        #    File.stat("/dev/fd1").rdev_minor   #=> 1
        #    File.stat("/dev/tty").rdev_minor   #=> 0
        def rdev_minor()
            #This is a stub, used for indexing
        end
        # stat.size    -> fixnum
        #  
        # Returns the size of <i>stat</i> in bytes.
        # 
        #    File.stat("testfile").size   #=> 66
        def size()
            #This is a stub, used for indexing
        end
        # stat.blksize   -> integer or nil
        #  
        # Returns the native file system's block size. Will return <code>nil</code>
        # on platforms that don't support this information.
        # 
        #    File.stat("testfile").blksize   #=> 4096
        def blksize()
            #This is a stub, used for indexing
        end
        # stat.blocks    -> integer or nil
        #  
        # Returns the number of native file system blocks allocated for this
        # file, or <code>nil</code> if the operating system doesn't
        # support this feature.
        # 
        #    File.stat("testfile").blocks   #=> 2
        def blocks()
            #This is a stub, used for indexing
        end
        # stat.atime   -> time
        #  
        # Returns the last access time for this file as an object of class
        # <code>Time</code>.
        # 
        #    File.stat("testfile").atime   #=> Wed Dec 31 18:00:00 CST 1969
        def atime()
            #This is a stub, used for indexing
        end
        # stat.mtime  ->  aTime
        #  
        # Returns the modification time of <i>stat</i>.
        # 
        #    File.stat("testfile").mtime   #=> Wed Apr 09 08:53:14 CDT 2003
        def mtime()
            #This is a stub, used for indexing
        end
        # stat.ctime  ->  aTime
        #  
        # Returns the change time for <i>stat</i> (that is, the time
        # directory information about the file was changed, not the file
        # itself).
        # 
        #    File.stat("testfile").ctime   #=> Wed Apr 09 08:53:14 CDT 2003
        def ctime()
            #This is a stub, used for indexing
        end
        # stat.inspect  ->  string
        #  
        # Produce a nicely formatted description of <i>stat</i>.
        # 
        #   File.stat("/etc/passwd").inspect
        #      #=> "#<File::Stat dev=0xe000005, ino=1078078, mode=0100644,
        #      #    nlink=1, uid=0, gid=0, rdev=0x0, size=1374, blksize=4096,
        #      #    blocks=8, atime=Wed Dec 10 10:16:12 CST 2003,
        #      #    mtime=Fri Sep 12 15:41:41 CDT 2003,
        #      #    ctime=Mon Oct 27 11:20:27 CST 2003>"
        def inspect()
            #This is a stub, used for indexing
        end
        # stat.ftype   -> string
        #  
        # Identifies the type of <i>stat</i>. The return string is one of:
        # ``<code>file</code>'', ``<code>directory</code>'',
        # ``<code>characterSpecial</code>'', ``<code>blockSpecial</code>'',
        # ``<code>fifo</code>'', ``<code>link</code>'',
        # ``<code>socket</code>'', or ``<code>unknown</code>''.
        # 
        #    File.stat("/dev/tty").ftype   #=> "characterSpecial"
        def ftype()
            #This is a stub, used for indexing
        end
        # File.directory?(file_name)   ->  true or false
        #  
        # Returns <code>true</code> if the named file is a directory,
        # or a symlink that points at a directory, and <code>false</code>
        # otherwise.
        # 
        #    File.directory?(".")
        def directory?(file_name)
            #This is a stub, used for indexing
        end
        # stat.readable?    -> true or false
        #  
        # Returns <code>true</code> if <i>stat</i> is readable by the
        # effective user id of this process.
        # 
        #    File.stat("testfile").readable?   #=> true
        def readable?()
            #This is a stub, used for indexing
        end
        # stat.readable_real?  ->  true or false
        #  
        # Returns <code>true</code> if <i>stat</i> is readable by the real
        # user id of this process.
        # 
        #    File.stat("testfile").readable_real?   #=> true
        def readable_real?()
            #This is a stub, used for indexing
        end
        # stat.world_readable? -> fixnum or nil
        #  
        # If <i>stat</i> is readable by others, returns an integer
        # representing the file permission bits of <i>stat</i>. Returns
        # <code>nil</code> otherwise. The meaning of the bits is platform
        # dependent; on Unix systems, see <code>stat(2)</code>.
        # 
        #    m = File.stat("/etc/passwd").world_readable?  #=> 420
        #    sprintf("%o", m)                              #=> "644"
        def world_readable?()
            #This is a stub, used for indexing
        end
        # stat.writable?  ->  true or false
        #  
        # Returns <code>true</code> if <i>stat</i> is writable by the
        # effective user id of this process.
        # 
        #    File.stat("testfile").writable?   #=> true
        def writable?()
            #This is a stub, used for indexing
        end
        # stat.writable_real?  ->  true or false
        #  
        # Returns <code>true</code> if <i>stat</i> is writable by the real
        # user id of this process.
        # 
        #    File.stat("testfile").writable_real?   #=> true
        def writable_real?()
            #This is a stub, used for indexing
        end
        # stat.world_writable?  ->  fixnum or nil
        #  
        # If <i>stat</i> is writable by others, returns an integer
        # representing the file permission bits of <i>stat</i>. Returns
        # <code>nil</code> otherwise. The meaning of the bits is platform
        # dependent; on Unix systems, see <code>stat(2)</code>.
        # 
        #    m = File.stat("/tmp").world_writable?         #=> 511
        #    sprintf("%o", m)                              #=> "777"
        def world_writable?()
            #This is a stub, used for indexing
        end
        # stat.executable?    -> true or false
        #  
        # Returns <code>true</code> if <i>stat</i> is executable or if the
        # operating system doesn't distinguish executable files from
        # nonexecutable files. The tests are made using the effective owner of
        # the process.
        # 
        #    File.stat("testfile").executable?   #=> false
        def executable?()
            #This is a stub, used for indexing
        end
        # stat.executable_real?    -> true or false
        #  
        # Same as <code>executable?</code>, but tests using the real owner of
        # the process.
        def executable_real?()
            #This is a stub, used for indexing
        end
        # stat.file?    -> true or false
        #  
        # Returns <code>true</code> if <i>stat</i> is a regular file (not
        # a device file, pipe, socket, etc.).
        # 
        #    File.stat("testfile").file?   #=> true
        def file?()
            #This is a stub, used for indexing
        end
        # stat.zero?    -> true or false
        #  
        # Returns <code>true</code> if <i>stat</i> is a zero-length file;
        # <code>false</code> otherwise.
        # 
        #    File.stat("testfile").zero?   #=> false
        def zero?()
            #This is a stub, used for indexing
        end
        # state.size    -> integer
        #  
        # Returns the size of <i>stat</i> in bytes.
        # 
        #    File.stat("testfile").size   #=> 66
        def size?()
            #This is a stub, used for indexing
        end
        # stat.owned?    -> true or false
        #  
        # Returns <code>true</code> if the effective user id of the process is
        # the same as the owner of <i>stat</i>.
        # 
        #    File.stat("testfile").owned?      #=> true
        #    File.stat("/etc/passwd").owned?   #=> false
        def owned?()
            #This is a stub, used for indexing
        end
        # stat.grpowned?   -> true or false
        #  
        # Returns true if the effective group id of the process is the same as
        # the group id of <i>stat</i>. On Windows NT, returns <code>false</code>.
        # 
        #    File.stat("testfile").grpowned?      #=> true
        #    File.stat("/etc/passwd").grpowned?   #=> false
        def grpowned?()
            #This is a stub, used for indexing
        end
        # stat.pipe?    -> true or false
        #  
        # Returns <code>true</code> if the operating system supports pipes and
        # <i>stat</i> is a pipe; <code>false</code> otherwise.
        def pipe?()
            #This is a stub, used for indexing
        end
        # stat.symlink?    -> true or false
        #  
        # Returns <code>true</code> if <i>stat</i> is a symbolic link,
        # <code>false</code> if it isn't or if the operating system doesn't
        # support this feature. As <code>File::stat</code> automatically
        # follows symbolic links, <code>symlink?</code> will always be
        # <code>false</code> for an object returned by
        # <code>File::stat</code>.
        # 
        #    File.symlink("testfile", "alink")   #=> 0
        #    File.stat("alink").symlink?         #=> false
        #    File.lstat("alink").symlink?        #=> true
        def symlink?()
            #This is a stub, used for indexing
        end
        # stat.socket?    -> true or false
        #  
        # Returns <code>true</code> if <i>stat</i> is a socket,
        # <code>false</code> if it isn't or if the operating system doesn't
        # support this feature.
        # 
        #    File.stat("testfile").socket?   #=> false
        def socket?()
            #This is a stub, used for indexing
        end
        # stat.blockdev?   -> true or false
        #  
        # Returns <code>true</code> if the file is a block device,
        # <code>false</code> if it isn't or if the operating system doesn't
        # support this feature.
        # 
        #    File.stat("testfile").blockdev?    #=> false
        #    File.stat("/dev/hda1").blockdev?   #=> true
        def blockdev?()
            #This is a stub, used for indexing
        end
        # stat.chardev?    -> true or false
        #  
        # Returns <code>true</code> if the file is a character device,
        # <code>false</code> if it isn't or if the operating system doesn't
        # support this feature.
        # 
        #    File.stat("/dev/tty").chardev?   #=> true
        def chardev?()
            #This is a stub, used for indexing
        end
        # stat.setuid?    -> true or false
        #  
        # Returns <code>true</code> if <i>stat</i> has the set-user-id
        # permission bit set, <code>false</code> if it doesn't or if the
        # operating system doesn't support this feature.
        # 
        #    File.stat("/bin/su").setuid?   #=> true
        def setuid?()
            #This is a stub, used for indexing
        end
        # stat.setgid?   -> true or false
        #  
        # Returns <code>true</code> if <i>stat</i> has the set-group-id
        # permission bit set, <code>false</code> if it doesn't or if the
        # operating system doesn't support this feature.
        # 
        #    File.stat("/usr/sbin/lpc").setgid?   #=> true
        def setgid?()
            #This is a stub, used for indexing
        end
        # stat.sticky?    -> true or false
        #  
        # Returns <code>true</code> if <i>stat</i> has its sticky bit set,
        # <code>false</code> if it doesn't or if the operating system doesn't
        # support this feature.
        # 
        #    File.stat("testfile").sticky?   #=> false
        def sticky?()
            #This is a stub, used for indexing
        end
    end
end
