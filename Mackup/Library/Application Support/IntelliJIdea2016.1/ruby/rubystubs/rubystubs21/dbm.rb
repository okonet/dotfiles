=begin
 This is a machine generated stub using stdlib-doc for <b>class DBM</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# == Introduction
# 
# The DBM class provides a wrapper to a Unix-style
# {dbm}[http://en.wikipedia.org/wiki/Dbm] or Database Manager library.
# 
# Dbm databases do not have tables or columns; they are simple key-value
# data stores, like a Ruby Hash except not resident in RAM. Keys and values
# must be strings.
# 
# The exact library used depends on how Ruby was compiled. It could be any
# of the following:
# 
# - The original ndbm library is released in 4.3BSD.
#   It is based on dbm library in Unix Version 7 but has different API to
#   support multiple databases in a process.
# - {Berkeley DB}[http://en.wikipedia.org/wiki/Berkeley_DB] versions
#   1 thru 5, also known as BDB and Sleepycat DB, now owned by Oracle
#   Corporation.
# - Berkeley DB 1.x, still found in 4.4BSD derivatives (FreeBSD, OpenBSD, etc).
# - {gdbm}[http://www.gnu.org/software/gdbm/], the GNU implementation of dbm.
# - {qdbm}[http://fallabs.com/qdbm/index.html], another open source
#   reimplementation of dbm.
# 
# All of these dbm implementations have their own Ruby interfaces
# available, which provide richer (but varying) APIs.
# 
# == Cautions
# 
# Before you decide to use DBM, there are some issues you should consider:
# 
# - Each implementation of dbm has its own file format. Generally, dbm
#   libraries will not read each other's files. This makes dbm files
#   a bad choice for data exchange.
# 
# - Even running the same OS and the same dbm implementation, the database
#   file format may depend on the CPU architecture. For example, files may
#   not be portable between PowerPC and 386, or between 32 and 64 bit Linux.
# 
# - Different versions of Berkeley DB use different file formats. A change to
#   the OS may therefore break DBM access to existing files.
# 
# - Data size limits vary between implementations. Original Berkeley DB was
#   limited to 2GB of data. Dbm libraries also sometimes limit the total
#   size of a key/value pair, and the total size of all the keys that hash
#   to the same value. These limits can be as little as 512 bytes. That said,
#   gdbm and recent versions of Berkeley DB do away with these limits.
# 
# Given the above cautions, DBM is not a good choice for long term storage of
# important data. It is probably best used as a fast and easy alternative
# to a Hash for processing large amounts of data.
# 
# == Example
# 
#  require 'dbm'
#  db = DBM.open('rfcs', 666, DBM::WRCREAT)
#  db['822'] = 'Standard for the Format of ARPA Internet Text Messages'
#  db['1123'] = 'Requirements for Internet Hosts - Application and Support'
#  db['3068'] = 'An Anycast Prefix for 6to4 Relay Routers'
#  puts db['822']
class DBM
    include Enumerable
    # Indicates that dbm_open() should open the database in read-only mode   
    READER = nil #value is unknown, used for indexing.
    # Indicates that dbm_open() should open the database in read/write mode   
    WRITER = nil #value is unknown, used for indexing.
    # Indicates that dbm_open() should open the database in read/write mode,
    # and create it if it does not already exist
    WRCREAT = nil #value is unknown, used for indexing.
    # Indicates that dbm_open() should open the database in read/write mode,
    # create it if it does not already exist, and delete all contents if it
    # does already exist.
    NEWDB = nil #value is unknown, used for indexing.
    # 45)"
    # - "QDBM 1.8.78"
    VERSION = nil #value is unknown, used for indexing.
    # DBM.open(filename[, mode[, flags]]) -> dbm
    # DBM.open(filename[, mode[, flags]]) {|dbm| block}
    #  
    # Open a dbm database and yields it if a block is given. See also
    # <code>DBM.new</code>.
    def self.open(*several_variants)
        #This is a stub, used for indexing
    end
    # DBM.new(filename[, mode[, flags]]) -> dbm
    #  
    # Open a dbm database with the specified name, which can include a directory
    # path. Any file extensions needed will be supplied automatically by the dbm
    # library. For example, Berkeley DB appends '.db', and GNU gdbm uses two
    # physical files with extensions '.dir' and '.pag'.
    # 
    # The mode should be an integer, as for Unix chmod.
    # 
    # Flags should be one of READER, WRITER, WRCREAT or NEWDB.
    def self.new(p1, p2 = v2, p3 = v3)
        #This is a stub, used for indexing
    end
    # dbm.close
    #  
    # Closes the database.
    def close()
        #This is a stub, used for indexing
    end
    # dbm.closed? -> true or false
    #  
    # Returns true if the database is closed, false otherwise.
    def closed?()
        #This is a stub, used for indexing
    end
    # dbm[key] -> string value or nil
    #  
    # Return a value from the database by locating the key string
    # provided.  If the key is not found, returns nil.
    def [] key
        #This is a stub, used for indexing
    end
    # dbm.fetch(key[, ifnone]) -> value
    #  
    # Return a value from the database by locating the key string
    # provided.  If the key is not found, returns +ifnone+. If +ifnone+
    # is not given, raises IndexError.
    def fetch(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # dbm.store(key, value) -> value
    # dbm[key] = value
    #  
    # Stores the specified string value in the database, indexed via the
    # string key provided.
    def []=(key, value)
        #This is a stub, used for indexing
    end
    # dbm.store(key, value) -> value
    # dbm[key] = value
    #  
    # Stores the specified string value in the database, indexed via the
    # string key provided.
    def store(key, value)
        #This is a stub, used for indexing
    end
    # dbm.key(value) -> string
    #  
    # Returns the key for the specified value.
    def key(value)
        #This is a stub, used for indexing
    end
    # dbm.select {|key, value| block} -> array
    #  
    # Returns a new array consisting of the [key, value] pairs for which the code
    # block returns true.
    def select()
        #This is a stub, used for indexing
    end
    # dbm.values_at(key, ...) -> Array
    #  
    # Returns an array containing the values associated with the given keys.
    def values_at(key, *smth)
        #This is a stub, used for indexing
    end
    # dbm.length -> integer
    # dbm.size -> integer
    #  
    # Returns the number of entries in the database.
    def length()
        #This is a stub, used for indexing
    end
    # dbm.length -> integer
    # dbm.size -> integer
    #  
    # Returns the number of entries in the database.
    def size()
        #This is a stub, used for indexing
    end
    # dbm.empty?
    #  
    # Returns true if the database is empty, false otherwise.
    def empty?()
        #This is a stub, used for indexing
    end
    # dbm.each_pair {|key,value| block} -> self
    #  
    # Calls the block once for each [key, value] pair in the database.
    # Returns self.
    def each _pair
        #This is a stub, used for indexing
    end
    # dbm.each_value {|value| block} -> self
    #  
    # Calls the block once for each value string in the database. Returns self.
    def each_value()
        #This is a stub, used for indexing
    end
    # dbm.each_key {|key| block} -> self
    #  
    # Calls the block once for each key string in the database. Returns self.
    def each_key()
        #This is a stub, used for indexing
    end
    # dbm.each_pair {|key,value| block} -> self
    #  
    # Calls the block once for each [key, value] pair in the database.
    # Returns self.
    def each_pair()
        #This is a stub, used for indexing
    end
    # dbm.keys -> array
    #  
    # Returns an array of all the string keys in the database.
    def keys()
        #This is a stub, used for indexing
    end
    # dbm.values -> array
    #  
    # Returns an array of all the string values in the database.
    def values()
        #This is a stub, used for indexing
    end
    # dbm.shift() -> [key, value]
    #  
    # Removes a [key, value] pair from the database, and returns it.
    # If the database is empty, returns nil.
    # The order in which values are removed/returned is not guaranteed.
    def shift()
        #This is a stub, used for indexing
    end
    # dbm.delete(key)
    #  
    # Deletes an entry from the database.
    def delete(key)
        #This is a stub, used for indexing
    end
    # dbm.reject! {|key, value| block} -> self
    # dbm.delete_if {|key, value| block} -> self
    #  
    # Deletes all entries for which the code block returns true.
    # Returns self.
    def delete_if()
        #This is a stub, used for indexing
    end
    # dbm.reject! {|key, value| block} -> self
    # dbm.delete_if {|key, value| block} -> self
    #  
    # Deletes all entries for which the code block returns true.
    # Returns self.
    def reject!()
        #This is a stub, used for indexing
    end
    # dbm.reject {|key,value| block} -> Hash
    #  
    # Converts the contents of the database to an in-memory Hash, then calls
    # Hash#reject with the specified code block, returning a new Hash.
    def reject()
        #This is a stub, used for indexing
    end
    # dbm.clear
    #  
    # Deletes all data from the database.
    def clear()
        #This is a stub, used for indexing
    end
    # dbm.invert -> hash
    #  
    # Returns a Hash (not a DBM database) created by using each value in the
    # database as a key, with the corresponding key as its value.
    def invert()
        #This is a stub, used for indexing
    end
    # dbm.update(obj)
    #  
    # Updates the database with multiple values from the specified object.
    # Takes any object which implements the each_pair method, including
    # Hash and DBM objects.
    def update(obj)
        #This is a stub, used for indexing
    end
    # dbm.replace(obj)
    #  
    # Replaces the contents of the database with the contents of the specified
    # object. Takes any object which implements the each_pair method, including
    # Hash and DBM objects.
    def replace(obj)
        #This is a stub, used for indexing
    end
    # dbm.include?(key) -> boolean
    # dbm.has_key?(key) -> boolean
    # dbm.member?(key) -> boolean
    # dbm.key?(key) -> boolean
    #  
    # Returns true if the database contains the specified key, false otherwise.
    def include?(key)
        #This is a stub, used for indexing
    end
    # dbm.include?(key) -> boolean
    # dbm.has_key?(key) -> boolean
    # dbm.member?(key) -> boolean
    # dbm.key?(key) -> boolean
    #  
    # Returns true if the database contains the specified key, false otherwise.
    def has_key?(key)
        #This is a stub, used for indexing
    end
    # dbm.include?(key) -> boolean
    # dbm.has_key?(key) -> boolean
    # dbm.member?(key) -> boolean
    # dbm.key?(key) -> boolean
    #  
    # Returns true if the database contains the specified key, false otherwise.
    def member?(key)
        #This is a stub, used for indexing
    end
    # dbm.has_value?(value) -> boolean
    # dbm.value?(value) -> boolean
    #  
    # Returns true if the database contains the specified string value, false
    # otherwise.
    def has_value?(value)
        #This is a stub, used for indexing
    end
    # dbm.include?(key) -> boolean
    # dbm.has_key?(key) -> boolean
    # dbm.member?(key) -> boolean
    # dbm.key?(key) -> boolean
    #  
    # Returns true if the database contains the specified key, false otherwise.
    def key?(key)
        #This is a stub, used for indexing
    end
    # dbm.has_value?(value) -> boolean
    # dbm.value?(value) -> boolean
    #  
    # Returns true if the database contains the specified string value, false
    # otherwise.
    def value?(value)
        #This is a stub, used for indexing
    end
    # dbm.to_a -> array
    #  
    # Converts the contents of the database to an array of [key, value] arrays,
    # and returns it.
    def to_a()
        #This is a stub, used for indexing
    end
    # dbm.to_hash -> hash
    #  
    # Converts the contents of the database to an in-memory Hash object, and
    # returns it.
    def to_hash()
        #This is a stub, used for indexing
    end
end
