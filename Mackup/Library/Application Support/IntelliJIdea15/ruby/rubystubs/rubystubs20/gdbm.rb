=begin
 This is a machine generated stub using stdlib-doc for <b>class GDBM</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

# == Summary
# 
# Ruby extension for GNU dbm (gdbm) -- a simple database engine for storing
# key-value pairs on disk.
# 
# == Description
# 
# GNU dbm is a library for simple databases. A database is a file that stores
# key-value pairs. Gdbm allows the user to store, retrieve, and delete data by
# key. It furthermore allows a non-sorted traversal of all key-value pairs.
# A gdbm database thus provides the same functionality as a hash. As
# with objects of the Hash class, elements can be accessed with <tt>[]</tt>.
# Furthermore, GDBM mixes in the Enumerable module, thus providing convenient
# methods such as #find, #collect, #map, etc.
# 
# A process is allowed to open several different databases at the same time.
# A process can open a database as a "reader" or a "writer". Whereas a reader
# has only read-access to the database, a writer has read- and write-access.
# A database can be accessed either by any number of readers or by exactly one
# writer at the same time.
# 
# == Examples
# 
# 1. Opening/creating a database, and filling it with some entries:
# 
#      require 'gdbm'
# 
#      gdbm = GDBM.new("fruitstore.db")
#      gdbm["ananas"]    = "3"
#      gdbm["banana"]    = "8"
#      gdbm["cranberry"] = "4909"
#      gdbm.close
# 
# 2. Reading out a database:
# 
#      require 'gdbm'
# 
#      gdbm = GDBM.new("fruitstore.db")
#      gdbm.each_pair do |key, value|
#        print "#{key}: #{value}\n"
#      end
#      gdbm.close
# 
#    produces
# 
#      banana: 8
#      ananas: 3
#      cranberry: 4909
# 
# == Links
# 
# * http://www.gnu.org/software/gdbm/
class GDBM
    include Enumerable
    # open database as a reader   
    READER = nil #value is unknown, used for indexing.
    # open database as a writer   
    WRITER = nil #value is unknown, used for indexing.
    # open database as a writer; if the database does not exist, create a new one   
    WRCREAT = nil #value is unknown, used for indexing.
    # open database as a writer; overwrite any existing databases    
    NEWDB = nil #value is unknown, used for indexing.
    # flag for #new and #open. this flag is obsolete for gdbm >= 1.8   
    FAST = nil #value is unknown, used for indexing.
    # flag for #new and #open. only for gdbm >= 1.8   
    SYNC = nil #value is unknown, used for indexing.
    # flag for #new and #open   
    NOLOCK = nil #value is unknown, used for indexing.
    # version of the gdbm library  
    VERSION = nil #value is unknown, used for indexing.
    # GDBM.open(filename, mode = 0666, flags = nil)
    # GDBM.open(filename, mode = 0666, flags = nil) { |gdbm| ... }
    #  
    # If called without a block, this is synonymous to GDBM::new.
    # If a block is given, the new GDBM instance will be passed to the block
    # as a parameter, and the corresponding database file will be closed
    # after the execution of the block code has been finished.
    # 
    # Example for an open call with a block:
    # 
    #   require 'gdbm'
    #   GDBM.open("fruitstore.db") do |gdbm|
    #     gdbm.each_pair do |key, value|
    #       print "#{key}: #{value}\n"
    #     end
    #   end
    def self.open(*several_variants)
        #This is a stub, used for indexing
    end
    # GDBM.new(filename, mode = 0666, flags = nil)
    #  
    # Creates a new GDBM instance by opening a gdbm file named _filename_.
    # If the file does not exist, a new file with file mode _mode_ will be
    # created. _flags_ may be one of the following:
    # * *READER*  - open as a reader
    # * *WRITER*  - open as a writer
    # * *WRCREAT* - open as a writer; if the database does not exist, create a new one
    # * *NEWDB*   - open as a writer; overwrite any existing databases
    # 
    # The values *WRITER*, *WRCREAT* and *NEWDB* may be combined with the following
    # values by bitwise or:
    # * *SYNC*    - cause all database operations to be synchronized to the disk
    # * *NOLOCK*  - do not lock the database file
    # 
    # If no _flags_ are specified, the GDBM object will try to open the database
    # file as a writer and will create it if it does not already exist
    # (cf. flag <tt>WRCREAT</tt>). If this fails (for instance, if another process
    # has already opened the database as a reader), it will try to open the
    # database file as a reader (cf. flag <tt>READER</tt>).
    def self.new(filename, mode = 0666, flags = nil)
        #This is a stub, used for indexing
    end
    # gdbm.close -> nil
    #  
    # Closes the associated database file.
    def close()
        #This is a stub, used for indexing
    end
    # gdbm.closed?  -> true or false
    #  
    # Returns true if the associated database file has been closed.
    def closed?()
        #This is a stub, used for indexing
    end
    # gdbm[key] -> value
    #  
    # Retrieves the _value_ corresponding to _key_.
    def [] key
        #This is a stub, used for indexing
    end
    # gdbm.fetch(key [, default]) -> value
    #  
    # Retrieves the _value_ corresponding to _key_. If there is no value
    # associated with _key_, _default_ will be returned instead.
    def fetch(p1, p2 = v2)
        #This is a stub, used for indexing
    end
    # gdbm[key]= value -> value
    # gdbm.store(key, value) -> value
    #  
    # Associates the value _value_ with the specified _key_.
    def []=(key, value)
        #This is a stub, used for indexing
    end
    # gdbm[key]= value -> value
    # gdbm.store(key, value) -> value
    #  
    # Associates the value _value_ with the specified _key_.
    def store(key, value)
        #This is a stub, used for indexing
    end
    # gdbm.key(value) -> key
    #  
    # Returns the _key_ for a given _value_. If several keys may map to the
    # same value, the key that is found first will be returned.
    def key(value)
        #This is a stub, used for indexing
    end
    # gdbm.select { |key, value| block } -> array
    #  
    # Returns a new array of all key-value pairs of the database for which _block_
    # evaluates to true.
    def select()
        #This is a stub, used for indexing
    end
    # gdbm.values_at(key, ...) -> array
    #  
    # Returns an array of the values associated with each specified _key_.
    def values_at(key, *smth)
        #This is a stub, used for indexing
    end
    # gdbm.length -> fixnum
    # gdbm.size -> fixnum
    #  
    # Returns the number of key-value pairs in this database.
    def length()
        #This is a stub, used for indexing
    end
    # gdbm.length -> fixnum
    # gdbm.size -> fixnum
    #  
    # Returns the number of key-value pairs in this database.
    def size()
        #This is a stub, used for indexing
    end
    # gdbm.empty? -> true or false
    #  
    # Returns true if the database is empty.
    def empty?()
        #This is a stub, used for indexing
    end
    # gdbm.each_pair { |key, value| block } -> gdbm
    #  
    # Executes _block_ for each key in the database, passing the _key_ and the
    # correspoding _value_ as a parameter.
    def each _pair
        #This is a stub, used for indexing
    end
    # gdbm.each_value { |value| block } -> gdbm
    #  
    # Executes _block_ for each key in the database, passing the corresponding
    # _value_ as a parameter.
    def each_value()
        #This is a stub, used for indexing
    end
    # gdbm.each_key { |key| block } -> gdbm
    #  
    # Executes _block_ for each key in the database, passing the
    # _key_ as a parameter.
    def each_key()
        #This is a stub, used for indexing
    end
    # gdbm.each_pair { |key, value| block } -> gdbm
    #  
    # Executes _block_ for each key in the database, passing the _key_ and the
    # correspoding _value_ as a parameter.
    def each_pair()
        #This is a stub, used for indexing
    end
    # gdbm.keys -> array
    #  
    # Returns an array of all keys of this database.
    def keys()
        #This is a stub, used for indexing
    end
    # gdbm.values -> array
    #  
    # Returns an array of all values of this database.
    def values()
        #This is a stub, used for indexing
    end
    # gdbm.shift -> (key, value) or nil
    #  
    # Removes a key-value-pair from this database and returns it as a
    # two-item array [ _key_, _value_ ]. Returns nil if the database is empty.
    def shift()
        #This is a stub, used for indexing
    end
    # gdbm.delete(key) -> value or nil
    #  
    # Removes the key-value-pair with the specified _key_ from this database and
    # returns the corresponding _value_. Returns nil if the database is empty.
    def delete(key)
        #This is a stub, used for indexing
    end
    # gdbm.delete_if { |key, value| block } -> gdbm
    # gdbm.reject! { |key, value| block } -> gdbm
    #  
    # Deletes every key-value pair from _gdbm_ for which _block_ evaluates to true.
    def delete_if()
        #This is a stub, used for indexing
    end
    # gdbm.delete_if { |key, value| block } -> gdbm
    # gdbm.reject! { |key, value| block } -> gdbm
    #  
    # Deletes every key-value pair from _gdbm_ for which _block_ evaluates to true.
    def reject!()
        #This is a stub, used for indexing
    end
    # gdbm.reject { |key, value| block } -> hash
    #  
    # Returns a hash copy of _gdbm_ where all key-value pairs from _gdbm_ for
    # which _block_ evaluates to true are removed. See also: #delete_if
    def reject()
        #This is a stub, used for indexing
    end
    # gdbm.clear -> gdbm
    #  
    # Removes all the key-value pairs within _gdbm_.
    def clear()
        #This is a stub, used for indexing
    end
    # gdbm.invert  -> hash
    #  
    # Returns a hash created by using _gdbm_'s values as keys, and the keys
    # as values.
    def invert()
        #This is a stub, used for indexing
    end
    # gdbm.update(other) -> gdbm
    #  
    # Adds the key-value pairs of _other_ to _gdbm_, overwriting entries with
    # duplicate keys with those from _other_. _other_ must have an each_pair
    # method.
    def update(other)
        #This is a stub, used for indexing
    end
    # gdbm.replace(other) -> gdbm
    #  
    # Replaces the content of _gdbm_ with the key-value pairs of _other_.
    # _other_ must have an each_pair method.
    def replace(other)
        #This is a stub, used for indexing
    end
    # gdbm.reorganize -> gdbm
    #  
    # Reorganizes the database file. This operation removes reserved space of
    # elements that have already been deleted. It is only useful after a lot of
    # deletions in the database.
    def reorganize()
        #This is a stub, used for indexing
    end
    # gdbm.sync -> gdbm
    #  
    # Unless the _gdbm_ object has been opened with the *SYNC* flag, it is not
    # guarenteed that database modification operations are immediately applied to
    # the database file. This method ensures that all recent modifications
    # to the database are written to the file. Blocks until all writing operations
    # to the disk have been finished.
    def sync()
        #This is a stub, used for indexing
    end
    # gdbm.cachesize = size -> size
    #  
    # Sets the size of the internal bucket cache to _size_.
    def cachesize= size
        #This is a stub, used for indexing
    end
    # gdbm.fastmode = boolean -> boolean
    #  
    # Turns the database's fast mode on or off. If fast mode is turned on, gdbm
    # does not wait for writes to be flushed to the disk before continuing.
    # 
    # This option is obsolete for gdbm >= 1.8 since fast mode is turned on by
    # default. See also: #syncmode=
    def fastmode= boolean
        #This is a stub, used for indexing
    end
    # gdbm.syncmode = boolean -> boolean
    #  
    # Turns the database's synchronization mode on or off. If the synchronization
    # mode is turned on, the database's in-memory state will be synchronized to
    # disk after every database modification operation. If the synchronization
    # mode is turned off, GDBM does not wait for writes to be flushed to the disk
    # before continuing.
    # 
    # This option is only available for gdbm >= 1.8 where syncmode is turned off
    # by default. See also: #fastmode=
    def syncmode= boolean
        #This is a stub, used for indexing
    end
    # gdbm.has_key?(k) -> true or false
    # gdbm.key?(k) -> true or false
    #  
    # Returns true if the given key _k_ exists within the database.
    # Returns false otherwise.
    def include?(p1)
        #This is a stub, used for indexing
    end
    # gdbm.has_key?(k) -> true or false
    # gdbm.key?(k) -> true or false
    #  
    # Returns true if the given key _k_ exists within the database.
    # Returns false otherwise.
    def has_key?(k)
        #This is a stub, used for indexing
    end
    # gdbm.has_key?(k) -> true or false
    # gdbm.key?(k) -> true or false
    #  
    # Returns true if the given key _k_ exists within the database.
    # Returns false otherwise.
    def member?(p1)
        #This is a stub, used for indexing
    end
    # gdbm.has_value?(v) -> true or false
    # gdbm.value?(v) -> true or false
    #  
    # Returns true if the given value _v_ exists within the database.
    # Returns false otherwise.
    def has_value?(v)
        #This is a stub, used for indexing
    end
    # gdbm.has_key?(k) -> true or false
    # gdbm.key?(k) -> true or false
    #  
    # Returns true if the given key _k_ exists within the database.
    # Returns false otherwise.
    def key?(k)
        #This is a stub, used for indexing
    end
    # gdbm.has_value?(v) -> true or false
    # gdbm.value?(v) -> true or false
    #  
    # Returns true if the given value _v_ exists within the database.
    # Returns false otherwise.
    def value?(v)
        #This is a stub, used for indexing
    end
    # gdbm.to_a -> array
    #  
    # Returns an array of all key-value pairs contained in the database.
    def to_a()
        #This is a stub, used for indexing
    end
    # gdbm.to_hash -> hash
    #  
    # Returns a hash of all key-value pairs contained in the database.
    def to_hash()
        #This is a stub, used for indexing
    end
end
