# Chapter 14: Network Address Translation

## Network Address Translation Concepts

### IPv4 Address Conservation with NAT

*   NAT helps conserve public IPv4 addresses by allowing multiple devices with private addresses to share a smaller number of public addresses. 
*   Private addresses are not routable on the public internet, so NAT translates them to public addresses when needed. 
*   This translation allows devices with private addresses to communicate with devices on the internet, while conserving public addresses. 

### Inside Source NAT

*   Inside source NAT translates the source IP address of a packet from a private address to a public address when the packet is leaving the internal network. 
*   The NAT router or firewall performs this translation, allowing devices with private addresses to communicate with devices on the internet. 
*   Inside source NAT is commonly used at the edge of an enterprise network to connect to the internet. 

### Static NAT

*   Static NAT creates a one-to-one mapping between a private IP address and a public IP address. 
*   This mapping is statically configured on the NAT router or firewall. 
*   Static NAT is useful for situations where a specific device inside the private network needs to be accessible from the internet. 

### Dynamic NAT

*   Dynamic NAT creates dynamic mappings between private and public IP addresses from a pool of available public addresses. 
*   The NAT router or firewall creates these mappings on demand as devices inside the private network initiate connections to the internet. 
*   Dynamic NAT provides some security benefits by only allowing connections initiated from inside the private network. 

### Overloading NAT with Port Address Translation

*   Port Address Translation (PAT), also known as NAT overload, allows many devices with private addresses to share a single public IP address. 
*   It does this by translating both the IP address and the port number of packets, allowing multiple devices to share the same public IP address and port. 
*   PAT is commonly used in home and small office networks to allow multiple devices to share a single public IP address assigned by the ISP. 

## NAT Configuration and Troubleshooting

### Static NAT Configuration

*   Static NAT is configured using the `ip nat inside source static` command. 
*   This command specifies the inside local address and the inside global address to be mapped. 
*   The NAT router or firewall must also be configured to identify inside and outside interfaces using the `ip nat inside` and `ip nat outside` commands. 

### Dynamic NAT Configuration

*   Dynamic NAT is configured using the `ip nat inside source list` command. 
*   This command specifies an access list that matches the inside local addresses to be translated and a pool of available inside global addresses. 
*   The NAT router or firewall must also be configured to identify inside and outside interfaces. 

### Dynamic NAT Verification

*   Dynamic NAT translations can be verified using the `show ip nat translations` command. 
*   This command displays the current active NAT translations, including the inside local, inside global, and outside addresses. 

### NAT Overload (PAT) Configuration

*   PAT is configured by adding the `overload` keyword to the `ip nat inside source list` command. 
*   This keyword enables PAT, allowing multiple devices to share the same inside global address. 

### NAT Troubleshooting

*   Troubleshooting NAT involves verifying the configuration and checking for common issues such as reversed inside/outside interfaces, incorrect ACLs, and insufficient pool addresses. 
*   The `show ip nat statistics` and `debug ip nat` commands can be used to troubleshoot NAT issues. 
*   It is also important to ensure that IPv4 routing is working correctly to allow packets to reach the NAT router or firewall.