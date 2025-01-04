# Chapter 8: Implementing Ethernet Virtual LANs

This chapter explores the concept of Ethernet Virtual LANs (VLANs) and their role in network segmentation and management.

## Key Topics

* **VLAN Fundamentals**
    * Definition and purpose of VLANs.
    * Benefits of using VLANs in a network.
* **VLAN Trunking**
    * Understanding VLAN trunking and its role in inter-switch communication.
    * Exploring 802.1Q trunking and frame encapsulation with VLAN tags.
* **Configuring VLANs and Trunks**
    * Configuring switch interfaces as access or trunk ports using the `switchport mode` command.
    * Understanding trunking modes and their negotiation process.
    * Assigning VLANs to access ports.
    * Configuring native VLANs on trunk ports.
    * Allowing and disallowing specific VLANs on trunk ports.
* **Data and Voice VLANs**
    * Understanding the distinction between data VLANs and voice VLANs.
    * Configuring voice VLANs for VoIP traffic.
* **Verifying VLAN Configuration**
    * Using commands like `show interfaces status`, `show vlan`, and `show vtp status` to verify VLAN and trunk configurations.
    * Analyzing command output to troubleshoot VLAN-related issues.

## Key Terms

* 802.1Q
* Access interface
* Data VLAN
* Default VLAN
* Layer 3 switch
* Native VLAN
* Static access interface
* Trunk
* Trunk interface
* Trunking administrative mode
* Trunking operational mode
* VLAN
* Voice VLAN
* VTP
* VTP transparent mode

## Commands

* `vlan vlan-id`
* `name vlan-name`
* `[no] shutdown`
* `vtp mode {server|client|transparent|off}`
* `switchport mode {access|dynamic {auto|desirable}|trunk}`
* `switchport access vlan vlan-id`
* `switchport trunk encapsulation {dot1q|isl|negotiate}`
* `switchport trunk native vlan vlan-id`
* `switchport nonegotiate`
* `switchport voice vlan vlan-id`
* `switchport trunk allowed vlan vlan-list`
* `switchport trunk allowed vlan {add|remove} vlan-list`
* `switchport trunk allowed vlan {all|none|except vlan-list}`
* `show interfaces status`
* `show interfaces interface-id switchport`
* `show interfaces trunk`
* `show interfaces interface-id trunk`
* `show vlan [brief]`
* `show vlan {id vlan-id|name vlan-name}`
* `show vtp status`
