#!bin/bash
#modify jdbc connect mysql
mysqlIP="********"
mysqlPort="***"
mysqlUserName="****"
mysqlPassWord="*******"
mysqlDataBase="nichuiniu"
jdbcDriver="com.mysql.jdbc.Driver"
filePath="/opt/nichuiniu/WEB-INF/classes/config/"
mysqlURL='jdbc:mysql://'$mysqlIP'\:'$mysqlPort'\/'$mysqlDataBase'?useUnicode\=true\&characterEncoding\=UTF-8'

#modify jdcb.properties
jdbc=$filePath"jdbc.properties"
if [ -a $jdbc ] ; then
	dos2unix $jdbc >& null
	rm -rf null
	sed -i "s#^jdbc.url=.*#jdbc.url="$mysqlURL"#g"  $jdbc
	sed -i "s#^jdbc.username=.*#jdbc.username="$mysqlUserName"#g" $jdbc
	sed -i "s#^jdbc.password=.*#jdbc.password="$mysqlPassWord"#g" $jdbc
	echo -e "\033[32m"$jdbc "file modify complete \033[0m"
else
	echo -e "\033[33m file not found "$jdbc" \033[0m" 
fi
#modify log4j.properties
log4j=$filePath"log4j.properties"
if [ -a $log4j ] ; then
	dos2unix $log4j >& null
	rm -rf null
	sed -i "s#^log4j.appender.DB.URL=.*#log4j.appender.DB.URL="$mysqlURL"#g" $log4j
	sed -i "s#^log4j.appender.DB.user=.*#log4j.appender.DB.user="$mysqlUserName"#g" $log4j
	sed -i "s#^log4j.appender.DB.password=.*#log4j.appender.DB.password="$mysqlPassWord"#g" $log4j
	echo -e "\033[32m"$log4j"file modify complete \033[0m"
else
	echo -e "\033[33m file not found "$log4j" \033[0m"
fi

