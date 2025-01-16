# Chapter 16: First-Hop Redundancy Protocols

## FHRP Concepts

*   First Hop Redundancy Protocols (FHRPs) allow for multiple routers to be the default gateway for a subnet, providing redundancy in case one router fails.
*   FHRPs use a virtual router IP address and MAC address that act as the default gateway for the subnet.
*   One router acts as the active router, forwarding traffic sent to the virtual IP address, while the other routers act as standby routers, ready to take over if the active router fails.
*   FHRPs provide a way to achieve high availability for the default gateway function on a subnet.

## Hot Standby Router Protocol (HSRP)

### HSRP Concepts

*   HSRP is a Cisco-proprietary FHRP that allows two or more routers to act as the default gateway for a subnet.
*   HSRP uses a virtual IP address and a virtual MAC address that are shared by all routers in the HSRP group.
*   One router is elected as the active router, while the others are in standby state.
*   The active router responds to ARP requests for the virtual IP address with its own MAC address.
*   If the active router fails, a standby router takes over and becomes the active router.

### HSRP Failover

*   HSRP routers send hello messages to each other to maintain awareness of their status.
*   If a standby router does not receive hello messages from the active router for a specified period of time, it takes over as the active router.
*   The new active router sends a gratuitous ARP to update the MAC address table of the switches on the LAN.

### HSRP Load Balancing

*   HSRP can be used to load balance traffic across multiple routers by configuring different HSRP groups on different subnets.
*   Each subnet can have a different active router, allowing traffic to be distributed across multiple routers.

### HSRP Interface Tracking

*   HSRP can track the status of interfaces on the router.
*   If a tracked interface goes down, the router's priority is reduced, allowing another router to take over as the active router.

### HSRP Preemption

*   HSRP preemption allows a router with a higher priority to take over as the active router, even if another router is already active.
*   This can be useful to ensure that the most capable router is always the active router.

### HSRP Versions

*   HSRP has two versions: HSRP version 1 (HSRPv1) and HSRP version 2 (HSRPv2).
*   HSRPv2 supports IPv6 and has a larger range of group numbers.

## VRRP and GLBP Concepts

### Virtual Router Redundancy Protocol (VRRP)

*   VRRP is an open standard FHRP that is similar to HSRP.
*   VRRP uses a virtual IP address and a virtual MAC address that are shared by all routers in the VRRP group.
*   One router is elected as the master router, while the others are in backup state.
*   The master router responds to ARP requests for the virtual IP address with its own MAC address.
*   If the master router fails, a backup router takes over and becomes the master router.

### GLBP Concepts

*   GLBP is a Cisco-proprietary FHRP that provides load balancing across multiple routers.
*   GLBP uses a virtual IP address and multiple virtual MAC addresses, one for each router in the GLBP group.
*   One router is elected as the active virtual gateway (AVG), while the others are active virtual forwarders (AVFs).
*   The AVG responds to ARP requests for the virtual IP address with a virtual MAC address from one of the AVFs.
*   Each AVF forwards traffic sent to its virtual MAC address, allowing traffic to be distributed across multiple routers.