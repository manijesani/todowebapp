#!/bin/bash

#for local system
ip=`ifconfig | grep "inet 192" | grep "broadcast" | awk '{print $2}'`

#for public system
#ip=`curl icanhazip.com`

#Entry For Settings.py line 28
sed "s/host_ip/$ip/g" todolist/settings.py > todolist/settings.py
