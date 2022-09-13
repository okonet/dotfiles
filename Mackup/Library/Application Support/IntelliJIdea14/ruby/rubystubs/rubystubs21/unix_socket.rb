=begin
 This is a machine generated stub using stdlib-doc for <b>class UNIXSocket</b>
 Sources used:  Ruby 2.1.1
 Created on 2014-03-18 09:11:27 +0400 by IntelliJ Ruby Stubs Generator.
=end

require 'basic_socket'
# UNIXSocket represents a UNIX domain stream client socket.
class UNIXSocket < BasicSocket
    # UNIXSocket.new(path) => unixsocket
    #  
    # Creates a new UNIX client socket connected to _path_.
    # 
    #   s = UNIXSocket.new("/tmp/sock")
    #   s.send "hello", 0
    def self.new(path)
        #This is a stub, used for indexing
    end
    # unixsocket.path => path
    #  
    # Returns the path of the local address of unixsocket.
    # 
    #   s = UNIXServer.new("/tmp/sock")
    #   p s.path #=> "/tmp/sock"
    def path()
        #This is a stub, used for indexing
    end
    # unixsocket.addr => [address_family, unix_path]
    #  
    # Returns the local address as an array which contains
    # address_family and unix_path.
    # 
    # Example
    #   serv = UNIXServer.new("/tmp/sock")
    #   p serv.addr #=> ["AF_UNIX", "/tmp/sock"]
    def addr()
        #This is a stub, used for indexing
    end
    # unixsocket.peeraddr => [address_family, unix_path]
    #  
    # Returns the remote address as an array which contains
    # address_family and unix_path.
    # 
    # Example
    #   serv = UNIXServer.new("/tmp/sock")
    #   c = UNIXSocket.new("/tmp/sock")
    #   p c.peeraddr #=> ["AF_UNIX", "/tmp/sock"]
    def peeraddr()
        #This is a stub, used for indexing
    end
    # unixsocket.recvfrom(maxlen [, flags]) => [mesg, unixaddress]
    #  
    # Receives a message via _unixsocket_.
    # 
    # _maxlen_ is the maximum number of bytes to receive.
    # 
    # _flags_ should be a bitwise OR of Socket::MSG_* constants.
    # 
    #   s1 = Socket.new(:UNIX, :DGRAM, 0)
    #   s1_ai = Addrinfo.unix("/tmp/sock1")
    #   s1.bind(s1_ai)
    # 
    #   s2 = Socket.new(:UNIX, :DGRAM, 0)
    #   s2_ai = Addrinfo.unix("/tmp/sock2")
    #   s2.bind(s2_ai)
    #   s3 = UNIXSocket.for_fd(s2.fileno)
    # 
    #   s1.send "a", 0, s2_ai
    #   p s3.recvfrom(10) #=> ["a", ["AF_UNIX", "/tmp/sock1"]]
    def recvfrom(*args)
        #This is a stub, used for indexing
    end
    # unixsocket.send_io(io) => nil
    #  
    # Sends _io_ as file descriptor passing.
    # 
    #   s1, s2 = UNIXSocket.pair
    # 
    #   s1.send_io STDOUT
    #   stdout = s2.recv_io
    # 
    #   p STDOUT.fileno #=> 1
    #   p stdout.fileno #=> 6
    # 
    #   stdout.puts "hello" # outputs "hello\n" to standard output.
    def send_io(io)
        #This is a stub, used for indexing
    end
    # unixsocket.recv_io([klass [, mode]]) => io
    #  
    # UNIXServer.open("/tmp/sock") {|serv|
    #   UNIXSocket.open("/tmp/sock") {|c|
    #     s = serv.accept
    # 
    #     c.send_io STDOUT
    #     stdout = s.recv_io
    # 
    #     p STDOUT.fileno #=> 1
    #     p stdout.fileno #=> 7
    # 
    #     stdout.puts "hello" # outputs "hello\n" to standard output.
    #   }
    # }
    def recv_io(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # UNIXSocket.pair([type [, protocol]])       => [unixsocket1, unixsocket2]
    # UNIXSocket.socketpair([type [, protocol]]) => [unixsocket1, unixsocket2]
    #  
    # Creates a pair of sockets connected each other.
    # 
    # _socktype_ should be a socket type such as: :STREAM, :DGRAM, :RAW, etc.
    # 
    # _protocol_ should be a protocol defined in the domain.
    # 0 is default protocol for the domain.
    # 
    #   s1, s2 = UNIXSocket.pair
    #   s1.send "a", 0
    #   s1.send "b", 0
    #   p s2.recv(10) #=> "ab"
    def self.socketpair(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
    # UNIXSocket.pair([type [, protocol]])       => [unixsocket1, unixsocket2]
    # UNIXSocket.socketpair([type [, protocol]]) => [unixsocket1, unixsocket2]
    #  
    # Creates a pair of sockets connected each other.
    # 
    # _socktype_ should be a socket type such as: :STREAM, :DGRAM, :RAW, etc.
    # 
    # _protocol_ should be a protocol defined in the domain.
    # 0 is default protocol for the domain.
    # 
    #   s1, s2 = UNIXSocket.pair
    #   s1.send "a", 0
    #   s1.send "b", 0
    #   p s2.recv(10) #=> "ab"
    def self.pair(p1 = v1, p2 = v2)
        #This is a stub, used for indexing
    end
end
