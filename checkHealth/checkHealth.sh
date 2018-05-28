#!/bin/bash
t=$(date +"%Y-%m-%d %H:%M:%S")
if [ `ps -ef|grep  tomcat |grep -v grep|wc -l` -eq 0 ] ; then
	echo "$t tomcat process has dead" >> /opt/script/checkHealth/health.log
	/bin/bash /opt/apache-tomcat-7.0.78/bin/startup.sh
	sleep 10
fi

if [ `ps -ef|grep  tomcat |grep -v grep|wc -l` -gt 0 ] ; then
        echo "$t tomcat process is running" >> /opt/script/checkHealth/health.log
fi


