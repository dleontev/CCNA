# Chapter 17: SNMP, FTP, and TFTP

## Simple Network Management Protocol

### SNMP Concepts

*   SNMP is an application layer protocol used for managing network devices. 
*   It is widely used in network management systems (NMS) to monitor and control network devices. 
*   SNMP uses a client-server model, with the NMS acting as the client and the network device acting as the server. 
*   The NMS sends SNMP requests to the network device, which responds with SNMP replies. 
*   SNMP requests can be used to retrieve information about the network device, such as its configuration, performance, and status. 
*   SNMP requests can also be used to change the configuration of the network device. 

### SNMP Versions

*   There are three versions of SNMP: SNMPv1, SNMPv2c, and SNMPv3. 
*   SNMPv1 is the original version of SNMP and is still widely used. 
*   SNMPv2c is an updated version of SNMPv1 that adds some new features. 
*   SNMPv3 is the latest version of SNMP and adds security features such as authentication and encryption. 

### SNMP Messages

*   SNMP uses a variety of messages to communicate between the NMS and the network device. 
*   The most common SNMP messages are:
    *   `GetRequest`: Used to retrieve information from the network device. 
    *   `SetRequest`: Used to change the configuration of the network device. 
    *   `GetNextRequest`: Used to retrieve the next variable in a list of variables. 
    *   `GetBulkRequest`: Used to retrieve a bulk of variables from the network device. 
    *   `Trap`: Used to send unsolicited messages from the network device to the NMS. 
    *   `Inform`: Used to send unsolicited messages from the network device to the NMS, with confirmation of receipt. 

### SNMP Management Information Base (MIB)

*   The MIB is a database of variables that can be accessed using SNMP. 
*   The MIB is organized in a hierarchical structure, with each variable identified by an object identifier (OID). 
*   The MIB contains variables that describe the configuration, performance, and status of the network device. 

### SNMP Security

*   SNMP can be secured using access control lists (ACLs) to limit access to the network device. 
*   SNMPv3 adds security features such as authentication and encryption. 

## FTP and TFTP

### FTP and TFTP Concepts

*   FTP and TFTP are application layer protocols used to transfer files between network devices. 
*   FTP is a more complex protocol that supports features such as authentication and directory navigation. 
*   TFTP is a simpler protocol that does not support authentication or directory navigation. 
*   Both FTP and TFTP can be used to transfer files to and from Cisco devices. 

### FTP and TFTP Configuration

*   FTP and TFTP can be configured on Cisco devices using the `ip ftp` and `ip tftp` commands. 
*   The `copy` command can be used to transfer files to and from Cisco devices using FTP and TFTP. 

### FTP and TFTP Troubleshooting

*   FTP and TFTP can be troubleshooted using the `debug ip ftp` and `debug ip tftp` commands.