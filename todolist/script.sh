#!/bin/bash

#for local system
ip=`hostname -I | awk '{print $1}'`

#for public system
#ip=`curl icanhazip.com`

#Entry For Settings.py line 28
sed -i -e "s/host_ip/$ip/g" /todowebapp/todolist/settings.py
