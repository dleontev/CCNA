# Chapter 4: Building a Wireless LAN

## Connecting a Cisco AP

*   Cisco Aironet APs are a popular model of enterprise-class AP. 
*   They can be powered with PoE or a local power supply. 
*   They have a console port for initial configuration and troubleshooting. 
*   They have a single Ethernet port that should be connected to an access port on a switch. 
*   The switch port should be configured for 802.1Q trunking. 

## Accessing a Cisco WLC

*   Cisco WLCs are physical or virtual devices that manage Cisco APs. 
*   They can be accessed using a web browser or SSH. 
*   The WLC GUI is used to configure WLANs and other settings. 

## Connecting a Cisco WLC

*   Cisco WLCs have several physical ports:
    *   Console port for initial configuration and troubleshooting 
    *   Service port for out-of-band management 
    *   Redundancy port for high availability 
    *   Distribution system ports for connecting to the network 
*   The distribution system ports should be configured as an EtherChannel. 

## Configuring a WLAN

### Configuring a WLAN on an IOS-XE WLC

1.  Configure a WLAN profile:
    *   Enter the SSID and WLAN ID. 
    *   Enable the WLAN and broadcast the SSID. 
    *   Select the frequency bands to use. 
2.  Configure a policy profile:
    *   Enter the policy profile name. 
    *   Configure the VLAN to use for the WLAN. 
    *   Configure QoS and other settings as needed. 
3.  Map the WLAN and policy profiles to a policy tag:
    *   Enter the policy tag name. 
    *   Select the WLAN and policy profiles to use. 
4.  Apply the policy tag to some APs:
    *   Select the APs to tag. 
    *   Select the policy tag to use. 

### Configuring a WLAN on an AireOS WLC

1.  Create a dynamic interface:
    *   Enter the interface name and VLAN ID. 
    *   Configure the IP address, subnet mask, and default gateway. 
    *   Configure the DHCP server addresses. 
2.  Create a new WLAN:
    *   Enter the WLAN profile name and SSID. 
    *   Enter the WLAN ID. 
3.  Configure the WLAN parameters:
    *   Enable the WLAN and broadcast the SSID. 
    *   Select the type of radio to use. 
    *   Select the dynamic interface to use. 

## Configuring WLAN Security

*   Select the security type to use (WPA+WPA2, WPA2+WPA3, WPA3, Static WEP, or None). 
*   Configure the security parameters for the selected type. 
*   For WPA2-PSK, enter the PSK. 
*   For WPA2-Enterprise, configure 802.1x and a RADIUS server. 

## Configuring WLAN QoS

*   Select the QoS type to use (Platinum, Gold, Silver, or Bronze). 
*   Configure the WMM policy, CAC policies, and bandwidth parameters as needed. 

## Configuring Advanced WLAN Settings

*   Configure the session timeout, idle timeout, and client exclusion settings as needed. 
*   Configure the maximum number of clients allowed. 
*   Configure load balancing and band select as needed. 

## Finalizing WLAN Configuration

*   Click the Apply button to save the WLAN configuration. 
*   Verify the WLAN configuration.