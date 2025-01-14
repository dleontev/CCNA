# Chapter 7: Named and Extended IP ACLs

## Named ACLs and ACL Editing

### Named IP Access Lists

*   Similar to numbered IP ACLs, named IP ACLs function as packet filters and are used by other IOS features for matching packets and taking specific actions.
*   They can match the same fields as their numbered counterparts: standard named ACLs match the same fields as standard numbered ACLs, and extended named ACLs match the same fields as extended numbered ACLs.
*   Named ACLs offer several advantages over numbered ACLs:
    *   Use names instead of numbers for easier identification.
    *   Use ACL mode subcommands for defining actions and matching parameters.
    *   Support ACL editing features, allowing users to delete and insert individual lines.

### Editing ACLs

#### Editing Named ACLs

*   To delete an access control entry (ACE):
    1.  Enter ACL configuration mode using the `ip access-list` command.
    2.  Use either of the following options:
        *   Repeat the entire permit, deny, or remark ACL subcommand without a line number, preceded by the `no` command.
        *   Use the `no sequence-number` command to delete the ACE that uses the listed sequence number.

        ```
        Router(config)# ip access-list standard acl_01
        Router(config-std-nacl)# no deny 10.1.2.0 0.0.0.255
        Router(config-std-nacl)# no 20
        ```

*   To add an ACE:
    1.  Enter ACL configuration mode using the `ip access-list` command.
    2.  Use either of the following options:
        *   Configure the permit or deny command preceded by a sequence number to insert the ACE between lines. The number dictates the new ACE's location in the ACL.
        *   Configure the permit or deny command without a sequence number, and IOS will automatically add a sequence number to place the ACE at the end of the ACL.

        ```
        Router(config)# ip access-list standard acl_01
        Router(config-std-nacl)# 40 deny 10.1.2.0 0.0.0.255
        Router(config-std-nacl)# 20 deny 10.1.1.1
        ```

#### Editing Numbered ACLs

*   Deleting individual ACEs in numbered ACLs can be achieved using ACL mode commands.
*   To remove or add ACEs in a numbered ACL:
    1.  Enter ACL configuration mode using the `ip access-list` command with the corresponding ACL number.
    2.  Use the same options for removing and adding ACEs as with named ACLs.

### Extended IP Access Control Lists

*   Extended IP ACLs allow matching multiple header fields in a single ACE, making them more powerful than standard IP ACLs.
*   Each ACE must list matching parameters for protocol, source address, and destination address, with additional optional fields.

#### Matching the Protocol, Source IP, and Destination IP

*   The first matching parameter for extended ACLs is the protocol, which can be `ip` (all IPv4 packets) or a specific protocol like `tcp`, `udp`, or `icmp`.
*   The source and destination IP address fields use the same syntax and options for matching IP addresses as discussed in Chapter 6, "Basic IPv4 Access Control Lists."

#### Matching TCP and UDP Port Numbers

*   Extended ACLs can examine the source and destination port number fields in TCP and UDP headers.
*   The syntax uses keywords for equal (`eq`), not equal (`neq`), less than (`lt`), greater than (`gt`), and a range of port numbers (`range`).
*   Well-known port numbers can be represented by literal decimal values or keywords (e.g., `www` for TCP port 80).

## Summary of Key Points

*   Named ACLs offer advantages over numbered ACLs in terms of readability, configuration, and editing capabilities.
*   Extended ACLs provide more powerful packet matching by allowing multiple header fields to be examined in a single ACE.
*   Matching TCP and UDP port numbers in ACLs requires specifying the correct protocol (`tcp` or `udp`) and using appropriate keywords or literal decimal values.