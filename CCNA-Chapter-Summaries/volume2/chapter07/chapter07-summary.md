# Chapter 7: Named and Extended IP ACLs

## Named ACLs

*   Named ACLs use a name instead of a number to identify the ACL.
*   They can be standard or extended.
*   They must be created before any rules can be added.
*   They are generally considered easier to understand and manage than numbered ACLs.

### Creating a Named ACL

*   Use the `ip access-list` command followed by either `standard` or `extended` and the ACL name.

`ip access-list standard Marketing-Users`

`ip access-list extended Block-Telnet`

### Adding Rules to a Named ACL

*   After creating the ACL, use the `permit` or `deny` command to add rules.
*   For standard ACLs, specify the source IP address and wildcard mask.

`permit 10.1.1.0 0.0.0.255`

*   For extended ACLs, specify the protocol, source and destination IP addresses and wildcard masks, and optional port numbers or operators.

`deny tcp 10.1.1.0 0.0.0.255 172.16.1.0 0.0.0.255 eq 23`

## More Extended ACL Concepts

*   Extended ACLs can filter traffic based on a variety of criteria, including:
    *   Protocol (TCP, UDP, ICMP, IP)
    *   Source and destination IP addresses and wildcard masks
    *   Source and destination port numbers
    *   TCP flags (SYN, ACK, FIN, etc.)
    *   ICMP message types and codes
*   Extended ACLs can be used to control access to network resources, prevent denial-of-service attacks, and implement security policies.

## Using the TCP `established` Parameter

*   The `established` parameter can be used with the TCP protocol to match only packets that have the ACK or RST bits set.
*   This can be used to allow return traffic for established connections while blocking new connections.

`permit tcp any any established`

## Filtering ICMP

*   Extended ACLs can filter ICMP traffic based on message type and code.
*   The `icmp-type` and `icmp-code` keywords are used to specify the ICMP message type and code.

`deny icmp any any icmp-type 8`

## Using Other TCP Flags

*   Extended ACLs can filter TCP traffic based on TCP flags other than ACK and RST.
*   The `tcp-flags` keyword is used to specify the TCP flags to match.

`permit tcp any any tcp-flags syn`

## Filtering Non-IP Traffic

*   Extended ACLs can filter non-IP traffic, such as ARP and IPX.
*   The `protocol-number` keyword is used to specify the protocol number to match.

`deny 4 any any`

## Placing Extended ACLs

*   Extended ACLs should be placed as close to the source of the traffic as possible.
*   This helps to reduce the amount of traffic that is processed by the ACL.

## Verifying ACLs

*   The `show access-lists` command can be used to display all configured ACLs.
*   The `show ip access-lists` command can be used to display IPv4 ACLs.
*   The `show running-config` command can be used to display the running configuration, i