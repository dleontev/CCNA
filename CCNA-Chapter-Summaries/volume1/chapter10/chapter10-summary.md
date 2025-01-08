# Chapter 10: RSTP and EtherChannel Configuration

## Understanding RSTP Through Configuration

### The Need for Multiple Spanning Trees

*   In networks with multiple VLANs, a single spanning tree topology can be inefficient.
*   Traffic in different VLANs may have different optimal paths.
*   Multiple spanning trees allow for better load balancing and improved network performance.

### STP Modes and Standards

*   Cisco switches support several STP modes:
    *   PVST+: Per-VLAN Spanning Tree Plus (Cisco proprietary)
    *   RPVST+: Rapid PVST+ (Cisco proprietary)
    *   MSTP: Multiple Spanning Tree Protocol (IEEE standard)

### The Bridge ID and System ID Extension

*   The Bridge ID (BID) is used to elect the root switch.
*   The BID consists of a priority field and a MAC address.
*   The system ID extension is used to identify the VLAN.

### Identifying Switch Priority and the Root Switch

*   The `show spanning-tree vlan vlan-id` command displays the root switch and its priority.
*   The root switch has the lowest BID.
*   The `spanning-tree vlan vlan-id priority priority` command configures the switch priority.

### Identifying Port Cost, Role, and State

*   The `show spanning-tree vlan vlan-id` command displays the following information for each port:
    *   Role: Root port, designated port, or alternate port
    *   State: Forwarding or blocking
    *   Cost: The cost of the port

### Identifying Optional STP Features

*   The `show spanning-tree interface interface-id detail` command displays the following optional STP features:
    *   PortFast
    *   BPDU Guard
    *   BPDU Filter
    *   Root Guard
    *   Loop Guard

## Configuring Layer 2 EtherChannel

*   EtherChannel bundles multiple links between two switches into a single logical link.
*   This improves bandwidth and redundancy.
*   The `channel-group group-id mode mode` command configures EtherChannel.
*   The `show etherchannel summary` command displays EtherChannel information.

### Interface Configuration Consistency with EtherChannels

*   To form an EtherChannel, the following interface settings must match on both switches:
    *   Speed
    *   Duplex
    *   VLANs
    *   STP

### EtherChannel Load Distribution

*   EtherChannel load balancing distributes traffic across the links in the channel.
*   The `port-channel load-balance method` command configures the load balancing method.
*   The `show etherchannel load-balance` command displays the load balancing configuration.