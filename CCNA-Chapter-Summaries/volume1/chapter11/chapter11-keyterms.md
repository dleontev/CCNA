# Chapter 11 Key Terms

*   **classful IP network:**  A way of organizing IP addresses into predefined classes (A, B, and C) based on the first octet of the address. Each class has a default subnet mask that determines the number of networks and hosts available.
*   **dotted-decimal notation:** The standard way of representing IP addresses, where four decimal numbers (0-255) are separated by periods (e.g., 192.168.1.1).
*   **host part:** The portion of an IP address that identifies a specific host within a subnet. The size of the host part is determined by the subnet mask.
*   **network:** A group of interconnected devices that can communicate with each other. In IP networking, a network is often defined as a group of devices that share the same network ID.
*   **network part:** The portion of an IP address that identifies the specific network to which the address belongs. The size of the network part is determined by the class of the address or the subnet mask.
*   **private IP network:** A range of IP addresses that are reserved for private use within an organization or network. Private IP addresses are not routable on the public Internet.  Examples include `10.0.0.0/8`, `172.16.0.0/12`, and `192.168.0.0/16`.
*   **public IP network:** A range of IP addresses that are globally unique and routable on the public Internet. Public IP addresses are assigned by IANA and regional Internet registries.
*   **subnet:** A logical subdivision of an IP network. Subnets are used to organize devices into smaller groups for better management, security, and performance.
*   **subnet mask:** A 32-bit value used to identify the network and subnet portions of an IP address. The subnet mask determines the number of bits used for the network and subnet IDs, and the remaining bits are used for host addresses within the subnet.
*   **subnet part:** The portion of an IP address that identifies a specific subnet within a network. The size of the subnet part is determined by the subnet mask.
*   **variable-length subnet masks (VLSM):** A technique that allows you to use different subnet masks within the same network. This allows you to create subnets of different sizes, which can be useful for efficient IP address allocation.