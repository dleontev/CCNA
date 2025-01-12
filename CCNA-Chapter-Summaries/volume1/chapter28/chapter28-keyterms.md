# Chapter 28 Key Terms

*   **Duplicate Address Detection (DAD):** A process used by IPv6 devices to ensure that their assigned unicast address is unique on the local link. It involves sending Neighbor Solicitation messages and checking for any conflicting responses.
*   **IPv6 neighbor table:** A table maintained by IPv6 devices that stores information about neighboring nodes on the same link, including their IPv6 addresses and MAC addresses.
*   **Neighbor Advertisement (NA):** An IPv6 message used to respond to Neighbor Solicitation messages and provide information about a node's link-layer address (MAC address).
*   **Neighbor Discovery Protocol (NDP):** A collection of IPv6 protocols that provide functions similar to ARP, ICMP Router Discovery, and ICMP Redirect in IPv4. It includes functions for address resolution, neighbor discovery, router discovery, prefix discovery, and duplicate address detection.
*   **Neighbor Solicitation (NS):** An IPv6 message used to request a node's link-layer address (MAC address) or to verify that a node is still reachable.
*   **on-link prefix:** An IPv6 prefix that is considered to be on the same link as the device. This means that the device can reach destinations within this prefix without going through a router.
*   **permanent IPv6 address:** An IPv6 address that is assigned to an interface and remains the same over time. It is typically used for servers and other devices that need to be consistently reachable.
*   **preferred lifetime:** The length of time that an IPv6 address is preferred for use. After the preferred lifetime expires, the address enters the deprecated state.
*   **prefix discovery:** The process of learning IPv6 prefixes from Router Advertisement messages. This allows hosts to automatically configure their IPv6 addresses and subnet masks.
*   **Router Advertisement (RA):** An IPv6 message sent by routers to advertise their presence, prefixes on the link, and other configuration information.
*   **Router Solicitation (RS):** An IPv6 message sent by hosts to request Router Advertisement messages from routers on the link.
*   **stateful DHCPv6:** A DHCPv6 configuration where the server maintains a list of assigned IP addresses and other configuration information. It is similar to traditional DHCP for IPv4.
*   **Stateless Address Autoconfiguration (SLAAC):** A method that allows IPv6 hosts to automatically generate their own unique addresses based on the network prefix advertised by a router.
*   **stateless DHCPv6:** A DHCPv6 configuration where the server only provides configuration information, such as DNS server addresses, but does not manage IP address assignments.
*   **temporary IPv6 address:** An IPv6 address that is generated randomly and used for a limited time. It is typically used for privacy and security reasons.
*   **valid lifetime:** The length of time that an IPv6 address is valid and can be used. After the valid lifetime expires, the address becomes invalid and cannot be used.