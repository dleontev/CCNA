# Chapter 23: Implementing Optional OSPF Features

## OSPF Network Types

*   A key per-interface setting for OSPF that tells the router how to discover neighbors and whether to elect a DR/BDR.

## OSPF Broadcast Network Type

*   The default for Ethernet interfaces, this type results in a DR/BDR election.
    *   To influence which router is elected, configure the `ip ospf priority value` interface subcommand.
    *   The command’s range is 0 (do not become DR/BDR) to 255. The default is 1.
    *   If the priority ties, the router with the highest RID wins the election.
    *   The DR and BDR reach a FULL state with all other routers.
    *   The other routers (DROther) reach a FULL state with the DR and BDR, and a 2WAY state with each other.

## OSPF Point-to-Point Network Type

*   This type does not elect a DR/BDR.
*   Routers reach a FULL state with their neighbor on the link.
*   This type is the default on serial interfaces.
*   It is also a common choice on Ethernet WAN links.

## Additional Optional Features

### OSPF Passive Interfaces

*   OSPF will no longer send or process Hello messages on an interface configured with the `passive-interface` command.
*   The router will still advertise the subnet on the link in OSPF.
*   You can configure the command per interface (`passive-interface type number`) or change the default.
*   To change the default, use the `passive-interface default` command in router configuration mode.
*   Then use the `no passive-interface type number` command to enable any interfaces that should not be passive.

### OSPF Default Routes

*   The `default-information originate [always]` command in router configuration mode makes the router advertise a default route.
*   The router will only advertise the route if it has a default route, for instance, from another routing protocol or configured statically.
*   Use the `always` keyword to tell the router to advertise the route even if it does not have a default route.

### OSPF Metrics

*   The SPF algorithm calculates the cost of a route as the sum of the costs of the outgoing interfaces.
*   You can influence the cost using these options:
    1.  Change the cost directly using the `ip ospf cost interface-cost` command.
    2.  Change the OSPF reference bandwidth using the `auto-cost reference-bandwidth number` command.
    3.  Change the interface bandwidth using the `bandwidth bandwidth` command.
        *   This option is not recommended because the interface bandwidth is used by other IOS features.