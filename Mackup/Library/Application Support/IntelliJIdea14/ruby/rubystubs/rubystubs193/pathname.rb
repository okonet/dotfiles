=begin
 This is a machine generated stub using stdlib-doc for <b>class Pathname</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# == Pathname
# 
# Pathname represents a pathname which locates a file in a filesystem.
# The pathname depends on OS: Unix, Windows, etc.
# Pathname library works with pathnames of local OS.
# However non-Unix pathnames are supported experimentally.
# 
# It does not represent the file itself.
# A Pathname can be relative or absolute.  It's not until you try to
# reference the file that it even matters whether the file exists or not.
# 
# Pathname is immutable.  It has no method for destructive update.
# 
# The value of this class is to manipulate file path information in a neater
# way than standard Ruby provides.  The examples below demonstrate the
# difference.  *All* functionality from File, FileTest, and some from Dir and
# FileUtils is included, in an unsurprising way.  It is essentially a facade for
# all of these, and more.
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
# all a path is.  Except for #mountpoint?, #children, #each_child,
# #realdirpath and #realpath, they don't access the filesystem.
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
    # If +path+ contains a NUL character (<tt>\0</tt>), an ArgumentError is raised.
    def self.new(p1)
        #This is a stub, used for indexing
    end
    def freeze()
        #This is a stub, used for indexing
    end
    def taint()
        #This is a stub, used for indexing
    end
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
    # Provides for comparing pathnames, case-sensitively.
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
    def sub(*args)
        #This is a stub, used for indexing
    end
    # Return a pathname which the extension of the basename is substituted by
    # <i>repl</i>.
    # 
    # If self has no extension part, <i>repl</i> is appended.
    def sub_ext(p1)
        #This is a stub, used for indexing
    end
    # Returns the real (absolute) pathname of +self+ in the actual
    # filesystem not containing symlinks or useless dots.
    # 
    # All components of the pathname must exist when this method is
    # called.
    def realpath(p1 = v1)
        #This is a stub, used for indexing
    end
    # Returns the real (absolute) pathname of +self+ in the actual filesystem.
    # The real pathname doesn't contain symlinks or useless dots.
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
    # #each_line iterates over the line in the file.  It yields a String object
    # for each line.
    # 
    # This method is availabel since 1.8.1.
    def each_line(*several_variants)
        #This is a stub, used for indexing
    end
    # pathname.read([length [, offset]]) -> string
    # pathname.read([length [, offset]], open_args) -> string
    #  
    # See <tt>IO.read</tt>.  Returns all data from the file, or the first +N+ bytes
    # if specified.
    def read(*several_variants)
        #This is a stub, used for indexing
    end
    # pathname.binread([length [, offset]]) -> string
    #  
    # See <tt>IO.binread</tt>.  Returns all the bytes from the file, or the first +N+
    # if specified.
    def binread(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # pathname.readlines(sep=$/ [, open_args])     -> array
    # pathname.readlines(limit [, open_args])      -> array
    # pathname.readlines(sep, limit [, open_args]) -> array
    #  
    # See <tt>IO.readlines</tt>.  Returns all the lines from the file.
    def readlines(*several_variants)
        #This is a stub, used for indexing
    end
    # pathname.sysopen([mode, [perm]])  -> fixnum
    #  
    # See <tt>IO.sysopen</tt>.
    def sysopen(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # See <tt>File.atime</tt>.  Returns last access time.
    def atime()
        #This is a stub, used for indexing
    end
    # See <tt>File.ctime</tt>.  Returns last (directory entry, not file) change time.
    def ctime()
        #This is a stub, used for indexing
    end
    # See <tt>File.mtime</tt>.  Returns last modification time.
    def mtime()
        #This is a stub, used for indexing
    end
    # See <tt>File.chmod</tt>.  Changes permissions.
    def chmod(p1)
        #This is a stub, used for indexing
    end
    # See <tt>File.lchmod</tt>.
    def lchmod(p1)
        #This is a stub, used for indexing
    end
    # See <tt>File.chown</tt>.  Change owner and group of file.
    def chown(p1, p2)
        #This is a stub, used for indexing
    end
    # See <tt>File.lchown</tt>.
    def lchown(p1, p2)
        #This is a stub, used for indexing
    end
    # pathname.fnmatch(pattern, [flags])        -> string
    # pathname.fnmatch?(pattern, [flags])       -> string
    #  
    # See <tt>File.fnmatch</tt>.  Return +true+ if the receiver matches the given
    # pattern.
    def fnmatch(pattern, *flags)
        #This is a stub, used for indexing
    end
    # pathname.fnmatch(pattern, [flags])        -> string
    # pathname.fnmatch?(pattern, [flags])       -> string
    #  
    # See <tt>File.fnmatch</tt>.  Return +true+ if the receiver matches the given
    # pattern.
    def fnmatch?(pattern, *flags)
        #This is a stub, used for indexing
    end
    # See <tt>File.ftype</tt>.  Returns "type" of file ("file", "directory",
    # etc).
    def ftype()
        #This is a stub, used for indexing
    end
    # pathname.make_link(old)
    #  
    # See <tt>File.link</tt>.  Creates a hard link at _pathname_.
    def make_link(old)
        #This is a stub, used for indexing
    end
    # See <tt>File.open</tt>.  Opens the file for reading or writing.
    def open(p1 = v1, p2 = v2, p3 = v3)
        #This is a stub, used for indexing
    end
    # See <tt>File.readlink</tt>.  Read symbolic link.
    def readlink()
        #This is a stub, used for indexing
    end
    # See <tt>File.rename</tt>.  Rename the file.
    def rename(p1)
        #This is a stub, used for indexing
    end
    # See <tt>File.stat</tt>.  Returns a <tt>File::Stat</tt> object.
    def stat()
        #This is a stub, used for indexing
    end
    # See <tt>File.lstat</tt>.
    def lstat()
        #This is a stub, used for indexing
    end
    # pathname.make_symlink(old)
    #  
    # See <tt>File.symlink</tt>.  Creates a symbolic link.
    def make_symlink(old)
        #This is a stub, used for indexing
    end
    # See <tt>File.truncate</tt>.  Truncate the file to +length+ bytes.
    def truncate(p1)
        #This is a stub, used for indexing
    end
    # See <tt>File.utime</tt>.  Update the access and modification times.
    def utime(p1, p2)
        #This is a stub, used for indexing
    end
    # See <tt>File.basename</tt>.  Returns the last component of the path.
    def basename(p1 = v1)
        #This is a stub, used for indexing
    end
    # See <tt>File.dirname</tt>.  Returns all but the last component of the path.
    def dirname()
        #This is a stub, used for indexing
    end
    # See <tt>File.extname</tt>.  Returns the file's extension.
    def extname()
        #This is a stub, used for indexing
    end
    # See <tt>File.expand_path</tt>.
    def expand_path(p1 = v1)
        #This is a stub, used for indexing
    end
    # See <tt>File.split</tt>.  Returns the #dirname and the #basename in an Array.
    def split()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.blockdev?</tt>.
    def blockdev?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.chardev?</tt>.
    def chardev?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.executable?</tt>.
    def executable?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.executable_real?</tt>.
    def executable_real?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.exist?</tt>.
    def exist?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.grpowned?</tt>.
    def grpowned?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.directory?</tt>.
    def directory?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.file?</tt>.
    def file?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.pipe?</tt>.
    def pipe?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.socket?</tt>.
    def socket?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.owned?</tt>.
    def owned?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.readable?</tt>.
    def readable?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.world_readable?</tt>.
    def world_readable?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.readable_real?</tt>.
    def readable_real?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.setuid?</tt>.
    def setuid?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.setgid?</tt>.
    def setgid?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.size</tt>.
    def size()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.size?</tt>.
    def size?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.sticky?</tt>.
    def sticky?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.symlink?</tt>.
    def symlink?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.writable?</tt>.
    def writable?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.world_writable?</tt>.
    def world_writable?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.writable_real?</tt>.
    def writable_real?()
        #This is a stub, used for indexing
    end
    # See <tt>FileTest.zero?</tt>.
    def zero?()
        #This is a stub, used for indexing
    end
    # See <tt>Dir.glob</tt>.  Returns or yields Pathname objects.
    def self.glob(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # See <tt>Dir.getwd</tt>.  Returns the current working directory as a Pathname.
    def self.getwd()
        #This is a stub, used for indexing
    end
    # See <tt>Dir.getwd</tt>.  Returns the current working directory as a Pathname.
    def self.pwd()
        #This is a stub, used for indexing
    end
    # Return the entries (files and subdirectories) in the directory, each as a
    # Pathname object.
    # 
    # The result may contain the current directory #<Pathname:.> and the parent
    # directory #<Pathname:..>.
    def entries()
        #This is a stub, used for indexing
    end
    # See <tt>Dir.mkdir</tt>.  Create the referenced directory.
    def mkdir(p1 = v1)
        #This is a stub, used for indexing
    end
    # See <tt>Dir.rmdir</tt>.  Remove the referenced directory.
    def rmdir()
        #This is a stub, used for indexing
    end
    # See <tt>Dir.open</tt>.
    def opendir()
        #This is a stub, used for indexing
    end
    # Iterates over the entries (files and subdirectories) in the directory.  It
    # yields a Pathname object for each entry.
    # 
    # This method has available since 1.8.1.
    def each_entry()
        #This is a stub, used for indexing
    end
    # Removes a file or directory, using <tt>File.unlink</tt> or
    # <tt>Dir.unlink</tt> as necessary.
    def unlink()
        #This is a stub, used for indexing
    end
    # Removes a file or directory, using <tt>File.unlink</tt> or
    # <tt>Dir.unlink</tt> as necessary.
    def delete()
        #This is a stub, used for indexing
    end
end
