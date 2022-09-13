=begin
 This is a machine generated stub using stdlib-doc for <b>class IPSocket</b>
 Sources used:  Ruby 2.2.0-p0
 Created on 2014-12-26 12:15:30 +0300 by IntelliJ Ruby Stubs Generator.
=end

require 'basic_socket'
# IPSocket is the super class of TCPSocket and UDPSocket.
class IPSocket < BasicSocket
    # ipsocket.addr([reverse_lookup]) => [address_family, port, hostname, numeric_address]
    #  
    # Returns the local address as an array which contains
    # address_family, port, hostname and numeric_address.
    # 
    # If +reverse_lookup+ is +true+ or +:hostname+,
    # hostname is obtained from numeric_address using reverse lookup.
    # Or if it is +false+, or +:numeric+,
    # hostname is same as numeric_address.
    # Or if it is +nil+ or ommitted, obeys to +ipsocket.do_not_reverse_lookup+.
    # See +Socket.getaddrinfo+ also.
    # 
    #   TCPSocket.open("www.ruby-lang.org", 80) {|sock|
    #     p sock.addr #=> ["AF_INET", 49429, "hal", "192.168.0.128"]
    #     p sock.addr(true)  #=> ["AF_INET", 49429, "hal", "192.168.0.128"]
    #     p sock.addr(false) #=> ["AF_INET", 49429, "192.168.0.128", "192.168.0.128"]
    #     p sock.addr(:hostname)  #=> ["AF_INET", 49429, "hal", "192.168.0.128"]
    #     p sock.addr(:numeric)   #=> ["AF_INET", 49429, "192.168.0.128", "192.168.0.128"]
    #   }
    def addr(*reverse_lookup)
        #This is a stub, used for indexing
    end
    # ipsocket.peeraddr([reverse_lookup]) => [address_family, port, hostname, numeric_address]
    #  
    # Returns the remote address as an array which contains
    # address_family, port, hostname and numeric_address.
    # It is defined for connection oriented socket such as TCPSocket.
    # 
    # If +reverse_lookup+ is +true+ or +:hostname+,
    # hostname is obtained from numeric_address using reverse lookup.
    # Or if it is +false+, or +:numeric+,
    # hostname is same as numeric_address.
    # Or if it is +nil+ or ommitted, obeys to +ipsocket.do_not_reverse_lookup+.
    # See +Socket.getaddrinfo+ also.
    # 
    #   TCPSocket.open("www.ruby-lang.org", 80) {|sock|
    #     p sock.peeraddr #=> ["AF_INET", 80, "carbon.ruby-lang.org", "221.186.184.68"]
    #     p sock.peeraddr(true)  #=> ["AF_INET", 80, "carbon.ruby-lang.org", "221.186.184.68"]
    #     p sock.peeraddr(false) #=> ["AF_INET", 80, "221.186.184.68", "221.186.184.68"]
    #     p sock.peeraddr(:hostname) #=> ["AF_INET", 80, "carbon.ruby-lang.org", "221.186.184.68"]
    #     p sock.peeraddr(:numeric)  #=> ["AF_INET", 80, "221.186.184.68", "221.186.184.68"]
    #   }
    def peeraddr(*reverse_lookup)
        #This is a stub, used for indexing
    end
    # ipsocket.recvfrom(maxlen)        => [mesg, ipaddr]
    # ipsocket.recvfrom(maxlen, flags) => [mesg, ipaddr]
    #  
    # Receives a message and return the message as a string and
    # an address which the message come from.
    # 
    # _maxlen_ is the maximum number of bytes to receive.
    # 
    # _flags_ should be a bitwise OR of Socket::MSG_* constants.
    # 
    # ipaddr is same as IPSocket#{peeraddr,addr}.
    # 
    #   u1 = UDPSocket.new
    #   u1.bind("127.0.0.1", 4913)
    #   u2 = UDPSocket.new
    #   u2.send "uuuu", 0, "127.0.0.1", 4913
    #   p u1.recvfrom(10) #=> ["uuuu", ["AF_INET", 33230, "localhost", "127.0.0.1"]]
    def recvfrom(*several_variants)
        #This is a stub, used for indexing
    end
    # IPSocket.getaddress(host)        => ipaddress
    #  
    # Lookups the IP address of _host_.
    # 
    #   IPSocket.getaddress("localhost")     #=> "127.0.0.1"
    #   IPSocket.getaddress("ip6-localhost") #=> "::1"
    def self.getaddress(host)
        #This is a stub, used for indexing
    end
end
