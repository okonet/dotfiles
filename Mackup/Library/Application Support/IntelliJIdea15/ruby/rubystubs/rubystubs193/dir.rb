=begin
 This is a machine generated stub using stdlib-doc for <b>class Dir</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:43 +0400 by IntelliJ Ruby Stubs Generator.
=end

# Objects of class <code>Dir</code> are directory streams representing
# directories in the underlying file system. They provide a variety of
# ways to list directories and their contents. See also
# <code>File</code>.
# 
# The directory used in these examples contains the two regular files
# (<code>config.h</code> and <code>main.rb</code>), the parent
# directory (<code>..</code>), and the directory itself
# (<code>.</code>).
class Dir
    include Enumerable
    # Dir.open( string ) -> aDir
    # Dir.open( string ) {| aDir | block } -> anObject
    #  
    # With no block, <code>open</code> is a synonym for
    # <code>Dir::new</code>. If a block is present, it is passed
    # <i>aDir</i> as a parameter. The directory is closed at the end of
    # the block, and <code>Dir::open</code> returns the value of the
    # block.
    def self.open(*several_variants)
        #This is a stub, used for indexing
    end
    # Dir.foreach( dirname ) {| filename | block }  -> nil
    # Dir.foreach( dirname )                        -> an_enumerator
    #  
    # Calls the block once for each entry in the named directory, passing
    # the filename of each entry as a parameter to the block.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    Dir.foreach("testdir") {|x| puts "Got #{x}" }
    # 
    # <em>produces:</em>
    # 
    #    Got .
    #    Got ..
    #    Got config.h
    #    Got main.rb
    def self.foreach(*several_variants)
        #This is a stub, used for indexing
    end
    # Dir.entries( dirname ) -> array
    #  
    # Returns an array containing all of the filenames in the given
    # directory. Will raise a <code>SystemCallError</code> if the named
    # directory doesn't exist.
    # 
    #    Dir.entries("testdir")   #=> [".", "..", "config.h", "main.rb"]
    def self.entries( dirname )
        #This is a stub, used for indexing
    end
    # Dir.new( string ) -> aDir
    #  
    # Returns a new directory object for the named directory.
    def self.new( string )
        #This is a stub, used for indexing
    end
    # dir.path -> string or nil
    #  
    # Returns the path parameter passed to <em>dir</em>'s constructor.
    # 
    #    d = Dir.new("..")
    #    d.path   #=> ".."
    def path()
        #This is a stub, used for indexing
    end
    # dir.path -> string or nil
    #  
    # Returns the path parameter passed to <em>dir</em>'s constructor.
    # 
    #    d = Dir.new("..")
    #    d.path   #=> ".."
    def to_path()
        #This is a stub, used for indexing
    end
    # dir.inspect -> string
    #  
    # Return a string describing this Dir object.
    def inspect()
        #This is a stub, used for indexing
    end
    # dir.read -> string or nil
    #  
    # Reads the next entry from <em>dir</em> and returns it as a string.
    # Returns <code>nil</code> at the end of the stream.
    # 
    #    d = Dir.new("testdir")
    #    d.read   #=> "."
    #    d.read   #=> ".."
    #    d.read   #=> "config.h"
    def read()
        #This is a stub, used for indexing
    end
    # dir.each { |filename| block }  -> dir
    # dir.each                       -> an_enumerator
    #  
    # Calls the block once for each entry in this directory, passing the
    # filename of each entry as a parameter to the block.
    # 
    # If no block is given, an enumerator is returned instead.
    # 
    #    d = Dir.new("testdir")
    #    d.each  {|x| puts "Got #{x}" }
    # 
    # <em>produces:</em>
    # 
    #    Got .
    #    Got ..
    #    Got config.h
    #    Got main.rb
    def each(*several_variants)
        #This is a stub, used for indexing
    end
    # dir.rewind -> dir
    #  
    # Repositions <em>dir</em> to the first entry.
    # 
    #    d = Dir.new("testdir")
    #    d.read     #=> "."
    #    d.rewind   #=> #<Dir:0x401b3fb0>
    #    d.read     #=> "."
    def rewind()
        #This is a stub, used for indexing
    end
    # dir.pos -> integer
    # dir.tell -> integer
    #  
    # Returns the current position in <em>dir</em>. See also
    # <code>Dir#seek</code>.
    # 
    #    d = Dir.new("testdir")
    #    d.tell   #=> 0
    #    d.read   #=> "."
    #    d.tell   #=> 12
    def tell()
        #This is a stub, used for indexing
    end
    # dir.seek( integer ) -> dir
    #  
    # Seeks to a particular location in <em>dir</em>. <i>integer</i>
    # must be a value returned by <code>Dir#tell</code>.
    # 
    #    d = Dir.new("testdir")   #=> #<Dir:0x401b3c40>
    #    d.read                   #=> "."
    #    i = d.tell               #=> 12
    #    d.read                   #=> ".."
    #    d.seek(i)                #=> #<Dir:0x401b3c40>
    #    d.read                   #=> ".."
    def seek( integer )
        #This is a stub, used for indexing
    end
    # dir.pos -> integer
    # dir.tell -> integer
    #  
    # Returns the current position in <em>dir</em>. See also
    # <code>Dir#seek</code>.
    # 
    #    d = Dir.new("testdir")
    #    d.tell   #=> 0
    #    d.read   #=> "."
    #    d.tell   #=> 12
    def pos()
        #This is a stub, used for indexing
    end
    # dir.pos( integer ) -> integer
    #  
    # Synonym for <code>Dir#seek</code>, but returns the position
    # parameter.
    # 
    #    d = Dir.new("testdir")   #=> #<Dir:0x401b3c40>
    #    d.read                   #=> "."
    #    i = d.pos                #=> 12
    #    d.read                   #=> ".."
    #    d.pos = i                #=> 12
    #    d.read                   #=> ".."
    def pos=(p1)
        #This is a stub, used for indexing
    end
    # dir.close -> nil
    #  
    # Closes the directory stream. Any further attempts to access
    # <em>dir</em> will raise an <code>IOError</code>.
    # 
    #    d = Dir.new("testdir")
    #    d.close   #=> nil
    def close()
        #This is a stub, used for indexing
    end
    # Dir.chdir( [ string] ) -> 0
    # Dir.chdir( [ string] ) {| path | block }  -> anObject
    #  
    # Changes the current working directory of the process to the given
    # string. When called without an argument, changes the directory to
    # the value of the environment variable <code>HOME</code>, or
    # <code>LOGDIR</code>. <code>SystemCallError</code> (probably
    # <code>Errno::ENOENT</code>) if the target directory does not exist.
    # 
    # If a block is given, it is passed the name of the new current
    # directory, and the block is executed with that as the current
    # directory. The original working directory is restored when the block
    # exits. The return value of <code>chdir</code> is the value of the
    # block. <code>chdir</code> blocks can be nested, but in a
    # multi-threaded program an error will be raised if a thread attempts
    # to open a <code>chdir</code> block while another thread has one
    # open.
    # 
    #    Dir.chdir("/var/spool/mail")
    #    puts Dir.pwd
    #    Dir.chdir("/tmp") do
    #      puts Dir.pwd
    #      Dir.chdir("/usr") do
    #        puts Dir.pwd
    #      end
    #      puts Dir.pwd
    #    end
    #    puts Dir.pwd
    # 
    # <em>produces:</em>
    # 
    #    /var/spool/mail
    #    /tmp
    #    /usr
    #    /tmp
    #    /var/spool/mail
    def self.chdir(*several_variants)
        #This is a stub, used for indexing
    end
    # Dir.getwd -> string
    # Dir.pwd -> string
    #  
    # Returns the path to the current working directory of this process as
    # a string.
    # 
    #    Dir.chdir("/tmp")   #=> 0
    #    Dir.getwd           #=> "/tmp"
    def self.getwd()
        #This is a stub, used for indexing
    end
    # Dir.getwd -> string
    # Dir.pwd -> string
    #  
    # Returns the path to the current working directory of this process as
    # a string.
    # 
    #    Dir.chdir("/tmp")   #=> 0
    #    Dir.getwd           #=> "/tmp"
    def self.pwd()
        #This is a stub, used for indexing
    end
    # Dir.chroot( string ) -> 0
    #  
    # Changes this process's idea of the file system root. Only a
    # privileged process may make this call. Not available on all
    # platforms. On Unix systems, see <code>chroot(2)</code> for more
    # information.
    def self.chroot( string )
        #This is a stub, used for indexing
    end
    # Dir.mkdir( string [, integer] ) -> 0
    #  
    # Makes a new directory named by <i>string</i>, with permissions
    # specified by the optional parameter <i>anInteger</i>. The
    # permissions may be modified by the value of
    # <code>File::umask</code>, and are ignored on NT. Raises a
    # <code>SystemCallError</code> if the directory cannot be created. See
    # also the discussion of permissions in the class documentation for
    # <code>File</code>.
    # 
    #   Dir.mkdir(File.join(Dir.home, ".foo"), 0700) #=> 0
    def self.mkdir(string, *permissions_int)
        #This is a stub, used for indexing
    end
    # Dir.delete( string ) -> 0
    # Dir.rmdir( string ) -> 0
    # Dir.unlink( string ) -> 0
    #  
    # Deletes the named directory. Raises a subclass of
    # <code>SystemCallError</code> if the directory isn't empty.
    def self.rmdir( string )
        #This is a stub, used for indexing
    end
    # Dir.delete( string ) -> 0
    # Dir.rmdir( string ) -> 0
    # Dir.unlink( string ) -> 0
    #  
    # Deletes the named directory. Raises a subclass of
    # <code>SystemCallError</code> if the directory isn't empty.
    def self.delete( string )
        #This is a stub, used for indexing
    end
    # Dir.delete( string ) -> 0
    # Dir.rmdir( string ) -> 0
    # Dir.unlink( string ) -> 0
    #  
    # Deletes the named directory. Raises a subclass of
    # <code>SystemCallError</code> if the directory isn't empty.
    def self.unlink( string )
        #This is a stub, used for indexing
    end
    # Dir.home()       -> "/home/me"
    # Dir.home("root") -> "/root"
    #  
    # Returns the home directory of the current user or the named user
    # if given.
    def self.home(*several_variants)
        #This is a stub, used for indexing
    end
    # Dir.glob( pattern, [flags] ) -> array
    # Dir.glob( pattern, [flags] ) {| filename | block }  -> nil
    #  
    # Returns the filenames found by expanding <i>pattern</i> which is
    # an +Array+ of the patterns or the pattern +String+, either as an
    # <i>array</i> or as parameters to the block. Note that this pattern
    # is not a regexp (it's closer to a shell glob). See
    # <code>File::fnmatch</code> for the meaning of the <i>flags</i>
    # parameter. Note that case sensitivity depends on your system (so
    # <code>File::FNM_CASEFOLD</code> is ignored), as does the order
    # in which the results are returned.
    # 
    # <code>*</code>::        Matches any file. Can be restricted by
    #                         other values in the glob. <code>*</code>
    #                         will match all files; <code>c*</code> will
    #                         match all files beginning with
    #                         <code>c</code>; <code>*c</code> will match
    #                         all files ending with <code>c</code>; and
    #                         <code>\*c\*</code> will match all files that
    #                         have <code>c</code> in them (including at
    #                         the beginning or end). Equivalent to
    #                         <code>/ .* /x</code> in regexp. Note, this
    #                         will not match Unix-like hidden files (dotfiles).
    #                         In order to include those in the match results,
    #                         you must use something like "{*,.*}".
    # <code>**</code>::       Matches directories recursively.
    # <code>?</code>::        Matches any one character. Equivalent to
    #                         <code>/.{1}/</code> in regexp.
    # <code>[set]</code>::    Matches any one character in +set+.
    #                         Behaves exactly like character sets in
    #                         Regexp, including set negation
    #                         (<code>[^a-z]</code>).
    # <code>{p,q}</code>::    Matches either literal <code>p</code> or
    #                         literal <code>q</code>. Matching literals
    #                         may be more than one character in length.
    #                         More than two literals may be specified.
    #                         Equivalent to pattern alternation in
    #                         regexp.
    # <code>\</code>::        Escapes the next metacharacter.
    #                         Note that this means you cannot use backslash in windows
    #                         as part of a glob, i.e. Dir["c:\\foo*"] will not work
    #                         use Dir["c:/foo*"] instead
    # 
    #    Dir["config.?"]                     #=> ["config.h"]
    #    Dir.glob("config.?")                #=> ["config.h"]
    #    Dir.glob("*.[a-z][a-z]")            #=> ["main.rb"]
    #    Dir.glob("*.[^r]*")                 #=> ["config.h"]
    #    Dir.glob("*.{rb,h}")                #=> ["main.rb", "config.h"]
    #    Dir.glob("*")                       #=> ["config.h", "main.rb"]
    #    Dir.glob("*", File::FNM_DOTMATCH)   #=> [".", "..", "config.h", "main.rb"]
    # 
    #    rbfiles = File.join("**", "*.rb")
    #    Dir.glob(rbfiles)                   #=> ["main.rb",
    #                                        #    "lib/song.rb",
    #                                        #    "lib/song/karaoke.rb"]
    #    libdirs = File.join("**", "lib")
    #    Dir.glob(libdirs)                   #=> ["lib"]
    # 
    #    librbfiles = File.join("**", "lib", "**", "*.rb")
    #    Dir.glob(librbfiles)                #=> ["lib/song.rb",
    #                                        #    "lib/song/karaoke.rb"]
    # 
    #    librbfiles = File.join("**", "lib", "*.rb")
    #    Dir.glob(librbfiles)                #=> ["lib/song.rb"]
    def self.glob(*several_variants)
        #This is a stub, used for indexing
    end
    # Dir[ array ]                 -> array
    # Dir[ string [, string ...] ] -> array
    #  
    # Equivalent to calling
    # <code>Dir.glob(</code><i>array,</i><code>0)</code> and
    # <code>Dir.glob([</code><i>string,...</i><code>],0)</code>.
    def self.[](*several_variants)
        #This is a stub, used for indexing
    end
    # File.directory?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a directory,
    # or a symlink that points at a directory, and <code>false</code>
    # otherwise.
    # 
    #    File.directory?(".")
    def self.exist?(p1)
        #This is a stub, used for indexing
    end
    # File.directory?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a directory,
    # or a symlink that points at a directory, and <code>false</code>
    # otherwise.
    # 
    #    File.directory?(".")
    def self.exists?(p1)
        #This is a stub, used for indexing
    end
end
