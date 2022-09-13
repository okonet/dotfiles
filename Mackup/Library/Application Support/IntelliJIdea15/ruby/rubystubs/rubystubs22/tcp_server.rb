=begin
 This is a machine generated stub using stdlib-doc for <b>class TCPServer</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

require 'tcp_socket'
# TCPServer represents a TCP/IP server socket.
# 
# A simple TCP server may look like:
# 
#   require 'socket'
# 
#   server = TCPServer.new 2000 # Server bind to port 2000
#   loop do
#     client = server.accept    # Wait for a client to connect
#     client.puts "Hello !"
#     client.puts "Time is #{Time.now}"
#     client.close
#   end
# 
# A more usable server (serving multiple clients):
# 
#   require 'socket'
# 
#   server = TCPServer.new 2000
#   loop do
#     Thread.start(server.accept) do |client|
#       client.puts "Hello !"
#       client.puts "Time is #{Time.now}"
#       client.close
#     end
#   end
class TCPServer < TCPSocket
    # tcpserver.accept => tcpsocket
    #  
    # Accepts an incoming connection. It returns a new TCPSocket object.
    # 
    #   TCPServer.open("127.0.0.1", 14641) {|serv|
    #     s = serv.accept
    #     s.puts Time.now
    #     s.close
    #   }
    def accept()
        #This is a stub, used for indexing
    end
    # tcpserver.accept_nonblock => tcpsocket
    #  
    # Accepts an incoming connection using accept(2) after
    # O_NONBLOCK is set for the underlying file descriptor.
    # It returns an accepted TCPSocket for the incoming connection.
    # 
    # === Example
    #      require 'socket'
    #      serv = TCPServer.new(2202)
    #      begin # emulate blocking accept
    #        sock = serv.accept_nonblock
    #      rescue IO::WaitReadable, Errno::EINTR
    #        IO.select([serv])
    #        retry
    #      end
    #      # sock is an accepted socket.
    # 
    # Refer to Socket#accept for the exceptions that may be thrown if the call
    # to TCPServer#accept_nonblock fails.
    # 
    # TCPServer#accept_nonblock may raise any error corresponding to accept(2) failure,
    # including Errno::EWOULDBLOCK.
    # 
    # If the exception is Errno::EWOULDBLOCK, Errno::AGAIN, Errno::ECONNABORTED, Errno::EPROTO,
    # it is extended by IO::WaitReadable.
    # So IO::WaitReadable can be used to rescue the exceptions for retrying accept_nonblock.
    # 
    # === See
    # * TCPServer#accept
    # * Socket#accept
    def accept_nonblock()
        #This is a stub, used for indexing
    end
    # tcpserver.sysaccept => file_descriptor
    #  
    # Returns a file descriptor of a accepted connection.
    # 
    #   TCPServer.open("127.0.0.1", 28561) {|serv|
    #     fd = serv.sysaccept
    #     s = IO.for_fd(fd)
    #     s.puts Time.now
    #     s.close
    #   }
    def sysaccept()
        #This is a stub, used for indexing
    end
    # TCPServer.new([hostname,] port) => tcpserver
    #  
    # Creates a new server socket bound to _port_.
    # 
    # If _hostname_ is given, the socket is bound to it.
    # 
    #   serv = TCPServer.new("127.0.0.1", 28561)
    #   s = serv.accept
    #   s.puts Time.now
    #   s.close
    # 
    # Internally, TCPServer.new calls getaddrinfo() function to
    # obtain addresses.
    # If getaddrinfo() returns multiple addresses,
    # TCPServer.new tries to create a server socket for each address
    # and returns first one that is successful.
    def self.new(*hostname, port)
        #This is a stub, used for indexing
    end
    # socket.listen( int ) => 0
    #  
    # Listens for connections, using the specified +int+ as the backlog. A call
    # to _listen_ only applies if the +socket+ is of type SOCK_STREAM or
    # SOCK_SEQPACKET.
    # 
    # === Parameter
    # * +backlog+ - the maximum length of the queue for pending connections.
    # 
    # === Example 1
    #      require 'socket'
    #      include Socket::Constants
    #      socket = Socket.new( AF_INET, SOCK_STREAM, 0 )
    #      sockaddr = Socket.pack_sockaddr_in( 2200, 'localhost' )
    #      socket.bind( sockaddr )
    #      socket.listen( 5 )
    # 
    # === Example 2 (listening on an arbitrary port, unix-based systems only):
    #      require 'socket'
    #      include Socket::Constants
    #      socket = Socket.new( AF_INET, SOCK_STREAM, 0 )
    #      socket.listen( 1 )
    # 
    # === Unix-based Exceptions
    # On unix based systems the above will work because a new +sockaddr+ struct
    # is created on the address ADDR_ANY, for an arbitrary port number as handed
    # off by the kernel. It will not work on Windows, because Windows requires that
    # the +socket+ is bound by calling _bind_ before it can _listen_.
    # 
    # If the _backlog_ amount exceeds the implementation-dependent maximum
    # queue length, the implementation's maximum queue length will be used.
    # 
    # On unix-based based systems the following system exceptions may be raised if the
    # call to _listen_ fails:
    # * Errno::EBADF - the _socket_ argument is not a valid file descriptor
    # * Errno::EDESTADDRREQ - the _socket_ is not bound to a local address, and
    #   the protocol does not support listening on an unbound socket
    # * Errno::EINVAL - the _socket_ is already connected
    # * Errno::ENOTSOCK - the _socket_ argument does not refer to a socket
    # * Errno::EOPNOTSUPP - the _socket_ protocol does not support listen
    # * Errno::EACCES - the calling process does not have appropriate privileges
    # * Errno::EINVAL - the _socket_ has been shut down
    # * Errno::ENOBUFS - insufficient resources are available in the system to
    #   complete the call
    # 
    # === Windows Exceptions
    # On Windows systems the following system exceptions may be raised if
    # the call to _listen_ fails:
    # * Errno::ENETDOWN - the network is down
    # * Errno::EADDRINUSE - the socket's local address is already in use. This
    #   usually occurs during the execution of _bind_ but could be delayed
    #   if the call to _bind_ was to a partially wildcard address (involving
    #   ADDR_ANY) and if a specific address needs to be committed at the
    #   time of the call to _listen_
    # * Errno::EINPROGRESS - a Windows Sockets 1.1 call is in progress or the
    #   service provider is still processing a callback function
    # * Errno::EINVAL - the +socket+ has not been bound with a call to _bind_.
    # * Errno::EISCONN - the +socket+ is already connected
    # * Errno::EMFILE - no more socket descriptors are available
    # * Errno::ENOBUFS - no buffer space is available
    # * Errno::ENOTSOC - +socket+ is not a socket
    # * Errno::EOPNOTSUPP - the referenced +socket+ is not a type that supports
    #   the _listen_ method
    # 
    # === See
    # * listen manual pages on unix-based systems
    # * listen function in Microsoft's Winsock functions reference
    def listen( int )
        #This is a stub, used for indexing
    end
end
