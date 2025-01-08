# Chapter 21: Understanding OSPF Concepts

## Comparing Dynamic Routing Protocol Features

### Routing Protocol Functions

*   Cisco IOS software supports several IP routing protocols. 
    *   These protocols do the same job but have different ways of doing the job. 
    *   All the routing protocols have these similar functions:
        1.  Learn routing information about IP subnets from neighboring routers. 
        2.  Advertise routing information about IP subnets to neighboring routers. 
        3.  If more than one possible route exists to reach one subnet, pick the best route based on a metric. 
        4.  If the network topology changes—for example, a link fails—react by advertising that some routes have failed and pick a new currently best route. 
            *   This process is called convergence. 

### Interior and Exterior Routing Protocols

*   IP routing protocols fall into one of two major categories: interior gateway protocols (IGP) or exterior gateway protocols (EGP). 
    *   The terms are generally defined as follows:
        *   IGP: A routing protocol that was designed and intended for use inside a single autonomous system (AS). 
        *   EGP: A routing protocol that was designed and intended for use between different autonomous systems. 

### Comparing IGPs

*   Before getting into the details of OSPF, it helps to consider some comparisons between OSPF and the other IGP options. 
    *   This section takes a brief look at all three routing protocols. 

## OSPF Concepts and Operation

*   Routing protocols basically exchange information so routers can learn routes. 
    *   The routers learn information about subnets, routes to those subnets, and metric information about how good each route is compared to others. 
    *   The routing protocol can then choose the currently best route to each subnet, building the IP routing table. 
*   Link-state protocols like OSPF take a little different approach to the particulars of what information they exchange and what the routers do with that information once learned. 

### Becoming OSPF Neighbors

*   Of everything you learn about OSPF in this chapter, OSPF neighbor concepts have the most to do with how you will configure and troubleshoot OSPF in Cisco routers. 
    *   You configure OSPF to cause routers to run OSPF and become neighbors with other routers. 
*   Two routers must meet some requirements before they will become OSPF neighbors. 
    *   First, they must both use OSPF and both connect to the same data link. 
    *   Two routers can become OSPF neighbors if connected to the same VLAN, or same serial link, or same Ethernet WAN link. 
    *   Additionally, the two routers must send OSPF messages that declare some OSPF settings, and those settings must be compatible. 
        *   To do so, the routers send OSPF Hello messages, introducing themselves to the potential neighbor. 

## OSPF Areas and LSAs

*   OSPF area design follows a couple of basic rules. 
    *   To apply the rules, start with a clean drawing of the internetwork, with routers, and all interfaces. 
        *   Then choose the area for each router interface, as follows:
            *   Put all interfaces connected to the same subnet inside the same area. 
            *   An area should be contiguous. 
                *   Some routers may be internal to an area, with all interfaces assigned to that single area. 
                *   Some routers may be Area Border Routers (ABRs) because some interfaces connect to the backbone area, and some connect to nonbackbone areas. 
                *   All nonbackbone areas must have a path to reach the backbone area (area 0) by having at least one ABR connected to both the backbone area and the nonbackbone area. 
*   Using multiple areas improves OSPF operations in larger networks. 
    *   The following list summarizes some of the key points for arguing for the use of multiple areas in larger OSPF networks:
        *   Routers require fewer CPU cycles to process the smaller per-area LSDB with the SPF algorithm, reducing CPU overhead and improving convergence time. 
        *   The smaller per-area LSDB requires less memory. 
        *   Changes in the network (for example, links failing and recovering) require SPF calculations only on routers in the area where the link changed state, reducing the number of routers that must rerun SPF. 
        *   Less information must be advertised between areas, reducing the bandwidth required to send LSAs.