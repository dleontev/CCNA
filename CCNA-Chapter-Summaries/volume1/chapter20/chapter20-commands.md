# Chapter 20: Troubleshooting IPv4 Routing - Commands

This page provides a quick reference for the EXEC and configuration commands introduced in Chapter 20 of the CCNA Official Cert Guide, Volume 1, focusing on troubleshooting IPv4 routing.

## Configuration Commands

| Command | Mode | Purpose |
|---|---|---|
| `[no] ip domain-lookup` | Global Config | Enables or disables DNS lookup on the device. |
| `ip domain-name name` | Global Config | Sets the DNS domain name for the device. |
| `ip name-server address [address...]` | Global Config | Configures one or more DNS server IP addresses. |
| `ip host name address` | Global Config | Defines a hostname and its associated IP address on the device. |


## EXEC Commands

| Command | Purpose |
|---|---|
| `ping {hostname \| address}` | Sends ICMP Echo Request packets to test reachability of a remote device. |
| `traceroute {hostname \| address}` | Traces the route to a remote device, showing the intermediate routers in the path. |
| `show host` | Displays the device's known hostnames and their corresponding IP addresses. |
| `show ip interface brief` | Displays a summary of router interfaces, including their IP addresses and status. |
| `telnet {hostname \| address}` | Initiates a Telnet connection to a remote device. |
| `ssh -l username {hostname \| address}` | Initiates an SSH connection to a remote device using the specified username. |