# Chapter 2: Fundamentals of Ethernet LANs

## Typical SOHO LANs

*   Small office/home office (SOHO) LANs are typically smaller and less complex than enterprise LANs.
*   They may consist of a single switch with a few devices connected to it.
*   They may also include a router to connect the LAN to the Internet.
*   Many SOHO LANs today support wireless LANs in addition to wired Ethernet LANs.
*   Wireless LAN access points (APs) are used to connect wireless devices to the LAN.

## Typical Enterprise LANs

*   Enterprise LANs are typically larger and more complex than SOHO LANs.
*   They may consist of multiple switches interconnected to form a hierarchical network.
*   They may also include routers to connect the LAN to other networks, such as the Internet.
*   Enterprise LANs often support wireless LANs in addition to wired Ethernet LANs.
*   Wireless LAN APs are used to connect wireless devices to the LAN.

## Ethernet Physical Layer Standards

*   Ethernet LANs can be built using a variety of physical layer standards.
*   These standards define the type of cabling, connectors, and signaling that are used to transmit data on the LAN.
*   Some common Ethernet physical layer standards include:
    *   10BASE-T: 10 Mbps over unshielded twisted-pair (UTP) cabling
    *   100BASE-TX: 100 Mbps over UTP cabling
    *   1000BASE-T: 1 Gbps over UTP cabling
    *   1000BASE-LX: 1 Gbps over fiber optic cabling
    *   10GBASE-T: 10 Gbps over UTP cabling

## Ethernet Data Link Layer

*   The Ethernet data link layer is responsible for framing and error detection.
*   Ethernet frames are used to transmit data on the LAN.
*   Ethernet frames include a header and a trailer.
*   The header contains the source and destination MAC addresses.
*   The trailer contains the Frame Check Sequence (FCS) field, which is used for error detection.

## Ethernet MAC Addresses

*   Ethernet MAC addresses are 48-bit (6-byte) addresses that are used to uniquely identify devices on an Ethernet LAN.
*   MAC addresses are typically written as 12-digit hexadecimal numbers.
*   The first 6 digits of a MAC address are the Organizationally Unique Identifier (OUI).
*   The OUI is assigned to a specific manufacturer by the IEEE.
*   The last 6 digits of a MAC address are assigned by the manufacturer.

## Ethernet Frame Transmission

*   Ethernet frames can be transmitted in full duplex or half duplex mode.
*   Full duplex mode allows devices to transmit and receive data at the same time.
*   Half duplex mode requires devices to take turns transmitting data.
*   Half duplex mode is typically used with hubs.
*   Full duplex mode is typically used with switches.

## Ethernet Hubs

*   Ethernet hubs are Layer 1 devices that repeat any received electrical signal out all other ports.
*   Hubs are typically used in SOHO LANs.
*   Hubs can cause collisions if two devices try to transmit data at the same time.

## Ethernet Switches

*   Ethernet switches are Layer 2 devices that forward frames based on the destination MAC address.
*   Switches are typically used in enterprise LANs.
*   Switches can prevent collisions by using full duplex mode.