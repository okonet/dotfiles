=begin
 This is a machine generated stub using stdlib-doc for <b>class UDPSocket</b>
 Sources used:  Ruby 1.9.2-p290
 Created on 2014-03-18 09:08:36 +0400 by IntelliJ Ruby Stubs Generator.
=end

require 'ip_socket'
class UDPSocket < IPSocket
    # UDPSocket.new([address_family]) => socket
    #  
    # Creates a new UDPSocket object.
    # 
    # _address_family_ should be an integer, a string or a symbol:
    # Socket::AF_INET, "AF_INET", :INET, etc.
    # 
    #   UDPSocket.new                   #=> #<UDPSocket:fd 3>
    #   UDPSocket.new(Socket::AF_INET6) #=> #<UDPSocket:fd 4>
    def self.new(*address_family)
        #This is a stub, used for indexing
    end
    # udpsocket.connect(host, port) => 0
    #  
    # Connects _udpsocket_ to _host_:_port_.
    # 
    # This makes possible to send without destination address.
    # 
    #   u1 = UDPSocket.new
    #   u1.bind("127.0.0.1", 4913)
    #   u2 = UDPSocket.new
    #   u2.connect("127.0.0.1", 4913)
    #   u2.send "uuuu", 0
    #   p u1.recvfrom(10) #=> ["uuuu", ["AF_INET", 33230, "localhost", "127.0.0.1"]]
    def connect(host, port)
        #This is a stub, used for indexing
    end
    # udpsocket.bind(host, port) #=> 0
    #  
    # Binds _udpsocket_ to _host_:_port_.
    # 
    #   u1 = UDPSocket.new
    #   u1.bind("127.0.0.1", 4913)
    #   u1.send "message-to-self", 0, "127.0.0.1", 4913
    #   p u1.recvfrom(10) #=> ["message-to", ["AF_INET", 4913, "localhost", "127.0.0.1"]]
    def bind(host, port)
        #This is a stub, used for indexing
    end
    # udpsocket.send(mesg, flags, host, port)  => numbytes_sent
    # udpsocket.send(mesg, flags, sockaddr_to) => numbytes_sent
    # udpsocket.send(mesg, flags)              => numbytes_sent
    #  
    # Sends _mesg_ via _udpsocket_.
    # 
    # _flags_ should be a bitwise OR of Socket::MSG_* constants.
    # 
    #   u1 = UDPSocket.new
    #   u1.bind("127.0.0.1", 4913)
    # 
    #   u2 = UDPSocket.new
    #   u2.send "hi", 0, "127.0.0.1", 4913
    # 
    #   mesg, addr = u1.recvfrom(10)
    #   u1.send mesg, 0, addr[3], addr[1]
    # 
    #   p u2.recv(100) #=> "hi"
    def send(*several_variants)
        #This is a stub, used for indexing
    end
    # udpsocket.recvfrom_nonblock(maxlen) => [mesg, sender_inet_addr]
    # udpsocket.recvfrom_nonblock(maxlen, flags) => [mesg, sender_inet_addr]
    #  
    # Receives up to _maxlen_ bytes from +udpsocket+ using recvfrom(2) after
    # O_NONBLOCK is set for the underlying file descriptor.
    # If _maxlen_ is omitted, its default value is 65536.
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
    #      begin # emulate blocking recvfrom
    #        p s2.recvfrom_nonblock(10)  #=> ["aaa", ["AF_INET", 33302, "localhost.localdomain", "127.0.0.1"]]
    #      rescue IO::WaitReadable
    #        IO.select([s2])
    #        retry
    #      end
    # 
    # Refer to Socket#recvfrom for the exceptions that may be thrown if the call
    # to _recvfrom_nonblock_ fails.
    # 
    # UDPSocket#recvfrom_nonblock may raise any error corresponding to recvfrom(2) failure,
    # including Errno::EWOULDBLOCK.
    # 
    # If the exception is Errno::EWOULDBLOCK or Errno::AGAIN,
    # it is extended by IO::WaitReadable.
    # So IO::WaitReadable can be used to rescue the exceptions for retrying recvfrom_nonblock.
    # 
    # === See
    # * Socket#recvfrom
    def recvfrom_nonblock(*several_variants)
        #This is a stub, used for indexing
    end
end
