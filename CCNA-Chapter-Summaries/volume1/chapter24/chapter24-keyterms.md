# Chapter 24 Key Terms

*   **administrative distance (AD):** A number (1-255) used by a router to rate the trustworthiness of a routing information source. Lower AD values indicate more preferred routes. For example, a directly connected route has an AD of 0, while an OSPF route has an AD of 110.
*   **equal-cost multipath (ECMP):** A routing technique that allows a router to forward traffic over multiple paths with the same cost (metric) to the same destination. This provides load balancing and redundancy.
*   **equal-cost route:** Two or more routes in a routing table that have the same cost (metric) to the same destination.
*   **longest prefix match:** A rule used by routers to select the most specific route in the routing table when multiple routes match a destination IP address. The route with the longest matching prefix (most specific subnet mask) is preferred.