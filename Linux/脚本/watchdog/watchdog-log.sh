#!/bin/bash
while [ 1 ]
do
    num=`ps -ef | grep paaslog | grep -v grep | wc -l`
    if [ $num -ge 1 ];then
	echo "paaslog在运行中"	
    else
	echo "paaslog不在运行"
	echo "starting..."
	nohup java -jar paaslog-neimeng.jar --spring.profiles.active=log &
     fi
    sleep 300
done
