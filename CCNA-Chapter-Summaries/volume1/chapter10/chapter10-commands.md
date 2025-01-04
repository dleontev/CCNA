# Chapter 10: RSTP and EtherChannel Configuration - Commands

This page provides a quick reference for the EXEC commands introduced in Chapter 10 of the CCNA Official Cert Guide, Volume 1, focusing on RSTP and EtherChannel configuration.

## Spanning Tree Configuration Commands

| Command | Description |
|---|---|
| `spanning-tree mode {pvst \| rapid-pvst \| mst}` | Global configuration command to set the STP mode (PVST+, Rapid PVST+, or MST). |
| `spanning-tree [vlan vlan-number] root primary` | Global configuration command that makes this switch the root switch for the specified VLAN or all VLANs. |
| `spanning-tree [vlan vlan-number] root secondary` | Global configuration command that sets this switch's STP priority to 28,672 for the specified VLAN or all VLANs. |
| `spanning-tree vlan vlan-id priority priority` | Global configuration command that changes the bridge priority of this switch for the specified VLAN. |
| `spanning-tree [vlan vlan-number] cost cost` | Interface subcommand that changes the STP cost of the interface to the configured value. |
| `spanning-tree [vlan vlan-number] port-priority priority` | Interface subcommand that changes the STP port priority in the specified VLAN (0 to 240, in increments of 16). |
| `spanning-tree portfast` | Interface subcommand that enables PortFast on the interface if it is an access port. |
| `spanning-tree portfast trunk` | Interface subcommand that enables PortFast on the interface if it is a trunk port. |
| `spanning-tree bpduguard enable` | Interface subcommand that enables BPDU Guard on the interface. |
| `spanning-tree portfast disable` | Interface subcommand that disables PortFast on the interface. |
| `spanning-tree bpduguard disable` | Interface subcommand that disables BPDU Guard on the interface. |
| `spanning-tree portfast enable` | Global command that enables PortFast by default on all interfaces. |
| `spanning-tree portfast bpduguard default` | Global command that enables BPDU Guard by default on all PortFast enabled interfaces. |
| `spanning-tree bpdufilter enable` | Interface subcommand that enables BPDU Filter on the interface, disabling STP on that interface. |
| `spanning-tree portfast bpdufilter default` | Global command that enables BPDU Filter by default on all PortFast enabled interfaces. |
| `[no] spanning-tree guard root` | Interface subcommand to enable or disable Root Guard on the interface. |
| `[no] spanning-tree guard loop` | Interface subcommand to enable or disable Loop Guard on the interface. |
| `spanning-tree loopguard default` | Global command to enable Loop Guard by default on all interfaces. |


## EtherChannel Configuration Commands

| Command | Description |
|---|---|
| `channel-group channel-group-number mode {auto \| desirable \| active \| passive \| on}` | Interface subcommand that creates an EtherChannel on the interface with the specified channel group number and mode. |

## Verification Commands

| Command | Description |
|---|---|
| `show spanning-tree` | Lists details about the state of STP on the switch, including the state of each port. |
| `show spanning-tree vlan vlan-id` | Lists STP information for the specified VLAN. |
| `show spanning-tree vlan vlan-id interface interface-id [detail]` | Lists STP information for the specified VLAN and interface. |
| `show etherchannel [channel-group-number] {brief \| detail \| port \| port-channel \| summary}` | Lists information about the state of EtherChannels on the switch. |
| `show interfaces port-channel number` | Lists information about the specified PortChannel interface, including the member interfaces. |
| `show etherchannel` | Displays configuration settings for each EtherChannel. |
| `show etherchannel [number] {summary \| port-channel \| detail}` | Displays status information about all EtherChannels or a specific EtherChannel. |
