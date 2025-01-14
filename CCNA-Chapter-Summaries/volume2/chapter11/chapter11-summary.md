# Chapter 11: Implementing Switch Port Security

## Port Security Concepts and Configuration

*   Port security is a security feature on Cisco switches that allows you to control which devices are allowed to connect to a particular port. 
*   You can configure a port to allow only a specific device to connect, or you can configure it to allow a certain number of devices to connect. 
*   Port security is typically used on ports that connect to end-user devices, such as PCs, laptops, and printers. 
*   It is not typically used on ports that connect to other network devices, such as switches and routers. 
*   To configure port security, you must first enable it on the port. 
*   You can then specify the MAC address of the device that is allowed to connect to the port. 
*   If you want to allow more than one device to connect to the port, you can specify the maximum number of devices that are allowed. 

## Verifying Port Security

*   You can verify the port security configuration by using the `show port-security` command. 
*   This command will show you whether port security is enabled on the port, the MAC address of the device that is allowed to connect to the port, and the maximum number of devices that are allowed to connect to the port. 

## Port Security MAC Addresses

*   When a device connects to a port that is configured with port security, the switch will add the MAC address of the device to the port security table. 
*   You can view the port security table by using the `show port-security address` command. 
*   This command will show you the MAC addresses of all the devices that are currently connected to the port. 

## Port Security Violation Modes

*   If a device tries to connect to a port that is configured with port security, and the MAC address of the device is not in the port security table, a port security violation will occur. 
*   You can configure the port to take one of three actions when a violation occurs:
    *   **Shutdown:** The port will be shut down. 
    *   **Protect:** The port will remain up, but the device will not be allowed to connect. 
    *   **Restrict:** The port will remain up, but the device will not be allowed to connect, and a syslog message will be generated. 

## Port Security Shutdown Mode

*   In shutdown mode, the port will be shut down when a port security violation occurs. 
*   You can bring the port back up by using the `shutdown` and `no shutdown` commands. 

## Port Security Protect and Restrict Modes

*   In protect mode, the port will remain up when a port security violation occurs, but the device will not be allowed to connect. 
*   In restrict mode, the port will remain up when a port security violation occurs, but the device will not be allowed to connect, and a syslog message will be generated.