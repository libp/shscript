#!/bin/sh
pingcmd()
{
prefix="SERVER $1 PING $2"
ping -w 1 -c 1 $2>/dev/null
ret=$?
if [ $ret -eq 0 ]

then printf "$prefix is up"
else printf "$prefix is down \n"
fi
return 0
}
echo "---begin check host ---"
server0="192.168.1.3"
server1="192.168.1.2"
server2="192.168.1.1"
server3="192.168.1.4"
server4="192.168.1.5"
server5="192.168.1.6"
server6="192.168.1.7"
server7="192.168.1.9"


pingcmd $server0 $server1
pingcmd $server0 $server2
pingcmd $server0 $server3
pingcmd $server0 $server4
pingcmd $server0 $server5
pingcmd $server0 $server6
pingcmd $server0 $server7
echo ""
