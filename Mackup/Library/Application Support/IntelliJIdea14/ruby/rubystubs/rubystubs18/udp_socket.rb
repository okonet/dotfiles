=begin
 This is a machine generated stub using stdlib-doc for <b>class UDPSocket</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

class UDPSocket < IPSocket
    def self.new(p1 = v1)
        #This is a stub, used for indexing
    end
    def connect(p1, p2)
        #This is a stub, used for indexing
    end
    def bind(p1, p2)
        #This is a stub, used for indexing
    end
    def send(p1, p2, p3, p4)
        #This is a stub, used for indexing
    end
    # udpsocket.recvfrom_nonblock(maxlen) => [mesg, sender_inet_addr]
    # udpsocket.recvfrom_nonblock(maxlen, flags) => [mesg, sender_inet_addr]
    #  
    # Receives up to _maxlen_ bytes from +udpsocket+ using recvfrom(2) after
    # O_NONBLOCK is set for the underlying file descriptor.
    # _flags_ is zero or more of the +MSG_+ options.
    # The first element of the results, _mesg_, is the data received.
    # The second element, _sender_inet_addr_, is an array to represent the sender address.
    # 
    # When recvfrom(2) returns 0,
    # Socket#recvfrom_nonblock returns an empty string as data.
    # It means an empty packet.
    # 
    # === Parameters
    # * +maxlen+ - the number of bytes to receive from the socket
    # * +flags+ - zero or more of the +MSG_+ options 
    # 
    # === Example
    #      require 'socket'
    #      s1 = UDPSocket.new
    #      s1.bind("127.0.0.1", 0)
    #      s2 = UDPSocket.new
    #      s2.bind("127.0.0.1", 0)
    #      s2.connect(*s1.addr.values_at(3,1))
    #      s1.connect(*s2.addr.values_at(3,1))
    #      s1.send "aaa", 0
    #      IO.select([s2])
    #      p s2.recvfrom_nonblock(10)  #=> ["aaa", ["AF_INET", 33302, "localhost.localdomain", "127.0.0.1"]]
    # 
    # Refer to Socket#recvfrom for the exceptions that may be thrown if the call
    # to _recvfrom_nonblock_ fails. 
    # 
    # UDPSocket#recvfrom_nonblock may raise any error corresponding to recvfrom(2) failure,
    # including Errno::EAGAIN.
    # 
    # === See
    # * Socket#recvfrom
    def recvfrom_nonblock(*several_variants)
        #This is a stub, used for indexing
    end
end
