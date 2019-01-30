#!/bin/bash
echo `clear`
SERVERS=('server1.example.com' 'server2.example.com' '192.168.0.10') #You can add hostnames or ip andresses 

echo "Server to connect:"
for server in ${!SERVERS[*]}
do
    printf "%4d: %s\n" $server ${SERVERS[$server]}
done

read -p "Select a server to connect: " CHOISE
read -p "Enter username: " USERNAME


ssh $USERNAME@${SERVERS[$CHOISE]}


