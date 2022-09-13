=begin
 This is a machine generated stub using stdlib-doc for <b>class Time</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>Time</code> is an abstraction of dates and times. Time is
# stored internally as the number of seconds with fraction since
# the <em>Epoch</em>, January 1, 1970 00:00 UTC.
# Also see the library modules <code>Date</code>.
# The <code>Time</code> class treats GMT (Greenwich Mean Time) and
# UTC (Coordinated Universal Time)<em>[Yes, UTC really does stand for
# Coordinated Universal Time. There was a committee involved.]</em>
# as equivalent.  GMT is the older way of referring to these
# baseline times but persists in the names of calls on POSIX
# systems.
# 
# All times may have fraction. Be aware of
# this fact when comparing times with each other---times that are
# apparently equal when displayed may be different when compared.
class Time
    include Comparable
    # Synonym for <code>Time.new</code>. Returns a +Time+ object
    # initialized to the current system time.
    def self.now()
        #This is a stub, used for indexing
    end
    # Time.at(time) -> time
    # Time.at(seconds_with_frac) -> time
    # Time.at(seconds, microseconds_with_frac) -> time
    #  
    # Creates a new time object with the value given by <i>time</i>,
    # the given number of <i>seconds_with_frac</i>, or
    # <i>seconds</i> and <i>microseconds_with_frac</i> from the Epoch.
    # <i>seconds_with_frac</i> and <i>microseconds_with_frac</i>
    # can be Integer, Float, Rational, or other Numeric.
    # non-portable feature allows the offset to be negative on some systems.
    # 
    #    Time.at(0)            #=> 1969-12-31 18:00:00 -0600
    #    Time.at(Time.at(0))   #=> 1969-12-31 18:00:00 -0600
    #    Time.at(946702800)    #=> 1999-12-31 23:00:00 -0600
    #    Time.at(-284061600)   #=> 1960-12-31 00:00:00 -0600
    #    Time.at(946684800.2).usec #=> 200000
    #    Time.at(946684800, 123456.789).nsec #=> 123456789
    def self.at(*several_variants)
        #This is a stub, used for indexing
    end
    # Time.utc(year) -> time
    # Time.utc(year, month) -> time
    # Time.utc(year, month, day) -> time
    # Time.utc(year, month, day, hour) -> time
    # Time.utc(year, month, day, hour, min) -> time
    # Time.utc(year, month, day, hour, min, sec_with_frac) -> time
    # Time.utc(year, month, day, hour, min, sec, usec_with_frac) -> time
    # Time.utc(sec, min, hour, day, month, year, wday, yday, isdst, tz) -> time
    # Time.gm(year) -> time
    # Time.gm(year, month) -> time
    # Time.gm(year, month, day) -> time
    # Time.gm(year, month, day, hour) -> time
    # Time.gm(year, month, day, hour, min) -> time
    # Time.gm(year, month, day, hour, min, sec_with_frac) -> time
    # Time.gm(year, month, day, hour, min, sec, usec_with_frac) -> time
    # Time.gm(sec, min, hour, day, month, year, wday, yday, isdst, tz) -> time
    #  
    # Creates a time based on given values, interpreted as UTC (GMT). The
    # year must be specified. Other values default to the minimum value
    # for that field (and may be <code>nil</code> or omitted). Months may
    # be specified by numbers from 1 to 12, or by the three-letter English
    # month names. Hours are specified on a 24-hour clock (0..23). Raises
    # an <code>ArgumentError</code> if any values are out of range. Will
    # also accept ten arguments in the order output by
    # <code>Time#to_a</code>.
    # <i>sec_with_frac</i> and <i>usec_with_frac</i> can have a fractional part.
    # 
    #    Time.utc(2000,"jan",1,20,15,1)  #=> 2000-01-01 20:15:01 UTC
    #    Time.gm(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
    def self.utc(*several_variants)
        #This is a stub, used for indexing
    end
    # Time.utc(year) -> time
    # Time.utc(year, month) -> time
    # Time.utc(year, month, day) -> time
    # Time.utc(year, month, day, hour) -> time
    # Time.utc(year, month, day, hour, min) -> time
    # Time.utc(year, month, day, hour, min, sec_with_frac) -> time
    # Time.utc(year, month, day, hour, min, sec, usec_with_frac) -> time
    # Time.utc(sec, min, hour, day, month, year, wday, yday, isdst, tz) -> time
    # Time.gm(year) -> time
    # Time.gm(year, month) -> time
    # Time.gm(year, month, day) -> time
    # Time.gm(year, month, day, hour) -> time
    # Time.gm(year, month, day, hour, min) -> time
    # Time.gm(year, month, day, hour, min, sec_with_frac) -> time
    # Time.gm(year, month, day, hour, min, sec, usec_with_frac) -> time
    # Time.gm(sec, min, hour, day, month, year, wday, yday, isdst, tz) -> time
    #  
    # Creates a time based on given values, interpreted as UTC (GMT). The
    # year must be specified. Other values default to the minimum value
    # for that field (and may be <code>nil</code> or omitted). Months may
    # be specified by numbers from 1 to 12, or by the three-letter English
    # month names. Hours are specified on a 24-hour clock (0..23). Raises
    # an <code>ArgumentError</code> if any values are out of range. Will
    # also accept ten arguments in the order output by
    # <code>Time#to_a</code>.
    # <i>sec_with_frac</i> and <i>usec_with_frac</i> can have a fractional part.
    # 
    #    Time.utc(2000,"jan",1,20,15,1)  #=> 2000-01-01 20:15:01 UTC
    #    Time.gm(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
    def self.gm(*several_variants)
        #This is a stub, used for indexing
    end
    # Time.local(year) -> time
    # Time.local(year, month) -> time
    # Time.local(year, month, day) -> time
    # Time.local(year, month, day, hour) -> time
    # Time.local(year, month, day, hour, min) -> time
    # Time.local(year, month, day, hour, min, sec_with_frac) -> time
    # Time.local(year, month, day, hour, min, sec, usec_with_frac) -> time
    # Time.local(sec, min, hour, day, month, year, wday, yday, isdst, tz) -> time
    # Time.mktime(year) -> time
    # Time.mktime(year, month) -> time
    # Time.mktime(year, month, day) -> time
    # Time.mktime(year, month, day, hour) -> time
    # Time.mktime(year, month, day, hour, min) -> time
    # Time.mktime(year, month, day, hour, min, sec_with_frac) -> time
    # Time.mktime(year, month, day, hour, min, sec, usec_with_frac) -> time
    # Time.mktime(sec, min, hour, day, month, year, wday, yday, isdst, tz) -> time
    #  
    # Same as <code>Time::gm</code>, but interprets the values in the
    # local time zone.
    # 
    #    Time.local(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 -0600
    def self.local(*several_variants)
        #This is a stub, used for indexing
    end
    # Time.local(year) -> time
    # Time.local(year, month) -> time
    # Time.local(year, month, day) -> time
    # Time.local(year, month, day, hour) -> time
    # Time.local(year, month, day, hour, min) -> time
    # Time.local(year, month, day, hour, min, sec_with_frac) -> time
    # Time.local(year, month, day, hour, min, sec, usec_with_frac) -> time
    # Time.local(sec, min, hour, day, month, year, wday, yday, isdst, tz) -> time
    # Time.mktime(year) -> time
    # Time.mktime(year, month) -> time
    # Time.mktime(year, month, day) -> time
    # Time.mktime(year, month, day, hour) -> time
    # Time.mktime(year, month, day, hour, min) -> time
    # Time.mktime(year, month, day, hour, min, sec_with_frac) -> time
    # Time.mktime(year, month, day, hour, min, sec, usec_with_frac) -> time
    # Time.mktime(sec, min, hour, day, month, year, wday, yday, isdst, tz) -> time
    #  
    # Same as <code>Time::gm</code>, but interprets the values in the
    # local time zone.
    # 
    #    Time.local(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 -0600
    def self.mktime(*several_variants)
        #This is a stub, used for indexing
    end
    # time.to_i   -> int
    # time.tv_sec -> int
    #  
    # Returns the value of <i>time</i> as an integer number of seconds
    # since the Epoch.
    # 
    #    t = Time.now
    #    "%10.5f" % t.to_f   #=> "1270968656.89607"
    #    t.to_i              #=> 1270968656
    def to_i()
        #This is a stub, used for indexing
    end
    # time.to_f -> float
    #  
    # Returns the value of <i>time</i> as a floating point number of
    # seconds since the Epoch.
    # 
    #    t = Time.now
    #    "%10.5f" % t.to_f   #=> "1270968744.77658"
    #    t.to_i              #=> 1270968744
    # 
    # Note that IEEE 754 double is not accurate enough to represent
    # number of nanoseconds from the Epoch.
    def to_f()
        #This is a stub, used for indexing
    end
    # time.to_r -> a_rational
    #  
    # Returns the value of <i>time</i> as a rational number of seconds
    # since the Epoch.
    # 
    #    t = Time.now
    #    p t.to_r            #=> (1270968792716287611/1000000000)
    # 
    # This methods is intended to be used to get an accurate value
    # representing nanoseconds from the Epoch.  You can use this
    # to convert time to another Epoch.
    def to_r()
        #This is a stub, used for indexing
    end
    # time <=> other_time -> -1, 0, +1 or nil
    #  
    # Comparison---Compares <i>time</i> with <i>other_time</i>.
    # 
    #    t = Time.now       #=> 2007-11-19 08:12:12 -0600
    #    t2 = t + 2592000   #=> 2007-12-19 08:12:12 -0600
    #    t <=> t2           #=> -1
    #    t2 <=> t           #=> 1
    # 
    #    t = Time.now       #=> 2007-11-19 08:13:38 -0600
    #    t2 = t + 0.1       #=> 2007-11-19 08:13:38 -0600
    #    t.nsec             #=> 98222999
    #    t2.nsec            #=> 198222999
    #    t <=> t2           #=> -1
    #    t2 <=> t           #=> 1
    #    t <=> t            #=> 0
    def <=> other_time
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
    # time.hash   -> fixnum
    #  
    # Return a hash code for this time object.
    def hash()
        #This is a stub, used for indexing
    end
    # Time.new -> time
    # Time.new(year, month=nil, day=nil, hour=nil, min=nil, sec=nil, utc_offset=nil) -> time
    #  
    # Returns a <code>Time</code> object.
    # 
    # It is initialized to the current system time if no argument.
    # <b>Note:</b> The object created will be created using the
    # resolution available on your system clock, and so may include
    # fractional seconds.
    # 
    # If one or more arguments specified, the time is initialized
    # to the specified time.
    # _sec_ may have fraction if it is a rational.
    # 
    # _utc_offset_ is the offset from UTC.
    # It is a string such as "+09:00" or a number of seconds such as 32400.
    # 
    #    a = Time.new      #=> 2007-11-19 07:50:02 -0600
    #    b = Time.new      #=> 2007-11-19 07:50:02 -0600
    #    a == b            #=> false
    #    "%.6f" % a.to_f   #=> "1195480202.282373"
    #    "%.6f" % b.to_f   #=> "1195480202.283415"
    # 
    #    Time.new(2008,6,21, 13,30,0, "+09:00") #=> 2008-06-21 13:30:00 +0900
    # 
    #    # A trip for RubyConf 2007
    #    t1 = Time.new(2007,11,1,15,25,0, "+09:00") # JST (Narita)
    #    t2 = Time.new(2007,11,1,12, 5,0, "-05:00") # CDT (Minneapolis)
    #    t3 = Time.new(2007,11,1,13,25,0, "-05:00") # CDT (Minneapolis)
    #    t4 = Time.new(2007,11,1,16,53,0, "-04:00") # EDT (Charlotte)
    #    t5 = Time.new(2007,11,5, 9,24,0, "-05:00") # EST (Charlotte)
    #    t6 = Time.new(2007,11,5,11,21,0, "-05:00") # EST (Detroit)
    #    t7 = Time.new(2007,11,5,13,45,0, "-05:00") # EST (Detroit)
    #    t8 = Time.new(2007,11,6,17,10,0, "+09:00") # JST (Narita)
    #    p((t2-t1)/3600.0)                          #=> 10.666666666666666
    #    p((t4-t3)/3600.0)                          #=> 2.466666666666667
    #    p((t6-t5)/3600.0)                          #=> 1.95
    #    p((t8-t7)/3600.0)                          #=> 13.416666666666666
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # time.localtime -> time
    # time.localtime(utc_offset) -> time
    #  
    # Converts <i>time</i> to local time (using the local time zone in
    # effect for this process) modifying the receiver.
    # 
    # If _utc_offset_ is given, it is used instead of the local time.
    # 
    #    t = Time.utc(2000, "jan", 1, 20, 15, 1) #=> 2000-01-01 20:15:01 UTC
    #    t.utc?                                  #=> true
    # 
    #    t.localtime                             #=> 2000-01-01 14:15:01 -0600
    #    t.utc?                                  #=> false
    # 
    #    t.localtime("+09:00")                   #=> 2000-01-02 05:15:01 +0900
    #    t.utc?                                  #=> false
    def localtime(*several_variants)
        #This is a stub, used for indexing
    end
    # time.gmtime    -> time
    # time.utc       -> time
    #  
    # Converts <i>time</i> to UTC (GMT), modifying the receiver.
    # 
    #    t = Time.now   #=> 2007-11-19 08:18:31 -0600
    #    t.gmt?         #=> false
    #    t.gmtime       #=> 2007-11-19 14:18:31 UTC
    #    t.gmt?         #=> true
    # 
    #    t = Time.now   #=> 2007-11-19 08:18:51 -0600
    #    t.utc?         #=> false
    #    t.utc          #=> 2007-11-19 14:18:51 UTC
    #    t.utc?         #=> true
    def gmtime()
        #This is a stub, used for indexing
    end
    # time.gmtime    -> time
    # time.utc       -> time
    #  
    # Converts <i>time</i> to UTC (GMT), modifying the receiver.
    # 
    #    t = Time.now   #=> 2007-11-19 08:18:31 -0600
    #    t.gmt?         #=> false
    #    t.gmtime       #=> 2007-11-19 14:18:31 UTC
    #    t.gmt?         #=> true
    # 
    #    t = Time.now   #=> 2007-11-19 08:18:51 -0600
    #    t.utc?         #=> false
    #    t.utc          #=> 2007-11-19 14:18:51 UTC
    #    t.utc?         #=> true
    def utc()
        #This is a stub, used for indexing
    end
    # time.getlocal -> new_time
    # time.getlocal(utc_offset) -> new_time
    #  
    # Returns a new <code>new_time</code> object representing <i>time</i> in
    # local time (using the local time zone in effect for this process).
    # 
    # If _utc_offset_ is given, it is used instead of the local time.
    # 
    #    t = Time.utc(2000,1,1,20,15,1)  #=> 2000-01-01 20:15:01 UTC
    #    t.utc?                          #=> true
    # 
    #    l = t.getlocal                  #=> 2000-01-01 14:15:01 -0600
    #    l.utc?                          #=> false
    #    t == l                          #=> true
    # 
    #    j = t.getlocal("+09:00")        #=> 2000-01-02 05:15:01 +0900
    #    j.utc?                          #=> false
    #    t == j                          #=> true
    def getlocal(*several_variants)
        #This is a stub, used for indexing
    end
    # time.getgm  -> new_time
    # time.getutc -> new_time
    #  
    # Returns a new <code>new_time</code> object representing <i>time</i> in
    # UTC.
    # 
    #    t = Time.local(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 -0600
    #    t.gmt?                             #=> false
    #    y = t.getgm                        #=> 2000-01-02 02:15:01 UTC
    #    y.gmt?                             #=> true
    #    t == y                             #=> true
    def getgm()
        #This is a stub, used for indexing
    end
    # time.getgm  -> new_time
    # time.getutc -> new_time
    #  
    # Returns a new <code>new_time</code> object representing <i>time</i> in
    # UTC.
    # 
    #    t = Time.local(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 -0600
    #    t.gmt?                             #=> false
    #    y = t.getgm                        #=> 2000-01-02 02:15:01 UTC
    #    y.gmt?                             #=> true
    #    t == y                             #=> true
    def getutc()
        #This is a stub, used for indexing
    end
    # time.asctime -> string
    # time.ctime   -> string
    #  
    # Returns a canonical string representation of <i>time</i>.
    # 
    #    Time.now.asctime   #=> "Wed Apr  9 08:56:03 2003"
    def ctime()
        #This is a stub, used for indexing
    end
    # time.asctime -> string
    # time.ctime   -> string
    #  
    # Returns a canonical string representation of <i>time</i>.
    # 
    #    Time.now.asctime   #=> "Wed Apr  9 08:56:03 2003"
    def asctime()
        #This is a stub, used for indexing
    end
    # time.inspect -> string
    # time.to_s    -> string
    #  
    # Returns a string representing <i>time</i>. Equivalent to calling
    # <code>Time#strftime</code> with a format string of
    # ``<code>%Y-%m-%d</code> <code>%H:%M:%S</code> <code>%z</code>''
    # for a local time and
    # ``<code>%Y-%m-%d</code> <code>%H:%M:%S</code> <code>UTC</code>''
    # for a UTC time.
    # 
    #    Time.now.to_s       #=> "2007-10-05 16:09:51 +0900"
    #    Time.now.utc.to_s   #=> "2007-10-05 07:09:51 UTC"
    def to_s()
        #This is a stub, used for indexing
    end
    # time.inspect -> string
    # time.to_s    -> string
    #  
    # Returns a string representing <i>time</i>. Equivalent to calling
    # <code>Time#strftime</code> with a format string of
    # ``<code>%Y-%m-%d</code> <code>%H:%M:%S</code> <code>%z</code>''
    # for a local time and
    # ``<code>%Y-%m-%d</code> <code>%H:%M:%S</code> <code>UTC</code>''
    # for a UTC time.
    # 
    #    Time.now.to_s       #=> "2007-10-05 16:09:51 +0900"
    #    Time.now.utc.to_s   #=> "2007-10-05 07:09:51 UTC"
    def inspect()
        #This is a stub, used for indexing
    end
    # time.to_a -> array
    #  
    # Returns a ten-element <i>array</i> of values for <i>time</i>:
    # {<code>[ sec, min, hour, day, month, year, wday, yday, isdst, zone
    # ]</code>}. See the individual methods for an explanation of the
    # valid ranges of each value. The ten elements can be passed directly
    # to <code>Time::utc</code> or <code>Time::local</code> to create a
    # new <code>Time</code>.
    # 
    #    t = Time.now     #=> 2007-11-19 08:36:01 -0600
    #    now = t.to_a     #=> [1, 36, 8, 19, 11, 2007, 1, 323, false, "CST"]
    def to_a()
        #This is a stub, used for indexing
    end
    # time + numeric -> time
    #  
    # Addition---Adds some number of seconds (possibly fractional) to
    # <i>time</i> and returns that value as a new time.
    # 
    #    t = Time.now         #=> 2007-11-19 08:22:21 -0600
    #    t + (60 * 60 * 24)   #=> 2007-11-20 08:22:21 -0600
    def + numeric
        #This is a stub, used for indexing
    end
    # time - other_time -> float
    # time - numeric    -> time
    #  
    # Difference---Returns a new time that represents the difference
    # between two times, or subtracts the given number of seconds in
    # <i>numeric</i> from <i>time</i>.
    # 
    #    t = Time.now       #=> 2007-11-19 08:23:10 -0600
    #    t2 = t + 2592000   #=> 2007-12-19 08:23:10 -0600
    #    t2 - t             #=> 2592000.0
    #    t2 - 2592000       #=> 2007-11-19 08:23:10 -0600
    def -(*several_variants)
        #This is a stub, used for indexing
    end
    # time.succ   -> new_time
    #  
    # Return a new time object, one second later than <code>time</code>.
    # Time#succ is obsolete since 1.9.2 for time is not a discrete value.
    # 
    #     t = Time.now       #=> 2007-11-19 08:23:57 -0600
    #     t.succ             #=> 2007-11-19 08:23:58 -0600
    def succ()
        #This is a stub, used for indexing
    end
    # time.round([ndigits])   -> new_time
    #  
    # Rounds sub seconds to a given precision in decimal digits (0 digits by default).
    # It returns a new time object.
    # _ndigits_ should be zero or positive integer.
    # 
    #     require 'time'
    # 
    #     t = Time.utc(2010,3,30, 5,43,"25.123456789".to_r)
    #     p t.iso8601(10)           #=> "2010-03-30T05:43:25.1234567890Z"
    #     p t.round.iso8601(10)     #=> "2010-03-30T05:43:25.0000000000Z"
    #     p t.round(0).iso8601(10)  #=> "2010-03-30T05:43:25.0000000000Z"
    #     p t.round(1).iso8601(10)  #=> "2010-03-30T05:43:25.1000000000Z"
    #     p t.round(2).iso8601(10)  #=> "2010-03-30T05:43:25.1200000000Z"
    #     p t.round(3).iso8601(10)  #=> "2010-03-30T05:43:25.1230000000Z"
    #     p t.round(4).iso8601(10)  #=> "2010-03-30T05:43:25.1235000000Z"
    #     p t.round(5).iso8601(10)  #=> "2010-03-30T05:43:25.1234600000Z"
    #     p t.round(6).iso8601(10)  #=> "2010-03-30T05:43:25.1234570000Z"
    #     p t.round(7).iso8601(10)  #=> "2010-03-30T05:43:25.1234568000Z"
    #     p t.round(8).iso8601(10)  #=> "2010-03-30T05:43:25.1234567900Z"
    #     p t.round(9).iso8601(10)  #=> "2010-03-30T05:43:25.1234567890Z"
    #     p t.round(10).iso8601(10) #=> "2010-03-30T05:43:25.1234567890Z"
    # 
    #     t = Time.utc(1999,12,31, 23,59,59)
    #     p((t + 0.4).round.iso8601(3))    #=> "1999-12-31T23:59:59.000Z"
    #     p((t + 0.49).round.iso8601(3))   #=> "1999-12-31T23:59:59.000Z"
    #     p((t + 0.5).round.iso8601(3))    #=> "2000-01-01T00:00:00.000Z"
    #     p((t + 1.4).round.iso8601(3))    #=> "2000-01-01T00:00:00.000Z"
    #     p((t + 1.49).round.iso8601(3))   #=> "2000-01-01T00:00:00.000Z"
    #     p((t + 1.5).round.iso8601(3))    #=> "2000-01-01T00:00:01.000Z"
    # 
    #     t = Time.utc(1999,12,31, 23,59,59)
    #     p (t + 0.123456789).round(4).iso8601(6)  #=> "1999-12-31T23:59:59.123500Z"
    def round(*ndigits)
        #This is a stub, used for indexing
    end
    # time.sec -> fixnum
    #  
    # Returns the second of the minute (0..60)<em>[Yes, seconds really can
    # range from zero to 60. This allows the system to inject leap seconds
    # every now and then to correct for the fact that years are not really
    # a convenient number of hours long.]</em> for <i>time</i>.
    # 
    #    t = Time.now   #=> 2007-11-19 08:25:02 -0600
    #    t.sec          #=> 2
    def sec()
        #This is a stub, used for indexing
    end
    # time.min -> fixnum
    #  
    # Returns the minute of the hour (0..59) for <i>time</i>.
    # 
    #    t = Time.now   #=> 2007-11-19 08:25:51 -0600
    #    t.min          #=> 25
    def min()
        #This is a stub, used for indexing
    end
    # time.hour -> fixnum
    #  
    # Returns the hour of the day (0..23) for <i>time</i>.
    # 
    #    t = Time.now   #=> 2007-11-19 08:26:20 -0600
    #    t.hour         #=> 8
    def hour()
        #This is a stub, used for indexing
    end
    # time.day  -> fixnum
    # time.mday -> fixnum
    #  
    # Returns the day of the month (1..n) for <i>time</i>.
    # 
    #    t = Time.now   #=> 2007-11-19 08:27:03 -0600
    #    t.day          #=> 19
    #    t.mday         #=> 19
    def mday()
        #This is a stub, used for indexing
    end
    # time.day  -> fixnum
    # time.mday -> fixnum
    #  
    # Returns the day of the month (1..n) for <i>time</i>.
    # 
    #    t = Time.now   #=> 2007-11-19 08:27:03 -0600
    #    t.day          #=> 19
    #    t.mday         #=> 19
    def day()
        #This is a stub, used for indexing
    end
    # time.mon   -> fixnum
    # time.month -> fixnum
    #  
    # Returns the month of the year (1..12) for <i>time</i>.
    # 
    #    t = Time.now   #=> 2007-11-19 08:27:30 -0600
    #    t.mon          #=> 11
    #    t.month        #=> 11
    def mon(*several_variants)
        #This is a stub, used for indexing
    end
    # time.mon   -> fixnum
    # time.month -> fixnum
    #  
    # Returns the month of the year (1..12) for <i>time</i>.
    # 
    #    t = Time.now   #=> 2007-11-19 08:27:30 -0600
    #    t.mon          #=> 11
    #    t.month        #=> 11
    def month()
        #This is a stub, used for indexing
    end
    # time.year -> fixnum
    #  
    # Returns the year for <i>time</i> (including the century).
    # 
    #    t = Time.now   #=> 2007-11-19 08:27:51 -0600
    #    t.year         #=> 2007
    def year()
        #This is a stub, used for indexing
    end
    # time.wday -> fixnum
    #  
    # Returns an integer representing the day of the week, 0..6, with
    # Sunday == 0.
    # 
    #    t = Time.now   #=> 2007-11-20 02:35:35 -0600
    #    t.wday         #=> 2
    #    t.sunday?      #=> false
    #    t.monday?      #=> false
    #    t.tuesday?     #=> true
    #    t.wednesday?   #=> false
    #    t.thursday?    #=> false
    #    t.friday?      #=> false
    #    t.saturday?    #=> false
    def wday()
        #This is a stub, used for indexing
    end
    # time.yday -> fixnum
    #  
    # Returns an integer representing the day of the year, 1..366.
    # 
    #    t = Time.now   #=> 2007-11-19 08:32:31 -0600
    #    t.yday         #=> 323
    def yday()
        #This is a stub, used for indexing
    end
    # time.isdst -> true or false
    # time.dst?  -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> occurs during Daylight
    # Saving Time in its time zone.
    # 
    #  # CST6CDT:
    #    Time.local(2000, 1, 1).zone    #=> "CST"
    #    Time.local(2000, 1, 1).isdst   #=> false
    #    Time.local(2000, 1, 1).dst?    #=> false
    #    Time.local(2000, 7, 1).zone    #=> "CDT"
    #    Time.local(2000, 7, 1).isdst   #=> true
    #    Time.local(2000, 7, 1).dst?    #=> true
    # 
    #  # Asia/Tokyo:
    #    Time.local(2000, 1, 1).zone    #=> "JST"
    #    Time.local(2000, 1, 1).isdst   #=> false
    #    Time.local(2000, 1, 1).dst?    #=> false
    #    Time.local(2000, 7, 1).zone    #=> "JST"
    #    Time.local(2000, 7, 1).isdst   #=> false
    #    Time.local(2000, 7, 1).dst?    #=> false
    def isdst()
        #This is a stub, used for indexing
    end
    # time.isdst -> true or false
    # time.dst?  -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> occurs during Daylight
    # Saving Time in its time zone.
    # 
    #  # CST6CDT:
    #    Time.local(2000, 1, 1).zone    #=> "CST"
    #    Time.local(2000, 1, 1).isdst   #=> false
    #    Time.local(2000, 1, 1).dst?    #=> false
    #    Time.local(2000, 7, 1).zone    #=> "CDT"
    #    Time.local(2000, 7, 1).isdst   #=> true
    #    Time.local(2000, 7, 1).dst?    #=> true
    # 
    #  # Asia/Tokyo:
    #    Time.local(2000, 1, 1).zone    #=> "JST"
    #    Time.local(2000, 1, 1).isdst   #=> false
    #    Time.local(2000, 1, 1).dst?    #=> false
    #    Time.local(2000, 7, 1).zone    #=> "JST"
    #    Time.local(2000, 7, 1).isdst   #=> false
    #    Time.local(2000, 7, 1).dst?    #=> false
    def dst?()
        #This is a stub, used for indexing
    end
    # time.zone -> string
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
    # time.gmt_offset -> fixnum
    # time.gmtoff     -> fixnum
    # time.utc_offset -> fixnum
    #  
    # Returns the offset in seconds between the timezone of <i>time</i>
    # and UTC.
    # 
    #    t = Time.gm(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
    #    t.gmt_offset                    #=> 0
    #    l = t.getlocal                  #=> 2000-01-01 14:15:01 -0600
    #    l.gmt_offset                    #=> -21600
    def gmtoff()
        #This is a stub, used for indexing
    end
    # time.gmt_offset -> fixnum
    # time.gmtoff     -> fixnum
    # time.utc_offset -> fixnum
    #  
    # Returns the offset in seconds between the timezone of <i>time</i>
    # and UTC.
    # 
    #    t = Time.gm(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
    #    t.gmt_offset                    #=> 0
    #    l = t.getlocal                  #=> 2000-01-01 14:15:01 -0600
    #    l.gmt_offset                    #=> -21600
    def gmt_offset()
        #This is a stub, used for indexing
    end
    # time.gmt_offset -> fixnum
    # time.gmtoff     -> fixnum
    # time.utc_offset -> fixnum
    #  
    # Returns the offset in seconds between the timezone of <i>time</i>
    # and UTC.
    # 
    #    t = Time.gm(2000,1,1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
    #    t.gmt_offset                    #=> 0
    #    l = t.getlocal                  #=> 2000-01-01 14:15:01 -0600
    #    l.gmt_offset                    #=> -21600
    def utc_offset()
        #This is a stub, used for indexing
    end
    # time.utc? -> true or false
    # time.gmt? -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents a time in UTC
    # (GMT).
    # 
    #    t = Time.now                        #=> 2007-11-19 08:15:23 -0600
    #    t.utc?                              #=> false
    #    t = Time.gm(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
    #    t.utc?                              #=> true
    # 
    #    t = Time.now                        #=> 2007-11-19 08:16:03 -0600
    #    t.gmt?                              #=> false
    #    t = Time.gm(2000,1,1,20,15,1)       #=> 2000-01-01 20:15:01 UTC
    #    t.gmt?                              #=> true
    def utc?()
        #This is a stub, used for indexing
    end
    # time.utc? -> true or false
    # time.gmt? -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents a time in UTC
    # (GMT).
    # 
    #    t = Time.now                        #=> 2007-11-19 08:15:23 -0600
    #    t.utc?                              #=> false
    #    t = Time.gm(2000,"jan",1,20,15,1)   #=> 2000-01-01 20:15:01 UTC
    #    t.utc?                              #=> true
    # 
    #    t = Time.now                        #=> 2007-11-19 08:16:03 -0600
    #    t.gmt?                              #=> false
    #    t = Time.gm(2000,1,1,20,15,1)       #=> 2000-01-01 20:15:01 UTC
    #    t.gmt?                              #=> true
    def gmt?()
        #This is a stub, used for indexing
    end
    # time.sunday? -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents Sunday.
    # 
    #    t = Time.local(1990, 4, 1)       #=> 1990-04-01 00:00:00 -0600
    #    t.sunday?                        #=> true
    def sunday?()
        #This is a stub, used for indexing
    end
    # time.monday? -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents Monday.
    # 
    #    t = Time.local(2003, 8, 4)       #=> 2003-08-04 00:00:00 -0500
    #    p t.monday?                      #=> true
    def monday?()
        #This is a stub, used for indexing
    end
    # time.tuesday? -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents Tuesday.
    # 
    #    t = Time.local(1991, 2, 19)      #=> 1991-02-19 00:00:00 -0600
    #    p t.tuesday?                     #=> true
    def tuesday?()
        #This is a stub, used for indexing
    end
    # time.wednesday? -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents Wednesday.
    # 
    #    t = Time.local(1993, 2, 24)      #=> 1993-02-24 00:00:00 -0600
    #    p t.wednesday?                   #=> true
    def wednesday?()
        #This is a stub, used for indexing
    end
    # time.thursday? -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents Thursday.
    # 
    #    t = Time.local(1995, 12, 21)     #=> 1995-12-21 00:00:00 -0600
    #    p t.thursday?                    #=> true
    def thursday?()
        #This is a stub, used for indexing
    end
    # time.friday? -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents Friday.
    # 
    #    t = Time.local(1987, 12, 18)     #=> 1987-12-18 00:00:00 -0600
    #    t.friday?                        #=> true
    def friday?()
        #This is a stub, used for indexing
    end
    # time.saturday? -> true or false
    #  
    # Returns <code>true</code> if <i>time</i> represents Saturday.
    # 
    #    t = Time.local(2006, 6, 10)      #=> 2006-06-10 00:00:00 -0500
    #    t.saturday?                      #=> true
    def saturday?()
        #This is a stub, used for indexing
    end
    # time.to_i   -> int
    # time.tv_sec -> int
    #  
    # Returns the value of <i>time</i> as an integer number of seconds
    # since the Epoch.
    # 
    #    t = Time.now
    #    "%10.5f" % t.to_f   #=> "1270968656.89607"
    #    t.to_i              #=> 1270968656
    def tv_sec()
        #This is a stub, used for indexing
    end
    # time.usec    -> int
    # time.tv_usec -> int
    #  
    # Returns just the number of microseconds for <i>time</i>.
    # 
    #    t = Time.now        #=> 2007-11-19 08:03:26 -0600
    #    "%10.6f" % t.to_f   #=> "1195481006.775195"
    #    t.usec              #=> 775195
    def tv_usec()
        #This is a stub, used for indexing
    end
    # time.usec    -> int
    # time.tv_usec -> int
    #  
    # Returns just the number of microseconds for <i>time</i>.
    # 
    #    t = Time.now        #=> 2007-11-19 08:03:26 -0600
    #    "%10.6f" % t.to_f   #=> "1195481006.775195"
    #    t.usec              #=> 775195
    def usec()
        #This is a stub, used for indexing
    end
    # time.nsec    -> int
    # time.tv_nsec -> int
    #  
    # Returns just the number of nanoseconds for <i>time</i>.
    # 
    #    t = Time.now        #=> 2007-11-17 15:18:03 +0900
    #    "%10.9f" % t.to_f   #=> "1195280283.536151409"
    #    t.nsec              #=> 536151406
    # 
    # The lowest digit of to_f and nsec is different because
    # IEEE 754 double is not accurate enough to represent
    # nanoseconds from the Epoch.
    # The accurate value is returned by nsec.
    def tv_nsec()
        #This is a stub, used for indexing
    end
    # time.nsec    -> int
    # time.tv_nsec -> int
    #  
    # Returns just the number of nanoseconds for <i>time</i>.
    # 
    #    t = Time.now        #=> 2007-11-17 15:18:03 +0900
    #    "%10.9f" % t.to_f   #=> "1195280283.536151409"
    #    t.nsec              #=> 536151406
    # 
    # The lowest digit of to_f and nsec is different because
    # IEEE 754 double is not accurate enough to represent
    # nanoseconds from the Epoch.
    # The accurate value is returned by nsec.
    def nsec()
        #This is a stub, used for indexing
    end
    # time.subsec    -> number
    #  
    # Returns just the fraction for <i>time</i>.
    # 
    # The result is possibly rational.
    # 
    #    t = Time.now        #=> 2009-03-26 22:33:12 +0900
    #    "%10.9f" % t.to_f   #=> "1238074392.940563917"
    #    t.subsec            #=> (94056401/100000000)
    # 
    # The lowest digit of to_f and subsec is different because
    # IEEE 754 double is not accurate enough to represent
    # the rational.
    # The accurate value is returned by subsec.
    def subsec()
        #This is a stub, used for indexing
    end
    # time.strftime( string ) -> string
    #  
    # Formats <i>time</i> according to the directives in the given format
    # string.
    # The directives begins with a percent (%) character.
    # Any text not listed as a directive will be passed through to the
    # output string.
    # 
    # The directive consists of a percent (%) character,
    # zero or more flags, optional minimum field width,
    # optional modifier and a conversion specifier
    # as follows.
    # 
    #   %<flags><width><modifier><conversion>
    # 
    # Flags:
    #   -  don't pad a numerical output.
    #   _  use spaces for padding.
    #   0  use zeros for padding.
    #   ^  upcase the result string.
    #   #  change case.
    #   :  use colons for %z.
    # 
    # The minimum field width specifies the minimum width.
    # 
    # The modifier is "E" and "O".
    # They are ignored.
    # 
    # Format directives:
    # 
    #   Date (Year, Month, Day):
    #     %Y - Year with century (can be negative, 4 digits at least)
    #             -0001, 0000, 1995, 2009, 14292, etc.
    #     %C - year / 100 (round down.  20 in 2009)
    #     %y - year % 100 (00..99)
    # 
    #     %m - Month of the year, zero-padded (01..12)
    #             %_m  blank-padded ( 1..12)
    #             %-m  no-padded (1..12)
    #     %B - The full month name (``January'')
    #             %^B  uppercased (``JANUARY'')
    #     %b - The abbreviated month name (``Jan'')
    #             %^b  uppercased (``JAN'')
    #     %h - Equivalent to %b
    # 
    #     %d - Day of the month, zero-padded (01..31)
    #             %-d  no-padded (1..31)
    #     %e - Day of the month, blank-padded ( 1..31)
    # 
    #     %j - Day of the year (001..366)
    # 
    #   Time (Hour, Minute, Second, Subsecond):
    #     %H - Hour of the day, 24-hour clock, zero-padded (00..23)
    #     %k - Hour of the day, 24-hour clock, blank-padded ( 0..23)
    #     %I - Hour of the day, 12-hour clock, zero-padded (01..12)
    #     %l - Hour of the day, 12-hour clock, blank-padded ( 1..12)
    #     %P - Meridian indicator, lowercase (``am'' or ``pm'')
    #     %p - Meridian indicator, uppercase (``AM'' or ``PM'')
    # 
    #     %M - Minute of the hour (00..59)
    # 
    #     %S - Second of the minute (00..60)
    # 
    #     %L - Millisecond of the second (000..999)
    #     %N - Fractional seconds digits, default is 9 digits (nanosecond)
    #             %3N  millisecond (3 digits)
    #             %6N  microsecond (6 digits)
    #             %9N  nanosecond (9 digits)
    #             %12N picosecond (12 digits)
    # 
    #   Time zone:
    #     %z - Time zone as hour and minute offset from UTC (e.g. +0900)
    #             %:z - hour and minute offset from UTC with a colon (e.g. +09:00)
    #             %::z - hour, minute and second offset from UTC (e.g. +09:00:00)
    #     %Z - Time zone abbreviation name
    # 
    #   Weekday:
    #     %A - The full weekday name (``Sunday'')
    #             %^A  uppercased (``SUNDAY'')
    #     %a - The abbreviated name (``Sun'')
    #             %^a  uppercased (``SUN'')
    #     %u - Day of the week (Monday is 1, 1..7)
    #     %w - Day of the week (Sunday is 0, 0..6)
    # 
    #   ISO 8601 week-based year and week number:
    #   The week 1 of YYYY starts with a Monday and includes YYYY-01-04.
    #   The days in the year before the first week are in the last week of
    #   the previous year.
    #     %G - The week-based year
    #     %g - The last 2 digits of the week-based year (00..99)
    #     %V - Week number of the week-based year (01..53)
    # 
    #   Week number:
    #   The week 1 of YYYY starts with a Sunday or Monday (according to %U
    #   or %W).  The days in the year before the first week are in week 0.
    #     %U - Week number of the year.  The week starts with Sunday.  (00..53)
    #     %W - Week number of the year.  The week starts with Monday.  (00..53)
    # 
    #   Seconds since the Epoch:
    #     %s - Number of seconds since 1970-01-01 00:00:00 UTC.
    # 
    #   Literal string:
    #     %n - Newline character (\n)
    #     %t - Tab character (\t)
    #     %% - Literal ``%'' character
    # 
    #   Combination:
    #     %c - date and time (%a %b %e %T %Y)
    #     %D - Date (%m/%d/%y)
    #     %F - The ISO 8601 date format (%Y-%m-%d)
    #     %v - VMS date (%e-%^b-%4Y)
    #     %x - Same as %D
    #     %X - Same as %T
    #     %r - 12-hour time (%I:%M:%S %p)
    #     %R - 24-hour time (%H:%M)
    #     %T - 24-hour time (%H:%M:%S)
    # 
    # This method is similar to strftime() function defined in ISO C and POSIX.
    # Several directives (%a, %A, %b, %B, %c, %p, %r, %x, %X, %E*, %O* and %Z)
    # are locale dependent in the function.
    # However this method is locale independent since Ruby 1.9.
    # So, the result may differ even if a same format string is used in other
    # systems such as C.
    # It is good practice to avoid %x and %X because there are corresponding
    # locale independent representations, %D and %T.
    # 
    # Examples:
    # 
    #   t = Time.new(2007,11,19,8,37,48,"-06:00") #=> 2007-11-19 08:37:48 -0600
    #   t.strftime("Printed on %m/%d/%Y")   #=> "Printed on 11/19/2007"
    #   t.strftime("at %I:%M%p")            #=> "at 08:37AM"
    # 
    # Various ISO 8601 formats:
    #   %Y%m%d           => 20071119                  Calendar date (basic)
    #   %F               => 2007-11-19                Calendar date (extended)
    #   %Y-%m            => 2007-11                   Calendar date, reduced accuracy, specific month
    #   %Y               => 2007                      Calendar date, reduced accuracy, specific year
    #   %C               => 20                        Calendar date, reduced accuracy, specific century
    #   %Y%j             => 2007323                   Ordinal date (basic)
    #   %Y-%j            => 2007-323                  Ordinal date (extended)
    #   %GW%V%u          => 2007W471                  Week date (basic)
    #   %G-W%V-%u        => 2007-W47-1                Week date (extended)
    #   %GW%V            => 2007W47                   Week date, reduced accuracy, specific week (basic)
    #   %G-W%V           => 2007-W47                  Week date, reduced accuracy, specific week (extended)
    #   %H%M%S           => 083748                    Local time (basic)
    #   %T               => 08:37:48                  Local time (extended)
    #   %H%M             => 0837                      Local time, reduced accuracy, specific minute (basic)
    #   %H:%M            => 08:37                     Local time, reduced accuracy, specific minute (extended)
    #   %H               => 08                        Local time, reduced accuracy, specific hour
    #   %H%M%S,%L        => 083748,000                Local time with decimal fraction, comma as decimal sign (basic)
    #   %T,%L            => 08:37:48,000              Local time with decimal fraction, comma as decimal sign (extended)
    #   %H%M%S.%L        => 083748.000                Local time with decimal fraction, full stop as decimal sign (basic)
    #   %T.%L            => 08:37:48.000              Local time with decimal fraction, full stop as decimal sign (extended)
    #   %H%M%S%z         => 083748-0600               Local time and the difference from UTC (basic)
    #   %T%:z            => 08:37:48-06:00            Local time and the difference from UTC (extended)
    #   %Y%m%dT%H%M%S%z  => 20071119T083748-0600      Date and time of day for calendar date (basic)
    #   %FT%T%:z         => 2007-11-19T08:37:48-06:00 Date and time of day for calendar date (extended)
    #   %Y%jT%H%M%S%z    => 2007323T083748-0600       Date and time of day for ordinal date (basic)
    #   %Y-%jT%T%:z      => 2007-323T08:37:48-06:00   Date and time of day for ordinal date (extended)
    #   %GW%V%uT%H%M%S%z => 2007W471T083748-0600      Date and time of day for week date (basic)
    #   %G-W%V-%uT%T%:z  => 2007-W47-1T08:37:48-06:00 Date and time of day for week date (extended)
    #   %Y%m%dT%H%M      => 20071119T0837             Calendar date and local time (basic)
    #   %FT%R            => 2007-11-19T08:37          Calendar date and local time (extended)
    #   %Y%jT%H%MZ       => 2007323T0837Z             Ordinal date and UTC of day (basic)
    #   %Y-%jT%RZ        => 2007-323T08:37Z           Ordinal date and UTC of day (extended)
    #   %GW%V%uT%H%M%z   => 2007W471T0837-0600        Week date and local time and difference from UTC (basic)
    #   %G-W%V-%uT%R%:z  => 2007-W47-1T08:37-06:00    Week date and local time and difference from UTC (extended)
    def strftime( string )
        #This is a stub, used for indexing
    end
    # time._dump   -> string
    #  
    # Dump _time_ for marshaling.
    def _dump()
        #This is a stub, used for indexing
    end
    # Time._load(string)   -> time
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
    # t.to_time  ->  time
    #  
    # Returns a copy of self as local mode.
    def to_time()
        #This is a stub, used for indexing
    end
    # t.to_date  ->  date
    #  
    # Returns a Date object which denotes self.
    def to_date()
        #This is a stub, used for indexing
    end
    # t.to_datetime  ->  datetime
    #  
    # Returns a DateTime object which denotes self.
    def to_datetime()
        #This is a stub, used for indexing
    end
end
