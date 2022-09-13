=begin
 This is a machine generated stub using stdlib-doc for <b>class Thread</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# +Thread+ encapsulates the behavior of a thread of
# execution, including the main thread of the Ruby script.
# 
# In the descriptions of the methods in this class, the parameter _sym_
# refers to a symbol, which is either a quoted string or a 
# +Symbol+ (such as <code>:name</code>).
class Thread
    # Thread.new([arg]*) {|args| block }   => thread
    #  
    # Creates and runs a new thread to execute the instructions given in
    # <i>block</i>. Any arguments passed to <code>Thread::new</code> are passed
    # into the block.
    # 
    #    x = Thread.new { sleep 0.1; print "x"; print "y"; print "z" }
    #    a = Thread.new { print "a"; print "b"; sleep 0.2; print "c" }
    #    x.join # Let the threads finish before
    #    a.join # main thread exits...
    # 
    # <em>produces:</em>
    # 
    #    abxyzc
    def self.new(*args)
        #This is a stub, used for indexing
    end
    # Thread.start([args]*) {|args| block }   => thread
    # Thread.fork([args]*) {|args| block }    => thread
    #  
    # Basically the same as <code>Thread::new</code>. However, if class
    # <code>Thread</code> is subclassed, then calling <code>start</code> in that
    # subclass will not invoke the subclass's <code>initialize</code> method.
    def self.start(*args)
        #This is a stub, used for indexing
    end
    # Thread.start([args]*) {|args| block }   => thread
    # Thread.fork([args]*) {|args| block }    => thread
    #  
    # Basically the same as <code>Thread::new</code>. However, if class
    # <code>Thread</code> is subclassed, then calling <code>start</code> in that
    # subclass will not invoke the subclass's <code>initialize</code> method.
    def self.fork(*args)
        #This is a stub, used for indexing
    end
    # Thread.stop   => nil
    #  
    # Stops execution of the current thread, putting it into a ``sleep'' state,
    # and schedules execution of another thread. Resets the ``critical'' condition
    # to <code>false</code>.
    # 
    #    a = Thread.new { print "a"; Thread.stop; print "c" }
    #    Thread.pass
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
    # Thread.kill(thread)   => thread
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
    # Thread.exit   => thread
    #  
    # Terminates the currently running thread and schedules another thread to be
    # run. If this thread is already marked to be killed, <code>exit</code>
    # returns the <code>Thread</code>. If this is the main thread, or the last
    # thread, exit the process.
    def self.exit()
        #This is a stub, used for indexing
    end
    # Thread.pass   => nil
    #  
    # Invokes the thread scheduler to pass execution to another thread.
    # 
    #    a = Thread.new { print "a"; Thread.pass;
    #                     print "b"; Thread.pass;
    #                     print "c" }
    #    b = Thread.new { print "x"; Thread.pass;
    #                     print "y"; Thread.pass;
    #                     print "z" }
    #    a.join
    #    b.join
    # 
    # <em>produces:</em>
    # 
    #    axbycz
    def self.pass()
        #This is a stub, used for indexing
    end
    # Thread.current   => thread
    #  
    # Returns the currently executing thread.
    # 
    #    Thread.current   #=> #<Thread:0x401bdf4c run>
    def self.current()
        #This is a stub, used for indexing
    end
    # Thread.main   => thread
    #  
    # Returns the main thread for the process.
    # 
    #    Thread.main   #=> #<Thread:0x401bdf4c run>
    def self.main()
        #This is a stub, used for indexing
    end
    # Thread.list   => array
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
    # Thread.critical   => true or false
    #  
    # Returns the status of the global ``thread critical'' condition.
    def self.critical()
        #This is a stub, used for indexing
    end
    # Thread.critical= boolean   => true or false
    #  
    # Sets the status of the global ``thread critical'' condition and returns
    # it. When set to <code>true</code>, prohibits scheduling of any existing
    # thread. Does not block new threads from being created and run. Certain
    # thread operations (such as stopping or killing a thread, sleeping in the
    # current thread, and raising an exception) may cause a thread to be scheduled
    # even when in a critical section.  <code>Thread::critical</code> is not
    # intended for daily use: it is primarily there to support folks writing
    # threading libraries.
    def self.critical= boolean
        #This is a stub, used for indexing
    end
    # Thread.abort_on_exception   => true or false
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
    # Thread.abort_on_exception= boolean   => true or false
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
    # thr.run   => thr
    #  
    # Wakes up <i>thr</i>, making it eligible for scheduling. If not in a critical
    # section, then invokes the scheduler.
    # 
    #    a = Thread.new { puts "a"; Thread.stop; puts "c" }
    #    Thread.pass
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
    # thr.wakeup   => thr
    #  
    # Marks <i>thr</i> as eligible for scheduling (it may still remain blocked on
    # I/O, however). Does not invoke the scheduler (see <code>Thread#run</code>).
    # 
    #    c = Thread.new { Thread.stop; puts "hey!" }
    #    c.wakeup
    # 
    # <em>produces:</em>
    # 
    #    hey!
    def wakeup()
        #This is a stub, used for indexing
    end
    # thr.exit        => thr
    # thr.kill        => thr
    # thr.terminate   => thr
    #  
    # Terminates <i>thr</i> and schedules another thread to be run, returning
    # the terminated <code>Thread</code>.  If this is the main thread, or the
    # last thread, exits the process.
    def kill()
        #This is a stub, used for indexing
    end
    # thr.exit        => thr
    # thr.kill        => thr
    # thr.terminate   => thr
    #  
    # Terminates <i>thr</i> and schedules another thread to be run, returning
    # the terminated <code>Thread</code>.  If this is the main thread, or the
    # last thread, exits the process.
    def terminate()
        #This is a stub, used for indexing
    end
    # thr.exit        => thr
    # thr.kill        => thr
    # thr.terminate   => thr
    #  
    # Terminates <i>thr</i> and schedules another thread to be run, returning
    # the terminated <code>Thread</code>.  If this is the main thread, or the
    # last thread, exits the process.
    def exit()
        #This is a stub, used for indexing
    end
    # thr.exit!        => thr
    # thr.kill!        => thr
    # thr.terminate!   => thr
    #  
    # Terminates <i>thr</i> without calling ensure clauses and schedules
    # another thread to be run, returning the terminated <code>Thread</code>.
    # If this is the main thread, or the last thread, exits the process.
    # 
    # See <code>Thread#exit</code> for the safer version.
    def kill!()
        #This is a stub, used for indexing
    end
    # thr.exit!        => thr
    # thr.kill!        => thr
    # thr.terminate!   => thr
    #  
    # Terminates <i>thr</i> without calling ensure clauses and schedules
    # another thread to be run, returning the terminated <code>Thread</code>.
    # If this is the main thread, or the last thread, exits the process.
    # 
    # See <code>Thread#exit</code> for the safer version.
    def terminate!()
        #This is a stub, used for indexing
    end
    # thr.exit!        => thr
    # thr.kill!        => thr
    # thr.terminate!   => thr
    #  
    # Terminates <i>thr</i> without calling ensure clauses and schedules
    # another thread to be run, returning the terminated <code>Thread</code>.
    # If this is the main thread, or the last thread, exits the process.
    # 
    # See <code>Thread#exit</code> for the safer version.
    def exit!()
        #This is a stub, used for indexing
    end
    # thr.value   => obj
    #  
    # Waits for <i>thr</i> to complete (via <code>Thread#join</code>) and returns
    # its value.
    # 
    #    a = Thread.new { 2 + 2 }
    #    a.value   #=> 4
    def value()
        #This is a stub, used for indexing
    end
    # thr.status   => string, false or nil
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
    #    Thread.critical = true
    #    d.kill                  #=> #<Thread:0x401b3678 aborting>
    #    a.status                #=> nil
    #    b.status                #=> "sleep"
    #    c.status                #=> false
    #    d.status                #=> "aborting"
    #    Thread.current.status   #=> "run"
    def status()
        #This is a stub, used for indexing
    end
    # thr.join          => thr
    # thr.join(limit)   => thr
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
    # thr.alive?   => true or false
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
    # thr.stop?   => true or false
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
    # thr.raise(exception)
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
    def raise(exception)
        #This is a stub, used for indexing
    end
    # thr.abort_on_exception   => true or false
    #  
    # Returns the status of the thread-local ``abort on exception'' condition for
    # <i>thr</i>. The default is <code>false</code>. See also
    # <code>Thread::abort_on_exception=</code>.
    def abort_on_exception()
        #This is a stub, used for indexing
    end
    # thr.abort_on_exception= boolean   => true or false
    #  
    # When set to <code>true</code>, causes all threads (including the main
    # program) to abort if an exception is raised in <i>thr</i>. The process will
    # effectively <code>exit(0)</code>.
    def abort_on_exception= boolean
        #This is a stub, used for indexing
    end
    # thr.priority   => integer
    #  
    # Returns the priority of <i>thr</i>. Default is inherited from the
    # current thread which creating the new thread, or zero for the
    # initial main thread; higher-priority threads will run before
    # lower-priority threads.
    # 
    #    Thread.current.priority   #=> 0
    def priority()
        #This is a stub, used for indexing
    end
    # thr.priority= integer   => thr
    #  
    # Sets the priority of <i>thr</i> to <i>integer</i>. Higher-priority threads
    # will run before lower-priority threads.
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
    #    Thread.critical = 1
    #    count1    #=> 622504
    #    count2    #=> 5832
    def priority= integer
        #This is a stub, used for indexing
    end
    # thr.safe_level   => integer
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
    # thr.group   => thgrp or nil
    #  
    # Returns the <code>ThreadGroup</code> which contains <i>thr</i>, or nil if
    # the thread is not a member of any group.
    # 
    #    Thread.main.group   #=> #<ThreadGroup:0x4029d914>
    def group()
        #This is a stub, used for indexing
    end
    # thr[sym]   => obj or nil
    #  
    # Attribute Reference---Returns the value of a thread-local variable, using
    # either a symbol or a string name. If the specified variable does not exist,
    # returns <code>nil</code>.
    # 
    #    a = Thread.new { Thread.current["name"] = "A"; Thread.stop }
    #    b = Thread.new { Thread.current[:name]  = "B"; Thread.stop }
    #    c = Thread.new { Thread.current["name"] = "C"; Thread.stop }
    #    Thread.list.each {|x| puts "#{x.inspect}: #{x[:name]}" }
    # 
    # <em>produces:</em>
    # 
    #    #<Thread:0x401b3b3c sleep>: C
    #    #<Thread:0x401b3bc8 sleep>: B
    #    #<Thread:0x401b3c68 sleep>: A
    #    #<Thread:0x401bdf4c run>:
    def [] sym
        #This is a stub, used for indexing
    end
    # thr[sym] = obj   => obj
    #  
    # Attribute Assignment---Sets or creates the value of a thread-local variable,
    # using either a symbol or a string. See also <code>Thread#[]</code>.
    def []=(sym, obj)
        #This is a stub, used for indexing
    end
    # thr.key?(sym)   => true or false
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
    # thr.keys   => array
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
    # thr.inspect   => string
    #  
    # Dump the name, id, and status of _thr_ to a string.
    def inspect()
        #This is a stub, used for indexing
    end
end
