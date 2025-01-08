# Chapter 7: Configuring and Verifying Switch Interfaces

## Configuring Switch Interface Speed and Duplex

*   Ethernet links can use different speed and duplex settings. 
*   To ensure the link works, the devices on both ends must use the same settings. 
*   Autonegotiation can be used to allow the devices to automatically choose the best settings. 
*   If autonegotiation is not used, the speed and duplex must be configured manually on both devices. 

## Using Autonegotiation on Cisco Switches

*   Autonegotiation is enabled by default on Cisco switches. 
*   The `show interfaces status` command can be used to verify the speed and duplex settings that have been negotiated. 
*   The `show interfaces` command can also be used to verify autonegotiation settings. 

## Setting Speed and Duplex Manually

*   If autonegotiation is not used, the speed and duplex must be configured manually on both devices. 
*   The `speed` and `duplex` interface subcommands can be used to configure these settings. 

## Using Auto-MDIX on Cisco Switches

*   Auto-MDIX is a feature that allows a switch to automatically detect the type of cable that is connected to a port and configure the port accordingly. 
*   This feature is enabled by default on Cisco switches. 
*   The `mdix auto` interface subcommand can be used to configure auto-MDIX. 

## Managing Switch Interface Configuration

*   The `description` interface subcommand can be used to add a description to an interface. 
*   The `shutdown` and `no shutdown` interface subcommands can be used to administratively disable and enable an interface, respectively. 

## Analyzing Switch Interface Status and Statistics

*   The `show interfaces status` command can be used to view the status of all interfaces on a switch. 
*   The `show interfaces` command can be used to view detailed information about a specific interface, including statistics such as the number of packets that have been transmitted and received. 
*   The `show interfaces counters` command can be used to view the counters for a specific interface.