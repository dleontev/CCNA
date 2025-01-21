## Chapter 11: Implementing Switch Port Security

### Configuration Commands

| Command | Mode | Purpose/Description |
|---|---|---|
| `switchport mode {access | trunk}` \| Interface | Tells the switch to always be an access port, or always be a trunk port. |
| `switchport port-security mac-address mac-address` | Interface | Statically adds a specific MAC address as an allowed MAC address on the interface. |
| `switchport port-security mac-address sticky` | Interface | Tells the switch to learn MAC addresses on the interface and add them to the configuration for the interface as secure MAC addresses. |
| `switchport port-security maximum value` | Interface | Sets the maximum number of static secure MAC addresses that can be assigned to a single interface. |
| `switchport port-security violation {protect | restrict | shutdown}` | Interface | Tells the switch what to do if an inappropriate MAC address tries to access the network through a secure switch port. |
| `errdisable recovery cause psecure-violation` | Global | Enables the automatic recovery from err-disabled state for ports that reach that state due to port security violations. |
| `errdisable recovery interval seconds` | Global | Sets the delay, in seconds, before a switch attempts to recover an interface in err-disabled mode, regardless of the reason for that interface being in that state. |
| `shutdown` | Interface | Administratively disables an interface. |
| `no shutdown` | Interface | Administratively enables an interface. |


### EXEC Commands

| Command | Purpose |
|---|---|
| `show running-config` | Lists the currently used configuration. |
| `show running-config \| interface type number` | Displays the running-configuration excerpt of the listed interface and its subcommands only. |
| `show mac-address-table dynamic [interface type number]` | Lists the dynamically learned entries in the switch’s address (forwarding) table. |
| `show mac-address-table secure [interface type number]` | Lists MAC addresses defined or learned on ports configured with port security. |
| `show mac-address-table static [interface type number]` | Lists static MAC addresses and MAC addresses learned or defined with port security. |
| `show interfaces [interface type number] status` | Lists one output line per interface (or for only the listed interface if included), noting the description, operating state, and settings for duplex and speed on each interface. |
| `show port-security interface type number` | Lists an interface’s port security configuration settings and security operational status. |
| `show port-security` | Lists one line per interface that summarizes the port security settings for any interface on which it is enabled. |
