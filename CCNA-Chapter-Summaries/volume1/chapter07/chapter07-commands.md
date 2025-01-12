# Commands

## Switch Interface Configuration Commands

| Command                                 | Mode                 | Purpose                                                                   |
| --------------------------------------- | --------------------- | ------------------------------------------------------------------------- |
| `interface type portnumber`             | Interface configuration | Changes context to interface mode.                                          |
| `interface range type portnumber - end-portnumber` | Interface configuration | Changes context to interface mode for a range of interfaces.                |
| `shutdown` / `no shutdown`              | Interface configuration | Disables or enables the interface, respectively.                           |
| `speed {10 \| 100 \| 1000 \| auto}`     | Interface configuration | Manually sets the speed or automatically negotiates the speed.              |
| `duplex {auto \| full \| half}`         | Interface configuration | Manually sets the duplex mode or automatically negotiates the duplex setting. |
| `description text`                      | Interface configuration | Adds a description to the interface.                                      |
| `no duplex` / `no speed` / `no description` | Interface configuration | Reverts to the default setting for each subcommand.                       |
| `default interface interface-id`         | Interface configuration | Reverts to the default settings for all subcommands on an interface.       |
| `[no] mdix auto`                        | Interface configuration | Enables or disables the auto-MDIX feature.                                |


## EXEC Commands

| Command                                      | Purpose                                                                                                                               |
| -------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| `show running-config`                        | Lists the currently used configuration while omitting most default settings.                                                           |
| `show running-config interface type number` | Displays the running configuration excerpt of the listed interface and its subcommands only.                                              |
| `show running-config all`                    | Displays the running configuration while including all default settings.                                                               |
| `show interfaces [type number] status`       | Lists one output line per interface (or for only the listed interface if included), noting the description, operating state, and settings for duplex and speed on each interface. |
| `show interfaces [type number]`              | Lists detailed status and statistical information about all interfaces (or the listed interface only).                                    |
| `show interfaces description`                | Displays one line of information per interface, with a two-item status (similar to the `show interfaces status` command), and includes any description configured on the interfaces. |