# Chapter 20: Troubleshooting IPv4 Routing

## Problem Isolation Using the ping Command

*   The ping command is one of the most commonly used
    troubleshooting tools for IPv4. 
*   It can be used to test
    the reachability of a device, to isolate the problem, and to
    rule out possible causes of the problem. 

### Ping Command Basics

*   The ping command sends an ICMP echo request to a device and
    expects an ICMP echo reply. 
*   Each time the ping
    command receives a reply, it knows that a packet made it to
    the destination and back. 
*   The ping command is
    supported on many devices and operating systems. 
*   It
    has many options, including the number of pings to send, the
    size of the packets, and the timeout. 

### Strategies and Results When Testing with the ping Command

*   When troubleshooting, it is often helpful to issue ping
    commands from different routers to isolate the problem. 
*   However, no single ping command can replicate a ping
    command issued from the host itself. 
*   The following are
    some strategies for testing with the ping command:
    1.  Test longer routes from near the source of the problem.
    2.  Use extended ping to test the reverse route. 
    3.  Test LAN neighbors with standard ping. 
    4.  Test LAN neighbors with extended ping. 
    5.  Test WAN neighbors with standard ping. 

## Problem Isolation Using the traceroute Command

*   The traceroute command is another useful troubleshooting
    tool for IPv4. 
*   It can be used to identify the path that a
    packet takes to a destination and to pinpoint routing
    problems. 

### traceroute Basics

*   The traceroute command sends packets with low TTL values to
    force routers to send back ICMP TTL Exceeded messages. 
*   These messages identify the routers in the path, allowing
    the traceroute command to list their IP addresses. 
*   The command increments the TTL value of each set of packets,
    so that it eventually reaches the destination host. 

### Standard and Extended traceroute

*   The standard traceroute command uses the IP address of the
    outgoing interface as the source IP address of the packets.
    
*   The extended traceroute command allows the user to
    specify the source IP address of the packets. 

## Telnet and SSH

*   Telnet and SSH are two other useful troubleshooting tools
    for IPv4. 
*   They can be used to log in to routers and
    switches to view their status and configuration. 
*   The IOS Telnet and SSH clients can be used to connect from
    one Cisco device to another. 
*   This can be helpful
    when troubleshooting routing problems.