#!/bin/bash

echo input the IP address to inspect \(default IP address 192.168.56.3\):
read ip
# 192.168.56.3

if [ -z ${ip} ];
then
  ip="192.168.56.3"
fi

# echo "${ip}"
url="http://"${ip}"/.hidden/"
# echo "${url}"

# response=$(curl -s -G -d "id=1 UNION SELECT title, comment FROM Member_images.list_images" -d "Submit=Submit" "$url")

wget -q -e robots=off -r -nH --no-parent --reject="index.html*" "$url"
response=$(eval "find .hidden -name "README" -exec grep -l -e '[0-9]' {} +")
cat $response
# rm -rf .hidden