# Chapter 05: Analyzing Ethernet LAN Switching - Commands

This page provides a quick reference for the EXEC commands introduced in Chapter 5 of the CCNA Official Cert Guide, Volume 1, focusing on analyzing and managing the MAC address table.

## EXEC Commands

| Command | Mode | Purpose |
|---|---|---|
| `show mac-address-table` | EXEC | Displays all MAC address table entries. |
| `show mac-address-table dynamic` | EXEC | Displays dynamically learned MAC address entries. |
| `show mac-address-table dynamic vlan vlan-id` | EXEC | Displays dynamically learned entries for a specific VLAN. |
| `show mac-address-table dynamic address mac-address` | EXEC | Displays entries with the specified MAC address. |
| `show mac-address-table dynamic interface interface-id` | EXEC | Displays entries associated with a specific interface. |
| `show mac-address-table count` | EXEC | Shows the number of entries and remaining space in the MAC address table. |
| `show mac-address-table aging-time` | EXEC | Displays the aging time for MAC address entries. |
| `show interfaces interface-id counters` | EXEC | Displays packet counters for the specified interface. |
| `show interfaces status` | EXEC |  Displays a summary of interface status and operational information. |
| `clear mac-address-table dynamic [vlan vlan-number] [interface interface-id] [address mac-address]` | EXEC | Clears dynamic MAC address entries. Options allow clearing entries for a specific VLAN, interface, or MAC address. |


## Configuration Command

| Command | Mode | Purpose |
|---|---|---|
| `mac address-table aging-time time-in-seconds [vlan vlan-number]` | Global Config | Sets the aging time for MAC address entries globally or for a specific VLAN. |
