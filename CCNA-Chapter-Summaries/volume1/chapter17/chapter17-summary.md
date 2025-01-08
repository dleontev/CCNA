# Chapter 17: Configuring IPv4 Addresses and Static Routes

## IP Routing

*   The process a router uses to forward an IP packet.
*   Uses the destination IP address to make a match in the IP routing table.
*   The matched route provides instructions on how to forward the packet.

## The IP Routing Process

1.  The router receives a frame on an interface and decides whether to process the frame.
    *   The router processes the frame if:
        *   The frame has no errors (per the FCS).
        *   The frame's destination MAC address is the router's MAC address, an appropriate broadcast address, or an appropriate multicast address.
2.  The router de-encapsulates the IP packet from the frame.
3.  The router matches the packet's destination IP address to an entry in the routing table.
    *   The entry lists the outgoing interface and, as needed, the next-hop router.
4.  The router encapsulates the packet in a new frame appropriate for the outgoing interface.
    *   If the outgoing interface is a LAN interface, the router uses ARP to determine the appropriate destination MAC address for the frame.
5.  The router transmits the frame out the outgoing interface.

## Configuring IP Addresses

*   The `ip address` command configures an IP address on a router interface.

    ```
    ip address address mask
    ```

*   The configured IP address must be de-subnetted. That is, it cannot be the subnet ID or the subnet broadcast address.

## Configuring Static Routes

*   The `ip route` command configures a static route.

    ```
    ip route network-address mask {outgoing-interface-ID | ip-address}
    ```

*   The `network-address` and `mask` parameters define the destination of the route.
*   The `outgoing-interface-ID` parameter specifies the local router's interface for forwarding packets.
*   The `ip-address` parameter specifies the next-hop router's IP address.
*   Static routes can be used to configure the following types of routes:
    *   Network routes: for a specific subnet or network
    *   Default routes: for all destinations
    *   Host routes: for a single host IP address
    *   Floating static routes: for use as a backup route when another route is unavailable

## Troubleshooting Static Routes

*   Static routes may not appear in the IP routing table for several reasons:
    *   The `ip route` command may have incorrect syntax.
    *   The outgoing interface may be down.
    *   The router may not have a route to the next-hop router's IP address.
*   Static routes may appear in the routing table but be incorrect.
*   Packets may not be forwarded because of a problem other than the static route.