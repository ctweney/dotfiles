#!/bin/bash

route=`netstat -rn | grep ^10/16 | awk -F ' ' '{print $2}'`

if [ -z "$route" ]
then
  echo "Destination 10/16 not found, is VPN connected?"
else
  echo "Will run sudo route -n add -net 10.0.0.2/32 $route"
  sudo route -n add -net 10.0.0.2/32 $route
fi
