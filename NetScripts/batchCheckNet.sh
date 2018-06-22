#!/bin/bash
pingcmd()
{
echo "begin check $1 netstatus"
ping -c 1 $1 > /dev/null
num=$?
if [ $num -eq 0 ]
then
	echo `date` "$1 network is working" >> /tmp/netCheck.log
else
	echo `date` "$1 network is bad" >> /tmp/netCheck.log
	#/etc/init.d/network restart
fi
}
echo `date` "begin network is working" >> /tmp/netok.log

for i in `seq 3 13`
do 
	pingcmd 146.249.2.$i
done

for j in `seq 3 17`
do
	pingcmd 146.249.5.$j
done

echo `date` "end network is working" >> /tmp/netok.log
# the script is designed by lbp used to batch check network health

