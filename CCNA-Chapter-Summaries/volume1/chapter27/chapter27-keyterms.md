# Chapter 27 Key Terms

*   **all-nodes multicast address:** The IPv6 multicast address (`FF02::1`) used to send a packet to all IPv6-enabled nodes on a link.
*   **all-routers multicast address:** The IPv6 multicast address (`FF02::2`) used to send a packet to all IPv6 routers on a link.
*   **anycast address:** An IPv6 address that can be assigned to multiple interfaces, typically on different nodes. A packet sent to an anycast address is delivered to the nearest interface with that address.
*   **dual stack:** A device that supports both IPv4 and IPv6 simultaneously.
*   **EUI-64:** A 64-bit extended unique identifier that is commonly used to create the interface ID portion of an IPv6 address.
*   **interface-local scope:** An IPv6 address scope that is only valid on a single interface. Loopback addresses have interface-local scope.
*   **IPv6 address scope:** Defines the portion of the IPv6 network where an address is valid and can be used.
*   **link-local address (LLA):** An IPv6 address that is only valid on a single link (e.g., a LAN). It is used for communication between nodes on the same link.
*   **link-local multicast address:** An IPv6 multicast address that is only valid on a single link.
*   **link-local scope:**  Another term for interface-local scope.
*   **organization-local scope:** An IPv6 address scope that is valid within a single organization. Unique local addresses (ULAs) have organization-local scope.
*   **site-local scope:** An older IPv6 address scope that was intended for use within a single site. It has been deprecated and should not be used.
*   **solicited-node multicast address:** An IPv6 multicast address that is used to send a packet to a specific node on a link. It is derived from the node's unicast address.
*   **subnet-router anycast address:** An IPv6 anycast address that is used to identify all routers on a specific subnet. It is used for routing protocols and other network services.