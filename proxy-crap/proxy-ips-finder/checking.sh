#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
down=$(printf "${RED} down ${NC}")
up=$(printf "${GREEN} up ${NC}")

ip_file="ips.txt"  # Replace with the path to your IP addresses file

# Read the IP addresses from the file
ip_addresses=$(cat "$ip_file")
# Iterate over each IP address and ping it
for ip in $ip_addresses; do
  echo "Pinging $ip..."
  ping -c 1 "$ip" > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "$ip is $up" ; echo "$ip is $up" >> existing-ips.txt
  else
    echo "$ip is $down" ; echo "$ip is $down" >> none-existing-ips.txt
  fi
  echo
done

