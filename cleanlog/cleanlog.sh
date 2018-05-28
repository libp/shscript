#!/bin/bash
find /opt/apache-tomcat-7.0.78/logs -name "catalina.*" -mtime +15 -exec rm {} \;
find /opt/apache-tomcat-7.0.78/logs -name "localhost_access.*" -mtime +30 -exec rm {} \;
find /opt/apache-tomcat-7.0.78/logs -name "localhost.201.*" -mtime +15 -exec rm {} \;
