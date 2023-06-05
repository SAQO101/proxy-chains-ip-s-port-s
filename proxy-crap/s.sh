#!/bin/bash

xor_key="3197 3298 3550 3195 8370 4231 2556 6578 5025 9595"

encoded_ports="r8w3=3197;j0x4=3298;b2v2=3550;d4z6=3195;s9d4=8370;h8r8=4231;z6b2=2556;q7n4=6578;i9q7=5025;g7t0=9595;o5x4e5=0^r8w3;j0y5s9=1^j0x4;s9a1f6=2^b2v2;v2k1v2=3^d4z6;c3w3d4=4^s9d4;u1b2x4=5^h8r8;h8l2h8=6^z6b2;l2v2q7=7^q7n4;t0m3p6=8^i9q7;z6u1a1=9^g7t0;
"

decoded_ports=""
IFS=';' read -ra encoded_array <<< "$encoded_ports"
for encoded_port in "${encoded_array[@]}"; do
  IFS='=' read -ra port_parts <<< "$encoded_port"
  port_value=${port_parts[1]}
  xor_result=""
  IFS=' ' read -ra xor_key_array <<< "$xor_key"
  for key in "${xor_key_array[@]}"; do
    xor_result+="$(($port_value ^ $key)) "
  done
  decoded_ports+="$xor_result"
done

echo "Decoded Ports:"
echo "$decoded_ports"

