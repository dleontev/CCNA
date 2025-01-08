# Chapter 13: Analyzing Subnet Masks

## Subnet Mask Conversion

*   Subnet masks define the boundaries between the network, subnet, and host parts of an IP address.
*   They can be represented in three formats:
    *   Binary: A 32-bit binary number with 1s for network/subnet bits and 0s for host bits.
    *   Prefix: A slash followed by the number of network/subnet bits (e.g., /24).
    *   Dotted-decimal: Four decimal octets, each representing 8 bits of the binary mask (e.g., 255.255.255.0).

### Converting Between Binary and Prefix Masks

*   Binary to prefix: Count the number of 1s in the binary mask. This is the prefix length.
*   Prefix to binary: Write down the prefix length number of 1s, followed by enough 0s to make 32 bits.

### Converting Between Binary and Dotted-Decimal Masks

*   Binary to dotted-decimal: Group the binary bits into four octets. Convert each octet to its decimal equivalent.
*   Dotted-decimal to binary: Convert each decimal octet to its 8-bit binary equivalent.

### Converting Between Prefix and Dotted-Decimal Masks

*   It is often easiest to convert to binary as an intermediate step.

## Identifying Subnet Design Choices Using Masks

*   Masks and class boundaries define the structure of IP addresses.
*   The mask defines the number of host bits, which determines the number of hosts per subnet.
*   The class and mask together define the number of subnet bits, which determines the number of possible subnets.
*   Classless addressing considers only the prefix and host parts of an address.
*   Classful addressing considers the network, subnet, and host parts.

## Calculations Based on the IPv4 Address Format

*   The number of hosts per subnet can be calculated as 2^H - 2, where H is the number of host bits.
*   The number of subnets can be calculated as 2^S, where S is the number of subnet bits. This assumes that only one mask is used within the classful network.
*   The sizes of the network, subnet, and host parts can be calculated as follows:
    *   N = number of network bits (determined by the class)
    *   S = P - N, where P is the prefix length
    *   H = 32 - P

## Masks and CIDR Blocks

*   CIDR blocks are a way of allocating IP addresses that is more flexible than classful addressing.
*   When subnetting a CIDR block, the prefix length of the block defines the size of the "network" part of the address.
*   The subnet mask then further divides the address into subnet and host parts.