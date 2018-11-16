#!/bin/bash

RED='\E[1;31m' 
GREEN='\E[1;32m'
YELOWR='\E[1;33m'
BLUER='\E[1;34m'  
PINK='\E[1;35m'      
RES='\E[0m'


usage()
{
        echo -e "$GREEN***********************************************************$RES"
        echo -e "$GREEN sh zz.sh start  ------------------start zz $RES"
        echo -e "$GREEN sh zz.sh stop   ------------------stop zz $RES"
        echo -e "$GREEN***********************************************************$RES"
}
PID=$(ps -ef | grep zz-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{ print $2 }')
case "$1" in
'start')
        if [ -n "$PID" ]
        then
              echo -e "$GREEN Application is already running , now to restart $RES"
              echo -e "$GREEN kill $PID $RES"
              kill $PID
              echo -e "$GREEN start zz.jar $RES"
              /usr/bin/nohup /usr/java/jdk1.8.0_171-amd64/bin/java -jar /opt/zz/target/zz-0.0.1-SNAPSHOT.jar >> /opt/zz/logs/server.log &
        else
              echo -e "$GREEN start zz.jar $RES"
              /usr/bin/nohup /usr/java/jdk1.8.0_171-amd64/bin/java -jar /opt/zz/target/zz-0.0.1-SNAPSHOT.jar >> /opt/zz/logs/server.log &
        fi
        ;;
'stop')
        PID=$(ps -ef | grep grep zz-0.0.1-SNAPSHOT.jar | grep -v grep | awk '{ print $2 }')
        if [ -z "$PID" ]
        then
              echo -e "$GREEN Application is already stopped $RES"
        else
              echo -e "$GREEN Application is running , now to stop $RES"
              echo -e "$RED kill $PID $RES"
              kill $PID
        fi
        ;;
*)
        usage
        ;;
esac
