# Chapter 17: Configuring IPv4 Addresses and Static Routes - Commands

This page provides a quick reference for the EXEC commands introduced in Chapter 17 of the CCNA Official Cert Guide, Volume 1, focusing on configuring and verifying IPv4 addresses and static routes.

## Configuration Commands

| Command | Description |
|---|---|
| `ip address ip-address mask` | Interface subcommand that assigns the IPv4 address and subnet mask to the interface. |
| `interface type number.subint` | Global command that creates a subinterface and enters interface configuration mode for that subinterface. |
| `[no] ip routing` | Global command that enables (`ip routing`) or disables (`no ip routing`) IPv4 routing on the router. |
| `ip route prefix mask {ip-address \| interface-type interface-number} [distance] [permanent]` | Global configuration command that creates a static route. |

## Verification Commands

| Command | Description |
|---|---|
| `show ip route` | Lists the router's entire IPv4 routing table. |
| `show ip route [connected \| static \| ospf]` | Lists a subset of the IPv4 routing table based on the specified type (connected, static, or OSPF). |
| `show ip route ip-address` | Lists detailed information about the route that matches the specified IP address. |
| `show arp`, `show ip arp` | Lists the router's IPv4 ARP table. |
| `clear ip arp [ip-address]` | Clears all dynamic entries in the ARP table, or clears the entry for the specified IP address if provided. |
