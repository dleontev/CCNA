# Chapter 9: Spanning Tree Protocol Concepts - Key Terms

This page provides a glossary of key terms introduced in Chapter 9 of the CCNA Official Cert Guide, Volume 1, related to the Spanning Tree Protocol (STP).

* **Alternate port (role):** A port that provides an alternate path to the root bridge, used if the primary path fails.
* **Backup port (role):** A port that blocks traffic to prevent loops, but is ready to take over if another port fails.
* **Blocking state:** An STP port state in which the port does not forward frames to prevent loops.
* **BPDU Filter:** An STP feature that prevents BPDUs from being sent or received on a port.
* **BPDU Guard:** An STP feature that puts a port in an error-disabled state if it receives a BPDU.
* **Bridge ID:** A unique identifier for a switch in an STP topology, used to elect the root bridge.
* **Bridge protocol data unit (BPDU):** A message used by STP to exchange information about the network topology.
* **Broken state:** An STP port state that indicates a problem with the link, such as a physical cable break.
* **Designated port:** The port on a segment that is responsible for forwarding traffic towards the root bridge.
* **Designated port (role):** A port that forwards traffic towards the root bridge.
* **Disabled port (role):** A port that is administratively disabled and does not participate in STP.
* **Disabled state:** An STP port state in which the port is administratively disabled.
* **Discarding state:** An STP port state in which the port receives and processes BPDUs but does not forward frames.
* **EtherChannel:** A technology that combines multiple physical links into a single logical link, also known as link aggregation.
* **Forward delay:** The time a port spends in the listening and learning states before transitioning to the forwarding state.
* **Forwarding state:** An STP port state in which the port forwards frames normally.
* **Hello BPDU:** A BPDU used to maintain neighbor relationships between switches.
* **Learning state:** An STP port state in which the port learns MAC addresses but does not forward frames.
* **Listening state:** An STP port state in which the port processes BPDUs and prepares to transition to the learning state.
* **Loop Guard:** An STP feature that prevents alternate and backup ports from becoming designated ports if they stop receiving BPDUs.
* **MaxAge:** The maximum time a switch will wait to receive BPDUs from a neighbor before considering the neighbor unreachable.
* **PortFast:** An STP feature that allows a port to transition directly to the forwarding state, bypassing the listening and learning states.
* **Rapid STP (RSTP):** A faster version of STP that provides faster convergence times.
* **Root cost:** The cumulative cost of the path from a switch to the root bridge.
* **Root Guard:** An STP feature that prevents a port from becoming a root port.
* **Root port (role):** The port on a switch that provides the best path to the root bridge.
* **Root switch:** The switch with the lowest bridge ID, elected as the central point of the spanning tree topology.
* **Spanning Tree Protocol (STP):** A protocol that prevents loops in Ethernet networks by selectively blocking redundant paths.
* **Superior BPDU:** A BPDU with a lower bridge ID, root path cost, or port priority than the current BPDU.
* **Unidirectional link:** A link that can transmit data in only one direction, which can cause STP issues.
