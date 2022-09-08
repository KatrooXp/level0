#!/bin/bash

pidfile="/var/run/case_st.pid"

case $1 in
	start)
		echo "Starting service..."
		sleep 9999 &
		pid=$!
		echo $pid
		echo $pid > $pidfile
		echo "Service started"
		;;
	stop)
		pid=$(cat $pidfile)
		kill $pid
		echo "Service stopped"
		rm $pidfile
		;;		
	restart)

		./case_statement.sh stop
		./case_statement.sh start	
		;;
	*)
		echo "to use the script enter either start | stop | restart"
		;;
esac
