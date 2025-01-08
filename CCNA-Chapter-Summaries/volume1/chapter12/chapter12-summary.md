# Chapter 12: Analyzing Classful IPv4 Networks

## Classful Network Concepts

*   **Classful network:** A range of IP addresses with the same network ID. 
*   **Network ID:** The first IP address in a classful network. 
*   **Network broadcast address:** The last IP address in a classful network. 
*   **Default mask:** The subnet mask associated with a classful network. 
*   **Classful addressing:** A way of assigning IP addresses that uses the concept of network classes. 
*   **Classless addressing:** A way of assigning IP addresses that does not use the concept of network classes. 

## IPv4 Network Classes and Related Facts

*   There are three classes of IPv4 networks: Class A, Class B, and Class C. 
*   Class A networks have a first octet in the range of `1-126`. 
*   Class B networks have a first octet in the range of `128-191`. 
*   Class C networks have a first octet in the range of `192-223`. 
*   The default masks for Class A, Class B, and Class C networks are `255.0.0.0`, `255.255.0.0`, and `255.255.255.0`, respectively. 
*   The number of host addresses in a classful network is determined by the number of host bits in the network. 
*   The number of host bits in a classful network is determined by the class of the network. 
*   Class A networks have `24` host bits, Class B networks have `16` host bits, and Class C networks have `8` host bits. 
*   The number of host addresses in a classful network can be calculated using the formula `2^H - 2`, where `H` is the number of host bits. 

## Deriving the Network ID and Related Numbers

*   The network ID is the first IP address in a classful network. 
*   The network broadcast address is the last IP address in a classful network. 
*   The first usable IP address in a classful network is one more than the network ID. 
*   The last usable IP address in a classful network is one less than the network broadcast address. 
*   To find the network ID, set the host part of the IP address to all `0`s. 
*   To find the network broadcast address, set the host part of the IP address to all `255`s. 

## Unusual Network IDs and Network Broadcast Addresses

*   Some network IDs and network broadcast addresses can look unusual. 
*   For example, the network ID for Class A network `128.0.0.0` looks like a Class B network ID because it has two octets of `0`s. 
*   However, it is a Class A network ID because the first octet is in the range of `1-127`. 
*   Similarly, the network broadcast address for Class C network `223.255.255.0` looks like a Class B network broadcast address because it has two octets of `255`s. 
*   However, it is a Class C network broadcast address because the first octet is in the range of `192-223`.