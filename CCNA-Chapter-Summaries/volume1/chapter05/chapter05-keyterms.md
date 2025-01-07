# Chapter 05: Analyzing Ethernet LAN Switching - Key Terms

This page provides a glossary of key terms introduced in Chapter 5 of the CCNA Official Cert Guide, Volume 1, related to Ethernet LAN switching.

* **Broadcast frame:** A frame addressed to all devices on a LAN, using the broadcast MAC address (FF:FF:FF:FF:FF:FF).
* **Flood:** The action a switch takes when it receives a frame with a destination MAC address that is not in its MAC address table. The switch forwards the frame out all ports except the port on which it was received.
* **Forward:** The action a switch takes when it receives a frame with a destination MAC address that is in its MAC address table. The switch forwards the frame out the specific port associated with that MAC address.
* **Known unicast frame:** A frame addressed to a single device on a LAN, where the destination MAC address is present in the switch's MAC address table.
* **MAC address table:** A table in a switch that stores MAC addresses and their associated ports. The switch uses this table to make forwarding decisions.
* **Spanning Tree Protocol (STP):** A protocol that prevents loops in Ethernet networks by selectively blocking redundant paths.
* **Unknown unicast frame:** A frame addressed to a single device on a LAN, where the destination MAC address is not present in the switch's MAC address table.
