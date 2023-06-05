#!/bin/bash

ip_file="ips.txt"  # Replace with the path to your IP addresses file

# Remove duplicate IP addresses while preserving the order
unique_ips=$(awk '!seen[$0]++' "$ip_file")

# Write the unique IPs back to the file
echo "$unique_ips" > "$ip_file"

echo "Duplicate IP addresses removed."

