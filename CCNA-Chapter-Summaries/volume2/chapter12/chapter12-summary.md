# Chapter 12: DHCP Snooping and ARP Inspection

## DHCP Snooping

### DHCP Snooping Concepts

*   DHCP Snooping is a security feature on Cisco switches that helps to prevent DHCP attacks. 
*   It works by filtering DHCP messages that are abnormal or that might be part of an attack. 
*   DHCP Snooping also builds a binding table that lists the details of legitimate DHCP flows. 
*   This table can be used by other switch features, such as Dynamic ARP Inspection. 

### A Sample Attack: A Spurious DHCP Server

*   An attacker can launch a DHCP attack by acting like a DHCP server. 
*   This can allow the attacker to redirect traffic to their own device. 
*   DHCP Snooping can prevent this type of attack by filtering DHCP messages from untrusted ports. 

### DHCP Snooping Logic

*   DHCP Snooping works by filtering DHCP messages on untrusted ports. 
*   Messages that are normally sent by servers will be discarded. 
*   Messages that are normally sent by clients will be filtered if they appear to be part of an attack. 
*   Messages that are received on a trusted port will be forwarded. 

### DHCP Snooping Configuration

*   To configure DHCP Snooping, you must first enable it on the switch using the `ip dhcp snooping` global configuration command. 
*   You must then specify the VLANs on which DHCP Snooping should operate using the `ip dhcp snooping vlan vlan-list` global configuration command. 
*   You can also configure DHCP Snooping to trust certain ports using the `ip dhcp snooping trust` interface subcommand. 
*   This is typically done for ports that connect to DHCP servers or relay agents. 

## Dynamic ARP Inspection

### DAI Concepts

*   Dynamic ARP Inspection (DAI) is a security feature on Cisco switches that helps to prevent ARP attacks. 
*   It works by filtering ARP messages that are abnormal or that might be part of an attack. 
*   DAI also uses the DHCP Snooping binding table to verify the legitimacy of ARP messages. 

### Review of Normal IP ARP

*   ARP is a protocol that is used to resolve IP addresses to MAC addresses. 
*   It works by sending an ARP request message to a multicast address. 
*   The device with the specified IP address will then respond with an ARP reply message. 

### Gratuitous ARP as an Attack Vector

*   An attacker can send a gratuitous ARP message to a device. 
*   This can allow the attacker to redirect traffic to their own device. 
*   DAI can prevent this type of attack by filtering ARP messages from untrusted ports. 

### Dynamic ARP Inspection Logic

*   DAI works by filtering ARP messages on untrusted ports. 
*   It compares the sender and target IP and MAC addresses in the ARP message to the DHCP Snooping binding table. 
*   If the addresses do not match, DAI will discard the ARP message. 

### Dynamic ARP Inspection Configuration

*   To configure DAI, you must first enable it on the switch using the `ip arp inspection vlan vlan-list` global configuration command. 
*   You must then specify the VLANs on which DAI should operate. 
*   You can also configure DAI to trust certain ports using the `ip arp inspection trust` interface subcommand. 
*   This is typically done for ports that connect to DHCP servers or relay agents.