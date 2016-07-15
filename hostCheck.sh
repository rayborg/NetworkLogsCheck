#!/bin/bash
#Check host availability with ICMP ping check on a given subnet and prints out results

subnet="192.168.48."

for host in {1..255}
do
        if ping  -w 1 -c 1 $subnet$host &> /dev/null
        then
                echo "Host: 192.168.48."$host " is available."
        fi
done
