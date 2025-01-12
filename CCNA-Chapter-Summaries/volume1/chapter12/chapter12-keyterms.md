# Chapter 12 Key Terms

*   **CIDR block:**  A method of allocating IP addresses that uses a prefix length to indicate the network portion of the address. This allows for more flexible allocation of IP addresses than traditional classful addressing.
*   **classful IP network:** A way of organizing IP addresses into predefined classes (A, B, and C) based on the first octet of the address. Each class has a default subnet mask that determines the number of networks and hosts available.
*   **default mask:** The subnet mask that is associated with a particular class of IP address. For example, the default mask for a Class A address is 255.0.0.0.
*   **host part:** The portion of an IP address that identifies a specific host within a subnet. The size of the host part is determined by the subnet mask.
*   **network:**  A group of interconnected devices that can communicate with each other. In the context of IP addressing, a network is often used to refer to a group of devices that share the same network ID.
*   **network address:** The first address in a subnet, which is used to identify the subnet itself. It cannot be assigned to a host.
*   **network broadcast address:** The last address in a subnet, which is used to send a broadcast message to all hosts in the subnet. It cannot be assigned to a host.
*   **network ID:** The portion of an IP address that identifies the specific network to which the address belongs. In classful addressing, the network ID is determined by the class of the address.
*   **network number:**  Another term for network ID.
*   **network part:** The portion of an IP address that identifies the specific network to which the address belongs. The size of the network part is determined by the class of the address or the subnet mask.
*   **unicast IP address:** An IP address that identifies a single interface on a device. Unicast addresses are used for one-to-one communication.