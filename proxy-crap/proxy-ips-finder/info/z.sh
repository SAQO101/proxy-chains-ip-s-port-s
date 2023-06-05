#!/bin/bash

# Send a GET request to the website and store the response in a variable
response=$(curl -s "https://free-proxy-list.net")

# Extract the proxy IPs using grep and sed and save them to a file
#echo "$response" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+' > proxy_ips.txt
echo "$response" | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+'
