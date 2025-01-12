# Chapter 10 Key Terms

*   **Channel-group:**  A command used to configure EtherChannel on a Cisco switch. It bundles multiple physical interfaces into a single logical PortChannel interface.
*   **EtherChannel:** A Layer 2 link aggregation technology that allows you to group multiple physical Ethernet links into a single logical link. This provides increased bandwidth and redundancy.
*   **EtherChannel load distribution:**  The method used by EtherChannel to distribute traffic across the physical links in a channel group. Various algorithms can be used to balance the load, such as source MAC address, destination MAC address, or a combination of factors.
*   **LACP (Link Aggregation Control Protocol):** An IEEE standard (802.3ad) for link aggregation that allows switches to negotiate the formation of EtherChannels. It is an open standard alternative to Cisco's PAgP.
*   **PAgP (Port Aggregation Protocol):** A Cisco proprietary protocol for link aggregation. It enables switches to dynamically negotiate the formation of EtherChannels.
*   **PortChannel:** A logical interface that represents a group of bundled physical interfaces in an EtherChannel.
*   **PVST+ (Per-VLAN Spanning Tree Plus):** A Cisco proprietary implementation of Spanning Tree Protocol (STP) that runs a separate instance of STP for each VLAN. This allows for optimized spanning tree topologies for different VLANs.
*   **Rapid PVST+ (Rapid Per-VLAN Spanning Tree Plus):**  A Cisco enhancement to PVST+ that provides faster convergence times compared to the original PVST+.
*   **system ID extension:** An extension to the bridge ID in PVST+ and Rapid PVST+ that includes the VLAN ID. This allows for separate spanning tree instances for each VLAN.