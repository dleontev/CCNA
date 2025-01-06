# Chapter 18: IP Routing in the LAN - Commands

This page provides a quick reference for the EXEC commands introduced in Chapter 18 of the CCNA Official Cert Guide, Volume 1, focusing on configuring and verifying IP routing in a LAN environment.

## Configuration Commands

| Command | Description |
|---|---|
| `interface type number.subint` | Router global command to create a subinterface and enter interface configuration mode. |
| `encapsulation dot1q vlan-id [native]` | Router subinterface subcommand to configure 802.1Q trunking for a specific VLAN. The `native` keyword specifies the native VLAN. |
| `[no] ip routing` | Global command that enables or disables IPv4 routing on the router. |
| `interface vlan vlan-id` | Global command to create a VLAN interface and enter interface configuration mode. Valid on Layer 3 switches and routers with embedded LAN switch ports. |
| `[no] switchport` | Layer 3 switch subcommand that configures a port as a Layer 2 switch port (`switchport`) or a Layer 3 routed port (`no switchport`). |
| `interface port-channel channel-number` | Switch command to enter PortChannel configuration mode and create a PortChannel if it doesn't exist. |
| `channel-group channel-number mode {auto \| desirable \| active \| passive \| on}` | Interface subcommand that enables EtherChannel on the interface. |
| `[no] autostate` | Interface subcommand on VLAN interfaces that enables or disables the autostate feature. |
| `vlan vlan-id` | Global config command that creates a VLAN and enters VLAN configuration mode. |
| `name vlan-name` | VLAN subcommand that assigns a name to the VLAN. |
| `[no] shutdown` | VLAN mode subcommand that enables or disables the VLAN. |

## Verification Commands

| Command | Description |
|---|---|
| `show ip route` | Lists the router's entire IPv4 routing table. |
| `show ip route [connected]` | Lists a subset of the routing table, showing only connected routes. |
| `show vlans` | Lists VLAN configuration and statistics for VLAN trunks configured on routers. |
| `show interfaces [interface type number]` | Lists detailed status and statistical information about all interfaces or a specific interface. |
| `show interfaces [interface type number] status` | Lists summary information about interfaces, including access VLANs, trunk status, or routed port status. |
| `show interfaces interface-id switchport` | Lists administrative and operational status for switch ports, or confirms routed port status. |
| `show interfaces vlan number` | Lists interface status, IP address, and other details for a specific VLAN interface. |
| `show etherchannel [channel-group-number] summary` | Lists information about the state of EtherChannels on the switch, including Layer 2 or Layer 3 status. |
| `show mac-address-table dynamic` | Shows dynamically learned MAC address entries on LAN switches and routers with embedded switch ports. |
| `show vlan-switch [brief]` (IOS only) | Lists VLAN configuration on a router with embedded LAN switch ports. |
| `show vlan [brief]` (IOS XE only) | Lists VLAN configuration on a router with embedded LAN switch ports. |
