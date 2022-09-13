=begin
 This is a machine generated stub using stdlib-doc for <b>module FileTest</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>FileTest</code> implements file test operations similar to
# those used in <code>File::Stat</code>. It exists as a standalone
# module, and its methods are also insinuated into the <code>File</code>
# class. (Note that this is not done by inclusion: the interpreter cheats).
module FileTest
    # File.directory?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a directory,
    # or a symlink that points at a directory, and <code>false</code>
    # otherwise.
    # 
    # _file_name_ can be an IO object.
    # 
    #    File.directory?(".")
    def directory?(file_name)
        #This is a stub, used for indexing
    end
    # File.exist?(file_name)    ->  true or false
    # File.exists?(file_name)   ->  true or false
    #  
    # Return <code>true</code> if the named file exists.
    # 
    # _file_name_ can be an IO object.
    # 
    # "file exists" means that stat() or fstat() system call is successful.
    def exist?(file_name)
        #This is a stub, used for indexing
    end
    def exists?(p1)
        #This is a stub, used for indexing
    end
    # File.readable?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is readable by the effective
    # user id of this process.
    def readable?(file_name)
        #This is a stub, used for indexing
    end
    # File.readable_real?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is readable by the real
    # user id of this process.
    def readable_real?(file_name)
        #This is a stub, used for indexing
    end
    # File.world_readable?(file_name)   -> fixnum or nil
    #  
    # If <i>file_name</i> is readable by others, returns an integer
    # representing the file permission bits of <i>file_name</i>. Returns
    # <code>nil</code> otherwise. The meaning of the bits is platform
    # dependent; on Unix systems, see <code>stat(2)</code>.
    # 
    # _file_name_ can be an IO object.
    # 
    #    File.world_readable?("/etc/passwd")           #=> 420
    #    m = File.world_readable?("/etc/passwd")
    #    sprintf("%o", m)                              #=> "644"
    def world_readable?(file_name)
        #This is a stub, used for indexing
    end
    # File.writable?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is writable by the effective
    # user id of this process.
    def writable?(file_name)
        #This is a stub, used for indexing
    end
    # File.writable_real?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is writable by the real
    # user id of this process.
    def writable_real?(file_name)
        #This is a stub, used for indexing
    end
    # File.world_writable?(file_name)   -> fixnum or nil
    #  
    # If <i>file_name</i> is writable by others, returns an integer
    # representing the file permission bits of <i>file_name</i>. Returns
    # <code>nil</code> otherwise. The meaning of the bits is platform
    # dependent; on Unix systems, see <code>stat(2)</code>.
    # 
    # _file_name_ can be an IO object.
    # 
    #    File.world_writable?("/tmp")                  #=> 511
    #    m = File.world_writable?("/tmp")
    #    sprintf("%o", m)                              #=> "777"
    def world_writable?(file_name)
        #This is a stub, used for indexing
    end
    # File.executable?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is executable by the effective
    # user id of this process.
    def executable?(file_name)
        #This is a stub, used for indexing
    end
    # File.executable_real?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file is executable by the real
    # user id of this process.
    def executable_real?(file_name)
        #This is a stub, used for indexing
    end
    # File.file?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file exists and is a
    # regular file.
    # 
    # _file_name_ can be an IO object.
    def file?(file_name)
        #This is a stub, used for indexing
    end
    # File.zero?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file exists and has
    # a zero size.
    # 
    # _file_name_ can be an IO object.
    def zero?(file_name)
        #This is a stub, used for indexing
    end
    # File.size?(file_name)   -> Integer or nil
    #  
    # Returns +nil+ if +file_name+ doesn't exist or has zero size, the size of the
    # file otherwise.
    # 
    # _file_name_ can be an IO object.
    def size?(file_name)
        #This is a stub, used for indexing
    end
    # File.size(file_name)   -> integer
    #  
    # Returns the size of <code>file_name</code>.
    # 
    # _file_name_ can be an IO object.
    def size(file_name)
        #This is a stub, used for indexing
    end
    # File.owned?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file exists and the
    # effective used id of the calling process is the owner of
    # the file.
    # 
    # _file_name_ can be an IO object.
    def owned?(file_name)
        #This is a stub, used for indexing
    end
    # File.grpowned?(file_name)   -> true or false
    #  
    # Returns <code>true</code> if the named file exists and the
    # effective group id of the calling process is the owner of
    # the file. Returns <code>false</code> on Windows.
    # 
    # _file_name_ can be an IO object.
    def grpowned?(file_name)
        #This is a stub, used for indexing
    end
    # File.pipe?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a pipe.
    # 
    # _file_name_ can be an IO object.
    def pipe?(file_name)
        #This is a stub, used for indexing
    end
    # File.symlink?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a symbolic link.
    def symlink?(file_name)
        #This is a stub, used for indexing
    end
    # File.socket?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a socket.
    # 
    # _file_name_ can be an IO object.
    def socket?(file_name)
        #This is a stub, used for indexing
    end
    # File.blockdev?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a block device.
    # 
    # _file_name_ can be an IO object.
    def blockdev?(file_name)
        #This is a stub, used for indexing
    end
    # File.chardev?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file is a character device.
    # 
    # _file_name_ can be an IO object.
    def chardev?(file_name)
        #This is a stub, used for indexing
    end
    # File.setuid?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file has the setuid bit set.
    def setuid?(file_name)
        #This is a stub, used for indexing
    end
    # File.setgid?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file has the setgid bit set.
    def setgid?(file_name)
        #This is a stub, used for indexing
    end
    # File.sticky?(file_name)   ->  true or false
    #  
    # Returns <code>true</code> if the named file has the sticky bit set.
    def sticky?(file_name)
        #This is a stub, used for indexing
    end
    # File.identical?(file_1, file_2)   ->  true or false
    #  
    # Returns <code>true</code> if the named files are identical.
    # 
    # _file_1_ and _file_2_ can be an IO object.
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
    def identical?(file_1, file_2)
        #This is a stub, used for indexing
    end
end
