# Chapter 19: IP Addressing on Hosts

## Dynamic Host Configuration Protocol

### DHCP Concepts

DHCP is a protocol that allows hosts to dynamically obtain IP addresses and other network configuration settings from a DHCP server.

1.  The host uses a broadcast message called a DHCP Discover message to find DHCP servers.
2.  The servers respond with a DHCP Offer message that offers a lease of an IP address to the host.
3.  The host sends a DHCP Request message to ask for the offered IP address.
4.  The server responds with a DHCP Acknowledgment message to acknowledge the request and lease the address.

### APIPA IP Addresses (169.254.x.x)

If a host cannot lease an IP address from a DHCP server, it can self-assign an address using APIPA. These addresses are in the range `169.254.1.0` - `169.254.254.255`.

### Supporting DHCP for Remote Subnets with DHCP Relay

*   If no DHCP server is on the same subnet as the host, the host can use a DHCP relay agent (typically a router) to forward DHCP messages to a DHCP server on another subnet.
*   The `ip helper-address` command configures a router interface to act as a DHCP relay agent.

### Information Stored at the DHCP Server

The DHCP server stores the following information:

*   Subnet ID and mask
*   Reserved addresses
*   Default router
*   DNS server IP address(es)

## Configuring DHCP Features on Routers and Switches

### Configuring DHCP Relay

To configure a DHCP relay agent on a Cisco router, use the following command in interface configuration mode:

`ip helper-address address`

### Configuring a Switch as a DHCP Client

To configure a switch to use DHCP to obtain an IP address, use the following command in VLAN interface configuration mode:

`ip address dhcp`

### Configuring a Router as a DHCP Client

To configure a router to use DHCP to obtain an IP address, use the following command in interface configuration mode:

`ip address dhcp`

## Identifying Host IPv4 Settings

### Host Settings for IPv4

To function on an IPv4 network, a host needs the following settings:

*   IP address
*   Subnet mask
*   Default gateway
*   DNS server IP addresses

### Host IP Settings on Windows

*   The `ipconfig` and `ipconfig /all` commands display IPv4 settings on Windows hosts.
*   The `netstat -rn` command displays the host's IP routing table.

### Host IP Settings on macOS

*   The `ifconfig` command displays IPv4 settings on macOS hosts.
*   The `networksetup` command displays additional information, including the default gateway.
*   The `netstat -rn` command displays the host's IP routing table.

### Host IP Settings on Linux

*   The `ifconfig` command displays IPv4 settings on Linux hosts.
*   The `ip` command can also be used to display this information.
*   The `netstat -rn` and `ip route` commands display the host's IP routing table.

## Troubleshooting Host IP Settings

### A Working Windows Host with Static IP Configuration

*   If a Windows host is configured with a static IP address, the `ipconfig /all` command will show that DHCP is disabled.

### A Failed Windows DHCP Client Due to IP Connectivity Issues

*   If a Windows host cannot obtain an IP address from a DHCP server, it will self-assign an APIPA address.
*   The `ipconfig /all` command will show an APIPA address (in the `169.254.0.0/16` range) and no default gateway or DNS servers.

### A Working Windows DHCP Client with Incorrect Settings

*   If a Windows host obtains incorrect settings from a DHCP server, it may not be able to communicate with devices on other subnets or resolve hostnames.
*   The `ipconfig /all` command will show the incorrect settings.
*   The `netstat -rn` command will show the incorrect default gateway in the host's routing table.