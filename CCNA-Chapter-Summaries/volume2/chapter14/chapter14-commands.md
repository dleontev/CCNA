## Chapter 14: Network Address Translation

### Configuration Commands

| Command | Mode | Description |
|---|---|---|
| `ip nat {inside | outside}` | Interface | Enables NAT and identifies whether the interface is on the inside or outside of the network. |
| `ip nat inside source {list {access-list-number | access-list-name}} {interface type number | pool pool-name} [overload]` | Global | Enables NAT globally, referencing the ACL that defines which source addresses to NAT, and the interface or pool from which to find global addresses. |
| `ip nat pool name start-ip end-ip {netmask netmask | prefix-length prefix-length}` | Global | Defines a pool of NAT addresses. |
| `ip nat inside source inside-local inside-global` | Global | Lists the inside and outside address (or an outside interface whose IP address should be used) to be paired and added to the NAT translation table. |


### EXEC Commands

| Command | Description |
|---|---|
| `show ip nat statistics` | Lists counters for packets and NAT table entries, as well as basic configuration information. |
| `show ip nat translations [verbose]` | Displays the NAT table. |
| `clear ip nat translation {* | [inside global-ip local-ip] [outside local-ip global-ip]}` | Clears all or some of the dynamic entries in the NAT table, depending on which parameters are used. |
| `clear ip nat translation protocol inside global-ip global-port local-ip local-port [outside local-ip global-ip]` | Clears some of the dynamic entries in the NAT table, depending on which parameters are used. |
| `debug ip nat` | Issues a log message describing each packet whose IP address is translated with NAT. |