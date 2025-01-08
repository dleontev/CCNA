# Chapter 22: Implementing Basic OSPF Features - Commands

This page provides a quick reference for the EXEC and configuration commands introduced in Chapter 22 of the CCNA Official Cert Guide, Volume 1, focusing on implementing basic OSPF features.

## Configuration Commands

| Command | Mode | Purpose |
|---|---|---|
| `router ospf process-id` | Global Config | Enters OSPF configuration mode for the specified process ID. |
| `network ip-address wildcard-mask area area-id` | Router Config | Enables OSPF on interfaces matching the specified IP address and wildcard mask, and assigns them to the specified area. |
| `ip ospf process-id area area-number` | Interface Config | Enables OSPF on the interface and assigns it to the specified OSPF area. |
| `ip ospf cost interface-cost` | Interface Config | Sets the OSPF cost for the interface. |
| `bandwidth bandwidth` | Interface Config | Sets the bandwidth of the interface in Kbps. |
| `auto-cost reference-bandwidth number` | Router Config | Sets the reference bandwidth for calculating OSPF cost based on interface bandwidth. |
| `router-id id` | Router Config |  Sets the router ID for the OSPF process. |
| `interface loopback number` | Global Config | Creates a loopback interface and enters interface configuration mode. |

## EXEC Commands

| Command | Purpose |
|---|---|
| `show ip ospf` | Displays general information about the OSPF process, including router ID, areas, and interfaces. |
| `show ip ospf interface brief` | Displays a brief summary of OSPF-enabled interfaces. |
| `show ip ospf interface [type number]` | Displays detailed information about OSPF on all interfaces or a specific interface. |
| `show ip protocols` | Displays information about configured routing protocols, including OSPF. |
| `show ip ospf neighbor [type number]` | Displays a list of OSPF neighbors and their states, optionally filtered by interface. |
| `show ip ospf neighbor neighbor-id` | Displays detailed information about a specific OSPF neighbor. |
| `show ip ospf database` | Displays the contents of the OSPF link-state database. |
| `show ip route` | Displays the IP routing table. |
| `show ip route ospf` | Displays routes learned by OSPF in the routing table. |
| `clear ip ospf process` | Resets the OSPF process, clearing neighbor relationships and forcing a new router ID election. |