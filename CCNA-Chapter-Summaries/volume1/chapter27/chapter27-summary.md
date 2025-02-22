# Chapter 27: Implementing IPv6 Addressing on Routers

## Implementing Unicast IPv6 Addresses on Routers

### Static Unicast Address Configuration

#### Configuring the Full 128-Bit Address

*   To configure a static IPv6 address, use the `ipv6 address address/prefix-length` command in interface configuration mode.
*   The address can be abbreviated or unabbreviated.
*   The prefix length is the number of bits in the network prefix.

`ipv6 address 2001:DB8:1:1::1/64`


#### Enabling IPv6 Routing

*   To enable IPv6 routing, use the `ipv6 unicast-routing` global configuration command.

`ipv6 unicast-routing`


#### Verifying the IPv6 Address Configuration

*   To verify the IPv6 address configuration, use the `show ipv6 interface brief` command.
*   This command displays the IPv6 address and prefix length for each interface.

`show ipv6 interface brief`


### Dynamic Unicast Address Configuration

*   Routers can also learn IPv6 addresses dynamically using DHCP or SLAAC.
*   To enable dynamic address configuration, use the `ipv6 address dhcp` or `ipv6 address autoconfig` command in interface configuration mode.

## Special Addresses Used by Routers

### Link-Local Addresses

*   Link-local addresses are used for communication on a single link, such as a LAN.
*   They are automatically generated by the router.
*   They can also be configured manually using the `ipv6 address address link-local` command.

### IPv6 Multicast Addresses

*   Multicast addresses are used for one-to-many communication.
*   They are used by routing protocols and other IPv6 features.

### Solicited-Node Multicast Addresses

*   Solicited-node multicast addresses are used by NDP to discover the MAC addresses of neighboring devices.
*   They are calculated based on the unicast address of the device.

### Anycast Addresses

*   Anycast addresses are used to provide redundancy for services.
*   They are configured manually using the `ipv6 address address anycast` command.
*   Packets sent to an anycast address are routed to the nearest device that has that address configured.

### Unspecified and Loopback Addresses

*   The unspecified address (::) is used as a source address when the device does not have an IPv6 address yet.
*   The loopback address (::1) is used to refer to the local host.