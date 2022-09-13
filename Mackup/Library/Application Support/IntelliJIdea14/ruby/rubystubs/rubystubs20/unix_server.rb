=begin
 This is a machine generated stub using stdlib-doc for <b>class UNIXServer</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

require 'unix_socket'
# UNIXServer represents a UNIX domain stream server socket.
class UNIXServer < UNIXSocket
    # UNIXServer.new(path) => unixserver
    #  
    # Creates a new UNIX server socket bound to _path_.
    # 
    #   serv = UNIXServer.new("/tmp/sock")
    #   s = serv.accept
    #   p s.read
    def self.new(path)
        #This is a stub, used for indexing
    end
    # unixserver.accept => unixsocket
    #  
    # Accepts a new connection.
    # It returns new UNIXSocket object.
    # 
    #   UNIXServer.open("/tmp/sock") {|serv|
    #     UNIXSocket.open("/tmp/sock") {|c|
    #       s = serv.accept
    #       s.puts "hi"
    #       s.close
    #       p c.read #=> "hi\n"
    #     }
    #   }
    def accept()
        #This is a stub, used for indexing
    end
    # unixserver.accept_nonblock => unixsocket
    #  
    # Accepts an incoming connection using accept(2) after
    # O_NONBLOCK is set for the underlying file descriptor.
    # It returns an accepted UNIXSocket for the incoming connection.
    # 
    # === Example
    #      require 'socket'
    #      serv = UNIXServer.new("/tmp/sock")
    #      begin # emulate blocking accept
    #        sock = serv.accept_nonblock
    #      rescue IO::WaitReadable, Errno::EINTR
    #        IO.select([serv])
    #        retry
    #      end
    #      # sock is an accepted socket.
    # 
    # Refer to Socket#accept for the exceptions that may be thrown if the call
    # to UNIXServer#accept_nonblock fails.
    # 
    # UNIXServer#accept_nonblock may raise any error corresponding to accept(2) failure,
    # including Errno::EWOULDBLOCK.
    # 
    # If the exception is Errno::EWOULDBLOCK, Errno::AGAIN, Errno::ECONNABORTED or Errno::EPROTO,
    # it is extended by IO::WaitReadable.
    # So IO::WaitReadable can be used to rescue the exceptions for retrying accept_nonblock.
    # 
    # === See
    # * UNIXServer#accept
    # * Socket#accept
    def accept_nonblock()
        #This is a stub, used for indexing
    end
    # unixserver.sysaccept => file_descriptor
    #  
    # Accepts a new connection.
    # It returns the new file descriptor which is an integer.
    # 
    #   UNIXServer.open("/tmp/sock") {|serv|
    #     UNIXSocket.open("/tmp/sock") {|c|
    #       fd = serv.sysaccept
    #       s = IO.new(fd)
    #       s.puts "hi"
    #       s.close
    #       p c.read #=> "hi\n"
    #     }
    #   }
    def sysaccept()
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
