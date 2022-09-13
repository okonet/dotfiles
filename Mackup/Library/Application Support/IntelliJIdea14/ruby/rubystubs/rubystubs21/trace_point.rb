=begin
 This is a machine generated stub using stdlib-doc for <b>class TracePoint</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# A class that provides the functionality of Kernel#set_trace_func in a
# nice Object-Oriented API.
# 
# == Example
# 
# We can use TracePoint to gather information specifically for exceptions:
# 
#      trace = TracePoint.new(:raise) do |tp|
#          p [tp.lineno, tp.event, tp.raised_exception]
#      end
#      #=> #<TracePoint:disabled>
# 
#      trace.enable
#      #=> false
# 
#      0 / 0
#      #=> [5, :raise, #<ZeroDivisionError: divided by 0>]
# 
# == Events
# 
# If you don't specify the type of events you want to listen for,
# TracePoint will include all available events.
# 
# *Note* do not depend on current event set, as this list is subject to
# change. Instead, it is recommended you specify the type of events you
# want to use.
# 
# To filter what is traced, you can pass any of the following as +events+:
# 
# +:line+:: execute code on a new line
# +:class+:: start a class or module definition
# +:end+:: finish a class or module definition
# +:call+:: call a Ruby method
# +:return+:: return from a Ruby method
# +:c_call+:: call a C-language routine
# +:c_return+:: return from a C-language routine
# +:raise+:: raise an exception
# +:b_call+:: event hook at block entry
# +:b_return+:: event hook at block ending
# +:thread_begin+:: event hook at thread beginning
# +:thread_end+:: event hook at thread ending
class TracePoint
    # TracePoint.new(*events) { |obj| block }          -> obj
    #  
    # Returns a new TracePoint object, not enabled by default.
    # 
    # Next, in order to activate the trace, you must use TracePoint.enable
    # 
    #      trace = TracePoint.new(:call) do |tp|
    #          p [tp.lineno, tp.defined_class, tp.method_id, tp.event]
    #      end
    #      #=> #<TracePoint:disabled>
    # 
    #      trace.enable
    #      #=> false
    # 
    #      puts "Hello, TracePoint!"
    #      # ...
    #      # [48, IRB::Notifier::AbstractNotifier, :printf, :call]
    #      # ...
    # 
    # When you want to deactivate the trace, you must use TracePoint.disable
    # 
    #      trace.disable
    # 
    # See TracePoint@Events for possible events and more information.
    # 
    # A block must be given, otherwise a ThreadError is raised.
    # 
    # If the trace method isn't included in the given events filter, a
    # RuntimeError is raised.
    # 
    #      TracePoint.trace(:line) do |tp|
    #          p tp.raised_exception
    #      end
    #      #=> RuntimeError: 'raised_exception' not supported by this event
    # 
    # If the trace method is called outside block, a RuntimeError is raised.
    # 
    #      TracePoint.trace(:line) do |tp|
    #        $tp = tp
    #      end
    #      $tp.line #=> access from outside (RuntimeError)
    # 
    # Access from other threads is also forbidden.
    def self.new(*events)
        #This is a stub, used for indexing
    end
    # TracePoint.trace(*events) { |obj| block }        -> obj
    #  
    # A convenience method for TracePoint.new, that activates the trace
    # automatically.
    # 
    #     trace = TracePoint.trace(:call) { |tp| [tp.lineno, tp.event] }
    #     #=> #<TracePoint:enabled>
    # 
    #     trace.enabled? #=> true
    def self.trace(*events)
        #This is a stub, used for indexing
    end
    # trace.enable         -> true or false
    # trace.enable { block }       -> obj
    #  
    # Activates the trace
    # 
    # Return true if trace was enabled.
    # Return false if trace was disabled.
    # 
    #      trace.enabled?  #=> false
    #      trace.enable    #=> false (previous state)
    #                      #   trace is enabled
    #      trace.enabled?  #=> true
    #      trace.enable    #=> true (previous state)
    #                      #   trace is still enabled
    # 
    # If a block is given, the trace will only be enabled within the scope of the
    # block.
    # 
    #      trace.enabled?
    #      #=> false
    # 
    #      trace.enable do
    #          trace.enabled?
    #          # only enabled for this block
    #      end
    # 
    #      trace.enabled?
    #      #=> false
    # 
    # Note: You cannot access event hooks within the block.
    # 
    #      trace.enable { p tp.lineno }
    #      #=> RuntimeError: access from outside
    def enable(*several_variants)
        #This is a stub, used for indexing
    end
    # trace.disable                -> true or false
    # trace.disable { block } -> obj
    #  
    # Deactivates the trace
    # 
    # Return true if trace was enabled.
    # Return false if trace was disabled.
    # 
    #      trace.enabled?       #=> true
    #      trace.disable        #=> false (previous status)
    #      trace.enabled?       #=> false
    #      trace.disable        #=> false
    # 
    # If a block is given, the trace will only be disable within the scope of the
    # block.
    # 
    #      trace.enabled?
    #      #=> true
    # 
    #      trace.disable do
    #          trace.enabled?
    #          # only disabled for this block
    #      end
    # 
    #      trace.enabled?
    #      #=> true
    # 
    # Note: You cannot access event hooks within the block.
    # 
    #      trace.disable { p tp.lineno }
    #      #=> RuntimeError: access from outside
    def disable(*several_variants)
        #This is a stub, used for indexing
    end
    # trace.enabled?           -> true or false
    #  
    # The current status of the trace
    def enabled?()
        #This is a stub, used for indexing
    end
    # trace.inspect  -> string
    #  
    # Return a string containing a human-readable TracePoint
    # status.
    def inspect()
        #This is a stub, used for indexing
    end
    # Type of event
    # 
    # See TracePoint@Events for more information.
    def event()
        #This is a stub, used for indexing
    end
    # Line number of the event
    def lineno()
        #This is a stub, used for indexing
    end
    # Path of the file being run
    def path()
        #This is a stub, used for indexing
    end
    # Return the name of the method being called
    def method_id()
        #This is a stub, used for indexing
    end
    # Return class or module of the method being called.
    # 
    #      class C; def foo; end; end
    #      trace = TracePoint.new(:call) do |tp|
    #        p tp.defined_class #=> C
    #      end.enable do
    #        C.new.foo
    #      end
    # 
    # If method is defined by a module, then that module is returned.
    # 
    #      module M; def foo; end; end
    #      class C; include M; end;
    #      trace = TracePoint.new(:call) do |tp|
    #        p tp.defined_class #=> M
    #      end.enable do
    #        C.new.foo
    #      end
    # 
    # <b>Note:</b> #defined_class returns singleton class.
    # 
    # 6th block parameter of Kernel#set_trace_func passes original class
    # of attached by singleton class.
    # 
    # <b>This is a difference between Kernel#set_trace_func and TracePoint.</b>
    # 
    #      class C; def self.foo; end; end
    #      trace = TracePoint.new(:call) do |tp|
    #        p tp.defined_class #=> #<Class:C>
    #      end.enable do
    #        C.foo
    #      end
    def defined_class()
        #This is a stub, used for indexing
    end
    # Return the generated binding object from event
    def binding()
        #This is a stub, used for indexing
    end
    # Return the trace object during event
    # 
    # Same as TracePoint#binding:
    #      trace.binding.eval('self')
    def self()
        #This is a stub, used for indexing
    end
    # Return value from +:return+, +c_return+, and +b_return+ event
    def return_value()
        #This is a stub, used for indexing
    end
    # Value from exception raised on the +:raise+ event
    def raised_exception()
        #This is a stub, used for indexing
    end
end
