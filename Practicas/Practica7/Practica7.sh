#!/bin/bash
localip=$(hostname -I)
publicip=$(curl ifconfig.me)
echo "local IP Address: $localip"
echo "public IP Address: $publicip"
nmap -F --script=vuln,default $localip
nmap scanme.nmap.org
nmap -F $publicip

