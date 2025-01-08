# Chapter 11: Perspectives on IPv4 Subnetting

## Introduction to Subnetting

*   Subnetting is the process of subdividing a Class A, B, or C network into smaller groups called subnets. 
*   Subnets allow a single Class A, B, or C network to be used instead of multiple networks, and still allow for a large number of groups of IP addresses, as is required for efficient IP routing. 

## Subnetting Defined Through a Simple Example

*   A subnet is a subdivision of a classful network. 
*   All IP addresses in a subnet have the same prefix (network and subnet parts). 
*   A subnet is defined by a subnet ID, which is the numerically lowest address in the subnet, and a subnet mask. 
*   The subnet mask defines the size of the subnet, or the number of IP addresses in the subnet. 
*   The subnet mask also defines the structure of the addresses in the subnet, including the number of network bits, subnet bits, and host bits. 

## Operational View Versus Design View of Subnetting

*   Most IT jobs require you to work with subnetting from an operational view. 
*   That is, someone else, before you got the job, designed how IP addressing and subnetting would work for that particular enterprise network. 
*   You need to interpret what someone else has already chosen. 
*   To fully understand IP addressing and subnetting, you need to think about subnetting from both a design and operational perspective. 

## Analyzing Subnetting and Addressing Needs

*   This section discusses the meaning of four basic questions that can be used to analyze the addressing and subnetting needs for any new or changing enterprise network: 
    1.  Which hosts should be grouped together into a subnet? 
    2.  How many subnets does this internetwork require? 
    3.  How many host IP addresses does each subnet require? 
    4.  Will we use a single subnet size for simplicity, or not? 

## Rules About Which Hosts Are in Which Subnet

*   Every device that connects to an IP internetwork needs to have an IP address. 
*   These devices include computers used by end users, servers, mobile phones, laptops, IP phones, tablets, and networking devices like routers, switches, and firewalls. 
*   The IP addresses must be assigned according to some basic rules—and for good reasons. 
*   To make routing work efficiently, IP addressing rules group addresses into groups called subnets. 
*   The rules are as follows:
    *   Addresses in the same subnet are not separated by a router. 
    *   Addresses in different subnets are separated by at least one router. 

## Determining the Number of Subnets

*   To determine the number of subnets required, the engineer must think about the internetwork as documented and count the locations that need a subnet. 
*   To do so, the engineer requires access to network diagrams, VLAN configuration details, and details about WAN links. 
*   For the types of links discussed in this book, you should plan for one subnet for every one of the following: 
    *   VLAN 
    *   Point-to-point serial link 
    *   Ethernet WAN (Ethernet Line Service) 

## Determining the Number of Hosts per Subnet

*   Determining the number of hosts per subnet requires knowing a few simple concepts and then doing a lot of research and questioning. 
*   Every device that connects to a subnet needs an IP address. 
*   For a totally new network, you can look at business plans—numbers of people at the site, devices on order, and so on—to get some idea of the possible devices. 
*   When expanding an existing network to add new sites, you can use existing sites as a point of comparison and then find out which sites will get bigger or smaller. 

## One Size Subnet Fits All—Or Not

*   The final choice in the initial planning step is to decide whether you will use a simpler design by using a one-size-subnet-fits-all philosophy. 
*   A subnet’s size, or length, is simply the number of usable IP addresses in the subnet. 
*   A subnetting design can either use one size subnet or varied sizes of subnets, with pros and cons for each choice. 

## Defining the Size of a Subnet

*   The engineer assigns each subnet a subnet mask, and that mask, among other things, defines the size of that subnet. 
*   The mask sets aside a number of host bits whose purpose is to number different host IP addresses in that subnet. 
*   Because you can number 2^x things with x bits, if the mask defines H host bits, the subnet contains 2^H unique numeric values. 
*   However, the subnet’s size is not 2^H. It’s 2^H − 2 because two numbers in each subnet are reserved for other purposes. 
*   Each subnet reserves the numerically lowest value for the subnet number and the numerically highest value as the subnet broadcast address. 
*   As a result, the number of usable IP addresses per subnet is 2^H − 2. 

## One Mask for All Subnets, or More Than One

*   For the most part, this book explains subnetting using designs that use a single mask, creating a single subnet size for all subnets. 
*   Why? First, it makes the process of learning subnetting easier. 
*   Second, some types of analysis that you can do about a network—specifically, calculating the number of subnets in the classful network—make sense only when a single mask is used. 
*   However, you still need to be ready to work with designs that use more than one mask in different subnets of the same Class A, B, or C network. 

## Make Design Choices

*   Now that you know how to analyze the IP addressing and subnetting needs, the next major step examines how to apply the rules of IP addressing and subnetting to those needs and make some choices. 
*   In other words, now that you know how many subnets you need and how many host addresses you need in the largest subnet, how do you create a useful subnetting design that meets those requirements? 

## Choose a Classful Network

*   In the original design for what we know of today as the Internet, companies used registered public classful IP networks when implementing TCP/IP inside the company. 
*   By the mid-1990s, an alternative became more popular: private IP networks. 
*   This section discusses the background behind these two choices because it impacts the choice of what IP network a company will then subnet and implement in its enterprise internetwork. 

## Public IP Networks

*   The original design of the Internet required that any company that connected to the Internet had to use a registered public IP network. 
*   To do so, the company would complete some paperwork, describing the enterprise’s internetwork and the number of hosts existing, plus plans for growth. 
*   After submitting the paperwork, the company would receive an assignment of either a Class A, B, or C network. 
*   Public IP networks—and the administrative processes surrounding them—ensure that all the companies that connect to the Internet use unique IP addresses. 

## Growth Exhausts the Public IP Address Space

*   By the early 1990s, the world was running out of public IP networks that could be assigned. 
*   During most of the 1990s, the number of hosts newly connected to the Internet was growing at a double-digit pace per month. 
*   Companies kept following the rules, asking for public IP networks, and it was clear that the current address-assignment scheme could not continue without some changes. 

## Private IP Networks

*   When using NAT—and almost every organization that connects to the Internet uses NAT—the company can simply pick one or more of the private IP networks from the list of reserved private IP network numbers. 

## Choose the Mask

*   If design engineers followed the topics in this chapter so far, in order, they would know the following: 
    *   The number of subnets required 
    *   The number of hosts/subnet required 
    *   That a choice was made to use only one mask for all subnets so that all subnets are the same size (same number of hosts/subnet) 
    *   The classful IP network number that will be subnetted 
*   This section completes the design process, at least the parts described in this chapter, by discussing how to choose that one mask to use for all subnets. 

## Classful IP Networks Before Subnetting

*   Before an engineer subnets a classful network, the network is a single group of addresses. 
*   In other words, the engineer has not yet subdivided the network into many smaller subsets called subnets. 
*   When thinking about an unsubnetted classful network, the addresses in a network have only two parts: the network part and host part. 
*   Comparing any two addresses in the classful network: 
    *   The addresses have the same value in the network part. 
    *   The addresses have different values in the host part. 

## Borrow Host Bits

*   To subnet a network, the designer thinks about the network and host parts of the address structure as two parts of the whole, and then the engineer adds a third part in the middle: the subnet part. 
*   However, the designer cannot change the size of the network part or the size of the entire address (32 bits). 
*   To create a subnet part of the address structure, the engineer borrows bits from the host part. 

## Choosing Enough Subnet and Host Bits

*   The design process requires a choice of where to mentally move the dividing line between the subnet and host parts of the address structure. 
*   But what is the right choice? How many subnet and host bits should the designer choose? 
*   The answers hinge on the requirements gathered in the early stages of the planning process: 
    *   Number of subnets required 
    *   Number of hosts/subnet 
*   The bits in the subnet part create a way to uniquely number the different subnets that the design engineer wants to create. 
*   With 1 subnet bit, you can number 2^1 or 2 subnets. With 2 bits, 2^2 or 4 subnets; with 3 bits, 2^3 or 8 subnets; and so on. 
*   The number of subnet bits must be large enough to uniquely number all the subnets, as determined during the planning process. 

## Masks and Mask Formats

*   Although engineers think about IP addresses in three parts when making design choices (network, subnet, and host), the subnet mask gives the engineer a way to communicate those design choices to all the devices in the subnet. 
*   The subnet mask is a 32-bit binary number with a number of binary 1s on the left and with binary 0s on the right. 
*   By definition, the number of binary 0s equals the number of host bits; in fact, that is exactly how the mask communicates the idea of the size of the host part of the addresses in a subnet. 

## Build a List of All Subnets

*   Building a list of all subnets, the final task of the subnet design step, determines the actual subnets that can be used, based on all the earlier choices. 
*   The earlier design work determined the Class A, B, or C network to use, and the (one) subnet mask to use that supplies enough subnets and enough host IP addresses per subnet. 

## Plan the Implementation

*   The next step, planning the implementation, is the last step before actually configuring the devices to create a subnet. 
*   The engineer first needs to choose where to use each subnet. 
*   For example, at a branch office in a particular city, which subnet from the subnet planning chart should be used for each VLAN at that site? 
*   Also, for any interfaces that require static IP addresses, which addresses should be used in each case? 
*   Finally, what range of IP addresses from inside each subnet should be configured in the DHCP server, to be dynamically leased to hosts for use as their IP address? 

## Assigning Subnets to Different Locations

*   The job is simple: Look at your network diagram, identify each location that needs a subnet, and pick one from the table you made of all the possible subnets. 
*   Then, track it so that you know which ones you use where, using a spreadsheet or some other purpose-built subnet-planning tool. 

## Choose Static and Dynamic Ranges per Subnet

*   Devices receive their IP address and mask assignment in one of two ways: dynamically by using Dynamic Host Configuration Protocol (DHCP) or statically through configuration. 
*   For DHCP to work, the network engineer must tell the DHCP server the subnets for which it must assign IP addresses. 
*   In addition, that configuration limits the DHCP server to only a subset of the addresses in the subnet. 
*   For static addresses, you simply configure the device to tell it what IP address and mask to use. 
*   To keep things as simple as possible, most shops use a strategy to separate the static IP addresses on one end of each subnet, and the DHCP-assigned dynamic addresses on the other.