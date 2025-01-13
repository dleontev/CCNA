# Chapter 6: Basic IPv4 Access Control Lists

## Access Control List Concepts

*   Access control lists (ACLs) are used to filter traffic based on criteria such as source/destination IP address, protocol, and port number.
*   ACLs are processed top to bottom, with the first matching rule determining the action (permit or deny).
*   An implicit deny any rule exists at the end of every ACL, meaning any traffic not explicitly permitted is denied.

## Numbered Standard and Extended ACLs

*   Standard ACLs filter traffic based on source IP address only.
*   Extended ACLs filter traffic based on source/destination IP address, protocol, and port number.
*   Numbered ACLs are identified by a number and can be modified after creation.

### Standard ACLs

*   Standard ACLs use numbers 1-99 and 1300-1999.
*   They are typically applied close to the destination.

### Extended ACLs

*   Extended ACLs use numbers 100-199 and 2000-2699.
*   They are typically applied close to the source.

## Named ACLs

*   Named ACLs are identified by a name instead of a number.
*   They can be standard or extended.
*   They must be created before being modified.

## Creating and Applying ACLs

### Creating Numbered Standard ACLs

*   Use the `access-list` command followed by the ACL number, `permit` or `deny`, and the source IP address and wildcard mask.

`access-list 1 permit 10.1.1.0 0.0.0.255`


### Creating Numbered Extended ACLs

*   Use the `access-list` command followed by the ACL number, `permit` or `deny`, the protocol, source/destination IP address and wildcard mask, and optional port numbers.

`access-list 101 permit tcp 10.1.1.0 0.0.0.255 172.16.1.0 0.0.0.255 eq 23`


### Creating Named Standard and Extended ACLs

*   Use the `ip access-list standard` or `ip access-list extended` command followed by the ACL name.
*   Then use `permit` or `deny` and the appropriate criteria for the ACL type.

`ip access-list standard MyStandardACL`
`permit 10.1.1.0 0.0.0.255`

`ip access-list extended MyExtendedACL`
`permit tcp 10.1.1.0 0.0.0.255 172.16.1.0 0.0.0.255 eq 23`


### Applying ACLs to Interfaces

*   Use the `ip access-group` command in interface configuration mode followed by the ACL number or name and the direction (`in` or `out`).

`interface GigabitEthernet0/1`
`ip access-group 101 in`


## Verifying ACLs

*   Use the `show access-lists` command to display all configured ACLs.
*   Use the `show ip access-lists` command to display IPv4 ACLs.
*   Use the `show running-config` command to display the running configuration, includi