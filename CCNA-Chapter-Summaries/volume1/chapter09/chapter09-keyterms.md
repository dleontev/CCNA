# Chapter 9 Key Terms

*   **alternate port (role):** A non-root port that provides an alternate path to the root bridge. It is in the blocking state but can quickly transition to forwarding if the primary path fails.
*   **backup port (role):** A non-designated port that provides a backup path to a segment. It is in the blocking state and is used when the designated port fails.
*   **blocking state:** An STP port state where the port does not forward frames to prevent loops.
*   **BPDU Filter:** An STP feature that prevents a port from sending or receiving BPDUs. This can be used to prevent loops or to improve security.
*   **BPDU Guard:** An STP feature that disables a port if it receives a BPDU. This is typically used on ports that are connected to end devices, such as PCs, to prevent them from becoming part of the spanning tree topology.
*   **bridge ID:** A unique identifier that is assigned to each switch. The bridge ID is used to elect the root bridge.
*   **bridge protocol data unit (BPDU):** A message that is used by STP to exchange information about the spanning tree topology.
*   **broken state:** An RSTP port state that indicates a problem with the port.
*   **designated port:** The port on a switch that is responsible for forwarding traffic to a particular LAN segment.
*   **designated port (role):** A port that is responsible for forwarding traffic to a segment. It is elected based on the lowest path cost to the root bridge.
*   **disabled port (role):** A port that is administratively disabled and does not participate in STP.
*   **disabled state:** An STP port state where the port is administratively disabled.
*   **discarding state:** An RSTP port state where the port discards all received frames.
*   **EtherChannel:** A technology that allows multiple physical links to be bundled together into a single logical link. This can be used to increase bandwidth and redundancy.
*   **forward delay:** The amount of time that a port spends in the listening and learning states before transitioning to the forwarding state.
*   **forwarding state:** An STP port state where the port forwards frames.
*   **Hello BPDU:** A BPDU that is sent by the root bridge to announce its presence and to maintain the spanning tree topology.
*   **learning state:** An STP port state where the port learns MAC addresses but does not forward frames.
*   **listening state:** An STP port state where the port listens for BPDUs but does not forward frames.
*   **Loop Guard:** An STP feature that prevents a port from becoming a designated port if it stops receiving BPDUs. This can be used to prevent loops caused by unidirectional link failures.
*   **MaxAge:** The amount of time that a switch waits without receiving BPDUs from the root bridge before attempting to become the root bridge itself.
*   **PortFast:** An STP feature that allows a port to transition directly to the forwarding state, bypassing the listening and learning states. This is typically used on ports that are connected to end devices.
*   **Rapid STP (RSTP):** An evolution of STP that provides faster convergence.
*   **root cost:** The cumulative cost of the path from a switch to the root bridge.
*   **Root Guard:** An STP feature that prevents a port from becoming the root port. This is typically used on ports that are connected to downstream switches to prevent them from becoming the root bridge.
*   **root port (role):** The port on a non-root switch that has the lowest path cost to the root bridge.
*   **root switch:** The switch that has the lowest bridge ID. The root switch is the "center" of the spanning tree topology.
*   **Spanning Tree Protocol (STP):** A network protocol that prevents loops in Ethernet networks.
*   **superior BPDU:** A BPDU that has a lower bridge ID or path cost than the current BPDU.
*   **unidirectional link:** A link where traffic can flow in only one direction. This can cause loops in Ethernet networks if STP is not configured correctly.