#!/bin/bash
#RB

echo "Enter Iran server's IP"
read iran_server_ip

echo "Enter outside server's IP"
read outside_server_ip

echo "outside_server_ip: ""$outside_server_ip" > roles/VPN-Server-Iran/vars/main.yml
echo "outside_server_ip: ""$outside_server_ip" > roles/VPN-Server-Outside/vars/main.yml

echo "[vpn-server-iran]" > hosts
for isi in $iran_server_ip; do echo "$isi" >> hosts; done

echo "[vpn-server-outside]" >> hosts
for osi in $outside_server_ip; do echo "$osi" >> hosts; done

ansible-playbook playbook.yml --inventory=./hosts 