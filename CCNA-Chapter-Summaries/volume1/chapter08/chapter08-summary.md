# Chapter 8: Implementing Ethernet Virtual LANs

## Virtual LAN Concepts

*   VLANs allow a network engineer to create multiple broadcast domains on a single switch. 
*   VLANs can be used to group devices together logically, regardless of their physical location. 
*   VLANs can be used to improve security by isolating traffic from different departments or groups. 
*   VLANs can be used to improve performance by reducing the amount of broadcast traffic on a network. 

## VLAN Trunking Concepts

*   VLAN trunking allows multiple VLANs to be carried over a single physical link. 
*   VLAN trunking protocols add a VLAN tag (header) to each frame to identify the VLAN to which the frame belongs. 
*   The 802.1Q trunking protocol is an IEEE standard; the ISL trunking protocol is a Cisco proprietary protocol. 
*   Cisco switches support a maximum of 4094 VLANs. 

## VLAN Trunking Configuration

*   The `vlan` command creates a VLAN on a switch. 
*   The `switchport access vlan` command assigns an access port to a VLAN. 
*   The `switchport mode trunk` command configures a trunk port. 
*   The `switchport trunk allowed vlan` command specifies the VLANs that are allowed on a trunk. 

## VLAN Trunking Verification

*   The `show vlan` command displays information about VLANs on a switch. 
*   The `show interfaces trunk` command displays information about trunk ports. 

## Troubleshooting VLANs and VLAN Trunks

*   VLANs can be misconfigured, which can lead to connectivity problems. 
*   The `show vlan` and `show interfaces trunk` commands can be used to troubleshoot VLAN problems. 
*   Common VLAN problems include:
    *   Mismatched access VLANs 
    *   Mismatched trunk modes 
    *   Mismatched native VLANs 
*   The `switchport access vlan` and `switchport trunk native vlan` commands can be used to correct VLAN problems.