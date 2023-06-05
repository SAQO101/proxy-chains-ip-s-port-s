#!/bin/bash

# Send a GET request to the website and store the response in a variable
response=$(curl -s "https://spys.one/en/socks-proxy-list/")

# Extract the proxy IPs using grep and store them in an array
#proxies=($(echo "$response" | grep -oE "[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+" | grep -vE "Document\|Warning" | sort -u))
echo $response

# Print the extracted proxy IPs
#for proxy in "${proxies[@]}"; do
#  echo "$proxy"
#done

