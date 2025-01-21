## Chapter 7: Named and Extended IP ACLs

### Configuration Commands

| Command | Mode | Purpose |
|---|---|---|
| `access-list access-list-number {deny \| permit} protocol source source-wildcard destination destination-wildcard [log]` | Global | Defines an extended numbered access list. |
| `access-list access-list-number {deny \| permit} tcp source source-wildcard [operator [port]] destination destination-wildcard [operator [port]] [log]` | Global | A version of the access-list command with TCP-specific parameters. |
| `access-list access-list-number remark text` | Global | Defines a remark to help you remember what the ACL is supposed to do. |
| `ip access-group {number \| name [in \| out]}` | Interface | Enables access lists on an interface. |
| `ip access-list {standard \| extended} name` | Global | Configures a named standard or extended ACL and enters ACL configuration mode. |
| `{deny \| permit} source [source wildcard] [log]` | ACL | Configures the matching details and action for a standard named ACL. |
| `{deny \| permit} protocol source source-wildcard destination destination-wildcard [log]` | ACL | Configures the matching details and action for an extended named ACL. |
| `{deny \| permit} tcp\|udp source source-wildcard [operator [port]] destination destination-wildcard [operator [port]] [log]` | ACL | Configures the matching details and action for a named ACL that matches TCP or UDP messages. |
| `remark text` | ACL | Configures a description of a named ACL. |
| `no {deny \| permit} protocol source source-wildcard destination destination-wildcard` | ACL | Deletes a single ACE if an ACE exists with the exact same detail as in the no command. |
| `no sequence-number` | ACL | Deletes a single ACE if an ACE with that sequence number exists. |


### EXEC Commands

| Command | Mode | Purpose |
|---|---|---|
| `show ip interface [type number]` | Privileged EXEC | Displays access lists enabled on an interface. |
| `show access-lists [access-list-number \| access-list-name]` | Privileged EXEC | Shows details of configured access lists for all protocols. |
| `show ip access-lists [access-list-number \| access-list-name]` | Privileged EXEC | Shows IP access lists, with the same information and format as the `show access-lists` command. |
