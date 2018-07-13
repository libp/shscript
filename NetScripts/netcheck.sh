#!/bin/bash
pingcmd()
{
ping -c 3 172.16.15.126 > /dev/null
num=$?
if [ $num -eq 0 ]
then
	echo `date` "network is working" >> /tmp/net.log
else
	echo `date` "network is bad,trying reconnect" >> /tmp/net.log
	/etc/init.d/network restart
fi
}
pingcmd
#该脚本的作用是网络不通时，自动重启网络
#对应的在系统创建一个定时任务，每分钟执行一次该脚本，保障网络断开后快速恢复
