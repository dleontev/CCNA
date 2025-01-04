# Chapter 8: Implementing Ethernet Virtual LANs - Commands

This page provides a quick reference for the EXEC commands introduced in Chapter 8 of the CCNA Official Cert Guide, Volume 1, focusing on VLAN configuration and management.

## VLAN Configuration Commands

| Command | Description |
|---|---|
| `vlan vlan-id` |  Global config command that both creates the VLAN and puts the CLI into VLAN configuration mode. |
| `name vlan-name` | VLAN subcommand that names the VLAN. |
| `[no] shutdown` | VLAN mode subcommand that enables (`no shutdown`) or disables (`shutdown`) the VLAN. |
| `[no] shutdown vlan vlan-id` | Global config command that has the same effect as the `[no] shutdown` VLAN mode subcommands. |
| `vtp mode {server \| client \| transparent \| off}` | Global config command that defines the VTP mode. |

## Interface Configuration Commands

| Command | Description |
|---|---|
| `switchport mode {access \| dynamic {auto \| desirable} \| trunk}` | Interface subcommand that configures the trunking administrative mode on the interface. |
| `switchport access vlan vlan-id` | Interface subcommand that statically configures the interface into that one VLAN. |
| `switchport trunk encapsulation {dot1q \| isl \| negotiate}` | Interface subcommand that defines which type of trunking to use, assuming that trunking is configured or negotiated. |
| `switchport trunk native vlan vlan-id` | Interface subcommand that defines the native VLAN for a trunk port. |
| `switchport nonegotiate` | Interface subcommand that disables the negotiation of VLAN trunking. |
| `switchport voice vlan vlan-id` | Interface subcommand that defines the voice VLAN on a port, meaning that the switch uses 802.1Q tagging for frames in this VLAN. |
| `switchport trunk allowed vlan vlan-list` | Interface subcommand that defines the list of allowed VLANs. Ignores the existing list of allowed VLANs. |
| `switchport trunk allowed vlan {add \| remove} vlan-list` | Interface subcommand that adds to or removes from the current set of allowed VLANs on a trunk, adjusting from the existing list of allowed VLANs. |
| `switchport trunk allowed vlan {all \| none \| except vlan-list}` | Interface subcommand that defines the allowed VLAN list as either all VLANs, no VLANs, or all except those in the configured list. Ignores the existing list of allowed VLANs. |

## Verification Commands

| Command | Description |
|---|---|
| `show interfaces status` | On ports operating as access ports, it lists the access VLAN, and on ports operating as trunk ports, it lists the word "trunk". |
| `show interfaces interface-id switchport` | Lists information about any interface regarding administrative settings and operational state. |
| `show interfaces trunk` | Lists information about all operational trunks (but no other interfaces), including the list of VLANs that can be forwarded over the trunk. |
| `show interfaces interface-id trunk` | Lists trunking status about the listed interface, regardless of whether the interface currently operates as a trunk. |
| `show vlan [brief]` | Lists each VLAN and all interfaces assigned to that VLAN (but does not include operational trunks). |
| `show vlan {id vlan-id \| name vlan-name}` | Lists information about a specific VLAN by ID or name, and interfaces, including trunks. |
| `show vtp status` | Lists VTP configuration and status information. |
