# Chapter 16: Operating Cisco Routers - Commands

This page provides a quick reference for the EXEC commands introduced in Chapter 16 of the CCNA Official Cert Guide, Volume 1, focusing on configuring and verifying router interfaces.

## Configuration Commands

| Command | Description |
|---|---|
| `interface type number` | Global command that enters interface configuration mode for the specified interface. |
| `ip address address mask` | Interface subcommand that sets the IPv4 address and subnet mask for the interface. |
| `[no] shutdown` | Interface subcommand that enables (`no shutdown`) or disables (`shutdown`) the interface. |
| `description text` | Interface subcommand that adds a description to the interface. |

### IOS-Specific Commands

These commands are specific to Cisco IOS (traditional) and not available in IOS XE.

| Command | Description |
|---|---|
| `duplex {full \| half \| auto}` | Interface command that sets the duplex mode (full, half, or auto-negotiate) for LAN interfaces. |
| `speed {10 \| 100 \| 1000 \| auto}` | Interface command that sets the speed (10, 100, 1000 Mbps, or auto-negotiate) for Gigabit Ethernet interfaces. |

### IOS XE-Specific Commands

These commands are specific to Cisco IOS XE and not available in traditional IOS.

| Command | Description |
|---|---|
| `[no] negotiation auto` | Interface command that enables or disables auto-negotiation on the interface. |
| `duplex {full \| half \}` | Interface command that sets the duplex mode (full or half), allowed only if auto-negotiation is disabled. |
| `speed {10 \| 100 \| 1000}` | Interface command that sets the speed (10, 100, or 1000 Mbps), allowed only if auto-negotiation is disabled. |


## Verification Commands

| Command | Description |
|---|---|
| `show interfaces [type number]` | Lists detailed information about all interfaces or a specific interface. |
| `show ip interface brief` | Lists a summary of interface information, including IP address, status, and configuration method. |
| `show protocols [type number]` | Lists information about routing protocols configured on the router or a specific interface. |

### IOS XE-Specific Verification Command

| Command | Description |
|---|---|
| `show interfaces [type number] controller` | Lists detailed information about the interface hardware and driver, including Ethernet auto-negotiation details. |
