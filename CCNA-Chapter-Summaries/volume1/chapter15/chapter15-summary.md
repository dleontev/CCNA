# Chapter 15: Subnet Design

## Choosing the Mask(s) to Meet Requirements

*   The network designer must examine the requirements for the number of subnets and number of hosts/subnet, and then choose a mask.
*   The designer must choose S subnet bits so that the number of subnets that can be uniquely numbered with S bits (2S) is at least as large as the required number of subnets.
*   The designer applies similar logic to the number of host bits H, while noting that the formula is 2H − 2, because of the two reserved numbers in each subnet.

### No Masks Meet Requirements

*   After you determine the required number of subnet and host bits, those bits might not fit into a 32-bit IPv4 subnet mask.
*   Remember, the mask always has a total of 32 bits, with binary 1s in the network and subnet parts and binary 0s in the host part.
*   For the exam, a question might provide a set of requirements that simply cannot be met with 32 total bits.

### One Mask Meets Requirements

*   If the engineer tries to use these minimum values, and the combined network, subnet, and host parts add up to exactly 32 bits, exactly one mask meets the requirements.

### Multiple Masks Meet Requirements

#### Finding All the Masks: Concepts

*   To help you better understand how to find all the subnet masks in binary, this section uses two major steps. In the first major step, you build the 32-bit binary subnet mask on paper. You write down binary 1s for the network bits, binary 1s for the subnet bits, and binary 0s for the host bits, just as always.
*   However, you will use the minimum values for S and H. And when you write down these bits, you will not have 32 bits yet!
*   A subnet mask begins with all binary 1s, followed by all binary 0s, with no interleaving of 1s and 0s.

#### Finding All the Masks: Math

*   Although the concepts are important, you can find the range of masks that meets the requirements more easily just using some simple math.
*   The process to find the masks requires only a few steps, after you know N and the minimum values of S and H.
    1.  Calculate the shortest prefix mask (/P) based on the minimum value of S, where P = N + S.
    2.  Calculate the longest prefix mask (/P) based on the minimum value of H, where P = 32 − H.
    3.  The range of valid masks includes all /P values between the two values calculated in the previous steps.

#### Choosing the Best Mask

*   When multiple possible masks meet the stated requirements, the engineer has a choice of masks.
    *   To maximize the number of hosts/subnet: To make this choice, use the shortest prefix mask (that is, the mask with the smallest /P value), because this mask has the largest host part.
    *   To maximize the number of subnets: To make this choice, use the longest prefix mask (that is, the mask with the largest /P value), because this mask has the largest subnet part.
    *   To increase both the numbers of supported subnets and hosts: To make this choice, choose a mask in the middle of the range, which gives you both more subnet bits and more host bits.

## Finding All Subnet IDs

### First Subnet ID: The Zero Subnet

*   The first step in finding all subnet IDs of one network is incredibly simple: Copy the network ID.
*   That is, take the Class A, B, or C network ID—in other words, the classful network ID—and write it down as the first subnet ID.
*   No matter what Class A, B, or C network you use, and no matter what subnet mask you use, the first (numerically lowest) subnet ID is equal to the network ID.
*   This first subnet ID in each network goes by two special names: either subnet zero or zero subnet.
*   The origin of these names is related to the fact that a network’s zero subnet, when viewed in binary, has a subnet part of all binary 0s. In decimal, the zero subnet can be easily identified, because the zero subnet always has the exact same numeric value as the network ID itself.

### Finding the Pattern Using the Magic Number

*   Subnet IDs follow a predictable pattern, at least when using our assumption of a single subnet mask for all subnets of a network.
*   The pattern uses the magic number, as discussed in Chapter 14, “Analyzing Existing Subnets.”
*   To review, the magic number is 256, minus the mask’s decimal value, in a particular octet that this book refers to as the interesting octet.

### A Formal Process with Fewer Than 8 Subnet Bits

*   A formal process to find all subnet IDs, given a network and a single subnet mask, is as follows:
    1.  Write down the subnet mask, in decimal, in the first empty row of the table.
    2.  Identify the interesting octet, which is the one octet of the mask with a value other than 255 or 0.
    3.  Calculate and write down the magic number by subtracting the subnet mask’s interesting octet from 256.
    4.  Write down the classful network number, which is the same number as the zero subnet, in the next empty row of the list-all-subnets chart.
    5.  To find each successive subnet number:
        1.  For the three uninteresting octets, copy the previous subnet number’s values.
        2.  For the interesting octet, add the magic number to the previous subnet number’s interesting octet.
    6.  When the sum calculated in Step 5B reaches 256, stop the process. The number with the 256 in it is out of range, and the previous subnet number is the broadcast subnet.

### Finding All Subnets with Exactly 8 Subnet Bits

*   The formal process in the earlier section “A Formal Process with Fewer Than 8 Subnet Bits” identified the interesting octet as the octet whose mask value is neither a 255 nor a 0.
*   If the mask defines exactly 8 subnet bits, you must use a different logic to identify the interesting octet; otherwise, the same process can be used.
*   In fact, the actual subnet IDs can be a little more intuitive.
    *   A Class A network with mask 255.255.0.0; the entire second octet contains subnet bits.
    *   A Class B network with mask 255.255.255.0; the entire third octet contains subnet bits.

### Finding All Subnets with More Than 8 Subnet Bits

*   To create a subnet design that allows 17 or more subnet bits to exist, the design must use a Class A network. In addition, the subnet part will consist of the entire second and third octets, plus part of the fourth octet.

#### Process with 9–16 Subnet Bits

*   To understand the process, you need to know a few terms that the process will use.
    1.  Calculate subnet IDs using the 8-subnet-bits-or-less process. However, when the total adds up to 256, move to the next step; consider the subnet IDs listed so far as a subnet block.
    2.  Copy the previous subnet block, but add 1 to the just-left octet in all subnet IDs in the new block.
    3.  Repeat Step 2 until you create the block with a just-left octet of 255, but go no further.

#### Process with 17 or More Subnet Bits

*   To create a subnet design that allows 17 or more subnet bits to exist, the design must use a Class A network.
*   In addition, the subnet part will consist of the entire second and third octets, plus part of the fourth octet.
*   That means a lot of subnet IDs: at least 217 (or 131,072) subnets.