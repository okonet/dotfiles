=begin
 This is a machine generated stub using stdlib-doc for <b>class IPSocket</b>
 Sources used:  Ruby 1.8.7-p371
 Created on 2014-03-18 09:07:18 +0400 by IntelliJ Ruby Stubs Generator.
=end

# IPSocket is the parent of TCPSocket and UDPSocket and implements
# functionality common to them.
# 
# A number of APIs in IPSocket, Socket, and their descendants return an
# address as an array. The members of that array are:
# - address family: A string like "AF_INET" or "AF_INET6" if it is one of the
#   commonly used families, the string "unknown:#" (where `#' is the address
#   family number) if it is not one of the common ones.  The strings map to
#   the Socket::AF_* constants.
# - port: The port number.
# - name: Either the canonical name from looking the address up in the DNS, or
#   the address in presentation format
# - address: The address in presentation format (a dotted decimal string for
#   IPv4, a hex string for IPv6).
# 
# The address and port can be used directly to create sockets and to bind or
# connect them to the address.
class IPSocket < BasicSocket
    def addr()
        #This is a stub, used for indexing
    end
    def peeraddr()
        #This is a stub, used for indexing
    end
    def recvfrom(*args)
        #This is a stub, used for indexing
    end
    def self.getaddress(p1)
        #This is a stub, used for indexing
    end
end
