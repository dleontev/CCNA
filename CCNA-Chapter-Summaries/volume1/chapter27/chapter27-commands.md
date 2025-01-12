# Chapter 27 Commands

## Configuration Commands

| Command                          | Description                                                                                                                                                                 |
| -------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `ipv6 unicast-routing`           | Global command that enables IPv6 routing on the router.                                                                              |
| `ipv6 address ipv6-address/prefix-length` | Interface subcommand that manually configures the entire interface IP address and prefix length.                                                 |
| `ipv6 address ipv6-prefix/prefix-length eui-64` | Interface subcommand that manually configures an IPv6 prefix and prefix length, with the router building the EUI-64 format interface ID automatically.                                                 |
| `ipv6 address ipv6-address/prefix-length [anycast]` | Interface subcommand that manually configures an address to be used as an anycast address.                                                 |
| `ipv6 enable`                    | Command that enables IPv6 on an interface and generates a link-local address.                                                                                                       |
| `ipv6 address dhcp`              | Interface subcommand that enables IPv6 on an interface, causes the router to use DHCP client processes to try to lease an IPv6 address, and creates a link-local address for the interface.                                                                                                       |
| `ipv6 address autoconfig`        | Interface subcommand that tells the router to use SLAAC to find/build its interface IPv6 address.                                                                                                       |


## EXEC Commands

| Command                                 | Description                                                                                                                                                                                                                                                           |
| --------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `show ipv6 route [connected] [local]`  | Lists all IPv6 routes, or the connected routes only, or the local routes only.                                                                                                                                             |
| `show ipv6 interface [type number]` | Lists IPv6 settings, including link-local and other unicast IP addresses, on all interfaces (or for the listed interface).                                                                                                                |
| `show ipv6 interface brief [type number]` | Lists IPv6 interface status and unicast IPv6 addresses for all interfaces (or for only the listed interface if included).                                                                                                                |