# Chapter 18: LAN Architecture

## Analyzing Campus LAN Topologies

### Two-Tier Campus Design (Collapsed Core)

*   A two-tier campus LAN design consists of access switches and distribution switches.
*   Access switches connect to end-user devices and distribution switches.
*   Distribution switches connect to access switches and core switches or routers.
*   This design is also known as a collapsed core design because it does not have a separate core layer.

### Three-Tier Campus Design (Core)

*   A three-tier campus LAN design consists of access switches, distribution switches, and core switches.
*   Access switches connect to end-user devices and distribution switches.
*   Distribution switches connect to access switches and core switches.
*   Core switches connect to distribution switches and other core switches or routers.
*   This design has a separate core layer, which provides high-speed connectivity between distribution switches.

### Topology Design Terminology

*   Star topology: A topology in which all devices connect to a central device, such as an access switch.
*   Mesh topology: A topology in which devices connect to each other in a mesh-like pattern, providing redundant paths.
*   Full mesh: A mesh topology in which all devices connect to each other.
*   Partial mesh: A mesh topology in which some, but not all, devices connect to each other.
*   Hybrid topology: A topology that combines elements of different topologies, such as a star-mesh topology.

## Ethernet Physical Media and Standards

### Ethernet UTP Links at the Access Layer

*   Most access links in a campus LAN use unshielded twisted-pair (UTP) cabling.
*   UTP cabling is inexpensive and easy to install.
*   The maximum length of a UTP cable is 100 meters.
*   UTP cabling is available in different categories, with higher categories supporting higher speeds.

### Multigig Ethernet on CAT 5E Cabling

*   Multigig Ethernet is a newer Ethernet standard that supports speeds of 2.5 Gbps and 5 Gbps over CAT 5E cabling.
*   This standard is useful for connecting wireless access points that support more than 1 Gbps of traffic.

### Fiber Uplinks

*   Fiber optic cabling is often used for uplinks between switches and for connections to the core layer.
*   Fiber optic cabling supports higher speeds and longer distances than UTP cabling.
*   Fiber optic cabling is available in different types, with different types supporting different speeds and distances.

## Small Office/Home Office

*   Small office/home office (SOHO) networks are typically smaller and simpler than enterprise campus LANs.
*   SOHO networks often use a single device that acts as a router, switch, and wireless access point.
*   SOHO networks may not have a separate core layer or distribution layer.

## Power over Ethernet (PoE)

### PoE Basics

*   Power over Ethernet (PoE) allows devices to be powered over Ethernet cabling.
*   This eliminates the need for separate power cables and outlets.
*   PoE is commonly used for devices such as wireless access points, IP phones, and security cameras.

### PoE Operation

*   PoE uses a power sourcing equipment (PSE) to supply power to a powered device (PD).
*   The PSE can be a switch, router, or other network device.
*   The PD can be a wireless access point, IP phone, or other end device.
*   PoE uses different power classes to supply different amounts of power to PDs.

### PoE and LAN Design

*   PoE must be considered when designing a campus LAN.
*   The number and type of PoE devices must be determined.
*   The power budget of the PoE switches must be calculated.
*   The PoE standards supported by the switches and devices must be verified.