# Chapter 22: Cisco Software-Defined Access (Cisco SD-Access)

## Cisco SD-Access Fabric, Underlay, and Overlay

*   Cisco SD-Access is a software-defined networking (SDN) solution for enterprise networks. 
*   It uses a fabric architecture that consists of an underlay network and an overlay network. 
*   The underlay network provides IP connectivity between network devices. 
*   The overlay network provides Layer 2 and Layer 3 connectivity between endpoints. 
*   The fabric is managed by a central controller called Cisco Catalyst Center. 

### The Cisco SD-Access Underlay

*   The underlay network uses a routed access layer design. 
*   All switches in the underlay network are Layer 3 switches. 
*   The switches use the IS-IS routing protocol to exchange routing information. 
*   All links between switches are routed links. 
*   The underlay network can be configured manually or using Cisco Catalyst Center. 

### The Cisco SD-Access Overlay

*   The overlay network uses VXLAN tunnels to encapsulate and forward traffic between endpoints. 
*   The overlay network uses LISP to discover and locate endpoints. 
*   The overlay network provides host mobility, allowing endpoints to move between different parts of the network without losing connectivity. 

## Cisco Catalyst Center and Cisco SD-Access Operation

### Cisco Catalyst Center

*   Cisco Catalyst Center is the central controller for Cisco SD-Access. 
*   It provides a GUI and a REST API for managing the fabric. 
*   It uses NETCONF and RESTCONF to communicate with network devices. 

### Cisco Catalyst Center and Scalable Groups

*   Cisco SD-Access uses scalable groups to define security policies. 
*   Scalable groups are assigned a scalable group tag (SGT). 
*   The controller uses SGTs to determine which endpoints are allowed to communicate with each other. 

## Cisco Catalyst Center as a Network Management Platform

*   Cisco Catalyst Center can also be used to manage traditional network devices. 
*   It provides features such as:
    *   Network device discovery 
    *   Topology visualization 
    *   Software image management 
    *   Path trace 

## Artificial Intelligence (AI), Machine Learning (ML), and Operational Management

*   AI and ML can be used to automate and improve network operations. 
*   Cisco Catalyst Center uses AI and ML to provide features such as:
    *   Encrypted Traffic Analytics (ETA) 
    *   Device 360 and Client 360 
    *   Network time travel 
    *   Path trace 
*   Narrow AI is designed for specific tasks, while Generative AI can learn and make decisions. 
*   AI Ops leverages AI and ML to optimize and automate IT operations.