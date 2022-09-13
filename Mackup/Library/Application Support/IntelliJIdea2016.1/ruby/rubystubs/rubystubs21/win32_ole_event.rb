=begin
 This is a machine generated stub using stdlib-doc for <b>class WIN32OLE_EVENT</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

# <code>WIN32OLE_EVENT</code> objects controls OLE event.
class WIN32OLE_EVENT
    # WIN32OLE_EVENT.message_loop
    #  
    # Translates and dispatches Windows message.
    def self.message_loop()
        #This is a stub, used for indexing
    end
    # WIN32OLE_EVENT.new(ole, event) #=> WIN32OLE_EVENT object.
    #  
    # Returns OLE event object.
    # The first argument specifies WIN32OLE object.
    # The second argument specifies OLE event name.
    #    ie = WIN32OLE.new('InternetExplorer.Application')
    #    ev = WIN32OLE_EVENT.new(ie, 'DWebBrowserEvents')
    def self.new(ole, event)
        #This is a stub, used for indexing
    end
    # WIN32OLE_EVENT#on_event([event]){...}
    #  
    # Defines the callback event.
    # If argument is omitted, this method defines the callback of all events.
    # If you want to modify reference argument in callback, return hash in
    # callback. If you want to return value to OLE server as result of callback
    # use `return' or :return.
    # 
    #   ie = WIN32OLE.new('InternetExplorer.Application')
    #   ev = WIN32OLE_EVENT.new(ie)
    #   ev.on_event("NavigateComplete") {|url| puts url}
    #   ev.on_event() {|ev, *args| puts "#{ev} fired"}
    # 
    #   ev.on_event("BeforeNavigate2") {|*args|
    #     ...
    #     # set true to BeforeNavigate reference argument `Cancel'.
    #     # Cancel is 7-th argument of BeforeNavigate,
    #     # so you can use 6 as key of hash instead of 'Cancel'.
    #     # The argument is counted from 0.
    #     # The hash key of 0 means first argument.)
    #     {:Cancel => true}  # or {'Cancel' => true} or {6 => true}
    #   }
    # 
    #   ev.on_event(...) {|*args|
    #     {:return => 1, :xxx => yyy}
    #   }
    def on_event(*event)
        #This is a stub, used for indexing
    end
    # WIN32OLE_EVENT#on_event_with_outargs([event]){...}
    #  
    # Defines the callback of event.
    # If you want modify argument in callback,
    # you could use this method instead of WIN32OLE_EVENT#on_event.
    # 
    #   ie = WIN32OLE.new('InternetExplorer.Application')
    #   ev = WIN32OLE_EVENT.new(ie)
    #   ev.on_event_with_outargs('BeforeNavigate2') {|*args|
    #     args.last[6] = true
    #   }
    def on_event_with_outargs(*event)
        #This is a stub, used for indexing
    end
    # WIN32OLE_EVENT#off_event([event])
    #  
    # removes the callback of event.
    # 
    #   ie = WIN32OLE.new('InternetExplorer.Application')
    #   ev = WIN32OLE_EVENT.new(ie)
    #   ev.on_event('BeforeNavigate2') {|*args|
    #     args.last[6] = true
    #   }
    #     ...
    #   ev.off_event('BeforeNavigate2')
    #     ...
    def off_event(*event)
        #This is a stub, used for indexing
    end
    # WIN32OLE_EVENT#unadvise -> nil
    #  
    # disconnects OLE server. If this method called, then the WIN32OLE_EVENT object
    # does not receive the OLE server event any more.
    # This method is trial implementation.
    # 
    #     ie = WIN32OLE.new('InternetExplorer.Application')
    #     ev = WIN32OLE_EVENT.new(ie)
    #     ev.on_event() {...}
    #        ...
    #     ev.unadvise
    def unadvise()
        #This is a stub, used for indexing
    end
    # WIN32OLE_EVENT#handler=
    #  
    # sets event handler object. If handler object has onXXX
    # method according to XXX event, then onXXX method is called
    # when XXX event occurs.
    # 
    # If handler object has method_missing and there is no
    # method according to the event, then method_missing
    # called and 1-st argument is event name.
    # 
    # If handler object has onXXX method and there is block
    # defined by WIN32OLE_EVENT#on_event('XXX'){},
    # then block is executed but handler object method is not called
    # when XXX event occurs.
    # 
    #     class Handler
    #       def onStatusTextChange(text)
    #         puts "StatusTextChanged"
    #       end
    #       def onPropertyChange(prop)
    #         puts "PropertyChanged"
    #       end
    #       def method_missing(ev, *arg)
    #         puts "other event #{ev}"
    #       end
    #     end
    # 
    #     handler = Handler.new
    #     ie = WIN32OLE.new('InternetExplorer.Application')
    #     ev = WIN32OLE_EVENT.new(ie)
    #     ev.on_event("StatusTextChange") {|*args|
    #       puts "this block executed."
    #       puts "handler.onStatusTextChange method is not called."
    #     }
    #     ev.handler = handler
    def handler=()
        #This is a stub, used for indexing
    end
    # WIN32OLE_EVENT#handler
    #  
    # returns handler object.
    def handler()
        #This is a stub, used for indexing
    end
end
