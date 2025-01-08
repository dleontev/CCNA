# Chapter 22: Implementing Basic OSPFv2

## Implementing OSPFv2 Using network Commands

*   The more traditional method of configuring OSPF on a Cisco router. 

### OSPF Single-Area Configuration 

*   Figure 22-2 shows a sample multiaccess network, with all interfaces in the same area. 

    *   To configure this network for OSPF, use IPv4 addresses and masks as described in Chapters 11 and 17. 
    *   Then enable OSPF routing, set the router ID, and use the `network` command to advertise interfaces into OSPF. 

        *   For instance, Example 22-2 shows the configuration that would be added to Router R1. 

### Wildcard Matching with the network Command 

*   The `network` command in Example 22-2 tells the router to advertise the interfaces into OSPF whose addresses match the first two parameters. 

    *   The first parameter is the IP address, and the second is the wildcard mask. 
    *   The wildcard mask tells the router which parts of the IPv4 address to examine when matching the interface IP addresses. 
    *   A wildcard mask of 0 matches exactly, and a 255 matches all. 
    *   For instance, the command `network 10.1.12.0 0.0.0.255 area 0` would match all interfaces whose IP address begins with 10.1.12. 

### Verifying OSPF Operation 

*   OSPF operation can be verified with these commands:

    *   `show ip ospf neighbor`: To verify that OSPF routers are learning about their neighbors. 
    *   `show ip ospf database`: To examine the contents of the OSPF database. 
    *   `show ip route`: To examine the IP routing table. 

### Verifying OSPF Configuration 

*   You can verify the OSPF configuration using these commands:

    *   `show running-config`: To examine the entire configuration file. 
    *   `show ip protocols`: To examine the OSPF configuration. 
    *   `show ip ospf interface [brief]`: To examine the interfaces that are enabled for OSPF. 

### Configuring the OSPF Router ID 

*   Routers choose a router ID if you do not configure one. 

    *   To configure it, use these options:

        *   Use the `router-id` command. 
        *   Configure a loopback interface. 
        *   Do nothing; the router will choose the highest IP address of all running interfaces. 

## Implementing Multiarea OSPF 

*   Multiarea OSPF configuration is similar to single-area configuration. 

    *   Use the `network` command with the correct area number. 

## Implementing OSPFv2 Using Interface Subcommands 

*   This newer configuration method directly enables OSPF on interfaces. 

    *   Use the `ip ospf process-id area area-id` command on each interface. 
    *   The `network` command is not used with this method. 

### Verifying OSPF Interface Configuration 

*   The `show ip protocols` command identifies whether you used interface or router subcommands to enable OSPF on an interface. 
*   The `show ip ospf interface` command also identifies how you enabled OSPF on the interface.