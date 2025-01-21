## Chapter 13: Device Management Protocols

### Configuration Commands

| Command | Mode | Description |
|---|---|---|
| `[no] logging console` | Global | Enables (or disables with the `no` option) logging to the console device. |
| `[no] logging monitor` | Global | Enables (or disables with the `no` option) logging to users connected to the device with SSH or Telnet. |
| `[no] logging buffered` | Global | Enables (or disables with the `no` option) logging to an internal buffer. |
| `logging [host] ip-address | hostname` | Global | Enables logging to a syslog server. |
| `logging console level-name | level-number` | Global | Sets the log message level for console log messages. |
| `logging monitor level-name | level-number` | Global | Sets the log message level for log messages sent to SSH and Telnet users. |
| `logging buffered level-name | level-number` | Global | Sets the log message level for buffered log messages displayed later by the `show logging` command. |
| `logging trap level-name | level-number` | Global | Sets the log message level for messages sent to syslog servers. |
| `[no] service sequence-numbers` | Global | Enables or disables (with the `no` option) the use of sequence numbers in log messages. |
| `clock timezone name +/– hours-offset [minutes-offset]` | Global | Names a time zone and defines the +/– offset versus UTC. |
| `clock summertime name recurring` | Global | Names a daylight savings time for a time zone and tells IOS to adjust the clock automatically. |
| `ntp server address` | Global | Configures the device as an NTP client by referring to the address or name of an NTP server. |
| `ntp master stratum-level` | Global | Configures the device as an NTP server and assigns its local clock stratum level. |
| `ntp source name/number` | Global | Tells NTP to use the listed interface (by name/number) for the source IP address for NTP messages. |
| `interface loopback number` | Global | At first use, creates a loopback interface. At all uses, it also moves the user into interface configuration mode for that interface. |
| `[no] cdp run` | Global | Enables and disables (with the `no` option) CDP for the entire switch or router. |
| `[no] cdp enable` | Interface | Enables and disables (with the `no` option) CDP for a particular interface. |
| `cdp timer seconds` | Global | Changes the CDP send timer (the frequency at which CDP sends messages). |
| `cdp holdtime seconds` | Global | Changes how long CDP waits since the last received message from a neighbor before believing the neighbor has failed, removing the neighbor’s information from the CDP table. |
| `[no] lldp run` | Global | Enables and disables (with the `no` option) LLDP for the entire switch or router. |
| `[no] lldp transmit` | Interface | Enables and disables (with the `no` option) the transmission of LLDP messages on the interface. |
| `[no] lldp receive` | Interface | Enables and disables (with the `no` option) the processing of received LLDP messages on the interface. |
| `lldp timer seconds` | Global | Changes the LLDP send timer (the frequency at which LLDP sends messages). |
| `lldp holdtime seconds` | Global | Changes how long LLDP waits since the last received message from a neighbor before believing the neighbor has failed, removing the neighbor’s information from the LLDP table. |


### EXEC Commands

| Command | Description |
|---|---|
| `show logging` | Lists the current logging configuration and lists buffered log messages at the end. |
| `terminal monitor` | For a user (SSH or Telnet) session, toggles on the receipt of log messages, for that one session, if `logging monitor` is also configured. |
| `terminal no monitor` | For a user (SSH or Telnet) session, toggles off the receipt of log messages, for that one session, if `logging monitor` is also configured. |
| `[no] debug {various}` | Enables or disables (with the `no` option) one of a multitude of debug options. |
| `show clock` | Lists the time of day and the date per the local device. |
| `show ntp associations` | Shows all NTP clients and servers with which the local device is attempting to synchronize with NTP. |
| `show ntp status` | Shows current NTP client status in detail. |
| `show interfaces loopback number` | Shows the current status of the listed loopback interface. |
| `show cdp | lldp neighbors [type number]` | Lists one summary line of information about each neighbor; optionally, lists neighbors off the listed interface. |
| `show cdp | lldp neighbors detail` | Lists one large set of information (approximately 15 lines) for every neighbor. |
| `show cdp | lldp entry name` | Displays the same information as `show cdp|lldp neighbors detail` but only for the named neighbor. |
| `show cdp | lldp` | States whether CDP or LLDP is enabled globally and lists the default update and holdtime timers. |
| `show cdp | lldp interface [type number]` | States whether CDP or LDP is enabled on each interface or a single interface if the interface is listed. |
| `show cdp | lldp traffic` | Displays global statistics for the number of CDP or LDP advertisements sent and received. |
