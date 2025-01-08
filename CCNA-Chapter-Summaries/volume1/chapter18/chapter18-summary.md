# Chapter 18: IP Routing in the LAN

## VLAN Routing with Router 802.1Q Trunks

*   To route between VLANs, a router interface can be connected to a trunk port on a LAN switch.
*   The router requires a subinterface for each VLAN being routed.
*   The `encapsulation dot1q vlan-id` command configures a subinterface to participate in a specific VLAN.
*   The `show ip route` command verifies the routes.
*   The `show vlans` command shows information about the VLANs on the router's trunk interface.

## VLAN Routing with Layer 3 Switch SVIs

*   Layer 3 switches can route between VLANs using SVIs.
*   The `ip routing` command enables IP routing on the switch.
*   The `show ip route` command shows the routes.
*   The `show interfaces status` command shows the status of the VLAN interfaces.

## VLAN Routing with Layer 3 Switch Routed Ports

*   Layer 3 switches can route between VLANs using routed ports.
*   The `no switchport` command configures a routed port.
*   The `show ip route` command shows the routes.
*   The `show interfaces status` command shows the status of the routed ports.

## VLAN Routing on a Router's LAN Switch Ports

*   Some routers have integrated LAN switch ports.
*   These ports can be configured like access ports on a Layer 3 switch.
*   The `show ip route` command shows the routes.
*   The `show mac-address-table` command shows the MAC address table for the router's LAN switch ports.