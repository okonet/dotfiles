=begin
 This is a machine generated stub using stdlib-doc for <b>class Time</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>Time</code> is an abstraction of dates and times. Time is
# stored internally as the number of seconds and microseconds since
# the <em>epoch</em>, January 1, 1970 00:00 UTC. On some operating
# systems, this offset is allowed to be negative. Also see the
# library modules <code>Date</code> and <code>ParseDate</code>. The
# <code>Time</code> class treats GMT (Greenwich Mean Time) and UTC
# (Coordinated Universal Time)<em>[Yes, UTC really does stand for
# Coordinated Universal Time. There was a committee involved.]</em>
# as equivalent.  GMT is the older way of referring to these
# baseline times but persists in the names of calls on Posix
# systems.
# 
# All times are stored with some number of microseconds. Be aware of
# this fact when comparing times with each other---times that are
# apparently equal when displayed may be different when compared.
class Time
    include Comparable
    # Time.new -> time
    #  
    # Synonym for <code>Time.new</code>. Returns a +Time+ object
    # initialized tot he current system time.
    # 
    # Returns a <code>Time</code> object initialized to the current system
    # time. <b>Note:</b> The object created will be created using the
    # resolution available on your system clock, and so may include
    # fractional seconds.
    # 
    #    a = Time.new      #=> Wed Apr 09 08:56:03 CDT 2003
    #    b = Time.new      #=> Wed Apr 09 08:56:03 CDT 2003
    #    a == b            #=> false
    #    "%.6f" % a.to_f   #=> "1049896563.230740"
    #    "%.6f" % b.to_f   #=> "1049896563.231466"
    def self.now()
        #This is a stub, used for indexing
    end
    # Time.at( aTime ) => time
    # Time.at( seconds [, microseconds] ) => time
    #  
    # Creates a new time object with the value given by <i>aTime</i>, or
    # the given number of <i>seconds</i> (and optional
    # <i>microseconds</i>) from epoch. A non-portable feature allows the
    # offset to be negative on some systems.
    # 
    #    Time.at(0)            #=> Wed Dec 31 18:00:00 CST 1969
    #    Time.at(946702800)    #=> Fri Dec 31 23:00:00 CST 1999
    #    Time.at(-284061600)   #=> Sat Dec 31 00:00:00 CST 1960
    def self.at(*several_variants)
        #This is a stub, used for indexing
    end
    # Time.utc( year [, month, day, hour, min, sec, usec] ) => time
    # Time.utc( sec, min, hour, day, month, year, wday, yday, isdst, tz
    # ) => time
    # Time.gm( year [, month, day, hour, min, sec, usec] ) => time
    # Time.gm( sec, min, hour, day, month, year, wday, yday, isdst, tz
    # ) => time
    #  
    # Creates a time based on given values, interpreted as UTC (GMT). The
    # year must be specified. Other values default to the minimum value
    # for that field (and may be <code>nil</code> or omitted). Months may
    # be specified by numbers from 1 to 12, or by the three-letter English
    # month names. Hours are specified on a 24-hour clock (0..23). Raises
    # an <code>ArgumentError</code> if any values are out of range. Will
    # also accept ten arguments in the order output by
    # <code>Time#to_a</code>.
    # 
    #    Time.utc(2000,"jan",1,20,15,1)  #=> Sat Jan 01 20:15:01 UTC 2000
    #    Time.gm(2000,"jan",1,20,15,1)   #=> Sat Jan 01 20:15:01 UTC 2000
    def self.utc(*several_variants)
        #This is a stub, used for indexing
    end
    # Time.utc( year [, month, day, hour, min, sec, usec] ) => time
    # Time.utc( sec, min, hour, day, month, year, wday, yday, isdst, tz
    # ) => time
    # Time.gm( year [, month, day, hour, min, sec, usec] ) => time
    # Time.gm( sec, min, hour, day, month, year, wday, yday, isdst, tz
    # ) => time
    #  
    # Creates a time based on given values, interpreted as UTC (GMT). The
    # year must be specified. Other values default to the minimum value
    # for that field (and may be <code>nil</code> or omitted). Months may
    # be specified by numbers from 1 to 12, or by the three-letter English
    # month names. Hours are specified on a 24-hour clock (0..23). Raises
    # an <code>ArgumentError</code> if any values are out of range. Will
    # also accept ten arguments in the order output by
    # <code>Time#to_a</code>.
    # 
    #    Time.utc(2000,"jan",1,20,15,1)  #=> Sat Jan 01 20:15:01 UTC 2000
    #    Time.gm(2000,"jan",1,20,15,1)   #=> Sat Jan 01 20:15:01 UTC 2000
    def self.gm(*several_variants)
        #This is a stub, used for indexing
    end
    # Time.local( year [, month, day, hour, min, sec, usec] ) => time
    # Time.local( sec, min, hour, day, month, year, wday, yday, isdst,
    # tz ) => time
    # Time.mktime( year, month, day, hour, min, sec, usec )   => time
    #  
    # Same as <code>Time::gm</code>, but interprets the values in the
    # local time zone.
    # 
    #    Time.local(2000,"jan",1,20,15,1)   #=> Sat Jan 01 20:15:01 CST 2000
    def self.local(*several_variants)
        #This is a stub, used for indexing
    end
    # Time.local( year [, month, day, hour, min, sec, usec] ) => time
    # Time.local( sec, min, hour, day, month, year, wday, yday, isdst,
    # tz ) => time
    # Time.mktime( year, month, day, hour, min, sec, usec )   => time
    #  
    # Same as <code>Time::gm</code>, but interprets the values in the
    # local time zone.
    # 
    #    Time.local(2000,"jan",1,20,15,1)   #=> Sat Jan 01 20:15:01 CST 2000
    def self.mktime(year, *args)
        #This is a stub, used for indexing
    end
    # Time.times => struct_tms
    #  
    # Deprecated in favor of <code>Process::times</code>
    def self.times()
        #This is a stub, used for indexing
    end
    # time.to_i   => int
    # time.tv_sec => int
    #  
    # Returns the value of <i>time</i> as an integer number of seconds
    # since epoch.
    # 
    #    t = Time.now
    #    "%10.5f" % t.to_f   #=> "1049896564.17839"
    #    t.to_i              #=> 1049896564
    def to_i()
        #This is a stub, used for indexing
    end
    # time.to_f => float
    #  
    # Returns the value of <i>time</i> as a floating point number of
    # seconds since epoch.
    # 
    #    t = Time.now
    #    "%10.5f" % t.to_f   #=> "1049896564.13654"
    #    t.to_i              #=> 1049896564
    def to_f()
        #This is a stub, used for indexing
    end
    # time <=> other_time => -1, 0, +1 
    # time <=> numeric    => -1, 0, +1
    #  
    # Comparison---Compares <i>time</i> with <i>other_time</i> or with
    # <i>numeric</i>, which is the number of seconds (possibly
    # fractional) since epoch.
    # 
    #    t = Time.now       #=> Wed Apr 09 08:56:03 CDT 2003
    #    t2 = t + 2592000   #=> Fri May 09 08:56:03 CDT 2003
    #    t <=> t2           #=> -1
    #    t2 <=> t           #=> 1
    #    t <=> t            #=> 0
    def <=>(*several_variants)
        #This is a stub, used for indexing
    end
    # time.eql?(other_time)
    #  
    # Return <code>true</code> if <i>time</i> and <i>other_time</i> are
    # both <code>Time</code> objects with the same seconds and fractional
    # seconds.
    def eql?(other_time)
        #This is a stub, used for indexing
    end
    # time.hash   => fixnum
    #  
    # Return a hash code for this time object.
    def hash()
        #This is a stub, used for indexing
    end
    # Time.new -> time
    #  
    # Synonym for <code>Time.new</code>. Returns a +Time+ object
    # initialized tot he current system time.
    # 
    # Returns a <code>Time</code> object initialized to the current system
    # time. <b>Note:</b> The object created will be created using the
    # resolution available on your system clock, and so may include
    # fractional seconds.
    # 
    #    a = Time.new      #=> Wed Apr 09 08:56:03 CDT 2003
    #    b = Time.new      #=> Wed Apr 09 08:56:03 CDT 2003
    #    a == b            #=> false
    #    "%.6f" % a.to_f   #=> "1049896563.230740"
    #    "%.6f" % b.to_f   #=> "1049896563.231466"
    def self.new()
        #This is a stub, used for indexing
    end
    # time.localtime => time
    #  
    # Converts <i>time</i> to local time (using the local time zone in
    # effect for this process) modifying the receiver.
    # 
    #    t = Time.gm(2000, "jan", 1, 20, 15, 1)
    #    t.gmt?        #=> true
    #    t.localtime   #=> Sat Jan 01 14:15:01 CST 2000
    #    t.gmt?        #=> false
    def localtime()
        #This is a stub, used for indexing
    end
    # time.gmtime    => time
    # time.utc       => time
    #  
    # Converts <i>time</i> to UTC (GMT), modifying the receiver.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.gmt?         #=> false
    #    t.gmtime       #=> Wed Apr 09 13:56:03 UTC 2003
    #    t.gmt?         #=> true
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:04 CDT 2003
    #    t.utc?         #=> false
    #    t.utc          #=> Wed Apr 09 13:56:04 UTC 2003
    #    t.utc?         #=> true
    def gmtime()
        #This is a stub, used for indexing
    end
    # time.gmtime    => time
    # time.utc       => time
    #  
    # Converts <i>time</i> to UTC (GMT), modifying the receiver.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.gmt?         #=> false
    #    t.gmtime       #=> Wed Apr 09 13:56:03 UTC 2003
    #    t.gmt?         #=> true
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:04 CDT 2003
    #    t.utc?         #=> false
    #    t.utc          #=> Wed Apr 09 13:56:04 UTC 2003
    #    t.utc?         #=> true
    def utc()
        #This is a stub, used for indexing
    end
    # time.getlocal => new_time
    #  
    # Returns a new <code>new_time</code> object representing <i>time</i> in
    # local time (using the local time zone in effect for this process).
    # 
    #    t = Time.gm(2000,1,1,20,15,1)   #=> Sat Jan 01 20:15:01 UTC 2000
    #    t.gmt?                          #=> true
    #    l = t.getlocal                  #=> Sat Jan 01 14:15:01 CST 2000
    #    l.gmt?                          #=> false
    #    t == l                          #=> true
    def getlocal()
        #This is a stub, used for indexing
    end
    # time.getgm  => new_time
    # time.getutc => new_time
    #  
    # Returns a new <code>new_time</code> object representing <i>time</i> in
    # UTC.
    # 
    #    t = Time.local(2000,1,1,20,15,1)   #=> Sat Jan 01 20:15:01 CST 2000
    #    t.gmt?                             #=> false
    #    y = t.getgm                        #=> Sun Jan 02 02:15:01 UTC 2000
    #    y.gmt?                             #=> true
    #    t == y                             #=> true
    def getgm()
        #This is a stub, used for indexing
    end
    # time.getgm  => new_time
    # time.getutc => new_time
    #  
    # Returns a new <code>new_time</code> object representing <i>time</i> in
    # UTC.
    # 
    #    t = Time.local(2000,1,1,20,15,1)   #=> Sat Jan 01 20:15:01 CST 2000
    #    t.gmt?                             #=> false
    #    y = t.getgm                        #=> Sun Jan 02 02:15:01 UTC 2000
    #    y.gmt?                             #=> true
    #    t == y                             #=> true
    def getutc()
        #This is a stub, used for indexing
    end
    # time.asctime => string
    # time.ctime   => string
    #  
    # Returns a canonical string representation of <i>time</i>.
    # 
    #    Time.now.asctime   #=> "Wed Apr  9 08:56:03 2003"
    def ctime()
        #This is a stub, used for indexing
    end
    # time.asctime => string
    # time.ctime   => string
    #  
    # Returns a canonical string representation of <i>time</i>.
    # 
    #    Time.now.asctime   #=> "Wed Apr  9 08:56:03 2003"
    def asctime()
        #This is a stub, used for indexing
    end
    # time.inspect => string
    # time.to_s    => string
    #  
    # Returns a string representing <i>time</i>. Equivalent to calling
    # <code>Time#strftime</code> with a format string of ``<code>%a</code>
    # <code>%b</code> <code>%d</code> <code>%H:%M:%S</code>
    # <code>%Z</code> <code>%Y</code>''.
    # 
    #    Time.now.to_s   #=> "Wed Apr 09 08:56:04 CDT 2003"
    def to_s()
        #This is a stub, used for indexing
    end
    # time.inspect => string
    # time.to_s    => string
    #  
    # Returns a string representing <i>time</i>. Equivalent to calling
    # <code>Time#strftime</code> with a format string of ``<code>%a</code>
    # <code>%b</code> <code>%d</code> <code>%H:%M:%S</code>
    # <code>%Z</code> <code>%Y</code>''.
    # 
    #    Time.now.to_s   #=> "Wed Apr 09 08:56:04 CDT 2003"
    def inspect()
        #This is a stub, used for indexing
    end
    # time.to_a => array
    #  
    # Returns a ten-element <i>array</i> of values for <i>time</i>:
    # {<code>[ sec, min, hour, day, month, year, wday, yday, isdst, zone
    # ]</code>}. See the individual methods for an explanation of the
    # valid ranges of each value. The ten elements can be passed directly
    # to <code>Time::utc</code> or <code>Time::local</code> to create a
    # new <code>Time</code>.
    # 
    #    now = Time.now   #=> Wed Apr 09 08:56:04 CDT 2003
    #    t = now.to_a     #=> [4, 56, 8, 9, 4, 2003, 3, 99, true, "CDT"]
    def to_a()
        #This is a stub, used for indexing
    end
    # time + numeric => time
    #  
    # Addition---Adds some number of seconds (possibly fractional) to
    # <i>time</i> and returns that value as a new time.
    # 
    #    t = Time.now         #=> Wed Apr 09 08:56:03 CDT 2003
    #    t + (60 * 60 * 24)   #=> Thu Apr 10 08:56:03 CDT 2003
    def + numeric
        #This is a stub, used for indexing
    end
    # time - other_time => float
    # time - numeric    => time
    #  
    # Difference---Returns a new time that represents the difference
    # between two times, or subtracts the given number of seconds in
    # <i>numeric</i> from <i>time</i>.
    # 
    #    t = Time.now       #=> Wed Apr 09 08:56:03 CDT 2003
    #    t2 = t + 2592000   #=> Fri May 09 08:56:03 CDT 2003
    #    t2 - t             #=> 2592000.0
    #    t2 - 2592000       #=> Wed Apr 09 08:56:03 CDT 2003
    def -(*several_variants)
        #This is a stub, used for indexing
    end
    # time.succ   => new_time
    #  
    # Return a new time object, one second later than <code>time</code>.
    def succ()
        #This is a stub, used for indexing
    end
    # time.sec => fixnum
    #  
    # Returns the second of the minute (0..60)<em>[Yes, seconds really can
    # range from zero to 60. This allows the system to inject leap seconds
    # every now and then to correct for the fact that years are not really
    # a convenient number of hours long.]</em> for <i>time</i>.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:04 CDT 2003
    #    t.sec          #=> 4
    def sec()
        #This is a stub, used for indexing
    end
    # time.min => fixnum
    #  
    # Returns the minute of the hour (0..59) for <i>time</i>.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.min          #=> 56
    def min()
        #This is a stub, used for indexing
    end
    # time.hour => fixnum
    #  
    # Returns the hour of the day (0..23) for <i>time</i>.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.hour         #=> 8
    def hour()
        #This is a stub, used for indexing
    end
    # time.day  => fixnum
    # time.mday => fixnum
    #  
    # Returns the day of the month (1..n) for <i>time</i>.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.day          #=> 9
    #    t.mday         #=> 9
    def mday()
        #This is a stub, used for indexing
    end
    # time.day  => fixnum
    # time.mday => fixnum
    #  
    # Returns the day of the month (1..n) for <i>time</i>.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.day          #=> 9
    #    t.mday         #=> 9
    def day()
        #This is a stub, used for indexing
    end
    # time.mon   => fixnum
    # time.month => fixnum
    #  
    # Returns the month of the year (1..12) for <i>time</i>.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.mon          #=> 4
    #    t.month        #=> 4
    def mon(*several_variants)
        #This is a stub, used for indexing
    end
    # time.mon   => fixnum
    # time.month => fixnum
    #  
    # Returns the month of the year (1..12) for <i>time</i>.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.mon          #=> 4
    #    t.month        #=> 4
    def month()
        #This is a stub, used for indexing
    end
    # time.year => fixnum
    #  
    # Returns the year for <i>time</i> (including the century).
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:04 CDT 2003
    #    t.year         #=> 2003
    def year()
        #This is a stub, used for indexing
    end
    # time.wday => fixnum
    #  
    # Returns an integer representing the day of the week, 0..6, with
    # Sunday == 0.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:04 CDT 2003
    #    t.wday         #=> 3
    def wday()
        #This is a stub, used for indexing
    end
    # time.yday => fixnum
    #  
    # Returns an integer representing the day of the year, 1..366.
    # 
    #    t = Time.now   #=> Wed Apr 09 08:56:04 CDT 2003
    #    t.yday         #=> 99
    def yday()
        #This is a stub, used for indexing
    end
    # time.isdst => true or false
    # time.dst?  => true or false
    #  
    # Returns <code>true</code> if <i>time</i> occurs during Daylight
    # Saving Time in its time zone.
    # 
    #    Time.local(2000, 7, 1).isdst   #=> true
    #    Time.local(2000, 1, 1).isdst   #=> false
    #    Time.local(2000, 7, 1).dst?    #=> true
    #    Time.local(2000, 1, 1).dst?    #=> false
    def isdst()
        #This is a stub, used for indexing
    end
    # time.isdst => true or false
    # time.dst?  => true or false
    #  
    # Returns <code>true</code> if <i>time</i> occurs during Daylight
    # Saving Time in its time zone.
    # 
    #    Time.local(2000, 7, 1).isdst   #=> true
    #    Time.local(2000, 1, 1).isdst   #=> false
    #    Time.local(2000, 7, 1).dst?    #=> true
    #    Time.local(2000, 1, 1).dst?    #=> false
    def dst?()
        #This is a stub, used for indexing
    end
    # time.zone => string
    #  
    # Returns the name of the time zone used for <i>time</i>. As of Ruby
    # 1.8, returns ``UTC'' rather than ``GMT'' for UTC times.
    # 
    #    t = Time.gm(2000, "jan", 1, 20, 15, 1)
    #    t.zone   #=> "UTC"
    #    t = Time.local(2000, "jan", 1, 20, 15, 1)
    #    t.zone   #=> "CST"
    def zone()
        #This is a stub, used for indexing
    end
    # time.gmt_offset => fixnum
    # time.gmtoff     => fixnum
    # time.utc_offset => fixnum
    #  
    # Returns the offset in seconds between the timezone of <i>time</i>
    # and UTC.
    # 
    #    t = Time.gm(2000,1,1,20,15,1)   #=> Sat Jan 01 20:15:01 UTC 2000
    #    t.gmt_offset                    #=> 0
    #    l = t.getlocal                  #=> Sat Jan 01 14:15:01 CST 2000
    #    l.gmt_offset                    #=> -21600
    def gmtoff()
        #This is a stub, used for indexing
    end
    # time.gmt_offset => fixnum
    # time.gmtoff     => fixnum
    # time.utc_offset => fixnum
    #  
    # Returns the offset in seconds between the timezone of <i>time</i>
    # and UTC.
    # 
    #    t = Time.gm(2000,1,1,20,15,1)   #=> Sat Jan 01 20:15:01 UTC 2000
    #    t.gmt_offset                    #=> 0
    #    l = t.getlocal                  #=> Sat Jan 01 14:15:01 CST 2000
    #    l.gmt_offset                    #=> -21600
    def gmt_offset()
        #This is a stub, used for indexing
    end
    # time.gmt_offset => fixnum
    # time.gmtoff     => fixnum
    # time.utc_offset => fixnum
    #  
    # Returns the offset in seconds between the timezone of <i>time</i>
    # and UTC.
    # 
    #    t = Time.gm(2000,1,1,20,15,1)   #=> Sat Jan 01 20:15:01 UTC 2000
    #    t.gmt_offset                    #=> 0
    #    l = t.getlocal                  #=> Sat Jan 01 14:15:01 CST 2000
    #    l.gmt_offset                    #=> -21600
    def utc_offset()
        #This is a stub, used for indexing
    end
    # time.utc? => true or false
    # time.gmt? => true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents a time in UTC
    # (GMT).
    # 
    #    t = Time.now                        #=> Wed Apr 09 08:56:04 CDT 2003
    #    t.utc?                              #=> false
    #    t = Time.gm(2000,"jan",1,20,15,1)   #=> Sat Jan 01 20:15:01 UTC 2000
    #    t.utc?                              #=> true
    # 
    #    t = Time.now                        #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.gmt?                              #=> false
    #    t = Time.gm(2000,1,1,20,15,1)       #=> Sat Jan 01 20:15:01 UTC 2000
    #    t.gmt?                              #=> true
    def utc?()
        #This is a stub, used for indexing
    end
    # time.utc? => true or false
    # time.gmt? => true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents a time in UTC
    # (GMT).
    # 
    #    t = Time.now                        #=> Wed Apr 09 08:56:04 CDT 2003
    #    t.utc?                              #=> false
    #    t = Time.gm(2000,"jan",1,20,15,1)   #=> Sat Jan 01 20:15:01 UTC 2000
    #    t.utc?                              #=> true
    # 
    #    t = Time.now                        #=> Wed Apr 09 08:56:03 CDT 2003
    #    t.gmt?                              #=> false
    #    t = Time.gm(2000,1,1,20,15,1)       #=> Sat Jan 01 20:15:01 UTC 2000
    #    t.gmt?                              #=> true
    def gmt?()
        #This is a stub, used for indexing
    end
    # time.to_i   => int
    # time.tv_sec => int
    #  
    # Returns the value of <i>time</i> as an integer number of seconds
    # since epoch.
    # 
    #    t = Time.now
    #    "%10.5f" % t.to_f   #=> "1049896564.17839"
    #    t.to_i              #=> 1049896564
    def tv_sec()
        #This is a stub, used for indexing
    end
    # time.usec    => int
    # time.tv_usec => int
    #  
    # Returns just the number of microseconds for <i>time</i>.
    # 
    #    t = Time.now        #=> Wed Apr 09 08:56:04 CDT 2003
    #    "%10.6f" % t.to_f   #=> "1049896564.259970"
    #    t.usec              #=> 259970
    def tv_usec()
        #This is a stub, used for indexing
    end
    # time.usec    => int
    # time.tv_usec => int
    #  
    # Returns just the number of microseconds for <i>time</i>.
    # 
    #    t = Time.now        #=> Wed Apr 09 08:56:04 CDT 2003
    #    "%10.6f" % t.to_f   #=> "1049896564.259970"
    #    t.usec              #=> 259970
    def usec()
        #This is a stub, used for indexing
    end
    # time.strftime( string ) => string
    #  
    # Formats <i>time</i> according to the directives in the given format
    # string. Any text not listed as a directive will be passed through
    # to the output string.
    # 
    # Format meaning:
    #   %a - The abbreviated weekday name (``Sun'')
    #   %A - The  full  weekday  name (``Sunday'')
    #   %b - The abbreviated month name (``Jan'')
    #   %B - The  full  month  name (``January'')
    #   %c - The preferred local date and time representation
    #   %d - Day of the month (01..31)
    #   %H - Hour of the day, 24-hour clock (00..23)
    #   %I - Hour of the day, 12-hour clock (01..12)
    #   %j - Day of the year (001..366)
    #   %m - Month of the year (01..12)
    #   %M - Minute of the hour (00..59)
    #   %p - Meridian indicator (``AM''  or  ``PM'')
    #   %S - Second of the minute (00..60)
    #   %U - Week  number  of the current year,
    #           starting with the first Sunday as the first
    #           day of the first week (00..53)
    #   %W - Week  number  of the current year,
    #           starting with the first Monday as the first
    #           day of the first week (00..53)
    #   %w - Day of the week (Sunday is 0, 0..6)
    #   %x - Preferred representation for the date alone, no time
    #   %X - Preferred representation for the time alone, no date
    #   %y - Year without a century (00..99)
    #   %Y - Year with century
    #   %Z - Time zone name
    #   %% - Literal ``%'' character
    # 
    #    t = Time.now
    #    t.strftime("Printed on %m/%d/%Y")   #=> "Printed on 04/09/2003"
    #    t.strftime("at %I:%M%p")            #=> "at 08:56AM"
    def strftime( string )
        #This is a stub, used for indexing
    end
    # time._dump   => string
    #  
    # Dump _time_ for marshaling.
    def _dump()
        #This is a stub, used for indexing
    end
    # Time._load(string)   => time
    #  
    # Unmarshal a dumped +Time+ object.
    def self._load(string)
        #This is a stub, used for indexing
    end
    # undocumented
    def marshal_dump()
        #This is a stub, used for indexing
    end
    # undocumented
    def marshal_load(p1)
        #This is a stub, used for indexing
    end
end
