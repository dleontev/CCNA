# Chapter 1: Introduction to TCP/IP Networking

## Foundation Topics

### Perspectives on Networking

*   People new to networking may have a user's perspective rather than a network engineer's perspective. 
*   Home networks and business networks use similar networking technologies. 
*   Enterprise networks are created for use by a single corporation to allow its employees to communicate. 
*   SOHO networks are smaller networks at home, when used for business purposes. 
*   The purpose of a network is to move data from one device to another. 

### TCP/IP Networking Model

*   A networking model is a comprehensive set of documents that define how a computer network should work. 
*   Each document describes a small function required for a network. 
*   Protocols are a set of logical rules that devices must follow to communicate. 
*   Some documents define physical requirements for networking. 
*   A networking model is like an architectural blueprint for a house. 
*   TCP/IP is the most pervasive networking model in use today. 
*   TCP/IP is supported on practically every computer operating system in existence today. 
*   The purpose of a networking model is to present various concepts about networking using the context of the different roles and functions in the model. 

### History Leading to TCP/IP

*   In the past, networking protocols were proprietary and only supported a particular vendor's computers. 
*   IBM published its Systems Network Architecture (SNA) networking model in 1974. 
*   The ISO created the Open Systems Interconnection (OSI) networking model in the late 1970s. 
*   The OSI model was intended to standardize data networking protocols to allow communication among all computers across the planet. 
*   A competing open networking model called TCP/IP was developed from a U.S. Department of Defense contract. 
*   By the end of the 1990s, TCP/IP had become the common choice, and OSI fell away. 
*   Today, TCP/IP dominates the networking world. 

### Overview of the TCP/IP Networking Model

*   The TCP/IP model defines and references a large collection of protocols that allow computers to communicate. 
*   To define a protocol, TCP/IP uses documents called Requests For Comments (RFCs). 
*   Each RFC gives the specifics about an option to implement one or more of the functions at some layer of the model. 
*   The TCP/IP model references standards or protocols created by other groups. 
*   The TCP/IP model breaks the functions into a small number of categories called layers. 
*   Each layer includes protocols and standards that relate to that category of functions. 
*   The physical layer focuses on how to transmit bits over each link. 
*   The data link layer focuses on the rules that control the use of the physical link. 
*   The network layer focuses on delivering data over the entire path from the original sending computer to the final destination computer. 
*   The top two layers focus on the applications that need to send and receive data. 

### TCP/IP Application Layer

*   TCP/IP application layer protocols provide services to the application software running on a computer. 
*   The application layer does not define the application itself, but it defines services that applications need. 
*   The application layer provides an interface between software running on a computer and the network itself. 
*   The most popular TCP/IP application today is the web browser. 

### HTTP Overview

*   HTTP is a protocol that allows web browsers to request files from a web server and for the server to return the contents of those files. 

### HTTP Protocol Mechanisms

*   HTTP uses headers to communicate information between the web browser and the web server. 
*   The GET request is used to request a file from the web server. 
*   The web server responds with a message that includes a return code and the first part of the requested file. 
*   Additional messages are sent without an HTTP header to transfer the rest of the data. 

### TCP/IP Transport Layer

*   TCP/IP transport layer protocols provide services to the application layer protocols. 
*   TCP provides error recovery to guarantee delivery of data across a network. 

### TCP Error Recovery Basics

*   TCP uses acknowledgments to recover from errors. 
*   If a TCP segment is lost in transit, the receiver will request the sender to retransmit the segment. 

### Same-Layer and Adjacent-Layer Interactions

*   Adjacent-layer interaction refers to how adjacent layers in a networking model, on the same computer, work together. 
*   The lower layer provides a service to the layer above it. 
*   Same-layer interaction refers to how one layer on one computer works with the same networking layer on another computer. 
*   The two computers use headers to hold the information that they want to communicate. 

### TCP/IP Network Layer

*   The TCP/IP network layer includes a small number of protocols, but only one major protocol: the Internet Protocol (IP). 
*   IP provides addressing and routing. 

### Internet Protocol and the Postal Service

*   IP addresses are like postal addresses, and IP routing is like the postal service. 
*   Each host computer has a unique IP address. 
*   IP defines the process of routing so that devices called routers can forward packets of data to the correct destinations. 

### Internet Protocol Addressing Basics

*   IP addresses are written in dotted-decimal notation. 
*   IP addresses are grouped together into subnets. 
*   Routers are networking devices that connect the parts of the TCP/IP network together for the purpose of routing IP packets to the correct destination. 

### IP Routing Basics

*   The TCP/IP network layer, using the IP protocol, provides a service of forwarding IP packets from one device to another. 
*   Any device with an IP address can connect to the TCP/IP network and send packets. 

### TCP/IP Data Link and Physical Layers

*   The TCP/IP model's data link and physical layers define the protocols and hardware required to deliver data across some physical network. 
*   The physical layer defines the cabling and energy that flow over the cables. 
*   The data link layer defines the rules and conventions for sending data over the cable. 

### Data Encapsulation Terminology

*   Encapsulation is the process of putting headers (and sometimes trailers) around some data. 
*   The data link layer adds a header and trailer to the packet, creating a frame. 
*   The physical layer encodes a signal onto the medium to transmit the frame. 

### Names of TCP/IP Messages

*   The term segment refers to the transport layer. 
*   The term packet refers to the network layer. 
*   The term frame refers to the link layer. 

### OSI Networking Model and Terminology

*   The OSI model is a seven-layer networking model. 
*   The OSI model is no longer used in practice, but it is still important for understanding networking terminology. 
*   The OSI model has many similarities to the TCP/IP model. 
*   The OSI model can be used as a standard of comparison to other networking models. 
*   The OSI model has seven layers, each of which specifies particular network functions. 
*   The OSI layers each refer to multiple protocols and standards that implement the functions specified by each layer. 
*   The OSI model is not used in practice, but it is still important for understanding networking terminology. 
*   The OSI model has many similarities to the TCP/IP model. 
*   The OSI model can be used as a standard of comparison to other networking models. 
*   The OSI model has seven layers, each of which specifies particular network functions. 
*   The OSI layers each refer to multiple protocols and standards that implement the functions specified by each layer. 
*   The OSI model is not used in practice, but it is still important for understanding networking terminology. 
*   The OSI model has many similarities to the TCP/IP model. 
*   The OSI model can be used as a standard of comparison to other networking models. 
*   The OSI model has seven layers, each of which specifies particular network functions. 
*   The OSI layers each refer to multiple protocols and standards that implement the functions specified by each layer.