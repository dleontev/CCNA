# Chapter 6: Configuring Basic Switch Management

## Securing the Switch CLI

### Securing User Mode and Privileged Mode with Simple Passwords

*   The default switch configuration allows a user to connect to the console, with no authentication, and to reach enable mode with no password. 
*   To improve security, configure a console password and an enable password. 
*   The console password is configured with the `password` command in console line configuration mode. 
*   The enable password is configured with the `enable secret` command in global configuration mode. 

### Securing User Mode Access with Local Usernames and Passwords

*   The simple password method uses a password only, with no username. 
*   A more secure method is to configure local usernames and passwords. 
*   The `username` command in global configuration mode configures a local username and password. 
*   The `login local` command in console and vty line configuration modes enables local username authentication. 

### Securing User Mode Access with External Authentication Servers

*   Local usernames and passwords must be configured on each switch. 
*   A more scalable solution is to use an external authentication server. 
*   The switch can be configured to use an external server for authentication with the `aaa new-model` command. 
*   The `aaa authentication dot1x default group radius` command configures the switch to use RADIUS for authentication. 

### Securing Remote Access with Secure Shell

*   Telnet is a clear-text protocol, so it is not secure for remote access. 
*   SSH is a secure alternative to Telnet. 
*   The `transport input ssh` command in vty line configuration mode configures the switch to use SSH for remote access. 

## Enabling IPv4 for Remote Access

*   The switch needs an IP address to support remote access protocols like SSH and Telnet. 
*   The `ip address` command in VLAN interface configuration mode configures an IP address on the switch. 
*   The `ip default-gateway` command in global configuration mode configures the switch's default gateway. 

## Miscellaneous Settings Useful in the Lab

### History Buffer Commands

*   The history buffer stores the last few commands that were entered. 
*   The `history size` command in line configuration mode configures the size of the history buffer. 
*   The `show history` command displays the commands in the history buffer. 

### The `logging synchronous`, `exec-timeout`, and `no ip domain-lookup` Commands

*   The `logging synchronous` command in line configuration mode prevents log messages from interrupting command output. 
*   The `exec-timeout` command in line configuration mode configures the inactivity timeout for the line. 
*   The `no ip domain-lookup` command in global configuration mode disables DNS-based hostname resolution.