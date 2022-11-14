#!/bin/bash

echo input the IP address to inspect \(default IP address 192.168.56.3\):
read ip
# 192.168.56.3

if [ -z ${ip} ];
then
  ip="192.168.56.3"
fi

# echo "${ip}"
inspectUrl="http://"${ip}"/.hidden/"
# echo "${url}"

regex="href=\"[A-z]*"
found=""

total=20000
current=0

searchFlag() {
    local url=$(echo "$1")

	if [ ! -z "$found" -a "$found" != " " ]; then
		return
	fi

	local response=$(curl -s $url)

	# the File is README
	if [ "$2" == 1 ]; then
		local tmp=$(echo $response | grep -E "[0-9][0-9]+")

		# if Flag found:
		if [ ! -z "$tmp" ]; then
			# found=$(echo $tmp)
			echo ""
			echo "Path: $url"
			echo ""
			echo "$tmp"
			return
		fi
	fi

	# if Flag not found
	local array=($( echo $response | grep -o "$regex" | sed "s/href=\"//" | awk 'NF'))

	for i in "${array[@]}"
	do
		# echo $i
		if [ "$i" != "" -a "$i" != "README" ]; then
			searchFlag "$url$i/"
		elif [ "$i" != "" -a "$i" == "README" ]; then
			searchFlag "$url$i" 1
			current=$((current+1))
			echo -ne "progress : $(((current * 100) / total))%\r"
		fi
	done

}


searchFlag $inspectUrl
