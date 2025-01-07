# Chapter 06: Configuring Basic Switch Management - Commands

This page provides a quick reference for the EXEC and configuration commands introduced in Chapter 6 of the CCNA Official Cert Guide, Volume 1, related to configuring basic switch management features.

## Login Security Commands

| Command | Mode | Purpose |
|---|---|---|
| `line console 0` | Global Config | Enters console line configuration mode. |
| `line vty 1st-vty last-vty` | Global Config | Enters VTY line configuration mode for the specified range of lines. |
| `login` | Line Config | Enables password prompt for login. |
| `password pass-value` | Line Config | Sets the password for the line. |
| `login local` | Line Config |  Enables local username and password authentication. |
| `username name secret pass-value` | Global Config | Creates a local user account with a username and password. |
| `crypto key generate rsa [modulus 512..2048]` | Global Config | Generates RSA keys for SSH. |
| `transport input {telnet \| ssh \| all \| none}` | Line Config |  Configures allowed transport protocols for the line (Telnet, SSH, or both). |
| `ip domain-name fqdn` | Global Config | Sets the domain name for the switch. |
| `hostname name` | Global Config | Sets the hostname of the switch. |
| `ip ssh version 2` | Global Config | Sets the SSH server to use version 2 only. |

## Switch IPv4 Configuration Commands

| Command | Mode | Purpose |
|---|---|---|
| `interface vlan number` | Global Config | Enters VLAN interface configuration mode. |
| `ip address ip-address subnet-mask` | Interface Config |  Configures the IP address and subnet mask for the VLAN interface. |
| `ip address dhcp` | Interface Config | Configures the switch to obtain an IP address via DHCP. |
| `ip default-gateway address` | Global Config | Sets the default gateway for the switch. |
| `ip name-server server-ip-1 server-ip-2 ...` | Global Config | Configures DNS server addresses. |

## Other Switch Configuration Commands

| Command | Mode | Purpose |
|---|---|---|
| `enable secret pass-value` | Global Config | Sets the privileged EXEC mode password. |
| `history size length` | Line Config | Sets the size of the command history buffer. |
| `logging synchronous` | Line Config | Enables synchronous logging. |
| `[no] logging console` | Global Config | Enables or disables logging to the console. |
| `exec-timeout minutes [seconds]` | Line Config | Sets the inactivity timeout for the line. |
| `no ip domain-lookup` | Global Config | Disables DNS lookup. |

## EXEC Commands

| Command | Purpose |
|---|---|
| `show running-config` | Displays the running configuration. |
| `show running-config \| begin line vty` | Displays the running configuration starting from the VTY lines section. |
| `show dhcp lease` | Displays DHCP lease information. |
| `show crypto key mypubkey rsa` | Displays the RSA public key. |
| `show ip ssh` | Displays SSH server status. |
| `show ssh` | Displays current SSH connections. |
| `show interfaces vlan number` | Displays information about the VLAN interface. |
| `show ip default-gateway` | Displays the configured default gateway. |
| `terminal history size x` | Sets the history buffer size for the current terminal session. |
| `show history` | Displays the command history. |
