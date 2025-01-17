# Chapter 21: Introduction to Controller-Based Networking

## SDN and Controller-Based Networks

### The Data, Control, and Management Planes

*   The data plane refers to the tasks that a networking device performs to forward a message, including:
    *   De-encapsulating and re-encapsulating a packet in a data-link frame.
    *   Adding or removing an 802.1Q trunking header.
    *   Matching an Ethernet frame’s destination MAC address to the MAC address table.
    *   Matching an IP packet’s destination IP address to the IP routing table.
    *   Encrypting the data and adding a new IP header (for VPN processing).
    *   Changing the source or destination IP address (for NAT processing).
    *   Discarding a message due to a filter (ACLs, port security).
*   The control plane refers to any action that controls the data plane, such as:
    *   Routing protocols (OSPF, EIGRP, RIP, BGP).
    *   IPv4 ARP.
    *   IPv6 Neighbor Discovery Protocol (NDP).
    *   Switch MAC learning.
    *   STP.
*   The management plane refers to any action that does not directly impact the data plane, such as:
    *   Telnet and SSH.
    *   SNMP.

### Cisco Switch Data Plane Internals

*   The switching logic in a switch occurs in an application-specific integrated circuit (ASIC).
*   The ASIC uses ternary content-addressable memory (TCAM) to store the MAC address table for fast lookup.

### Controllers and Software Defined Architecture

*   A controller, or SDN controller, centralizes the control of the networking devices.
*   The controller can perform all control plane functions, replacing the devices’ distributed control plane.
*   The controller can also simply be aware of the ongoing work of the distributed data, control, and management planes on the devices, without changing how those operate.
*   The southbound interface (SBI) is the interface between the controller and the networking devices.
*   The SBI often includes a protocol and an application programming interface (API).
*   The northbound interface (NBI) is the interface between the controller and other programs.
*   The NBI enables programs to pull information from the controller and program flows into the devices.

## Examples of Network Programmability and SDN

### OpenDaylight and OpenFlow

*   OpenFlow is a standard that defines the concept of a controller and an IP-based SBI between the controller and the network devices.
*   OpenFlow also defines a standard idea of what a switch’s capabilities are, based on the ASICs and TCAMs commonly used in switches today.
*   The OpenDaylight open-source SDN controller is one of the more successful SDN controller platforms.
*   OpenDaylight supports a large variety of options, including multiple SBIs.

### Cisco Application Centric Infrastructure (ACI)

*   ACI is Cisco’s data center SDN solution.
*   ACI uses a spine-and-leaf topology.
*   ACI uses an intent-based networking (IBN) model, where the engineer defines the policies and intent for which endpoints should be allowed to communicate.
*   The APIC is the centralized controller for ACI.

## Comparing Traditional Versus Controller-Based Networks

### How Automation Impacts Network Management

*   Centralized controllers formalize and define data models for the configuration and operational data about networks.
*   Controllers can provide more useful information than traditional networking devices.
*   Controllers enable a large number of new operational models.

### Comparing Traditional Networks with Controller-Based Networks

*   Controller-based networks have several advantages over traditional networks, including:
    *   New and improved operational models.
    *   Automation through northbound APIs.
    *   Consistent device configuration.
    *   DevOps approach.