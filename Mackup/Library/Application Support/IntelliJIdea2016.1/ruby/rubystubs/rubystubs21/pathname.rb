=begin
 This is a machine generated stub using stdlib-doc for <b>class Pathname</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Pathname represents the name of a file or directory on the filesystem,
# but not the file itself.
# 
# The pathname depends on the Operating System: Unix, Windows, etc.
# This library works with pathnames of local OS, however non-Unix pathnames
# are supported experimentally.
# 
# A Pathname can be relative or absolute.  It's not until you try to
# reference the file that it even matters whether the file exists or not.
# 
# Pathname is immutable.  It has no method for destructive update.
# 
# The goal of this class is to manipulate file path information in a neater
# way than standard Ruby provides.  The examples below demonstrate the
# difference.
# 
# *All* functionality from File, FileTest, and some from Dir and FileUtils is
# included, in an unsurprising way.  It is essentially a facade for all of
# these, and more.
# 
# == Examples
# 
# === Example 1: Using Pathname
# 
#   require 'pathname'
#   pn = Pathname.new("/usr/bin/ruby")
#   size = pn.size              # 27662
#   isdir = pn.directory?       # false
#   dir  = pn.dirname           # Pathname:/usr/bin
#   base = pn.basename          # Pathname:ruby
#   dir, base = pn.split        # [Pathname:/usr/bin, Pathname:ruby]
#   data = pn.read
#   pn.open { |f| _ }
#   pn.each_line { |line| _ }
# 
# === Example 2: Using standard Ruby
# 
#   pn = "/usr/bin/ruby"
#   size = File.size(pn)        # 27662
#   isdir = File.directory?(pn) # false
#   dir  = File.dirname(pn)     # "/usr/bin"
#   base = File.basename(pn)    # "ruby"
#   dir, base = File.split(pn)  # ["/usr/bin", "ruby"]
#   data = File.read(pn)
#   File.open(pn) { |f| _ }
#   File.foreach(pn) { |line| _ }
# 
# === Example 3: Special features
# 
#   p1 = Pathname.new("/usr/lib")   # Pathname:/usr/lib
#   p2 = p1 + "ruby/1.8"            # Pathname:/usr/lib/ruby/1.8
#   p3 = p1.parent                  # Pathname:/usr
#   p4 = p2.relative_path_from(p3)  # Pathname:lib/ruby/1.8
#   pwd = Pathname.pwd              # Pathname:/home/gavin
#   pwd.absolute?                   # true
#   p5 = Pathname.new "."           # Pathname:.
#   p5 = p5 + "music/../articles"   # Pathname:music/../articles
#   p5.cleanpath                    # Pathname:articles
#   p5.realpath                     # Pathname:/home/gavin/articles
#   p5.children                     # [Pathname:/home/gavin/articles/linux, ...]
# 
# == Breakdown of functionality
# 
# === Core methods
# 
# These methods are effectively manipulating a String, because that's
# all a path is.  None of these access the file system except for
# #mountpoint?, #children, #each_child, #realdirpath and #realpath.
# 
# - +
# - #join
# - #parent
# - #root?
# - #absolute?
# - #relative?
# - #relative_path_from
# - #each_filename
# - #cleanpath
# - #realpath
# - #realdirpath
# - #children
# - #each_child
# - #mountpoint?
# 
# === File status predicate methods
# 
# These methods are a facade for FileTest:
# - #blockdev?
# - #chardev?
# - #directory?
# - #executable?
# - #executable_real?
# - #exist?
# - #file?
# - #grpowned?
# - #owned?
# - #pipe?
# - #readable?
# - #world_readable?
# - #readable_real?
# - #setgid?
# - #setuid?
# - #size
# - #size?
# - #socket?
# - #sticky?
# - #symlink?
# - #writable?
# - #world_writable?
# - #writable_real?
# - #zero?
# 
# === File property and manipulation methods
# 
# These methods are a facade for File:
# - #atime
# - #ctime
# - #mtime
# - #chmod(mode)
# - #lchmod(mode)
# - #chown(owner, group)
# - #lchown(owner, group)
# - #fnmatch(pattern, *args)
# - #fnmatch?(pattern, *args)
# - #ftype
# - #make_link(old)
# - #open(*args, &block)
# - #readlink
# - #rename(to)
# - #stat
# - #lstat
# - #make_symlink(old)
# - #truncate(length)
# - #utime(atime, mtime)
# - #basename(*args)
# - #dirname
# - #extname
# - #expand_path(*args)
# - #split
# 
# === Directory methods
# 
# These methods are a facade for Dir:
# - Pathname.glob(*args)
# - Pathname.getwd / Pathname.pwd
# - #rmdir
# - #entries
# - #each_entry(&block)
# - #mkdir(*args)
# - #opendir(*args)
# 
# === IO
# 
# These methods are a facade for IO:
# - #each_line(*args, &block)
# - #read(*args)
# - #binread(*args)
# - #readlines(*args)
# - #sysopen(*args)
# 
# === Utilities
# 
# These methods are a mixture of Find, FileUtils, and others:
# - #find(&block)
# - #mkpath
# - #rmtree
# - #unlink / #delete
# 
# == Method documentation
# 
# As the above section shows, most of the methods in Pathname are facades.  The
# documentation for these methods generally just says, for instance, "See
# FileTest.writable?", as you should be familiar with the original method
# anyway, and its documentation (e.g. through +ri+) will contain more
# information.  In some cases, a brief description will follow.
class Pathname
    # Create a Pathname object from the given String (or String-like object).
    # If +path+ contains a NULL character (<tt>\0</tt>), an ArgumentError is raised.
    def self.new(p1)
        #This is a stub, used for indexing
    end
    # pathname.freeze -> obj
    #  
    # Freezes this Pathname.
    # 
    # See Object.freeze.
    def freeze()
        #This is a stub, used for indexing
    end
    # pathname.taint -> obj
    #  
    # Taints this Pathname.
    # 
    # See Object.taint.
    def taint()
        #This is a stub, used for indexing
    end
    # pathname.untaint -> obj
    #  
    # Untaints this Pathname.
    # 
    # See Object.untaint.
    def untaint()
        #This is a stub, used for indexing
    end
    # Compare this pathname with +other+.  The comparison is string-based.
    # Be aware that two different paths (<tt>foo.txt</tt> and <tt>./foo.txt</tt>)
    # can refer to the same file.
    def ==(p1)
        #This is a stub, used for indexing
    end
    # Compare this pathname with +other+.  The comparison is string-based.
    # Be aware that two different paths (<tt>foo.txt</tt> and <tt>./foo.txt</tt>)
    # can refer to the same file.
    def ===(p1)
        #This is a stub, used for indexing
    end
    # Compare this pathname with +other+.  The comparison is string-based.
    # Be aware that two different paths (<tt>foo.txt</tt> and <tt>./foo.txt</tt>)
    # can refer to the same file.
    def eql?(p1)
        #This is a stub, used for indexing
    end
    # Provides a case-sensitive comparison operator for pathnames.
    # 
    #     Pathname.new('/usr') <=> Pathname.new('/usr/bin')
    #         #=> -1
    #     Pathname.new('/usr/bin') <=> Pathname.new('/usr/bin')
    #         #=> 0
    #     Pathname.new('/usr/bin') <=> Pathname.new('/USR/BIN')
    #         #=> 1
    # 
    # It will return +-1+, +0+ or +1+ depending on the value of the left argument
    # relative to the right argument. Or it will return +nil+ if the arguments
    # are not comparable.
    def <=>(p1)
        #This is a stub, used for indexing
    end
    # pathname.to_s             -> string
    # pathname.to_path          -> string
    #  
    # Return the path as a String.
    # 
    # to_path is implemented so Pathname objects are usable with File.open, etc.
    def to_s()
        #This is a stub, used for indexing
    end
    # pathname.to_s             -> string
    # pathname.to_path          -> string
    #  
    # Return the path as a String.
    # 
    # to_path is implemented so Pathname objects are usable with File.open, etc.
    def to_path()
        #This is a stub, used for indexing
    end
    # Return a pathname which is substituted by String#sub.
    # 
    #      path1 = Pathname.new('/usr/bin/perl')
    #      path1.sub('perl', 'ruby')
    #          #=> #<Pathname:/usr/bin/ruby>
    def sub(*args)
        #This is a stub, used for indexing
    end
    # Return a pathname with +repl+ added as a suffix to the basename.
    # 
    # If self has no extension part, +repl+ is appended.
    # 
    #      Pathname.new('/usr/bin/shutdown').sub_ext('.rb')
    #          #=> #<Pathname:/usr/bin/shutdown.rb>
    def sub_ext(p1)
        #This is a stub, used for indexing
    end
    # Returns the real (absolute) pathname for +self+ in the actual
    # filesystem.
    # 
    # Does not contain symlinks or useless dots, +..+ and +.+.
    # 
    # All components of the pathname must exist when this method is
    # called.
    def realpath(p1 = v1)
        #This is a stub, used for indexing
    end
    # Returns the real (absolute) pathname of +self+ in the actual filesystem.
    # 
    # Does not contain symlinks or useless dots, +..+ and +.+.
    # 
    # The last component of the real pathname can be nonexistent.
    def realdirpath(p1 = v1)
        #This is a stub, used for indexing
    end
    # pathname.each_line {|line| ... }
    # pathname.each_line(sep=$/ [, open_args]) {|line| block }     -> nil
    # pathname.each_line(limit [, open_args]) {|line| block }      -> nil
    # pathname.each_line(sep, limit [, open_args]) {|line| block } -> nil
    # pathname.each_line(...)                                      -> an_enumerator
    #  
    # Iterates over each line in the file and yields a String object for each.
    def each_line(*several_variants)
        #This is a stub, used for indexing
    end
    # pathname.read([length [, offset]]) -> string
    # pathname.read([length [, offset]], open_args) -> string
    #  
    # Returns all data from the file, or the first +N+ bytes if specified.
    # 
    # See IO.read.
    def read(*several_variants)
        #This is a stub, used for indexing
    end
    # pathname.binread([length [, offset]]) -> string
    #  
    # Returns all the bytes from the file, or the first +N+ if specified.
    # 
    # See IO.binread.
    def binread(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # pathname.readlines(sep=$/ [, open_args])     -> array
    # pathname.readlines(limit [, open_args])      -> array
    # pathname.readlines(sep, limit [, open_args]) -> array
    #  
    # Returns all the lines from the file.
    # 
    # See IO.readlines.
    def readlines(*several_variants)
        #This is a stub, used for indexing
    end
    # pathname.write(string, [offset] )   => fixnum
    # pathname.write(string, [offset], open_args )   => fixnum
    #  
    # Writes +contents+ to the file.
    # 
    # See IO.write.
    def write(*several_variants)
        #This is a stub, used for indexing
    end
    # pathname.binwrite(string, [offset] )   => fixnum
    # pathname.binwrite(string, [offset], open_args )   => fixnum
    #  
    # Writes +contents+ to the file, opening it in binary mode.
    # 
    # See IO.binwrite.
    def binwrite(*several_variants)
        #This is a stub, used for indexing
    end
    # pathname.sysopen([mode, [perm]])  -> fixnum
    #  
    # See IO.sysopen.
    def sysopen(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # pathname.atime     -> time
    #  
    # Returns the last access time for the file.
    # 
    # See File.atime.
    def atime()
        #This is a stub, used for indexing
    end
    # pathname.ctime     -> time
    #  
    # Returns the last change time, using directory information, not the file itself.
    # 
    # See File.ctime.
    def ctime()
        #This is a stub, used for indexing
    end
    # pathname.mtime     -> time
    #  
    # Returns the last modified time of the file.
    # 
    # See File.mtime.
    def mtime()
        #This is a stub, used for indexing
    end
    # pathname.chmod     -> integer
    #  
    # Changes file permissions.
    # 
    # See File.chmod.
    def chmod()
        #This is a stub, used for indexing
    end
    # pathname.lchmod    -> integer
    #  
    # Same as Pathname.chmod, but does not follow symbolic links.
    # 
    # See File.lchmod.
    def lchmod()
        #This is a stub, used for indexing
    end
    # pathname.chown     -> integer
    #  
    # Change owner and group of the file.
    # 
    # See File.chown.
    def chown()
        #This is a stub, used for indexing
    end
    # pathname.lchown    -> integer
    #  
    # Same as Pathname.chown, but does not follow symbolic links.
    # 
    # See File.lchown.
    def lchown()
        #This is a stub, used for indexing
    end
    # pathname.fnmatch(pattern, [flags])        -> string
    # pathname.fnmatch?(pattern, [flags])       -> string
    #  
    # Return +true+ if the receiver matches the given pattern.
    # 
    # See File.fnmatch.
    def fnmatch(pattern, *flags)
        #This is a stub, used for indexing
    end
    # pathname.fnmatch(pattern, [flags])        -> string
    # pathname.fnmatch?(pattern, [flags])       -> string
    #  
    # Return +true+ if the receiver matches the given pattern.
    # 
    # See File.fnmatch.
    def fnmatch?(pattern, *flags)
        #This is a stub, used for indexing
    end
    # pathname.ftype     -> string
    #  
    # Returns "type" of file ("file", "directory", etc).
    # 
    # See File.ftype.
    def ftype()
        #This is a stub, used for indexing
    end
    # pathname.make_link(old)
    #  
    # Creates a hard link at _pathname_.
    # 
    # See File.link.
    def make_link(old)
        #This is a stub, used for indexing
    end
    # Opens the file for reading or writing.
    # 
    # See File.open.
    def open(p1 = v1, p2 = v2, p3 = v3)
        #This is a stub, used for indexing
    end
    # Read symbolic link.
    # 
    # See File.readlink.
    def readlink()
        #This is a stub, used for indexing
    end
    # Rename the file.
    # 
    # See File.rename.
    def rename(p1)
        #This is a stub, used for indexing
    end
    # Returns a File::Stat object.
    # 
    # See File.stat.
    def stat()
        #This is a stub, used for indexing
    end
    # See File.lstat.
    def lstat()
        #This is a stub, used for indexing
    end
    # pathname.make_symlink(old)
    #  
    # Creates a symbolic link.
    # 
    # See File.symlink.
    def make_symlink(old)
        #This is a stub, used for indexing
    end
    # Truncates the file to +length+ bytes.
    # 
    # See File.truncate.
    def truncate(p1)
        #This is a stub, used for indexing
    end
    # Update the access and modification times of the file.
    # 
    # See File.utime.
    def utime(p1, p2)
        #This is a stub, used for indexing
    end
    # Returns the last component of the path.
    # 
    # See File.basename.
    def basename(p1 = v1)
        #This is a stub, used for indexing
    end
    # Returns all but the last component of the path.
    # 
    # See File.dirname.
    def dirname()
        #This is a stub, used for indexing
    end
    # Returns the file's extension.
    # 
    # See File.extname.
    def extname()
        #This is a stub, used for indexing
    end
    # Returns the absolute path for the file.
    # 
    # See File.expand_path.
    def expand_path(p1 = v1)
        #This is a stub, used for indexing
    end
    # Returns the #dirname and the #basename in an Array.
    # 
    # See File.split.
    def split()
        #This is a stub, used for indexing
    end
    # See FileTest.blockdev?.
    def blockdev?()
        #This is a stub, used for indexing
    end
    # See FileTest.chardev?.
    def chardev?()
        #This is a stub, used for indexing
    end
    # See FileTest.executable?.
    def executable?()
        #This is a stub, used for indexing
    end
    # See FileTest.executable_real?.
    def executable_real?()
        #This is a stub, used for indexing
    end
    # See FileTest.exist?.
    def exist?()
        #This is a stub, used for indexing
    end
    # See FileTest.grpowned?.
    def grpowned?()
        #This is a stub, used for indexing
    end
    # See FileTest.directory?.
    def directory?()
        #This is a stub, used for indexing
    end
    # See FileTest.file?.
    def file?()
        #This is a stub, used for indexing
    end
    # See FileTest.pipe?.
    def pipe?()
        #This is a stub, used for indexing
    end
    # See FileTest.socket?.
    def socket?()
        #This is a stub, used for indexing
    end
    # See FileTest.owned?.
    def owned?()
        #This is a stub, used for indexing
    end
    # See FileTest.readable?.
    def readable?()
        #This is a stub, used for indexing
    end
    # See FileTest.world_readable?.
    def world_readable?()
        #This is a stub, used for indexing
    end
    # See FileTest.readable_real?.
    def readable_real?()
        #This is a stub, used for indexing
    end
    # See FileTest.setuid?.
    def setuid?()
        #This is a stub, used for indexing
    end
    # See FileTest.setgid?.
    def setgid?()
        #This is a stub, used for indexing
    end
    # See FileTest.size.
    def size()
        #This is a stub, used for indexing
    end
    # See FileTest.size?.
    def size?()
        #This is a stub, used for indexing
    end
    # See FileTest.sticky?.
    def sticky?()
        #This is a stub, used for indexing
    end
    # See FileTest.symlink?.
    def symlink?()
        #This is a stub, used for indexing
    end
    # See FileTest.writable?.
    def writable?()
        #This is a stub, used for indexing
    end
    # See FileTest.world_writable?.
    def world_writable?()
        #This is a stub, used for indexing
    end
    # See FileTest.writable_real?.
    def writable_real?()
        #This is a stub, used for indexing
    end
    # See FileTest.zero?.
    def zero?()
        #This is a stub, used for indexing
    end
    # Returns or yields Pathname objects.
    # 
    #  Pathname.glob("config/" "*.rb")
    #      #=> [#<Pathname:config/environment.rb>, #<Pathname:config/routes.rb>, ..]
    # 
    # See Dir.glob.
    def self.glob(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # Returns the current working directory as a Pathname.
    # 
    #      Pathname.getwd
    #          #=> #<Pathname:/home/zzak/projects/ruby>
    # 
    # See Dir.getwd.
    def self.getwd()
        #This is a stub, used for indexing
    end
    # Returns the current working directory as a Pathname.
    # 
    #      Pathname.getwd
    #          #=> #<Pathname:/home/zzak/projects/ruby>
    # 
    # See Dir.getwd.
    def self.pwd()
        #This is a stub, used for indexing
    end
    # Return the entries (files and subdirectories) in the directory, each as a
    # Pathname object.
    # 
    # The results contains just the names in the directory, without any trailing
    # slashes or recursive look-up.
    # 
    #   pp Pathname.new('/usr/local').entries
    #   #=> [#<Pathname:share>,
    #   #    #<Pathname:lib>,
    #   #    #<Pathname:..>,
    #   #    #<Pathname:include>,
    #   #    #<Pathname:etc>,
    #   #    #<Pathname:bin>,
    #   #    #<Pathname:man>,
    #   #    #<Pathname:games>,
    #   #    #<Pathname:.>,
    #   #    #<Pathname:sbin>,
    #   #    #<Pathname:src>]
    # 
    # The result may contain the current directory <code>#<Pathname:.></code> and
    # the parent directory <code>#<Pathname:..></code>.
    # 
    # If you don't want +.+ and +..+ and
    # want directories, consider Pathname#children.
    def entries()
        #This is a stub, used for indexing
    end
    # Create the referenced directory.
    # 
    # See Dir.mkdir.
    def mkdir(p1 = v1)
        #This is a stub, used for indexing
    end
    # Remove the referenced directory.
    # 
    # See Dir.rmdir.
    def rmdir()
        #This is a stub, used for indexing
    end
    # Opens the referenced directory.
    # 
    # See Dir.open.
    def opendir()
        #This is a stub, used for indexing
    end
    # Iterates over the entries (files and subdirectories) in the directory,
    # yielding a Pathname object for each entry.
    def each_entry()
        #This is a stub, used for indexing
    end
    # Removes a file or directory, using File.unlink if +self+ is a file, or
    # Dir.unlink as necessary.
    def unlink()
        #This is a stub, used for indexing
    end
    # Removes a file or directory, using File.unlink if +self+ is a file, or
    # Dir.unlink as necessary.
    def delete()
        #This is a stub, used for indexing
    end
end
