# Chapter 14: Analyzing Existing Subnets

## Defining a Subnet

*   A subnet is a smaller subdivision of a classful network, with all IP addresses in the subnet having the same prefix (network and subnet parts).
*   A subnet is defined by a subnet ID, which is the numerically lowest address in the subnet, and a subnet mask.
*   The subnet mask defines the size of the subnet, or the number of IP addresses in the subnet.
*   The subnet mask also defines the structure of the addresses in the subnet, including the number of network bits, subnet bits, and host bits.

## Analyzing Existing Subnets: Binary

*   To analyze an existing subnet, you need to know the subnet ID and the subnet mask.
*   The subnet ID is the numerically lowest IP address in the subnet.
*   The subnet mask defines the size of the subnet and the structure of the addresses in the subnet.
*   To find the subnet ID in binary:
    1.  Convert the IP address to binary.
    2.  Identify the prefix and host bits by converting the mask to prefix format.
    3.  Copy the prefix bits of the IP address.
    4.  Set the host bits to 0.
    5.  Convert the resulting binary number back to decimal.
*   To find the subnet broadcast address in binary, follow the same process as for finding the subnet ID, but set the host bits to 1.

## Analyzing Existing Subnets: Decimal

*   To analyze an existing subnet in decimal, you can use the following process:
    1.  Identify the interesting octet, which is the octet in the IP address with a mask value other than 255 or 0.
    2.  Calculate the magic number as 256 - the mask value in the interesting octet.
    3.  Find the subnet ID by copying the uninteresting octets from the IP address and finding the nearest multiple of the magic number in the interesting octet.
    4.  Find the subnet broadcast address by copying the uninteresting octets from the subnet ID, setting the octets to the right of the interesting octet to 255, and adding the magic number to the interesting octet of the subnet ID and subtracting 1.

## Example

For example, consider the IP address `172.16.150.41` with mask `255.255.192.0`.

*   The interesting octet is the third octet.
*   The magic number is `256 - 192 = 64`.
*   The subnet ID is `172.16.128.0`.
*   The subnet broadcast address is `172.16.191.255`.
*   The range of usable IP addresses is `172.16.128.1` to `172.16.191.254`.