## Chapter 8: Applied IP ACLs

### Configuration Commands

| Command | Mode | Purpose |
|---|---|---|
| `access-list access-list-number {deny \| permit} ospf source source-wildcard destination destination-wildcard [log]` | Global |  A version of the access-list command that matches all OSPF messages. |
| `[sequence-number] {deny \| permit} ospf source source-wildcard destination destination-wildcard [log]` | ACL | The equivalent of the previous row’s command but in ACL mode. |
| `access-list access-list-number {deny \| permit} icmp source source-wildcard destination destination-wildcard [icmp-message]` | Global | A version of the access-list command that matches ICMP with the option to list the specific ICMP message type. |
| `[sequence-number] {deny \| permit} icmp source source-wildcard destination destination-wildcard [icmp-message]` | ACL | The equivalent of the previous row’s command but in ACL mode. |
| `ip access-list resequence name\|number initial increment` | Global | Resequences ACL sequence numbers, beginning with the initial value, and adding the increment to get each successive sequence number. |
| `[no] ip access-list persistent` | Global | Toggles on (without the no; default) or off (with the no) ACL sequence number persistence. IOS XE only. |
| `ip access-group common common_acl regular_acl {[in \| out]}` | Interface | Allows two ACLs to be enabled simultaneously on one interface and direction. IOS XE only. |


### EXEC Commands

| Command | Mode | Purpose |
|---|---|---|
| `ssh -l username address\|hostname` | Privileged EXEC | Initiates an SSH client connection from the CLI to another device at the listed address or hostname, using the listed username to log in. |
| `telnet address\|hostname` | Privileged EXEC | Initiates a Telnet client connection from the CLI to another device at the listed address or hostname. |
| `show ip access-lists [access-list-number \| access-list-name]` | Privileged EXEC | Shows IP access lists. |
