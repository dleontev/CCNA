# Chapter 24: OSPF Neighbors and Route Selection

## OSPF Neighbor Relationships

*   OSPF forms neighbor relationships between two routers when the routers are connected to the same subnet. 
*   The routers exchange OSPF Hello packets, which list key OSPF settings. 
*   If those settings match, the routers become neighbors. 
*   The routers then exchange link-state advertisements (LSAs), which describe the routers, links (subnets), and other details about the network. 
*   The routers use the LSAs to calculate the best routes to each destination. 

### OSPF Neighbor Requirements

*   For two routers to become OSPF neighbors, the following must be true:
    *   The interface must be up/up. 
    *   Access control lists (ACLs) must not filter routing protocol messages. 
    *   The interfaces must be in the same subnet. 
    *   The interfaces must be in the same area. 
    *   The interfaces must have the same OSPF network type. 
    *   The interfaces must have the same OSPF Hello and Dead timers. 
    *   The interfaces must have different OSPF router IDs. 
    *   The interfaces must have a compatible OSPF MTU setting. 
    *   The interfaces must not both use OSPF priority 0. 
    *   The neighbors must pass routing protocol neighbor authentication (if configured). 
    *   The OSPF process must not be shut down. 
    *   OSPF must not be shut down on the interface. 

### Troubleshooting OSPF Neighbor Relationships

*   If two routers are not forming an OSPF neighbor relationship, use the `show ip ospf neighbor` command to verify that the routers are seeing each other. 
*   If the routers are not seeing each other, use the `show ip ospf interface` command to verify that the interfaces are configured correctly. 
*   If the interfaces are configured correctly, use the `debug ip ospf adj` command to troubleshoot the neighbor relationship. 

## Route Selection

*   When a router has multiple paths to the same destination, it uses the following criteria to select the best route:
    *   Administrative distance 
    *   Metric 
    *   Longest prefix match 

### Administrative Distance

*   The administrative distance (AD) is a measure of the trustworthiness of a routing protocol. 
*   OSPF has a default AD of 110. 

### Metric

*   The metric is a measure of the cost of a route. 
*   OSPF uses cost as its metric. 
*   The cost of a route is calculated as the sum of the costs of the outgoing interfaces. 

### Longest Prefix Match

*   When a packet's destination address matches multiple routes in the routing table, the router selects the route with the longest prefix match. 
*   The longest prefix match is the route that has the most specific match to the destination address. 

### Troubleshooting Route Selection

*   If a router is not selecting the correct route, use the `show ip route` command to view the routing table. 
*   The `show ip route` command will show you the routes that the router has learned, as well as the metrics and administrative distances of those routes. 
*   You can also use the `show ip ospf database` command to view the LSDB. 
*   The LSDB will show you the topology of the network, as well as the costs of the links between routers. 
*   If you need to troubleshoot OSPF route selection, you can use the `debug ip ospf spf` command.