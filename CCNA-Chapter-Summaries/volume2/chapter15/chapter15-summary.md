# Chapter 15: Quality of Service (QoS)

## Introduction to QoS

*   QoS tools on Cisco devices manage the bandwidth, delay, jitter, and loss of network traffic. 
*   QoS tools balance the trade-offs of which traffic types receive network resources and when, giving more preference to some traffic and less preference to others. 
*   QoS tools define actions a device can apply to a message between the time it enters the device until it exits the device. 
*   QoS defines these actions as per-hop behaviors (PHBs), which is a formal term to refer to actions other than storing and forwarding a message. 
*   These actions can delay the message, discard it, or even change header fields. 
*   The device can choose different PHBs for different kinds of messages, improving the QoS behavior for some messages, while worsening the QoS behavior for others. 

## QoS as Mentioned in This Book

*   QoS tools can be applied to both switches and routers. 
*   The term "packet" is used to refer to any message being processed by a networking device, whether it is literally a packet or a frame. 
*   All examples refer to routers for consistency. 

## Classification and Marking

### Classification Basics

*   Classification refers to the process of matching the fields in a message to make a choice to take some QoS action. 
*   ACLs perform classification and filtering, while QoS tools perform classification to decide which packets to take certain QoS actions against. 
*   These actions include queuing, shaping, policing, etc. 

### Matching (Classification) Basics

*   Classification can be done by matching various header fields in a message. 
*   Complex matching of many header fields in every device and on most interfaces requires lots of configuration and can degrade device performance. 
*   A better strategy is to do complex matching early in the life of a packet and then marking the packet. 
*   Marking means that the QoS tool changes one or more header fields, setting a value in the header. 
*   Devices that process the packet later in its life can use much simpler classification logic by matching the marked value. 

### Classification on Routers with ACLs and NBAR

*   QoS classification is similar to what ACLs do. 
*   Many QoS tools support referring to an IP ACL, with the logic that any packet matched by the ACL with a permit action is considered a match for QoS, triggering a particular QoS action. 
*   ACLs can be used to match specific fields in a message, such as source/destination IP address, protocol, and source/destination port. 
*   For more challenging classification cases, Cisco Network Based Application Recognition (NBAR) can be used. 
*   NBAR2 can match packets for classification in a large variety of ways that are very useful for QoS. 
*   NBAR2 looks far beyond what an ACL can examine in a message and can identify applications based on the data sent, rather than just port numbers. 
*   NBAR2 also organizes what it can match in ways that make it easy to separate the traffic into different classes. 
*   NBAR2 provides easy built-in matching ability for many applications and subcategories. 

### Marking IP DSCP and Ethernet CoS

*   The QoS plan for an enterprise centers on creating classes of traffic that should receive certain types of QoS treatment. 
*   That plan should detail how to classify packets into each classification and the values that should be marked on the packets. 
*   Marking means that the QoS tool changes one or more header fields, setting a value in the header to associate it with a particular class. 

#### Marking the IP Header

*   Marking a QoS field in the IP header works well with QoS because the IP header exists for the entire trip from the source host to the destination host. 
*   IPv4 defines a type of service (ToS) byte in the IPv4 header. 
*   The original RFC defined a 3-bit IP Precedence (IPP) field for QoS marking. 
*   That field gave us eight separate values, which when converted to decimal are decimals 0 through 7. 
*   While a great idea, IPP gave us only eight different values to mark, so later RFCs redefined the ToS byte with the DSCP field. 
*   DSCP increased the number of marking bits to 6 bits, allowing for 64 unique values that can be marked. 
*   The Differentiated Services (DiServ) RFCs have become accepted as the most common method to use when doing QoS, and using the DSCP field for marking has become quite common. 
*   IPv6 has a similar field to mark as well. The 6-bit field also goes by the name DSCP, with the byte in the IPv6 header being called the IPv6 Traffic Class byte. 
*   Otherwise, think of IPv4 and IPv6 being equivalent in terms of marking. 

#### Marking the Ethernet 802.1Q Header

*   Another useful marking field exists in the 802.1Q header, in a field originally defined by the IEEE 802.1p standard. 
*   This field sits in the third byte of the 4-byte 802.1Q header, as a 3-bit field, supplying eight possible values to mark. 
*   It goes by two different names: class of service (CoS) and priority code point (PCP). 
*   The 802.1Q header is not included in all Ethernet frames. 
*   The 802.1Q header exists only when 802.1Q trunking is used on a link. 
*   As a result, QoS tools can make use of the CoS field only for QoS features enabled on interfaces that use trunking. 

### Other Marking Fields

*   Other marking fields exist in other headers, including:
    *   TID in 802.11 for Wi-Fi
    *   EXP in MPLS Label for MPLS WAN

### Defining Trust Boundaries

*   The end-user device can mark the DSCP field, and even the CoS field if trunking is used on the link. 
*   However, the network engineer would not trust those settings and let networking devices trust and react to those markings for their various QoS actions. 
*   Anything the end user controls might be used inappropriately at times. 
*   For example, a PC user could mark all their traffic as DSCP 46 (Expedited Forwarding), hoping to get great QoS treatment. 
*   The people creating a QoS plan for an enterprise have to choose where to place the trust boundary for the network. 
*   The trust boundary refers to the point in the path of a packet flowing through the network at which the networking devices can trust the current QoS markings. 
*   That boundary typically sits in a device under the control of the IT staff. 
*   For example, a typical trust boundary could be set in the middle of the first ingress switch in the network. 
*   The markings on the message as sent by the PC cannot be trusted, but the markings can be trusted after the packets enter the switch and are classified and marked. 
*   When the access layer includes an IP Phone, the phone is typically the trust boundary, instead of the access layer switch. 
*   IP Phones can set the CoS and DSCP fields of the messages created by the phone, as well as those forwarded from the PC through the phone. 

### DiffServ Suggested Marking Values

*   The Differentiated Services (DiServ) architecture defines several conventions for how to use the DSCP field. 
*   By suggesting specific markings for specific types of traffic, DiServ hoped to create a consistent use of DSCP values in all networks. 
*   The plans all specify some variation for how all devices should mark data, including:
    *   DSCP EF: Voice payload
    *   AF4x: Interactive video
    *   AF3x: Streaming video
    *   AF2x: High priority data
    *   CS0: Standard data

## Queuing

*   All networking devices use queues to hold outgoing messages until the outgoing interface is available. 
*   Queuing refers to the QoS toolset for managing the queues that hold packets while they wait their turn to exit an interface. 
*   Queuing systems may use a single output queue with a first-in, first-out (FIFO) scheduler. 
*   Most networking devices can have a queuing system with multiple queues. 
*   To use multiple queues, the queuing system needs a classifier function to choose which packets are placed into which queue. 
*   The queuing system also needs a scheduler to decide which message to take next when the interface becomes available. 

### Round-Robin Scheduling (Prioritization)

*   One scheduling algorithm used by Cisco routers and switches is round-robin logic. 
*   Round robin cycles through the queues in order, taking turns with each queue. 
*   Round-robin scheduling also includes the concept of weighting, where the scheduler takes a different number of packets (or bytes) from each queue, giving more preference to one queue over another. 
*   Routers use Class-Based Weighted Fair Queuing (CBWFQ) to guarantee a minimum amount of bandwidth to each class. 
*   CBWFQ uses a weighted round-robin scheduling algorithm, letting the network engineer define the weightings as a percentage of link bandwidth. 

### Low Latency Queuing

*   Interactive voice and video need low latency, low jitter, and low loss. 
*   A round-robin scheduler does not provide low enough delay, jitter, or loss for these types of traffic. 
*   The solution is to add Low Latency Queuing (LLQ) to the scheduler. 
*   LLQ tells the scheduler to treat one or more queues as special priority queues. 
*   The LLQ scheduler always takes the next message from one of these special priority queues, resulting in very little delay and jitter for packets in that queue. 
*   The queue never has time to fill up, so there are no drops due to the queue filling up. 
*   To prevent queue starvation of the other queues, you can limit the amount of traffic placed into the priority queue using policing. 
*   Policing acts as a cap on the bandwidth used by the priority queue. 
*   You could reserve a percentage of the link's bandwidth for the voice queue and make it a priority queue. 
*   If more traffic than the reserved bandwidth shows up in that queue, the router will discard the excess. 

### A Prioritization Strategy for Data, Voice, and Video

*   Use a round-robin queuing method like CBWFQ for data classes and for noninteractive voice and video. 
*   If faced with too little bandwidth compared to the typical amount of traffic, give data classes that support business-critical applications much more guaranteed bandwidth than is given to less important data classes. 
*   Use a priority queue with LLQ scheduling for interactive voice and video, to achieve low delay, jitter, and loss. 
*   Put voice in a separate queue from video so that the policing function applies separately to each. 
*   Define enough bandwidth for each priority queue so that the built-in policer should not discard any messages from the priority queues. 
*   Use call admission control (CAC) tools to avoid adding too much voice or video to the network, which would trigger the policer function. 

## Shaping and Policing

*   Shaping and policing monitor the bit rate of the combined messages that flow through a device. 
*   Both attempt to keep the bit rate at or below the configured speed, but by using two different actions: policers discard packets, and shapers hold packets in queues to delay the packets. 
*   Shapers and policers monitor the traffic rate (the bits per second that move through the shaper or policer) versus a configured shaping rate or policing rate, respectively. 

### Policing

*   Policing measures the traffic rate over time for comparison to the configured policing rate. 
*   Policing allows for a burst of data after a period of inactivity. 
*   Policing is enabled on an interface, in either direction, but typically at ingress. 
*   Policing can discard excess messages but can also re-mark the message so that it is a candidate for more aggressive discard later in its journey. 

### Shaping

*   Shaping slows down messages by queuing the messages and then servicing the shaping queues, but not based on when the physical interface is available. 
*   Instead, the shaper schedules messages from the shaping queues based on the shaping rate. 
*   In some cases, the output queuing function has little to do. 
*   For example, if a router shapes all traffic exiting toward an ISP to 200 Mbps, with a 1-Gbps interface, the output queue would seldom if ever be congested. 
*   Because shapers create queues where messages wait, you should apply a queuing tool to those queues. 
*   It is perfectly normal to apply the round-robin and priority queuing features of CBWFQ and LLQ, respectively, to the shaping queues. 

### Setting a Good Shaping Time Interval for Voice and Video

*   The unfortunate side effect of a shaper is that it slows down packets, which then creates more delay and probably more jitter. 
*   The delay occurs in part because of the message simply