# Chapter 19: IP Addressing on Hosts - Commands

This page provides a quick reference for commands related to IP addressing on hosts, as discussed in Chapter 19 of the CCNA Official Cert Guide, Volume 1. It includes commands for routers/switches and generic host commands for Windows, macOS, and Linux.

## Router/Switch Commands

### Configuration Commands

| Command | Description |
|---|---|
| `ip helper-address ip-address` | Interface subcommand that enables the router to relay DHCP requests from clients on the local subnet to a DHCP server on a remote subnet. |
| `ip address dhcp` | Interface subcommand that configures the router or switch to obtain an IP address from a DHCP server. |


### Verification Commands

| Command | Description |
|---|---|
| `show arp`, `show ip arp` | Displays the router's ARP table. |
| `show dhcp lease` | (Switch command) Displays information about DHCP leases on the switch. |
| `show ip default-gateway` | (Switch command) Displays the switch's default gateway setting. |


## Generic Host Commands

These commands are common across different operating systems like Windows, macOS, and Linux.

| Command | Description |
|---|---|
| `ipconfig /all` (Windows) | Displays detailed IP configuration information, including IP address, subnet mask, default gateway, and DNS servers. |
| `ifconfig` (macOS, Linux) | Displays IP address and subnet mask for network interfaces. |
| `networksetup -getinfo interface` (macOS) | Displays IP settings, including the default gateway. |
| `netstat -rn` (Windows, macOS, Linux) | Displays the host's routing table, including the default route. |
| `arp -a` (Windows, macOS, Linux) | Displays the host's ARP table. |
| `ip address` (Linux) | Displays IP address and subnet mask information for interfaces (replaces `ifconfig`). |
| `ip route` (Linux) | Displays routing information, including the default route (replaces `netstat -rn`). |
| `netsh interface ip show addresses` (Windows) | Displays interface IP configuration settings (alternative to `ipconfig /all`). |
| `netsh interface ip show route` (Windows) | Displays IPv4 routes (alternative to `netstat -rn`). |
