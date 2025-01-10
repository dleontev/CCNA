# Chapter 28: Implementing IPv6 Addressing on Hosts

## The Neighbor Discovery Protocol

### Discovering Neighbor Link Addresses with NDP

*   Neighbor Discovery Protocol (NDP) replaces ARP in IPv6. 
*   NDP uses Neighbor Solicitation (NS) and Neighbor Advertisement (NA) messages to discover the MAC addresses of neighboring devices.
*   NS messages are sent to the solicited-node multicast address of the target device.
*   NA messages are sent to the unicast address of the device that sent the NS message.

### Discovering Routers with NDP

*   NDP also uses Router Solicitation (RS) and Router Advertisement (RA) messages to allow hosts to discover routers on the link.
*   RS messages are sent to the all-routers multicast address (`FF02::2`).
*   RA messages are sent to the all-nodes multicast address (`FF02::1`). 

### Discovering Prefixes with NDP

*   RA messages also include information about the IPv6 prefixes that are used on the link.
*   This allows hosts to automatically configure their IPv6 addresses and subnet masks.

### Discovering Duplicate Addresses Using NDP

*   NDP uses NS and NA messages to perform Duplicate Address Detection (DAD).
*   DAD is used to ensure that no two devices on the link have the same IPv6 address.

## Dynamic Configuration of Host IPv6 Settings

### Using Stateful DHCP

*   Stateful DHCPv6 is similar to DHCP for IPv4.
*   A DHCPv6 server assigns IPv6 addresses and other configuration information to hosts.
*   Stateful DHCPv6 is typically used in enterprise networks.

### Using Stateless Address Autoconfiguration

*   Stateless Address Autoconfiguration (SLAAC) allows hosts to automatically configure their IPv6 addresses based on the network prefix advertised by a router.
*   SLAAC is typically used in home and small office networks.

### Combining SLAAC with Stateless DHCP

*   SLAAC can be combined with stateless DHCP to provide hosts with additional configuration information, such as the address of a DNS server.

### Permanent and Temporary SLAAC Addresses

*   SLAAC can generate both permanent and temporary IPv6 addresses.
*   Permanent addresses are used for incoming connections to servers.
*   Temporary addresses are used for outgoing connections from clients.

## Troubleshooting Host IPv6 Addressing

### Verifying IPv6 Connectivity from Hosts

*   The `ping` and `traceroute` commands can be used to test IPv6 connectivity from hosts.

### Verifying Host Connectivity from Routers

*   The `show ipv6 neighbors` command can be used to verify that a router can reach a neighboring host.