## Chapter 12: DHCP Snooping and ARP Inspection

### Configuration Commands

| Command | Mode | Purpose/Description |
|---|---|---|
| `ip dhcp snooping` | Global | Enables DHCP Snooping if combined with enabling it on one or more VLANs. |
| `ip dhcp snooping vlan vlan-list` | Global | Lists VLANs on which to enable DHCP Snooping, assuming the `ip dhcp snooping` command is also configured. |
| `[no] ip dhcp snooping information option` | Global | Enables (or disables with no option) the feature of inserting DHCP option 82 parameters by the switch when also using DHCP Snooping. |
| `[no] ip dhcp snooping trust` | Interface | Sets the DHCP Snooping trust state for an interface (default no, or untrusted). |
| `ip dhcp snooping limit rate number` | Interface | Sets a limit to the number of incoming DHCP messages processed on an interface, per second, before DHCP Snooping discards all other incoming DHCP messages in that same second. |
| `err-disable recovery cause dhcp-rate-limit` | Global | Enables the switch to automatically recover an err-disabled interface if set to that state because of exceeding a DHCP rate limit setting. |
| `err-disable recovery interval seconds` | Global | Sets the number of seconds IOS waits before recovering any err-disabled interfaces which, per various configuration settings, should be recovered automatically. |
| `err-disable recovery cause arp-inspection` | Global | Enables the switch to automatically recover an err-disabled interface if set to that state because of an ARP Inspection violation. |
| `ip arp inspection vlan vlan-list` | Global | Enables Dynamic ARP Inspection (DAI) on the switch for the specified VLANs. |
| `ip arp inspection trust` | Interface | Overrides the default setting of not trusted. |
| `ip arp inspection limit rate number [burst interval seconds]` | Interface | Sets a limit of ARP messages per second, or ARP messages for each configured interval. |
| `ip arp inspection limit rate none` | Interface | Disables rate limits. |
| `ip arp inspection validate {[dst-mac] [src-mac] [ip]}` | Global | Enables optional items to validate with DAI on untrusted ports. |


### EXEC Commands

| Command | Purpose |
|---|---|
| `show ip dhcp snooping` | Lists a large variety of DHCP Snooping configuration settings. |
| `show ip dhcp snooping statistics` | Lists counters regarding DHCP Snooping behavior on the switch. |
| `show ip dhcp snooping binding` | Displays the contents of the dynamically created DHCP Snooping binding table. |
| `show ip arp inspection` | Lists both configuration settings for Dynamic ARP Inspection (DAI) as well as counters for ARP messages processed and filtered. |
| `show ip arp inspection statistics` | Lists the subset of the show ip arp inspection command output that includes counters. |
| `show ip arp inspection interfaces` | Lists one line per DAI-enabled interface, listing trust state and rate limit settings. |