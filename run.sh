#!/bin/bash

IPv4ADDRESS=$"(ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')"
/app/c2_community-linux-64 -hostname $IPv4ADDRESS