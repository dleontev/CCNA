# Chapter 29: Implementing IPv6 Routing

## IPv6 Routing Table

*   The IPv6 routing table stores information about reachable IPv6 destinations and how to reach them.
*   The `show ipv6 route` command displays the IPv6 routing table.

## Static IPv6 Routes

*   Static routes can be configured for IPv6 using the `ipv6 route` command.

    ```
    ipv6 route 2001:DB8:2:2::/64 GigabitEthernet0/2
    ```

*   A static default route can be configured using the `::/0` prefix.

    ```
    ipv6 route ::/0 2001:DB8:1:1::2
    ```

## Dynamic IPv6 Routing Protocols

*   RIPng, OSPFv3, and EIGRP for IPv6 are dynamic routing protocols that can be used to exchange routing information between IPv6 routers.

## Verifying IPv6 Operation

*   The `show ipv6 interface brief` command displays a summary of IPv6 interface information.
*   The `show ipv6 neighbors` command displays information about neighboring IPv6 devices discovered using NDP.
*   The `ping` command can be used with IPv6 addresses to test connectivity.