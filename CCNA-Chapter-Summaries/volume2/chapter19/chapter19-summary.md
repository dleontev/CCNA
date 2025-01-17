# Chapter 19: WAN Architecture

## Metro Ethernet

### Metro Ethernet Physical Design and Topology

*   Metro Ethernet (MetroE) WAN services use Ethernet access links to connect customer devices to the service provider’s network. 
*   The access links typically use fiber optic cabling due to the longer distances involved. 
*   The service provider’s network uses Ethernet switches to forward frames between customer devices. 
*   The customer’s perspective of the MetroE service is that it acts like a large Ethernet switch, forwarding frames between customer devices. 

### Ethernet WAN Services and Topologies

*   Ethernet Line Service (E-Line): Provides a point-to-point connection between two customer devices. 
*   Ethernet LAN Service (E-LAN): Provides a full mesh connection between multiple customer devices. 
*   Ethernet Tree Service (E-Tree): Provides a hub-and-spoke connection between a central site and multiple remote sites. 

### Layer 3 Design Using Metro Ethernet

*   E-Line: Requires a separate IP subnet for each E-Line connection.  Routing protocol neighbor relationships are formed only between the two routers on the same E-Line. 
*   E-LAN: Allows all routers to be in the same IP subnet.  Routing protocol neighbor relationships are formed between all routers on the E-LAN. 

## Multiprotocol Label Switching (MPLS)

### MPLS VPN Physical Design and Topology

*   MPLS VPNs use provider edge (PE) routers to connect to customer edge (CE) routers. 
*   The access links between CE and PE routers can use various Layer 2 technologies, including Ethernet, PPP, and Frame Relay. 

### Layer 3 with MPLS VPN

*   MPLS VPNs provide Layer 3 connectivity between customer sites. 
*   The PE routers exchange routing information with CE routers using various routing protocols, including RIPv2, EIGRP, OSPF, and BGP. 
*   The PE routers use MP-BGP to distribute customer routing information across the MPLS network. 
*   The CE routers learn routes to other sites via the PE router, with the PE router as the next hop. 

## Internet VPNs

### Internet Access

*   Digital Subscriber Line (DSL): Provides Internet access over existing telephone lines. 
*   Cable Internet: Provides Internet access over existing cable TV lines. 
*   Wireless WAN (4G, 5G): Provides Internet access using cellular networks. 
*   Fiber (Ethernet) Internet Access: Provides high-speed Internet access using fiber optic cabling. 

### Internet VPN Fundamentals

*   Internet VPNs allow enterprises to create secure connections over the public Internet. 
*   VPN tunnels provide confidentiality, authentication, data integrity, and anti-replay protection. 

### Site-to-Site VPNs with IPsec

*   IPsec is a framework for securing IP traffic. 
*   IPsec tunnel mode encrypts the entire original IP packet. 
*   IPsec transport mode encrypts only the payload of the original IP packet. 

### Remote Access VPNs with IPsec

*   Remote access VPNs allow individual devices to connect securely to an enterprise network over the Internet. 
*   IPsec transport mode is typically used for remote access VPNs. 
*   The Cisco Secure Client can be used to create remote access VPNs. 

### Remote Access VPNs with TLS

*   TLS is a security protocol used to secure web traffic (HTTPS). 
*   TLS can also be used for remote access VPNs. 
*   The Cisco Secure Client can use TLS for remote access VPNs.