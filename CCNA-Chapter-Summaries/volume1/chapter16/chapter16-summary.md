# Chapter 16: Operating Cisco Routers

## Installing Cisco Routers

### Installing Enterprise Routers

*   Enterprise networks typically have a few centralized sites and many smaller remote sites.
*   Each site has a LAN switch and a router.
*   The router connects to the LAN switch and a WAN link.
*   WAN links provide connectivity from each remote site to the central site.
*   Serial WAN links typically terminate at a CSU/DSU.
*   The CSU/DSU can be a separate device or integrated into the router's serial interface hardware.

### Installing SOHO Routers

*   SOHO routers are typically used in homes or small offices.
*   They often have a single WAN connection that uses VPN technology.
*   SOHO routers are often multifunction devices that include routing, switching, VPN, wireless, and other features.

## Cisco Router Operating Systems

*   Cisco routers use an OS called IOS or IOS XE.
*   IOS XE is a newer version of IOS with a more modern software architecture.
*   Both IOS and IOS XE use the same CLI.

## Enabling IPv4 Support on Cisco Router Interfaces

### Accessing the Router CLI

*   The router CLI is similar to the switch CLI.
*   Both have user and privileged modes.
*   Both use the same commands for configuring passwords, SSH keys, hostname, interface descriptions, and shutting down/enabling interfaces.
*   Both use the same navigation commands and help features.

### Router Interfaces

*   Routers support a wider variety of interfaces than switches.
*   Routers can have Ethernet, serial, and other types of interfaces.
*   The `show ip interface brief` and `show interfaces` commands display information about router interfaces.

### Interface Status Codes

*   Each interface has two status codes: line status and protocol status.
*   The line status refers to the physical state of the interface (Layer 1).
*   The protocol status refers to the data link layer state of the interface (Layer 2).

### Router Interface IP Addresses

*   Router interfaces must be configured with an IP address and mask before they can route packets.
*   The `ip address address mask` command configures an IP address on an interface.
*   The `show protocols` command verifies the configuration.

### Ethernet Interface Autonegotiation

*   Routers and switches use autonegotiation to determine the best speed and duplex for an Ethernet link.
*   The `show interfaces` command displays the results of autonegotiation.
*   The `negotiation auto` command enables autonegotiation on IOS XE routers.

### Bandwidth and Clock Rate on Serial Interfaces

*   Routers use serial interfaces to connect to serial WAN links.
*   The `clock rate` command configures the speed of a serial interface in the lab.
*   The `bandwidth` command configures the documented speed of an interface.

### Router Auxiliary Port

*   Routers have an auxiliary port that can be used for remote administration.
*   The `line aux 0` command configures the auxiliary port.