# Key Terms

*   **broadcast frame:** A frame with a destination MAC address of `FF:FF:FF:FF:FF:FF`. It is sent to all devices on the LAN.
*   **flood:** To send a frame out all ports of a switch, except the port on which the frame was received. Switches flood frames when they do not have an entry in their MAC address table for the destination MAC address.
*   **forward:** To send a frame out a single port of a switch. Switches forward frames when they have an entry in their MAC address table for the destination MAC address.
*   **known unicast frame:** A frame with a destination MAC address that is in the switch's MAC address table.
*   **MAC address table:** A table that stores the MAC addresses of devices that have been learned by a switch. The table also stores the port on which each MAC address was learned.
*   **Spanning Tree Protocol (STP):** A network protocol that prevents loops in Ethernet networks. STP works by blocking certain ports on switches so that there is only one path between any two devices on the network.
*   **unknown unicast frame:** A frame with a destination MAC address that is not in the switch's MAC address table.