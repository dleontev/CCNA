# Chapter 8: Applied IP ACLs

## ACLs and Network Infrastructure Protocols

*   When planning a complex ACL, the ACL must permit all the desired traffic.
*   If relying on the implicit deny any logic at the end of the ACL, the ACL needs permit statements for all the traffic that should be permitted.
*   If using a permit any statement at the end of the ACL, the ACL needs deny statements for all the traffic that should be denied.
*   This section looks at how to match several overhead protocols.

### Filtering DNS

*   DNS traffic flows through most routers in an enterprise.
*   DNS uses both UDP and TCP, with server port 53 (domain keyword for ACLs).
*   When filtering DNS traffic, you can permit all DNS traffic or just traffic to a specific DNS server.

### Filtering ICMP

*   ACLs can be used to filter ICMP traffic, including ping and traceroute.
*   You can permit all ICMP traffic or specific ICMP message types.
*   You should avoid filtering ICMP Time Exceeded messages, which are used by the traceroute command.

### Filtering OSPF

*   OSPF packets have a limited scope in the network.
*   ACLs can be used to permit or deny OSPF traffic based on source or destination addresses.
*   Avoid filtering OSPF packets with deny any logic.

### Filtering DHCP

*   DHCP traffic flows through most routers in an enterprise.
*   DHCP uses UDP, with server port 67 (bootps keyword for ACLs).
*   When filtering DHCP traffic, you can permit all DHCP traffic or just traffic to a specific DHCP server.
*   ACLs on routers performing the IP helper function have specific rules for matching DHCP traffic.

### Filtering SSH and Telnet

*   SSH and Telnet are used for remote access to network devices.
*   ACLs can be used to filter SSH and Telnet traffic based on source or destination addresses and ports.
*   Filtering for end-user SSH/Telnet traffic and router VTY access requires different ACL configurations.

## Comparing ACLs in IOS and IOS XE

*   There are some differences between how IOS and IOS XE support ACLs.
*   This section summarizes those differences.

### Configuration Syntax and Show Commands

*   IOS and IOS XE have some differences in ACL configuration syntax and show commands.
*   IOS stores numbered ACLs as global commands, while IOS XE stores them as ACL mode subcommands.
*   IOS XE reveals ACL sequence numbers in show running-config command output, which IOS does not.

### Resequencing ACL Sequence Numbers

*   IOS resequences ACL sequence numbers automatically at reload, while IOS XE does not.
*   IOS XE calls its approach ACL persistence, configured by the global command ip access-list persistent.
*   Both IOS and IOS XE support manual ACL resequencing using the ip access-list resequence command.

### Using a Second (Common) Interface ACL

*   IOS XE allows two IPv4 ACLs on an interface in the same direction, referred to as the common ACL and the regular ACL.
*   The router matches packets as if it first matched the common ACL and then the regular ACL.
*   The ip access-group command is used to enable both ACLs.

### Matching Multiple Nonconsecutive Ports with eq

*   IOS XE adds a feature to match multiple nonconsecutive TCP or UDP ports in a single ACL command using the eq keyword.
*   This can simplify ACL configuration compared to IOS, which requires multiple ACEs to match nonconsecutive ports.