#!/bin/bash
#ps -ef|grep Strong|cut -c 9-15|xargs kill -9
pid=$(ps -ef|grep Strong|cut -c 9-15)
kill -9 $pid
