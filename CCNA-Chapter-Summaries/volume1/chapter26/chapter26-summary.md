# Chapter 26: IPv6 Addressing and Subnetting

## Global Unicast Addressing Concepts

### Public and Private IPv6 Addresses

*   **Global Unicast Addresses (GUAs):** Similar to public IPv4 addresses, they are globally unique and registered.
*   **Unique Local Addresses (ULAs):** Similar to private IPv4 addresses, they can be used by multiple organizations without registration.

### The IPv6 Global Routing Prefix

*   A block of globally unique IPv6 addresses assigned to a single organization.
*   Similar to an IPv4 Class A, B, or C network or a public CIDR block.
*   Ensures that all devices within an organization use globally unique addresses.

### Address Ranges for Global Unicast Addresses

*   Defined by the prefix `2000::/3`, meaning all addresses starting with hex `2` or `3`.
*   IANA can expand this range in the future if needed.

### IPv6 Subnetting Using Global Unicast Addresses

*   Similar to IPv4 subnetting, but typically uses a /64 prefix length for all subnets.
*   Each VLAN and each point-to-point WAN connection needs a subnet.
*   The subnet ID field is used to number subnets within an organization's global routing prefix.

## Unique Local Unicast Addresses

*   Similar to IPv4 private addresses, they can be used by multiple organizations without registration.
*   Defined by the prefix `FC00::/7` or `FD00::/7`.
*   Must include a unique 40-bit global ID to ensure global uniqueness.
*   Subnetting is similar to global unicast addresses, but the prefix is chosen locally.