=begin
 This is a machine generated stub using stdlib-doc for <b>class BasicSocket</b>
 Sources used:  Ruby 2.3.0-p0
 Created on 2015-12-23 19:20:55 +0300 by IntelliJ Ruby Stubs Generator.
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
    # basicsocket.recv(maxlen[, flags[, outbuf]]) => mesg
    #  
    # Receives a message.
    # 
    # _maxlen_ is the maximum number of bytes to receive.
    # 
    # _flags_ should be a bitwise OR of Socket::MSG_* constants.
    # 
    # _outbuf_ will contain only the received data after the method call
    # even if it is not empty at the beginning.
    # 
    #   UNIXSocket.pair {|s1, s2|
    #     s1.puts "Hello World"
    #     p s2.recv(4)                     #=> "Hell"
    #     p s2.recv(4, Socket::MSG_PEEK)   #=> "o Wo"
    #     p s2.recv(4)                     #=> "o Wo"
    #     p s2.recv(10)                    #=> "rld\n"
    #   }
    def recv(*args)
        #This is a stub, used for indexing
    end
    # basicsocket.do_not_reverse_lookup => true or false
    #  
    # Gets the do_not_reverse_lookup flag of _basicsocket_.
    # 
    #   BasicSocket.do_not_reverse_lookup = false
    #   TCPSocket.open("www.ruby-lang.org", 80) {|sock|
    #     p sock.do_not_reverse_lookup      #=> false
    #   }
    #   BasicSocket.do_not_reverse_lookup = true
    #   TCPSocket.open("www.ruby-lang.org", 80) {|sock|
    #     p sock.do_not_reverse_lookup      #=> true
    #   }
    def do_not_reverse_lookup()
        #This is a stub, used for indexing
    end
    # basicsocket.do_not_reverse_lookup = bool
    #  
    # Sets the do_not_reverse_lookup flag of _basicsocket_.
    # 
    #   TCPSocket.open("www.ruby-lang.org", 80) {|sock|
    #     p sock.do_not_reverse_lookup       #=> true
    #     p sock.peeraddr                    #=> ["AF_INET", 80, "221.186.184.68", "221.186.184.68"]
    #     sock.do_not_reverse_lookup = false
    #     p sock.peeraddr                    #=> ["AF_INET", 80, "carbon.ruby-lang.org", "54.163.249.195"]
    #   }
    def do_not_reverse_lookup= bool
        #This is a stub, used for indexing
    end
end
