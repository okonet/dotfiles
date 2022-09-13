=begin
 This is a machine generated stub using stdlib-doc for <b>class Thread</b>
 Sources used:  Ruby 1.9.3-p545
 Created on 2014-03-18 09:09:44 +0400 by IntelliJ Ruby Stubs Generator.
=end

# ::VM   
class Thread
    # Thread.start([args]*) {|args| block }   -> thread
    # Thread.fork([args]*) {|args| block }    -> thread
    #  
    # Basically the same as <code>Thread::new</code>. However, if class
    # <code>Thread</code> is subclassed, then calling <code>start</code> in that
    # subclass will not invoke the subclass's <code>initialize</code> method.
    def self.start(*args)
        #This is a stub, used for indexing
    end
    # Thread.start([args]*) {|args| block }   -> thread
    # Thread.fork([args]*) {|args| block }    -> thread
    #  
    # Basically the same as <code>Thread::new</code>. However, if class
    # <code>Thread</code> is subclassed, then calling <code>start</code> in that
    # subclass will not invoke the subclass's <code>initialize</code> method.
    def self.fork(*args)
        #This is a stub, used for indexing
    end
    # Thread.main   -> thread
    #  
    # Returns the main thread.
    def self.main()
        #This is a stub, used for indexing
    end
    # Thread.current   -> thread
    #  
    # Returns the currently executing thread.
    # 
    #    Thread.current   #=> #<Thread:0x401bdf4c run>
    def self.current()
        #This is a stub, used for indexing
    end
    # Thread.stop   -> nil
    #  
    # Stops execution of the current thread, putting it into a ``sleep'' state,
    # and schedules execution of another thread.
    # 
    #    a = Thread.new { print "a"; Thread.stop; print "c" }
    #    sleep 0.1 while a.status!='sleep'
    #    print "b"
    #    a.run
    #    a.join
    # 
    # <em>produces:</em>
    # 
    #    abc
    def self.stop()
        #This is a stub, used for indexing
    end
    # Thread.kill(thread)   -> thread
    #  
    # Causes the given <em>thread</em> to exit (see <code>Thread::exit</code>).
    # 
    #    count = 0
    #    a = Thread.new { loop { count += 1 } }
    #    sleep(0.1)       #=> 0
    #    Thread.kill(a)   #=> #<Thread:0x401b3d30 dead>
    #    count            #=> 93947
    #    a.alive?         #=> false
    def self.kill(thread)
        #This is a stub, used for indexing
    end
    # Thread.exit   -> thread
    #  
    # Terminates the currently running thread and schedules another thread to be
    # run. If this thread is already marked to be killed, <code>exit</code>
    # returns the <code>Thread</code>. If this is the main thread, or the last
    # thread, exit the process.
    def self.exit()
        #This is a stub, used for indexing
    end
    # Thread.pass   -> nil
    #  
    # Give the thread scheduler a hint to pass execution to another thread.
    # A running thread may or may not switch, it depends on OS and processor.
    def self.pass()
        #This is a stub, used for indexing
    end
    # Thread.list   -> array
    #  
    # Returns an array of <code>Thread</code> objects for all threads that are
    # either runnable or stopped.
    # 
    #    Thread.new { sleep(200) }
    #    Thread.new { 1000000.times {|i| i*i } }
    #    Thread.new { Thread.stop }
    #    Thread.list.each {|t| p t}
    # 
    # <em>produces:</em>
    # 
    #    #<Thread:0x401b3e84 sleep>
    #    #<Thread:0x401b3f38 run>
    #    #<Thread:0x401b3fb0 sleep>
    #    #<Thread:0x401bdf4c run>
    def self.list()
        #This is a stub, used for indexing
    end
    # Thread.abort_on_exception   -> true or false
    #  
    # Returns the status of the global ``abort on exception'' condition.  The
    # default is <code>false</code>. When set to <code>true</code>, or if the
    # global <code>$DEBUG</code> flag is <code>true</code> (perhaps because the
    # command line option <code>-d</code> was specified) all threads will abort
    # (the process will <code>exit(0)</code>) if an exception is raised in any
    # thread. See also <code>Thread::abort_on_exception=</code>.
    def self.abort_on_exception()
        #This is a stub, used for indexing
    end
    # Thread.abort_on_exception= boolean   -> true or false
    #  
    # When set to <code>true</code>, all threads will abort if an exception is
    # raised. Returns the new state.
    # 
    #    Thread.abort_on_exception = true
    #    t1 = Thread.new do
    #      puts  "In new thread"
    #      raise "Exception from thread"
    #    end
    #    sleep(1)
    #    puts "not reached"
    # 
    # <em>produces:</em>
    # 
    #    In new thread
    #    prog.rb:4: Exception from thread (RuntimeError)
    #     from prog.rb:2:in `initialize'
    #     from prog.rb:2:in `new'
    #     from prog.rb:2
    def self.abort_on_exception= boolean
        #This is a stub, used for indexing
    end
    # Thread.DEBUG     -> num
    #  
    # Returns the thread debug level.  Available only if compiled with
    # THREAD_DEBUG=-1.
    def self.DEBUG()
        #This is a stub, used for indexing
    end
    # Thread.DEBUG = num
    #  
    # Sets the thread debug level.  Available only if compiled with
    # THREAD_DEBUG=-1.
    def self.DEBUG= num
        #This is a stub, used for indexing
    end
    # thr.raise
    # thr.raise(string)
    # thr.raise(exception [, string [, array]])
    #  
    # Raises an exception (see <code>Kernel::raise</code>) from <i>thr</i>. The
    # caller does not have to be <i>thr</i>.
    # 
    #    Thread.abort_on_exception = true
    #    a = Thread.new { sleep(200) }
    #    a.raise("Gotcha")
    # 
    # <em>produces:</em>
    # 
    #    prog.rb:3: Gotcha (RuntimeError)
    #     from prog.rb:2:in `initialize'
    #     from prog.rb:2:in `new'
    #     from prog.rb:2
    def raise(*several_variants)
        #This is a stub, used for indexing
    end
    # thr.join          -> thr
    # thr.join(limit)   -> thr
    #  
    # The calling thread will suspend execution and run <i>thr</i>. Does not
    # return until <i>thr</i> exits or until <i>limit</i> seconds have passed. If
    # the time limit expires, <code>nil</code> will be returned, otherwise
    # <i>thr</i> is returned.
    # 
    # Any threads not joined will be killed when the main program exits.  If
    # <i>thr</i> had previously raised an exception and the
    # <code>abort_on_exception</code> and <code>$DEBUG</code> flags are not set
    # (so the exception has not yet been processed) it will be processed at this
    # time.
    # 
    #    a = Thread.new { print "a"; sleep(10); print "b"; print "c" }
    #    x = Thread.new { print "x"; Thread.pass; print "y"; print "z" }
    #    x.join # Let x thread finish, a will be killed on exit.
    # 
    # <em>produces:</em>
    # 
    #    axyz
    # 
    # The following example illustrates the <i>limit</i> parameter.
    # 
    #    y = Thread.new { 4.times { sleep 0.1; puts 'tick... ' }}
    #    puts "Waiting" until y.join(0.15)
    # 
    # <em>produces:</em>
    # 
    #    tick...
    #    Waiting
    #    tick...
    #    Waitingtick...
    # 
    #    tick...
    def join(*several_variants)
        #This is a stub, used for indexing
    end
    # thr.value   -> obj
    #  
    # Waits for <i>thr</i> to complete (via <code>Thread#join</code>) and returns
    # its value.
    # 
    #    a = Thread.new { 2 + 2 }
    #    a.value   #=> 4
    def value()
        #This is a stub, used for indexing
    end
    # thr.exit        -> thr or nil
    # thr.kill        -> thr or nil
    # thr.terminate   -> thr or nil
    #  
    # Terminates <i>thr</i> and schedules another thread to be run. If this thread
    # is already marked to be killed, <code>exit</code> returns the
    # <code>Thread</code>. If this is the main thread, or the last thread, exits
    # the process.
    def kill()
        #This is a stub, used for indexing
    end
    # thr.exit        -> thr or nil
    # thr.kill        -> thr or nil
    # thr.terminate   -> thr or nil
    #  
    # Terminates <i>thr</i> and schedules another thread to be run. If this thread
    # is already marked to be killed, <code>exit</code> returns the
    # <code>Thread</code>. If this is the main thread, or the last thread, exits
    # the process.
    def terminate()
        #This is a stub, used for indexing
    end
    # thr.exit        -> thr or nil
    # thr.kill        -> thr or nil
    # thr.terminate   -> thr or nil
    #  
    # Terminates <i>thr</i> and schedules another thread to be run. If this thread
    # is already marked to be killed, <code>exit</code> returns the
    # <code>Thread</code>. If this is the main thread, or the last thread, exits
    # the process.
    def exit()
        #This is a stub, used for indexing
    end
    # thr.run   -> thr
    #  
    # Wakes up <i>thr</i>, making it eligible for scheduling.
    # 
    #    a = Thread.new { puts "a"; Thread.stop; puts "c" }
    #    sleep 0.1 while a.status!='sleep'
    #    puts "Got here"
    #    a.run
    #    a.join
    # 
    # <em>produces:</em>
    # 
    #    a
    #    Got here
    #    c
    def run()
        #This is a stub, used for indexing
    end
    # thr.wakeup   -> thr
    #  
    # Marks <i>thr</i> as eligible for scheduling (it may still remain blocked on
    # I/O, however). Does not invoke the scheduler (see <code>Thread#run</code>).
    # 
    #    c = Thread.new { Thread.stop; puts "hey!" }
    #    sleep 0.1 while c.status!='sleep'
    #    c.wakeup
    #    c.join
    # 
    # <em>produces:</em>
    # 
    #    hey!
    def wakeup()
        #This is a stub, used for indexing
    end
    # thr[sym]   -> obj or nil
    #  
    # Attribute Reference---Returns the value of a thread-local variable, using
    # either a symbol or a string name. If the specified variable does not exist,
    # returns <code>nil</code>.
    # 
    #    [
    #      Thread.new { Thread.current["name"] = "A" },
    #      Thread.new { Thread.current[:name]  = "B" },
    #      Thread.new { Thread.current["name"] = "C" }
    #    ].each do |th|
    #      th.join
    #      puts "#{th.inspect}: #{th[:name]}"
    #    end
    # 
    # <em>produces:</em>
    # 
    #    #<Thread:0x00000002a54220 dead>: A
    #    #<Thread:0x00000002a541a8 dead>: B
    #    #<Thread:0x00000002a54130 dead>: C
    def [] sym
        #This is a stub, used for indexing
    end
    # thr[sym] = obj   -> obj
    #  
    # Attribute Assignment---Sets or creates the value of a thread-local variable,
    # using either a symbol or a string. See also <code>Thread#[]</code>.
    def []=(sym, obj)
        #This is a stub, used for indexing
    end
    # thr.key?(sym)   -> true or false
    #  
    # Returns <code>true</code> if the given string (or symbol) exists as a
    # thread-local variable.
    # 
    #    me = Thread.current
    #    me[:oliver] = "a"
    #    me.key?(:oliver)    #=> true
    #    me.key?(:stanley)   #=> false
    def key?(sym)
        #This is a stub, used for indexing
    end
    # thr.keys   -> array
    #  
    # Returns an an array of the names of the thread-local variables (as Symbols).
    # 
    #    thr = Thread.new do
    #      Thread.current[:cat] = 'meow'
    #      Thread.current["dog"] = 'woof'
    #    end
    #    thr.join   #=> #<Thread:0x401b3f10 dead>
    #    thr.keys   #=> [:dog, :cat]
    def keys()
        #This is a stub, used for indexing
    end
    # thr.priority   -> integer
    #  
    # Returns the priority of <i>thr</i>. Default is inherited from the
    # current thread which creating the new thread, or zero for the
    # initial main thread; higher-priority thread will run more frequently
    # than lower-priority threads (but lower-priority threads can also run).
    # 
    # This is just hint for Ruby thread scheduler.  It may be ignored on some
    # platform.
    # 
    #    Thread.current.priority   #=> 0
    def priority()
        #This is a stub, used for indexing
    end
    # thr.priority= integer   -> thr
    #  
    # Sets the priority of <i>thr</i> to <i>integer</i>. Higher-priority threads
    # will run more frequently than lower-priority threads (but lower-priority
    # threads can also run).
    # 
    # This is just hint for Ruby thread scheduler.  It may be ignored on some
    # platform.
    # 
    #    count1 = count2 = 0
    #    a = Thread.new do
    #          loop { count1 += 1 }
    #        end
    #    a.priority = -1
    # 
    #    b = Thread.new do
    #          loop { count2 += 1 }
    #        end
    #    b.priority = -2
    #    sleep 1   #=> 1
    #    count1    #=> 622504
    #    count2    #=> 5832
    def priority= integer
        #This is a stub, used for indexing
    end
    # thr.status   -> string, false or nil
    #  
    # Returns the status of <i>thr</i>: ``<code>sleep</code>'' if <i>thr</i> is
    # sleeping or waiting on I/O, ``<code>run</code>'' if <i>thr</i> is executing,
    # ``<code>aborting</code>'' if <i>thr</i> is aborting, <code>false</code> if
    # <i>thr</i> terminated normally, and <code>nil</code> if <i>thr</i>
    # terminated with an exception.
    # 
    #    a = Thread.new { raise("die now") }
    #    b = Thread.new { Thread.stop }
    #    c = Thread.new { Thread.exit }
    #    d = Thread.new { sleep }
    #    d.kill                  #=> #<Thread:0x401b3678 aborting>
    #    a.status                #=> nil
    #    b.status                #=> "sleep"
    #    c.status                #=> false
    #    d.status                #=> "aborting"
    #    Thread.current.status   #=> "run"
    def status()
        #This is a stub, used for indexing
    end
    # thr.alive?   -> true or false
    #  
    # Returns <code>true</code> if <i>thr</i> is running or sleeping.
    # 
    #    thr = Thread.new { }
    #    thr.join                #=> #<Thread:0x401b3fb0 dead>
    #    Thread.current.alive?   #=> true
    #    thr.alive?              #=> false
    def alive?()
        #This is a stub, used for indexing
    end
    # thr.stop?   -> true or false
    #  
    # Returns <code>true</code> if <i>thr</i> is dead or sleeping.
    # 
    #    a = Thread.new { Thread.stop }
    #    b = Thread.current
    #    a.stop?   #=> true
    #    b.stop?   #=> false
    def stop?()
        #This is a stub, used for indexing
    end
    # thr.abort_on_exception   -> true or false
    #  
    # Returns the status of the thread-local ``abort on exception'' condition for
    # <i>thr</i>. The default is <code>false</code>. See also
    # <code>Thread::abort_on_exception=</code>.
    def abort_on_exception()
        #This is a stub, used for indexing
    end
    # thr.abort_on_exception= boolean   -> true or false
    #  
    # When set to <code>true</code>, causes all threads (including the main
    # program) to abort if an exception is raised in <i>thr</i>. The process will
    # effectively <code>exit(0)</code>.
    def abort_on_exception= boolean
        #This is a stub, used for indexing
    end
    # thr.safe_level   -> integer
    #  
    # Returns the safe level in effect for <i>thr</i>. Setting thread-local safe
    # levels can help when implementing sandboxes which run insecure code.
    # 
    #    thr = Thread.new { $SAFE = 3; sleep }
    #    Thread.current.safe_level   #=> 0
    #    thr.safe_level              #=> 3
    def safe_level()
        #This is a stub, used for indexing
    end
    # thr.group   -> thgrp or nil
    #  
    # Returns the <code>ThreadGroup</code> which contains <i>thr</i>, or nil if
    # the thread is not a member of any group.
    # 
    #    Thread.main.group   #=> #<ThreadGroup:0x4029d914>
    def group()
        #This is a stub, used for indexing
    end
    # thr.backtrace    -> array
    #  
    # Returns the current back trace of the _thr_.
    def backtrace()
        #This is a stub, used for indexing
    end
    # thr.inspect   -> string
    #  
    # Dump the name, id, and status of _thr_ to a string.
    def inspect()
        #This is a stub, used for indexing
    end
    # thr.set_trace_func(proc)    -> proc
    # thr.set_trace_func(nil)     -> nil
    #  
    # Establishes _proc_ on _thr_ as the handler for tracing, or
    # disables tracing if the parameter is +nil+.
    # See +set_trace_func+.
    def set_trace_func(*several_variants)
        #This is a stub, used for indexing
    end
    # thr.add_trace_func(proc)    -> proc
    #  
    # Adds _proc_ as a handler for tracing.
    # See <code>Thread#set_trace_func</code> and +set_trace_func+.
    def add_trace_func(proc)
        #This is a stub, used for indexing
    end
end
