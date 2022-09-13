=begin
 This is a machine generated stub using stdlib-doc for <b>class TCPSocket</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

class TCPSocket < IPSocket
    # Socket.gethostbyname(host) => hostent
    #  
    # Resolve +host+ and return name and address information for it, similarly to
    # gethostbyname(3). +host+ can be a domain name or the presentation format of
    # an address.
    # 
    # Returns an array of information similar to that found in a +struct hostent+:
    #   - cannonical name: the cannonical name for host in the DNS, or a
    #     string representing the address
    #   - aliases: an array of aliases for the canonical name, there may be no aliases
    #   - address family: usually one of Socket::AF_INET or Socket::AF_INET6
    #   - address: a string, the binary value of the +struct sockaddr+ for this name, in
    #     the indicated address family
    #   - ...: if there are multiple addresses for this host,  a series of
    #     strings/+struct sockaddr+s may follow, not all necessarily in the same
    #     address family. Note that the fact that they may not be all in the same
    #     address family is a departure from the behaviour of gethostbyname(3).
    # 
    # Note: I believe that the fact that the multiple addresses returned are not
    # necessarily in the same address family may be a bug, since if this function
    # actually called gethostbyname(3), ALL the addresses returned in the trailing
    # address list (h_addr_list from struct hostent) would be of the same address
    # family!  Examples from my system, OS X 10.3:
    # 
    #   ["localhost", [], 30, "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001", "\177\000\000\001"]
    #     and
    #   ["ensemble.local", [], 30, "\376\200\000\004\000\000\000\000\002\003\223\377\376\255\010\214", "\300\250{\232" ]
    # 
    # Similar information can be returned by Socket.getaddrinfo if called as:
    # 
    #    Socket.getaddrinfo(+host+, 0, Socket::AF_UNSPEC, Socket::SOCK_STREAM, nil, Socket::AI_CANONNAME)
    # 
    # == Examples
    # 
    #   Socket.gethostbyname "example.com"                                                           
    #   => ["example.com", [], 2, "\300\000\"\246"]
    # 
    # This name has no DNS aliases, and a single IPv4 address.
    # 
    #   Socket.gethostbyname "smtp.telus.net"
    #   => ["smtp.svc.telus.net", ["smtp.telus.net"], 2, "\307\271\334\371"]
    # 
    # This name is an an alias so the canonical name is returned, as well as the
    # alias and a single IPv4 address.
    # 
    #   Socket.gethostbyname "localhost"
    #   => ["localhost", [], 30, "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001", "\177\000\000\001"]
    # 
    # This machine has no aliases, returns an IPv6 address, and has an additional IPv4 address.
    # 
    # +host+ can also be an IP address in presentation format, in which case a
    # reverse lookup is done on the address:
    # 
    #   Socket.gethostbyname("127.0.0.1")
    #   => ["localhost", [], 2, "\177\000\000\001"]
    # 
    #   Socket.gethostbyname("192.0.34.166")
    #   => ["www.example.com", [], 2, "\300\000\"\246"]
    # 
    # == See
    # See: Socket.getaddrinfo
    def self.gethostbyname(host)
        #This is a stub, used for indexing
    end
    # TCPSocket.new(remote_host, remote_port, local_host=nil, local_port=nil)
    #  
    # Opens a TCP connection to +remote_host+ on +remote_port+.  If +local_host+
    # and +local_port+ are specified, then those parameters are used on the local
    # end to establish the connection.
    def self.new(remote_host, remote_port, local_host=nil, local_port=nil)
        #This is a stub, used for indexing
    end
end
