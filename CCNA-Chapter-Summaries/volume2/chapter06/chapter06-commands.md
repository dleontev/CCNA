# Chapter 6: IP Access Control Lists

This page provides a quick reference for the commands introduced in **Chapter 6 of the CCNA Official Cert Guide, Volume 2**, focusing on configuring and verifying IP Access Control Lists (ACLs).

## 6.1 Configuration Commands

| Command  | Description |
|---|---|
| `access-list access-listnumber {deny \| permit} source [source-wildcard] [log]` | Global command for standard numbered access lists. Use a number between 1 and 99 or 1300 and 1999, inclusive. |
| `access-list access-listnumber remark text` | Command that defines a remark to help you remember what the ACL is supposed to do. |
| `ip access-group number {in \| out}` | Interface subcommand to enable access lists. |


## 6.2 Verification Commands

| Command | Description |
|---|---|
| `show ip interface [type number]` | Includes a reference to the access lists enabled on the interface. |
| `show access-lists [access-list-number \| access-list-name]` | Shows details of configured access lists for all protocols. |
| `show ip access-lists [access-list-number \| access-list-name]` | Shows IP access lists with identical output format as `show access-lists` for IP ACLs. |
| `clear ip access-list counters` | Resets the statistical counter of ACE matches for all IPv4 ACLs. |