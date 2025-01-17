# Chapter 20: Cloud Architecture

## Server Virtualization

### Cisco Server Hardware

*   Cisco UCS servers are rack-mountable and hold multiple server blades.
*   Each server blade contains CPUs, RAM, storage, and NICs.

### Virtualization Concepts

*   Server virtualization decouples the OS from the physical hardware.
*   Multiple VMs can run on a single physical server.
*   A hypervisor manages the allocation of hardware resources to VMs.

### Virtual Switch and NIC

*   VMs use virtual NICs (vNICs) to connect to the network.
*   A virtual switch (vSwitch) provides connectivity between vNICs and physical NICs.
*   The vSwitch can be configured with VLANs and trunks.

### Software Containers

*   Containers hold an application and its dependencies, but not the OS.
*   Containers are smaller and faster to start than VMs.
*   A container engine manages the execution of containers.

### Physical Data Center Network

*   Servers in a data center are typically connected to Top of Rack (ToR) switches.
*   ToR switches connect to End of Row (EoR) switches, which provide connectivity to the rest of the network.

## Cloud Computing Services

### Private Cloud

*   A private cloud is owned and managed by a single organization.
*   It provides self-service provisioning and elasticity.

### Public Cloud

*   A public cloud is owned and managed by a third-party provider.
*   It offers a variety of services, including IaaS, SaaS, and PaaS.

### Cloud Services and "As a Service" Model

*   Infrastructure as a Service (IaaS) provides access to virtualized infrastructure, such as VMs and storage.
*   Software as a Service (SaaS) provides access to software applications over the network.
*   Platform as a Service (PaaS) provides a platform for developing and deploying applications.

### VRF Instances

*   VRFs allow for overlapping IP addresses to be used in a network.
*   They are commonly used in public clouds to support multiple customers.

## WAN Traffic Paths to Reach Cloud Services

### Enterprise WAN Connections to Public Cloud

*   Enterprises can connect to public clouds using the Internet, VPNs, or private WANs.
*   Each connection method has its own pros and cons.

### WAN Options

*   Internet access provides agility and ease of migration, but may have security and QoS limitations.
*   VPNs improve security, but may not provide QoS.
*   Private WANs offer the best security and QoS, but may be more expensive and complex to set up.
*   Intercloud exchanges provide private WAN connectivity to multiple cloud providers, easing migration between providers.

### Cloud Management

*   Cloud management can be done through the console, virtual console, or serial console.
*   Centralized management, accessibility, scale, automation, security, and lower cost of ownership are some of the benefits of cloud management.

### Meraki Dashboard

*   The Meraki Dashboard provides a centralized view of the entire Meraki network.
*   It offers features such as zero touch provisioning, topology visualization, and path visualization.