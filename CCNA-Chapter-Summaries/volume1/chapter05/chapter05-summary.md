# Chapter 5: Analyzing Ethernet LAN Switching

## LAN Switching Concepts

### Overview of Switching Logic

*   Ethernet LANs are built with a combination of devices such as user PCs, servers, IP phones, and other devices. 
*   These devices connect to LAN switches, with the switches connecting to each other. 
*   Switches make decisions about how to process incoming frames based on the frame's source and destination MAC address. 
*   Switches perform these three main functions:

    1.  Forward frames based on the destination MAC address. 
    2.  Prepare to forward future frames by learning MAC addresses of incoming frames. 
    3.  Avoid loops using Spanning Tree Protocol (STP). 

### Forwarding Known Unicast Frames

*   Switches forward frames based on the destination MAC address. 
*   Switches use a dynamically built table, called a MAC address table, to make forwarding decisions. 
*   The MAC address table lists MAC addresses and the interfaces associated with those addresses. 
*   If the destination MAC address is in the table, the switch forwards the frame out the associated interface. 
*   If the destination MAC address is not in the table, the switch floods the frame out all interfaces except the interface on which it was received. 

### Learning MAC Addresses

*   Switches learn MAC addresses by examining the source MAC address of incoming frames. 
*   If the source MAC address is not in the MAC address table, the switch adds it to the table. 
*   The switch associates the MAC address with the interface on which the frame was received. 

### Flooding Unknown Unicast and Broadcast Frames

*   If the destination MAC address is not in the MAC address table, the switch floods the frame out all interfaces except the interface on which it was received. 
*   This is called flooding. 
*   Switches also flood broadcast frames. 

### Avoiding Loops Using Spanning Tree Protocol

*   STP is used to prevent loops in Ethernet networks with redundant links. 
*   STP blocks certain ports on switches to create a loop-free topology. 

## Verifying and Analyzing Ethernet Switching

### Demonstrating MAC Learning

*   The `show mac address-table dynamic` command displays the dynamically learned MAC addresses on a switch. 

### Switch Interfaces

*   The `show interfaces` command displays information about switch interfaces, including the interface's status and the VLAN to which it belongs. 

### Finding Entries in the MAC Address Table

*   The `show mac address-table` command can be used to find specific entries in the MAC address table. 

### Managing the MAC Address Table (Aging, Clearing)

*   The `show mac address-table aging-time` command displays the aging time for MAC address table entries. 
*   The `clear mac address-table dynamic` command clears the MAC address table of dynamically learned entries. 

### MAC Address Tables with Multiple Switches

*   Each switch has its own MAC address table. 
*   Switches learn MAC addresses independently of each other.