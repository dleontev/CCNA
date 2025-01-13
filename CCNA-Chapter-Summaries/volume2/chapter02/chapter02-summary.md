# Chapter 2: Analyzing Cisco Wireless Architectures

## Autonomous AP Architecture

*   Autonomous APs are self-contained and offer one or more fully functional, standalone BSSs. 
*   They are a natural extension of a switched network, connecting wireless SSIDs to wired VLANs at the access layer. 
*   Each autonomous AP must be configured with a management IP address so that you can remotely manage it. 
*   The management address is not normally part of any of the data VLANs, so a dedicated management VLAN must be added to the trunk links to reach the AP. 
*   Each AP must be configured and maintained individually unless you leverage a management platform such as Cisco Prime Infrastructure or Cisco Catalyst Center. 
*   As the wireless network expands, the infrastructure becomes more difficult to configure correctly and becomes less efficient. 

## Cloud-Based AP Architecture

*   A simpler approach is a cloud-based AP architecture, where the AP management function is pushed out of the enterprise and into the Internet cloud. 
*   Cisco Meraki is cloud-based and offers centralized management of wireless, switched, and security networks built from Meraki products. 
*   The APs in a cloud-based network are all autonomous. 
*   The most visible difference is that all of the APs are managed, controlled, and monitored centrally from the cloud. 
*   From the cloud, you can push out code upgrades and configuration changes to the APs in the enterprise. 
*   The Cisco Meraki cloud also adds the intelligence needed to automatically instruct each AP on which channel and transmit power level to use. 
*   It can also collect information from all of the APs about things such as RF interference, rogue or unexpected wireless devices that were overheard, and wireless usage statistics. 

## Split-MAC Architectures

*   To overcome the limitations of distributed autonomous APs, many of the functions found within autonomous APs have to be shifted toward some central location. 
*   When the functions of an autonomous AP are divided, the Cisco AP hardware performs only the real-time 802.11 operation. 
*   The management functions are usually performed on a wireless LAN controller (WLC), which controls many Cisco APs. 
*   The AP-WLC division of labor is known as a split-MAC architecture, where the normal MAC operations are pulled apart into two distinct locations. 
*   This occurs for every AP in the network; each one must boot and bind itself to a WLC to support wireless clients. 
*   The WLC becomes the central hub that supports several APs scattered about in the network. 

## Comparing Cisco Wireless LAN Controller Deployments

*   One approach is to locate the WLC in a central location so that you can maximize the number of APs joined to it. This is usually called a centralized WLC deployment or unified WLC deployment, which tends to follow the concept that most of the resources users need to reach are located in a central location such as a data center or the Internet. 
*   Traffic to and from wireless users would travel over CAPWAP tunnels that reach into the center of the network, near the core. 
*   A centralized WLC also provides a convenient place to enforce security policies that affect all wireless users. 
*   When a WLC is centrally located inside a public or private cloud, it is known as a cloud-based WLC deployment. 
*   For small campuses or distributed branch locations, where the number of APs is relatively small in each, WLCs can be located further down in the network. This is known as a distributed WLC deployment because multiple controllers are distributed within the network. 
*   For small-scale environments, such as small, midsize, or multisite branch locations, you might not want to invest in dedicated WLCs at all. In this case, the WLC function can be co-located with an AP that is installed at the branch site. This is known as an embedded wireless controller (EWC) deployment. 

## Cisco AP Modes

Cisco APs can operate in one of the following modes, depending on how they are configured:

*   Local: This default lightweight mode offers one or more functioning BSSs on a specific channel. 
*   Monitor: The AP does not transmit at all, but its receiver is enabled to act as a dedicated sensor. 
*   FlexConnect: An AP at a remote site can locally switch traffic between an SSID and a VLAN if its CAPWAP tunnel to the WLC is down and if it is configured to do so. 
*   Sniffer: An AP dedicates its radios to receiving 802.11 traffic from other sources, much like a sniffer or packet capture device. 
*   Rogue detector: An AP dedicates itself to detecting rogue devices by correlating MAC addresses heard on the wired network with those heard over the air. 
*   Bridge: An AP becomes a dedicated bridge (point-to-point or point-to-multipoint) between two networks. 
*   Flex+Bridge: FlexConnect operation is enabled on a mesh AP. 
*   SE-Connect: The AP dedicates its radios to spectrum analysis on all wireless channels. 

## FlexConnect Mode

*   In connected mode, the AP joins the WLC, and all wireless traffic flows over the CAPWAP tunnel. 
*   If the WAN link is down, the AP can use its standalone mode to keep operating independently from the WLC, supporting wireless users locally and allowing them to communicate with other local devices. 
*   Switching between connected and standalone modes is automatic, based on connectivity to the WLC. 
*   You can configure FlexConnect APs to locally switch traffic that needs to stay within the remote site on a per-wireless LAN basis, even if the controller is still reachable.