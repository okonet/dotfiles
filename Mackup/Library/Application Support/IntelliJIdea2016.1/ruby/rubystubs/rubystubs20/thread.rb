=begin
 This is a machine generated stub using stdlib-doc for <b>class Thread</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

# ::RubyVM   
class Thread
    # Thread.new { ... }                  -> thread
    # Thread.new(*args, &proc)            -> thread
    # Thread.new(*args) { |args| ... }    -> thread
    #  
    # Creates a new thread executing the given block.
    # 
    # Any +args+ given to ::new will be passed to the block:
    # 
    #     arr = []
    #     a, b, c = 1, 2, 3
    #     Thread.new(a,b,c) { |d,e,f| arr << d << e << f }.join
    #     arr #=> [1, 2, 3]
    # 
    # A ThreadError exception is raised if ::new is called without a block.
    # 
    # If you're going to subclass Thread, be sure to call super in your
    # +initialize+ method, otherwise a ThreadError will be raised.
    def self.new(*several_variants)
        #This is a stub, used for indexing
    end
    # Thread.start([args]*) {|args| block }   -> thread
    # Thread.fork([args]*) {|args| block }    -> thread
    #  
    # Basically the same as ::new. However, if class Thread is subclassed, then
    # calling +start+ in that subclass will not invoke the subclass's
    # +initialize+ method.
    def self.start(*args)
        #This is a stub, used for indexing
    end
    # Thread.start([args]*) {|args| block }   -> thread
    # Thread.fork([args]*) {|args| block }    -> thread
    #  
    # Basically the same as ::new. However, if class Thread is subclassed, then
    # calling +start+ in that subclass will not invoke the subclass's
    # +initialize+ method.
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
    # Thread.handle_interrupt(hash) { ... } -> result of the block
    #  
    # Changes asynchronous interrupt timing.
    # 
    # _interrupt_ means asynchronous event and corresponding procedure
    # by Thread#raise, Thread#kill, signal trap (not supported yet)
    # and main thread termination (if main thread terminates, then all
    # other thread will be killed).
    # 
    # The given +hash+ has pairs like <code>ExceptionClass =>
    # :TimingSymbol</code>. Where the ExceptionClass is the interrupt handled by
    # the given block. The TimingSymbol can be one of the following symbols:
    # 
    # [+:immediate+]   Invoke interrupts immediately.
    # [+:on_blocking+] Invoke interrupts while _BlockingOperation_.
    # [+:never+]       Never invoke all interrupts.
    # 
    # _BlockingOperation_ means that the operation will block the calling thread,
    # such as read and write.  On CRuby implementation, _BlockingOperation_ is any
    # operation executed without GVL.
    # 
    # Masked asynchronous interrupts are delayed until they are enabled.
    # This method is similar to sigprocmask(3).
    # 
    # === NOTE
    # 
    # Asynchronous interrupts are difficult to use.
    # 
    # If you need to communicate between threads, please consider to use another way such as Queue.
    # 
    # Or use them with deep understanding about this method.
    # 
    # === Usage
    # 
    # In this example, we can guard from Thread#raise exceptions.
    # 
    # Using the +:never+ TimingSymbol the RuntimeError exception will always be
    # ignored in the first block of the main thread. In the second
    # ::handle_interrupt block we can purposefully handle RuntimeError exceptions.
    # 
    #   th = Thread.new do
    #     Thead.handle_interrupt(RuntimeError => :never) {
    #       begin
    #         # You can write resource allocation code safely.
    #         Thread.handle_interrupt(RuntimeError => :immediate) {
    #           # ...
    #         }
    #       ensure
    #         # You can write resource deallocation code safely.
    #       end
    #     }
    #   end
    #   Thread.pass
    #   # ...
    #   th.raise "stop"
    # 
    # While we are ignoring the RuntimeError exception, it's safe to write our
    # resource allocation code. Then, the ensure block is where we can safely
    # deallocate your resources.
    # 
    # ==== Guarding from TimeoutError
    # 
    # In the next example, we will guard from the TimeoutError exception. This
    # will help prevent from leaking resources when TimeoutError exceptions occur
    # during normal ensure clause. For this example we use the help of the
    # standard library Timeout, from lib/timeout.rb
    # 
    #   require 'timeout'
    #   Thread.handle_interrupt(TimeoutError => :never) {
    #     timeout(10){
    #       # TimeoutError doesn't occur here
    #       Thread.handle_interrupt(TimeoutError => :on_blocking) {
    #         # possible to be killed by TimeoutError
    #         # while blocking operation
    #       }
    #       # TimeoutError doesn't occur here
    #     }
    #   }
    # 
    # In the first part of the +timeout+ block, we can rely on TimeoutError being
    # ignored. Then in the <code>TimeoutError => :on_blocking</code> block, any
    # operation that will block the calling thread is susceptible to a
    # TimeoutError exception being raised.
    # 
    # ==== Stack control settings
    # 
    # It's possible to stack multiple levels of ::handle_interrupt blocks in order
    # to control more than one ExceptionClass and TimingSymbol at a time.
    # 
    #   Thread.handle_interrupt(FooError => :never) {
    #     Thread.handle_interrupt(BarError => :never) {
    #        # FooError and BarError are prohibited.
    #     }
    #   }
    # 
    # ==== Inheritance with ExceptionClass
    # 
    # All exceptions inherited from the ExceptionClass parameter will be considered.
    # 
    #   Thread.handle_interrupt(Exception => :never) {
    #     # all exceptions inherited from Exception are prohibited.
    #   }
    def self.handle_interrupt(hash)
        #This is a stub, used for indexing
    end
    # Thread.pending_interrupt?(error = nil) -> true/false
    #  
    # Returns whether or not the asynchronous queue is empty.
    # 
    # Since Thread::handle_interrupt can be used to defer asynchronous events.
    # This method can be used to determine if there are any deferred events.
    # 
    # If you find this method returns true, then you may finish +:never+ blocks.
    # 
    # For example, the following method processes deferred asynchronous events
    # immediately.
    # 
    #   def Thread.kick_interrupt_immediately
    #     Thread.handle_interrupt(Object => :immediate) {
    #       Thread.pass
    #     }
    #   end
    # 
    # If +error+ is given, then check only for +error+ type deferred events.
    # 
    # === Usage
    # 
    #   th = Thread.new{
    #     Thread.handle_interrupt(RuntimeError => :on_blocking){
    #       while true
    #         ...
    #         # reach safe point to invoke interrupt
    #         if Thread.pending_interrupt?
    #           Thread.handle_interrupt(Object => :immediate){}
    #         end
    #         ...
    #       end
    #     }
    #   }
    #   ...
    #   th.raise # stop thread
    # 
    # This example can also be written as the following, which you should use to
    # avoid asynchronous interrupts.
    # 
    #   flag = true
    #   th = Thread.new{
    #     Thread.handle_interrupt(RuntimeError => :on_blocking){
    #       while true
    #         ...
    #         # reach safe point to invoke interrupt
    #         break if flag == false
    #         ...
    #       end
    #     }
    #   }
    #   ...
    #   flag = false # stop thread
    def self.pending_interrupt?(error = nil)
        #This is a stub, used for indexing
    end
    # target_thread.pending_interrupt?(error = nil) -> true/false
    #  
    # Returns whether or not the asychronous queue is empty for the target thread.
    # 
    # If +error+ is given, then check only for +error+ type deferred events.
    # 
    # See ::pending_interrupt? for more information.
    def pending_interrupt?(error = nil)
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
    # Attribute Reference---Returns the value of a fiber-local variable (current thread's root fiber
    # if not explicitely inside a Fiber), using either a symbol or a string name.
    # If the specified variable does not exist, returns <code>nil</code>.
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
    # 
    # Thread#[] and Thread#[]= are not thread-local but fiber-local.
    # This confusion did not exist in Ruby 1.8 because
    # fibers were only available since Ruby 1.9.
    # Ruby 1.9 chooses that the methods behaves fiber-local to save
    # following idiom for dynamic scope.
    # 
    #   def meth(newvalue)
    #     begin
    #       oldvalue = Thread.current[:name]
    #       Thread.current[:name] = newvalue
    #       yield
    #     ensure
    #       Thread.current[:name] = oldvalue
    #     end
    #   end
    # 
    # The idiom may not work as dynamic scope if the methods are thread-local
    # and a given block switches fiber.
    # 
    #   f = Fiber.new {
    #     meth(1) {
    #       Fiber.yield
    #     }
    #   }
    #   meth(2) {
    #     f.resume
    #   }
    #   f.resume
    #   p Thread.current[:name]
    #   #=> nil if fiber-local
    #   #=> 2 if thread-local (The value 2 is leaked to outside of meth method.)
    # 
    # For thread-local variables, please see <code>Thread#thread_local_get</code>
    # and <code>Thread#thread_local_set</code>.
    def [] sym
        #This is a stub, used for indexing
    end
    # thr[sym] = obj   -> obj
    #  
    # Attribute Assignment---Sets or creates the value of a fiber-local variable,
    # using either a symbol or a string. See also <code>Thread#[]</code>.  For
    # thread-local variables, please see <code>Thread#thread_variable_set</code>
    # and <code>Thread#thread_variable_get</code>.
    def []=(sym, obj)
        #This is a stub, used for indexing
    end
    # thr.key?(sym)   -> true or false
    #  
    # Returns <code>true</code> if the given string (or symbol) exists as a
    # fiber-local variable.
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
    # Returns an an array of the names of the fiber-local variables (as Symbols).
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
    # thr.thread_variable_get(key)  -> obj or nil
    #  
    # Returns the value of a thread local variable that has been set.  Note that
    # these are different than fiber local values.  For fiber local values,
    # please see Thread#[] and Thread#[]=.
    # 
    # Thread local values are carried along with threads, and do not respect
    # fibers.  For example:
    # 
    #   Thread.new {
    #     Thread.current.thread_variable_set("foo", "bar") # set a thread local
    #     Thread.current["foo"] = "bar"                    # set a fiber local
    # 
    #     Fiber.new {
    #       Fiber.yield [
    #         Thread.current.thread_variable_get("foo"), # get the thread local
    #         Thread.current["foo"],                     # get the fiber local
    #       ]
    #     }.resume
    #   }.join.value # => ['bar', nil]
    # 
    # The value "bar" is returned for the thread local, where nil is returned
    # for the fiber local.  The fiber is executed in the same thread, so the
    # thread local values are available.
    # 
    # See also Thread#[]
    def thread_variable_get(key)
        #This is a stub, used for indexing
    end
    # thr.thread_variable_set(key, value)
    #  
    # Sets a thread local with +key+ to +value+.  Note that these are local to
    # threads, and not to fibers.  Please see Thread#thread_variable_get and
    # Thread#[] for more information.
    def thread_variable_set(key, value)
        #This is a stub, used for indexing
    end
    # thr.thread_variables   -> array
    #  
    # Returns an an array of the names of the thread-local variables (as Symbols).
    # 
    #    thr = Thread.new do
    #      Thread.current.thread_variable_set(:cat, 'meow')
    #      Thread.current.thread_variable_set("dog", 'woof')
    #    end
    #    thr.join               #=> #<Thread:0x401b3f10 dead>
    #    thr.thread_variables   #=> [:dog, :cat]
    # 
    # Note that these are not fiber local variables.  Please see Thread#[] and
    # Thread#thread_variable_get for more details.
    def thread_variables()
        #This is a stub, used for indexing
    end
    # thr.thread_variable?(key)   -> true or false
    #  
    # Returns <code>true</code> if the given string (or symbol) exists as a
    # thread-local variable.
    # 
    #    me = Thread.current
    #    me.thread_variable_set(:oliver, "a")
    #    me.thread_variable?(:oliver)    #=> true
    #    me.thread_variable?(:stanley)   #=> false
    # 
    # Note that these are not fiber local variables.  Please see Thread#[] and
    # Thread#thread_variable_get for more details.
    def thread_variable?(key)
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
    # thr.backtrace     -> array
    #  
    # Returns the current backtrace of the target thread.
    def backtrace()
        #This is a stub, used for indexing
    end
    # thr.backtrace_locations(*args)      -> array or nil
    #  
    # Returns the execution stack for the target thread---an array containing
    # backtrace location objects.
    # 
    # See Thread::Backtrace::Location for more information.
    # 
    # This method behaves similarly to Kernel#caller_locations except it applies
    # to a specific thread.
    def backtrace_locations(*args)
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
    class Backtrace
        class Location
            # Returns the line number of this frame.
            # 
            # For example, using +caller_locations.rb+ from Thread::Backtrace::Location
            # 
            #      loc = c(0..1).first
            #      loc.lineno #=> 2
            def lineno()
                #This is a stub, used for indexing
            end
            # Returns the label of this frame.
            # 
            # Usually consists of method, class, module, etc names with decoration.
            # 
            # Consider the following example:
            # 
            #      def foo
            #        puts caller_locations(0).first.label
            # 
            #        1.times do
            #          puts caller_locations(0).first.label
            # 
            #          1.times do
            #            puts caller_locations(0).first.label
            #          end
            # 
            #        end
            #      end
            # 
            # The result of calling +foo+ is this:
            # 
            #      label: foo
            #      label: block in foo
            #      label: block (2 levels) in foo
            def label()
                #This is a stub, used for indexing
            end
            # Returns the base label of this frame.
            # 
            # Usually same as #label, without decoration.
            def base_label()
                #This is a stub, used for indexing
            end
            # Returns the file name of this frame.
            # 
            # For example, using +caller_locations.rb+ from Thread::Backtrace::Location
            # 
            #      loc = c(0..1).first
            #      loc.path #=> caller_locations.rb
            def path()
                #This is a stub, used for indexing
            end
            # Returns the full file path of this frame.
            # 
            # Same as #path, but includes the absolute path.
            def absolute_path()
                #This is a stub, used for indexing
            end
            # Returns a Kernel#caller style string representing this frame.
            def to_s()
                #This is a stub, used for indexing
            end
            # Returns the same as calling +inspect+ on the string representation of
            # #to_str
            def inspect()
                #This is a stub, used for indexing
            end
        end
    end
end
