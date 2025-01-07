# Chapter 04: Using the Command-Line Interface - Commands

This page provides a quick reference for the EXEC and configuration commands introduced in Chapter 4 of the CCNA Official Cert Guide, Volume 1, related to basic Cisco device management.

## Configuration Commands

| Command | Mode | Purpose |
|---|---|---|
| `line console 0` | Global | Enters console line configuration mode. |
| `login` | Line (console/vty) | Enables password prompt for login (without username). |
| `password pass-value` | Line (console/vty) | Sets the password for the line. |
| `interface type port-number` | Global | Enters interface configuration mode (e.g., `interface GigabitEthernet 0/1`). |
| `speed value` | Interface | Sets the speed of an Ethernet interface. |
| `hostname name` | Global | Sets the hostname of the device. |
| `exit` | Configuration | Exits the current configuration mode to the next higher level. |
| `end` | Configuration | Exits configuration mode and returns to privileged EXEC mode. |
| `Ctrl+Z` | Configuration |  (Keyboard shortcut) Same function as `end`. |

## EXEC Commands

| Command | Mode | Purpose |
|---|---|---|
| `no debug all`, `undebug all` | Privileged EXEC | Disables all debugging. |
| `reload` | Privileged EXEC | Reboots the device. |
| `copy running-config startup-config` | Privileged EXEC | Saves the running configuration to the startup configuration file. |
| `copy startup-config running-config` | Privileged EXEC | Copies the startup configuration to the running configuration. |
| `show running-config` | Privileged EXEC | Displays the running configuration. |
| `write erase`, `erase startup-config`, `erase nvram:` | Privileged EXEC | Erases the startup configuration file. |
| `quit` | EXEC |  Disconnects the CLI session. |
| `show startup-config` | Privileged EXEC | Displays the startup configuration. |
| `enable` | User EXEC | Enters privileged EXEC mode. |
| `disable` | Privileged EXEC | Returns to user EXEC mode. |
| `configure terminal` | Privileged EXEC | Enters global configuration mode. |
| `show mac-address-table` | EXEC | Displays the MAC address table. |
