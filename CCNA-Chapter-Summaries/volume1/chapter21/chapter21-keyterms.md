# Chapter 21 Key Terms

*   **2-way state:** An OSPF neighbor state where routers have acknowledged each other's Hello packets, but they haven't yet started exchanging detailed routing information. On multiaccess networks, a DR and BDR election happens at this state.
*   **Area Border Router (ABR):** A router with interfaces in multiple OSPF areas, including the backbone area. ABRs summarize routes between areas.
*   **backbone area:** OSPF Area 0. It is responsible for distributing routing information between all other areas in an OSPF network. All non-backbone areas must connect to Area 0.
*   **backup designated router (BDR):**  A router elected on a multiaccess OSPF network to take over the role of the designated router (DR) if the DR fails.
*   **convergence:** The process of network devices agreeing on the best paths to reach destinations after a network topology change.
*   **Dead interval:** The time a router waits to receive a Hello packet from a neighbor before declaring the neighbor down. It is typically four times the Hello interval.
*   **designated router (DR):** A router elected on a multiaccess OSPF network to be the primary point of contact for exchanging routing information with other routers on that network.
*   **distance vector:** A type of routing protocol that advertises routes as vectors of distance and direction. Distance vector protocols typically use hop count as a metric.
*   **full state:** The final OSPF neighbor state where routers have exchanged all routing information and have synchronized their link-state databases (LSDBs).
*   **fully adjacent:**  Another term for being in the full state with an OSPF neighbor.
*   **Hello interval:** The time between Hello packets sent by an OSPF router.
*   **interior gateway protocol (IGP):** A routing protocol used within a single autonomous system (AS). OSPF and EIGRP are examples of IGPs.
*   **internal router:** A router with all its interfaces within the same OSPF area.
*   **link-state:** A type of routing protocol that advertises the state of its directly connected links to all other routers in the network. OSPF is an example of a link-state protocol.
*   **link-state advertisement (LSA):** A packet that contains information about a router's directly connected links and neighbors. LSAs are used by link-state routing protocols to build a topology database.
*   **link-state database (LSDB):** A database maintained by each OSPF router that contains all the LSAs received from other routers in the area. The LSDB is used to calculate the shortest path to each destination.
*   **link-state update:**  A packet containing one or more LSAs.
*   **metric:** A value used by routing protocols to determine the cost of a path to a destination. OSPF uses cost as its metric.
*   **multiarea OSPF:** An OSPF network that is divided into multiple areas to improve scalability and reduce routing table size.
*   **neighbor:** Two OSPF routers that have formed an adjacency on a common link.
*   **router ID (RID):** A unique 32-bit identifier assigned to each OSPF router.
*   **Shortest Path First (SPF) algorithm:** An algorithm used by link-state routing protocols to calculate the shortest path to each destination in the network.
*   **single-area OSPF:** An OSPF network where all routers are in the same area (typically Area 0).