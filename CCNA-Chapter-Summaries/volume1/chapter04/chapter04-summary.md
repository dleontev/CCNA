# Chapter 4: Using the Command-Line Interface

## Accessing the Cisco Catalyst Switch CLI

### Cisco Catalyst Switches

*   Cisco Catalyst switches are the most popular type of enterprise-class switch used in the campus LAN.
*   Cisco Catalyst 9200 series switches are a popular current model of Cisco Catalyst switch.
*   Cisco Catalyst switches have a variety of physical interfaces (ports) that can be used to connect to a variety of devices.
*   Cisco Catalyst switches use interface IDs to identify specific ports.

### Accessing the Cisco IOS XE CLI

*   Cisco Catalyst switches use the Cisco IOS XE operating system.
*   The Cisco IOS XE CLI can be accessed using a variety of methods, including the console, Telnet, SSH, and the WebUI.
*   The console is a physical port that can be used to connect a PC to the switch for the purpose of configuring the switch.
*   Telnet and SSH are both command-line protocols that can be used to access the CLI remotely.
*   The WebUI is a graphical user interface that can be used to access the CLI and some configuration and verification commands.

### Cabling the Console Connection

*   The console connection requires a cable to connect a PC's serial port to the switch's console port.
*   The cable can be a rollover cable with RJ-45 connectors on both ends, or a USB cable with a USB connector on one end and a USB mini-B connector on the other end.

### Configuring a Terminal Emulator

*   A terminal emulator is a software application that can be used to connect to a Cisco device's CLI.
*   The terminal emulator must be configured to use the correct settings for the switch's console port.

### Accessing the CLI with Telnet and SSH

*   Telnet and SSH are both network protocols that can be used to access the CLI remotely.
*   SSH is more secure than Telnet because it encrypts all traffic.

### User and Enable (Privileged) Modes

*   The Cisco IOS XE CLI has two modes: user mode and privileged mode.
*   User mode is the default mode and allows the user to view the configuration and status of the switch.
*   Privileged mode allows the user to configure the switch.

### Password Security for CLI Access from the Console

*   The `enable secret` command configures a password for privileged mode.
*   The `line console 0` command configures a password for the console.

### CLI Help Features

*   The `?` command can be used to display a list of available commands.
*   The `com?` command can be used to display a list of commands that start with "com".
*   The `command ?` command can be used to display a list of parameters for a specific command.
*   The `command parm?` command can be used to display a list of valid values for a specific parameter.
*   The `Tab` key can be used to complete a partially typed command or parameter.

### The `debug` and `show` Commands

*   The `debug` command can be used to display debugging information about a specific feature.
*   The `show` command can be used to display information about the status of the switch.

## Configuring Cisco IOS Software

### Configuration Submodes and Contexts

*   The Cisco IOS XE CLI has a hierarchical structure with different modes and submodes.
*   The `configure terminal` command enters global configuration mode.
*   The `interface` command enters interface configuration mode.
*   The `line` command enters line configuration mode.
*   The `vlan` command enters VLAN configuration mode.

### Storing Switch Configuration Files

*   The running configuration is the configuration that is currently running on the switch.
*   The startup configuration is the configuration that is loaded when the switch boots.
*   The `copy running-config startup-config` command copies the running configuration to the startup configuration.
*   The `reload` command reloads the switch.
*   The `show running-config` command displays the running configuration.
*   The `show startup-config` command displays the startup configuration.