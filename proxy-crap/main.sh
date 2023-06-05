curl https://spys.one/en/socks-proxy-list/ >> blin.html

cat blin.html | grep -oP 'class=spy\d+>\K\d+\.\d+\.\d+\.\d+' >> ips.txt

rm blin.html

./clearing.sh

./checking.sh

