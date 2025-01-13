# Chapter 5: Introduction to TCP/IP Transport and Applications

## TCP/IP Layer 4 Protocols: TCP and UDP

*   The TCP/IP transport layer (Layer 4) is responsible for providing communication between applications on different hosts.
*   The two main protocols at the transport layer are TCP and UDP.
*   TCP is a connection-oriented, reliable protocol that provides flow control, error recovery, and ordered data transfer.
*   UDP is a connectionless, unreliable protocol that does not provide flow control, error recovery, or ordered data transfer.
*   The choice of which protocol to use depends on the needs of the application.

### Transmission Control Protocol

*   TCP is a connection-oriented protocol, which means that a connection must be established between two applications before data can be exchanged.
*   TCP uses a three-way handshake to establish a connection.
*   TCP uses acknowledgments to provide reliable data transfer.
*   TCP uses windowing to provide flow control.
*   TCP uses port numbers to allow multiple applications on the same host to use the same network connection.

### User Datagram Protocol

*   UDP is a connectionless protocol, which means that no connection is established between two applications before data can be exchanged.
*   UDP does not provide acknowledgments, flow control, or ordered data transfer.
*   UDP is often used for applications that do not require reliable data transfer, such as streaming audio and video.

## TCP/IP Applications

*   The TCP/IP application layer (Layer 5) is responsible for providing services to applications.
*   Some common TCP/IP applications include:
    *   HTTP (Hypertext Transfer Protocol)
    *   DNS (Domain Name System)
    *   DHCP (Dynamic Host Configuration Protocol)
    *   FTP (File Transfer Protocol)
    *   SMTP (Simple Mail Transfer Protocol)

### Uniform Resource Identifiers

*   A URI (Uniform Resource Identifier) is a string of characters that identifies a resource.
*   URIs are used to identify web pages, files, and other resources on the Internet.
*   A URI consists of three parts:
    *   The protocol (e.g., `http`)
    *   The hostname (e.g., `www.example.com`)
    *   The path (e.g., `/index.html`)

### Finding the Web Server Using DNS

*   DNS is used to resolve hostnames to IP addresses.
*   When a user enters a URI into a web browser, the browser sends a DNS request to a DNS server to resolve the hostname to an IP address.
*   The DNS server responds with the IP address of the web server.

### Transferring Files with HTTP

*   HTTP is used to transfer files between web browsers and web servers.
*   When a user requests a web page, the browser sends an HTTP request to the web server.
*   The web server responds with the requested web page.

### How the Receiving Host Identifies the Correct Receiving Application

*   When a host receives a TCP or UDP segment, it uses the destination port number to determine which application should receive the segment.
*   Each application is assigned a unique port number.
*   Well-known port numbers are assigned to common applications, such as HTTP (port 80) and HTTPS (port 443).

## HTTP Versions

*   HTTP has evolved over time, with several different versions of the protocol being released.
*   The most common versions of HTTP are HTTP/1.1, HTTP/2, and HTTP/3.
*   HTTP/3 is the most recent version of HTTP, and it offers several improvements over previous versions, such as improved performance and security.