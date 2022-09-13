=begin
 This is a machine generated stub using stdlib-doc for <b>class BasicSocket</b>
 Sources used:  Ruby 2.0.0-p451
 Created on 2014-03-18 08:58:19 +0400 by IntelliJ Ruby Stubs Generator.
=end

# BasicSocket is the super class for all the Socket classes.
class BasicSocket < IO
    # BasicSocket.do_not_reverse_lookup => true or false
    #  
    # Gets the global do_not_reverse_lookup flag.
    # 
    #   BasicSocket.do_not_reverse_lookup  #=> false
    def self.do_not_reverse_lookup()
        #This is a stub, used for indexing
    end
    # BasicSocket.do_not_reverse_lookup = bool
    #  
    # Sets the global do_not_reverse_lookup flag.
    # 
    # The flag is used for initial value of do_not_reverse_lookup for each socket.
    # 
    #   s1 = TCPSocket.new("localhost", 80)
    #   p s1.do_not_reverse_lookup                 #=> true
    #   BasicSocket.do_not_reverse_lookup = false
    #   s2 = TCPSocket.new("localhost", 80)
    #   p s2.do_not_reverse_lookup                 #=> false
    #   p s1.do_not_reverse_lookup                 #=> true
    def self.do_not_reverse_lookup= bool
        #This is a stub, used for indexing
    end
    # BasicSocket.for_fd(fd) => basicsocket
    #  
    # Returns a socket object which contains the file descriptor, _fd_.
    # 
    #   # If invoked by inetd, STDIN/STDOUT/STDERR is a socket.
    #   STDIN_SOCK = Socket.for_fd(STDIN.fileno)
    #   p STDIN_SOCK.remote_address
    def self.for_fd(fd)
        #This is a stub, used for indexing
    end
    # basicsocket.close_read => nil
    #  
    # Disallows further read using shutdown system call.
    # 
    #   s1, s2 = UNIXSocket.pair
    #   s1.close_read
    #   s2.puts #=> Broken pipe (Errno::EPIPE)
    def close_read()
        #This is a stub, used for indexing
    end
    # basicsocket.close_write => nil
    #  
    # Disallows further write using shutdown system call.
    # 
    #   UNIXSocket.pair {|s1, s2|
    #     s1.print "ping"
    #     s1.close_write
    #     p s2.read        #=> "ping"
    #     s2.print "pong"
    #     s2.close
    #     p s1.read        #=> "pong"
    #   }
    def close_write()
        #This is a stub, used for indexing
    end
    # basicsocket.shutdown([how]) => 0
    #  
    # Calls shutdown(2) system call.
    # 
    # s.shutdown(Socket::SHUT_RD) disallows further read.
    # 
    # s.shutdown(Socket::SHUT_WR) disallows further write.
    # 
    # s.shutdown(Socket::SHUT_RDWR) disallows further read and write.
    # 
    # _how_ can be symbol or string:
    # - :RD, :SHUT_RD, "RD" and "SHUT_RD" are accepted as Socket::SHUT_RD.
    # - :WR, :SHUT_WR, "WR" and "SHUT_WR" are accepted as Socket::SHUT_WR.
    # - :RDWR, :SHUT_RDWR, "RDWR" and "SHUT_RDWR" are accepted as Socket::SHUT_RDWR.
    # 
    #   UNIXSocket.pair {|s1, s2|
    #     s1.puts "ping"
    #     s1.shutdown(:WR)
    #     p s2.read          #=> "ping\n"
    #     s2.puts "pong"
    #     s2.close
    #     p s1.read          #=> "pong\n"
    #   }
    def shutdown(*how)
        #This is a stub, used for indexing
    end
    # setsockopt(level, optname, optval)
    # setsockopt(socketoption)
    #  
    # Sets a socket option. These are protocol and system specific, see your
    # local system documentation for details.
    # 
    # === Parameters
    # * +level+ is an integer, usually one of the SOL_ constants such as
    #   Socket::SOL_SOCKET, or a protocol level.
    #   A string or symbol of the name, possibly without prefix, is also
    #   accepted.
    # * +optname+ is an integer, usually one of the SO_ constants, such
    #   as Socket::SO_REUSEADDR.
    #   A string or symbol of the name, possibly without prefix, is also
    #   accepted.
    # * +optval+ is the value of the option, it is passed to the underlying
    #   setsockopt() as a pointer to a certain number of bytes. How this is
    #   done depends on the type:
    #   - Fixnum: value is assigned to an int, and a pointer to the int is
    #     passed, with length of sizeof(int).
    #   - true or false: 1 or 0 (respectively) is assigned to an int, and the
    #     int is passed as for a Fixnum. Note that +false+ must be passed,
    #     not +nil+.
    #   - String: the string's data and length is passed to the socket.
    # * +socketoption+ is an instance of Socket::Option
    # 
    # === Examples
    # 
    # Some socket options are integers with boolean values, in this case
    # #setsockopt could be called like this:
    #   sock.setsockopt(:SOCKET, :REUSEADDR, true)
    #   sock.setsockopt(Socket::SOL_SOCKET,Socket::SO_REUSEADDR, true)
    #   sock.setsockopt(Socket::Option.bool(:INET, :SOCKET, :REUSEADDR, true))
    # 
    # Some socket options are integers with numeric values, in this case
    # #setsockopt could be called like this:
    #   sock.setsockopt(:IP, :TTL, 255)
    #   sock.setsockopt(Socket::IPPROTO_IP, Socket::IP_TTL, 255)
    #   sock.setsockopt(Socket::Option.int(:INET, :IP, :TTL, 255))
    # 
    # Option values may be structs. Passing them can be complex as it involves
    # examining your system headers to determine the correct definition. An
    # example is an +ip_mreq+, which may be defined in your system headers as:
    #   struct ip_mreq {
    #     struct  in_addr imr_multiaddr;
    #     struct  in_addr imr_interface;
    #   };
    # 
    # In this case #setsockopt could be called like this:
    #   optval = IPAddr.new("224.0.0.251").hton +
    #            IPAddr.new(Socket::INADDR_ANY, Socket::AF_INET).hton
    #   sock.setsockopt(Socket::IPPROTO_IP, Socket::IP_ADD_MEMBERSHIP, optval)
    def setsockopt(*several_variants)
        #This is a stub, used for indexing
    end
    # getsockopt(level, optname) => socketoption
    #  
    # Gets a socket option. These are protocol and system specific, see your
    # local system documentation for details. The option is returned as
    # a Socket::Option object.
    # 
    # === Parameters
    # * +level+ is an integer, usually one of the SOL_ constants such as
    #   Socket::SOL_SOCKET, or a protocol level.
    #   A string or symbol of the name, possibly without prefix, is also
    #   accepted.
    # * +optname+ is an integer, usually one of the SO_ constants, such
    #   as Socket::SO_REUSEADDR.
    #   A string or symbol of the name, possibly without prefix, is also
    #   accepted.
    # 
    # === Examples
    # 
    # Some socket options are integers with boolean values, in this case
    # #getsockopt could be called like this:
    # 
    #   reuseaddr = sock.getsockopt(:SOCKET, :REUSEADDR).bool
    # 
    #   optval = sock.getsockopt(Socket::SOL_SOCKET,Socket::SO_REUSEADDR)
    #   optval = optval.unpack "i"
    #   reuseaddr = optval[0] == 0 ? false : true
    # 
    # Some socket options are integers with numeric values, in this case
    # #getsockopt could be called like this:
    # 
    #   ipttl = sock.getsockopt(:IP, :TTL).int
    # 
    #   optval = sock.getsockopt(Socket::IPPROTO_IP, Socket::IP_TTL)
    #   ipttl = optval.unpack("i")[0]
    # 
    # Option values may be structs. Decoding them can be complex as it involves
    # examining your system headers to determine the correct definition. An
    # example is a +struct linger+, which may be defined in your system headers
    # as:
    #   struct linger {
    #     int l_onoff;
    #     int l_linger;
    #   };
    # 
    # In this case #getsockopt could be called like this:
    # 
    #   # Socket::Option knows linger structure.
    #   onoff, linger = sock.getsockopt(:SOCKET, :LINGER).linger
    # 
    #   optval =  sock.getsockopt(Socket::SOL_SOCKET, Socket::SO_LINGER)
    #   onoff, linger = optval.unpack "ii"
    #   onoff = onoff == 0 ? false : true
    def getsockopt(level, optname)
        #This is a stub, used for indexing
    end
    # basicsocket.getsockname => sockaddr
    #  
    # Returns the local address of the socket as a sockaddr string.
    # 
    #   TCPServer.open("127.0.0.1", 15120) {|serv|
    #     p serv.getsockname #=> "\x02\x00;\x10\x7F\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00"
    #   }
    # 
    # If Addrinfo object is preferred over the binary string,
    # use BasicSocket#local_address.
    def getsockname()
        #This is a stub, used for indexing
    end
    # basicsocket.getpeername => sockaddr
    #  
    # Returns the remote address of the socket as a sockaddr string.
    # 
    #   TCPServer.open("127.0.0.1", 1440) {|serv|
    #     c = TCPSocket.new("127.0.0.1", 1440)
    #     s = serv.accept
    #     p s.getpeername #=> "\x02\x00\x82u\x7F\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00"
    #   }
    # 
    # If Addrinfo object is preferred over the binary string,
    # use BasicSocket#remote_address.
    def getpeername()
        #This is a stub, used for indexing
    end
    # basicsocket.getpeereid => [euid, egid]
    #  
    # Returns the user and group on the peer of the UNIX socket.
    # The result is a two element array which contains the effective uid and the effective gid.
    # 
    #   Socket.unix_server_loop("/tmp/sock") {|s|
    #     begin
    #       euid, egid = s.getpeereid
    # 
    #       # Check the connected client is myself or not.
    #       next if euid != Process.uid
    # 
    #       # do something about my resource.
    # 
    #     ensure
    #       s.close
    #     end
    #   }
    def getpeereid()
        #This is a stub, used for indexing
    end
    # bsock.local_address => addrinfo
    #  
    # Returns an Addrinfo object for local address obtained by getsockname.
    # 
    # Note that addrinfo.protocol is filled by 0.
    # 
    #   TCPSocket.open("www.ruby-lang.org", 80) {|s|
    #     p s.local_address #=> #<Addrinfo: 192.168.0.129:36873 TCP>
    #   }
    # 
    #   TCPServer.open("127.0.0.1", 1512) {|serv|
    #     p serv.local_address #=> #<Addrinfo: 127.0.0.1:1512 TCP>
    #   }
    def local_address()
        #This is a stub, used for indexing
    end
    # bsock.remote_address => addrinfo
    #  
    # Returns an Addrinfo object for remote address obtained by getpeername.
    # 
    # Note that addrinfo.protocol is filled by 0.
    # 
    #   TCPSocket.open("www.ruby-lang.org", 80) {|s|
    #     p s.remote_address #=> #<Addrinfo: 221.186.184.68:80 TCP>
    #   }
    # 
    #   TCPServer.open("127.0.0.1", 1728) {|serv|
    #     c = TCPSocket.new("127.0.0.1", 1728)
    #     s = serv.accept
    #     p s.remote_address #=> #<Addrinfo: 127.0.0.1:36504 TCP>
    #   }
    def remote_address()
        #This is a stub, used for indexing
    end
    # basicsocket.send(mesg, flags [, dest_sockaddr]) => numbytes_sent
    #  
    # send _mesg_ via _basicsocket_.
    # 
    # _mesg_ should be a string.
    # 
    # _flags_ should be a bitwise OR of Socket::MSG_* constants.
    # 
    # _dest_sockaddr_ should be a packed sockaddr string or an addrinfo.
    # 
    #   TCPSocket.open("localhost", 80) {|s|
    #     s.send "GET / HTTP/1.0\r\n\r\n", 0
    #     p s.read
    #   }
    def send(p1, p2, p3 = v3)
        #This is a stub, used for indexing
    end
    # basicsocket.recv(maxlen) => mesg
    # basicsocket.recv(maxlen, flags) => mesg
    #  
    # Receives a message.
    # 
    # _maxlen_ is the maximum number of bytes to receive.
    # 
    # _flags_ should be a bitwise OR of Socket::MSG_* constants.
    # 
    #   UNIXSocket.pair {|s1, s2|
    #     s1.puts "Hello World"
    #     p s2.recv(4)                     #=> "Hell"
    #     p s2.recv(4, Socket::MSG_PEEK)   #=> "o Wo"
    #     p s2.recv(4)                     #=> "o Wo"
    #     p s2.recv(10)                    #=> "rld\n"
    #   }
    def recv(*several_variants)
        #This is a stub, used for indexing
    end
    # basicsocket.recv_nonblock(maxlen) => mesg
    # basicsocket.recv_nonblock(maxlen, flags) => mesg
    #  
    # Receives up to _maxlen_ bytes from +socket+ using recvfrom(2) after
    # O_NONBLOCK is set for the underlying file descriptor.
    # _flags_ is zero or more of the +MSG_+ options.
    # The result, _mesg_, is the data received.
    # 
    # When recvfrom(2) returns 0, Socket#recv_nonblock returns
    # an empty string as data.
    # The meaning depends on the socket: EOF on TCP, empty packet on UDP, etc.
    # 
    # === Parameters
    # * +maxlen+ - the number of bytes to receive from the socket
    # * +flags+ - zero or more of the +MSG_+ options
    # 
    # === Example
    #      serv = TCPServer.new("127.0.0.1", 0)
    #      af, port, host, addr = serv.addr
    #      c = TCPSocket.new(addr, port)
    #      s = serv.accept
    #      c.send "aaa", 0
    #      begin # emulate blocking recv.
    #        p s.recv_nonblock(10) #=> "aaa"
    #      rescue IO::WaitReadable
    #        IO.select([s])
    #        retry
    #      end
    # 
    # Refer to Socket#recvfrom for the exceptions that may be thrown if the call
    # to _recv_nonblock_ fails.
    # 
    # BasicSocket#recv_nonblock may raise any error corresponding to recvfrom(2) failure,
    # including Errno::EWOULDBLOCK.
    # 
    # If the exception is Errno::EWOULDBLOCK or Errno::AGAIN,
    # it is extended by IO::WaitReadable.
    # So IO::WaitReadable can be used to rescue the exceptions for retrying recv_nonblock.
    # 
    # === See
    # * Socket#recvfrom
    def recv_nonblock(*several_variants)
        #This is a stub, used for indexing
    end
    # basicsocket.do_not_reverse_lookup => true or false
    #  
    # Gets the do_not_reverse_lookup flag of _basicsocket_.
    # 
    #   TCPSocket.open("www.ruby-lang.org", 80) {|sock|
    #     p sock.do_not_reverse_lookup      #=> false
    #     p sock.peeraddr                   #=> ["AF_INET", 80, "carbon.ruby-lang.org", "221.186.184.68"]
    #     sock.do_not_reverse_lookup = true
    #     p sock.peeraddr                   #=> ["AF_INET", 80, "221.186.184.68", "221.186.184.68"]
    #   }
    def do_not_reverse_lookup()
        #This is a stub, used for indexing
    end
    # basicsocket.do_not_reverse_lookup = bool
    #  
    # Sets the do_not_reverse_lookup flag of _basicsocket_.
    # 
    #   BasicSocket.do_not_reverse_lookup = false
    #   p TCPSocket.new("127.0.0.1", 80).do_not_reverse_lookup #=> false
    #   BasicSocket.do_not_reverse_lookup = true
    #   p TCPSocket.new("127.0.0.1", 80).do_not_reverse_lookup #=> true
    def do_not_reverse_lookup= bool
        #This is a stub, used for indexing
    end
    # basicsocket.sendmsg(mesg, flags=0, dest_sockaddr=nil, *controls) => numbytes_sent
    #  
    # sendmsg sends a message using sendmsg(2) system call in blocking manner.
    # 
    # _mesg_ is a string to send.
    # 
    # _flags_ is bitwise OR of MSG_* constants such as Socket::MSG_OOB.
    # 
    # _dest_sockaddr_ is a destination socket address for connection-less socket.
    # It should be a sockaddr such as a result of Socket.sockaddr_in.
    # An Addrinfo object can be used too.
    # 
    # _controls_ is a list of ancillary data.
    # The element of _controls_ should be Socket::AncillaryData or
    # 3-elements array.
    # The 3-element array should contains cmsg_level, cmsg_type and data.
    # 
    # The return value, _numbytes_sent_ is an integer which is the number of bytes sent.
    # 
    # sendmsg can be used to implement send_io as follows:
    # 
    #   # use Socket::AncillaryData.
    #   ancdata = Socket::AncillaryData.int(:UNIX, :SOCKET, :RIGHTS, io.fileno)
    #   sock.sendmsg("a", 0, nil, ancdata)
    # 
    #   # use 3-element array.
    #   ancdata = [:SOCKET, :RIGHTS, [io.fileno].pack("i!")]
    #   sock.sendmsg("\0", 0, nil, ancdata)
    def sendmsg(mesg, flags=0, dest_sockaddr=nil, *controls)
        #This is a stub, used for indexing
    end
    # basicsocket.sendmsg_nonblock(mesg, flags=0, dest_sockaddr=nil, *controls) => numbytes_sent
    #  
    # sendmsg_nonblock sends a message using sendmsg(2) system call in non-blocking manner.
    # 
    # It is similar to BasicSocket#sendmsg
    # but the non-blocking flag is set before the system call
    # and it doesn't retry the system call.
    def sendmsg_nonblock(mesg, flags=0, dest_sockaddr=nil, *controls)
        #This is a stub, used for indexing
    end
    # basicsocket.recvmsg(maxmesglen=nil, flags=0, maxcontrollen=nil, opts={}) => [mesg, sender_addrinfo, rflags, *controls]
    #  
    # recvmsg receives a message using recvmsg(2) system call in blocking manner.
    # 
    # _maxmesglen_ is the maximum length of mesg to receive.
    # 
    # _flags_ is bitwise OR of MSG_* constants such as Socket::MSG_PEEK.
    # 
    # _maxcontrollen_ is the maximum length of controls (ancillary data) to receive.
    # 
    # _opts_ is option hash.
    # Currently :scm_rights=>bool is the only option.
    # 
    # :scm_rights option specifies that application expects SCM_RIGHTS control message.
    # If the value is nil or false, application don't expects SCM_RIGHTS control message.
    # In this case, recvmsg closes the passed file descriptors immediately.
    # This is the default behavior.
    # 
    # If :scm_rights value is neither nil nor false, application expects SCM_RIGHTS control message.
    # In this case, recvmsg creates IO objects for each file descriptors for
    # Socket::AncillaryData#unix_rights method.
    # 
    # The return value is 4-elements array.
    # 
    # _mesg_ is a string of the received message.
    # 
    # _sender_addrinfo_ is a sender socket address for connection-less socket.
    # It is an Addrinfo object.
    # For connection-oriented socket such as TCP, sender_addrinfo is platform dependent.
    # 
    # _rflags_ is a flags on the received message which is bitwise OR of MSG_* constants such as Socket::MSG_TRUNC.
    # It will be nil if the system uses 4.3BSD style old recvmsg system call.
    # 
    # _controls_ is ancillary data which is an array of Socket::AncillaryData objects such as:
    # 
    #   #<Socket::AncillaryData: AF_UNIX SOCKET RIGHTS 7>
    # 
    # _maxmesglen_ and _maxcontrollen_ can be nil.
    # In that case, the buffer will be grown until the message is not truncated.
    # Internally, MSG_PEEK is used and MSG_TRUNC/MSG_CTRUNC are checked.
    # 
    # recvmsg can be used to implement recv_io as follows:
    # 
    #   mesg, sender_sockaddr, rflags, *controls = sock.recvmsg(:scm_rights=>true)
    #   controls.each {|ancdata|
    #     if ancdata.cmsg_is?(:SOCKET, :RIGHTS)
    #       return ancdata.unix_rights[0]
    #     end
    #   }
    def recvmsg(maxmesglen=nil, flags=0, maxcontrollen=nil, opts={})
        #This is a stub, used for indexing
    end
    # basicsocket.recvmsg_nonblock(maxdatalen=nil, flags=0, maxcontrollen=nil, opts={}) => [data, sender_addrinfo, rflags, *controls]
    #  
    # recvmsg receives a message using recvmsg(2) system call in non-blocking manner.
    # 
    # It is similar to BasicSocket#recvmsg
    # but non-blocking flag is set before the system call
    # and it doesn't retry the system call.
    def recvmsg_nonblock(maxdatalen=nil, flags=0, maxcontrollen=nil, opts={})
        #This is a stub, used for indexing
    end
end
