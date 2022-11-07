#!/bin/python3

#  SPDX-License-Identifier: BSD-3-Clause
#
#  simple pakcet generator. Packet are generated by random walk.
#
#  Copyright (C) 2022 CESNET
#  Author(s):
#    Radek Iša <isa@cesnet.cz>


class packet_config:
    def __init__(self):
        self.vlan = 4
        self.mpls = 4
        #                      [IPv4(), IPv6(), MPLS(), Empty()]
        self.mpls_weight     = [     1,      1,      1,      1]
        #                      [IPv4(), IPv6(), MPLS(), Empty()]
        self.ppp_weight      = [     1,      1,      1,      1]
        #                      [IPv4(), IPv6(), VLAN(), MPLS(), Empty(), PPP()]
        self.vlan_weight     = [     1,      1,      1,      1,       1,     1]
        #                      [Payload(), Empty(), ICMPv4(), UDP(), TCP()]
        self.l3_weight       = [        1,       1,        1,     1,     1]
        #                      [Payload(), Empty()]
        self.l4_weight       = [        1,       1]
        #                      [IPv4(), IPv6(), VLAN(), MPLS(), Empty(), PPP()]
        self.ethernet_weight = [     1,      1,      1,      1,       1,     1]

