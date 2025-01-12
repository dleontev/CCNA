# Chapter 28 Commands

## Router Configuration Commands

| Command                                   | Description                               |
| ------------------------------------------ | ----------------------------------------- |
| `ipv6 dhcp relay destination server-address` | Interface subcommand that enables the IPv6 DHCP relay agent. |

## Router EXEC Commands

| Command                                 | Description                                                                                                    |
| --------------------------------------- | -------------------------------------------------------------------------------------------------------------- |
| `ping {hostname \| ipv6-address}`       | Tests IPv6 routes by sending an ICMP packet to the destination host.                                          |
| `traceroute {host-name \| ipv6-address}` | Tests IPv6 routes by discovering the IP addresses of the routes between a router and the listed destination. |
| `show ipv6 neighbors`                   | Lists the router’s IPv6 neighbor table.                                                                        |
| `show ipv6 routers`                     | Lists any neighboring routers that advertised themselves through an NDP RA message.                           |


## Host Commands (Windows/macOS/Linux)

| Command                                                              | Description                                                                                                                                                                   |
| --------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `ipconfig` / `ifconfig` / `ifconfig`                                   | Lists interface settings, including IPv4 and IPv6 addresses.                                                                                                               |
| `ping` / `ping6` / `ping6`                                             | Tests IP routes by sending an ICMPv6 packet to the destination host.                                                                                                       |
| `tracert` / `traceroute6` / `traceroute6`                             | Tests IP routes by discovering the IPv6 addresses of the routes between a router and the listed destination.                                                             |
| `netsh interface ipv6 show neighbors` / `get-Neighbor -AddressFamily IPv6` | (Windows only) Lists IPv6 neighbors with network shell and PowerShell.                                                                                                      |
| `ndp -an` / `ip -6 neighbor show`                                     | (macOS/Linux) Lists IPv6 neighbors.                                                                                                                                          |
| `netsh interface ipv6 show route` / `netstat -rnf inet6` / `ip -6 route` | (Windows/macOS/Linux) Lists a host’s IPv6 routing table.                                                                                                                 |
| `netsh interface ipv6 show address` / `ifconfig -aL inet6` / `ip -6 address` | (Windows/macOS/Linux) Lists a host’s interface IPv6 addresses.                                                                                                             |