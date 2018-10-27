#!/bin/bash

IPv4ADDRESS=$(hostname -I | cut -f1 -d' ')
echo "Your Local IP Address is $IPv$IPv4ADDRESS"
/app/c2_community-linux-64 -hostname $IPv4ADDRESS