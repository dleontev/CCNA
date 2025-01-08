# Chapter 9: Spanning Tree Protocol Concepts

## STP and RSTP Basics

*   Spanning Tree Protocol (STP) and Rapid Spanning Tree Protocol (RSTP) are network protocols that prevent loops in Ethernet networks with redundant links.
*   STP/RSTP prevent loops by blocking certain ports on switches, creating a loop-free, tree-like topology.
*   The protocols elect a root switch, which is the switch with the lowest bridge ID (BID).
*   Each non-root switch selects a root port (RP), which is the port with the lowest cost path to the root switch.
*   On each LAN segment, a designated port (DP) is chosen based on the lowest root cost advertised by the connected switches.

## Details Specific to STP (and Not RSTP)

*   STP uses timers to manage convergence, the process of reacting to network changes and recalculating the spanning tree topology.
*   The Hello timer determines how often the root switch sends Hello BPDU messages (default 2 seconds).
*   The MaxAge timer determines how long a non-root switch waits without receiving Hellos before attempting to change the topology (default 20 seconds).
*   The forward delay timer affects the transition of an interface from blocking to forwarding state, introducing delays in listening and learning states (default 15 seconds).

## Rapid STP Concepts

*   RSTP (IEEE 802.1w) is an evolution of STP that provides faster convergence.
*   RSTP adds alternate and backup port roles to provide faster failover for root and designated ports, respectively.
*   RSTP uses different port states and processes to achieve faster convergence, including point-to-point and shared port types.

## Optional STP Features

### EtherChannel

*   EtherChannel bundles multiple links between switches into a single logical link, improving bandwidth and redundancy.
*   This can prevent STP convergence from being needed in case of single link failures.

### PortFast

*   PortFast immediately transitions an access port to the forwarding state, bypassing the listening and learning states.
*   This is useful for ports connected to end devices that do not participate in STP.

### BPDU Guard

*   BPDU Guard disables a port if it receives BPDU messages, preventing loops caused by unexpected connections.
*   This is often used on PortFast-enabled ports to protect against rogue switches.

### BPDU Filter

*   BPDU Filter can disable PortFast on a port if BPDUs are received, allowing the port to revert to normal STP operation.
*   It can also disable STP on a port entirely by filtering all BPDUs.

### Root Guard

*   Root Guard prevents a port from becoming the root port by disabling it if a superior BPDU is received.
*   This is useful to enforce the intended root switch in the network.

### Loop Guard

*   Loop Guard prevents a port from becoming a designated port if it stops receiving BPDUs, protecting against unidirectional link failures.
*   This is often used on ports that are not expected to be designated ports.