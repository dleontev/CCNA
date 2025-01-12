# Chapter 23 Key Terms

*   **broadcast network type:** An OSPF network type used on multiaccess networks like Ethernet. It requires the election of a designated router (DR) and backup designated router (BDR) for efficient communication.
*   **Dead interval:** The time a router waits to receive a Hello packet from a neighbor before declaring the neighbor down. It is typically four times the Hello interval.
*   **Hello interval:** The time between Hello packets sent by an OSPF router.
*   **interface bandwidth:** The configured bandwidth of an interface, used by OSPF to calculate the cost of the interface.
*   **OSPF priority:** A value assigned to an OSPF interface that influences the election of the DR and BDR. The higher the priority, the more likely the router is to be elected.
*   **passive interface:** An OSPF interface that is configured to not send or receive Hello packets. This can be used to prevent unnecessary neighbor adjacencies.
*   **point-to-point network type:** An OSPF network type used on point-to-point links, such as serial links. It does not require the election of a DR or BDR.
*   **reference bandwidth:** A configurable value used by OSPF to calculate interface costs. The higher the reference bandwidth, the lower the cost of an interface.