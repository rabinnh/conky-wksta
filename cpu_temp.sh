#!/bin/bash

case "$1" in
1)
	SENSORS=`sensors`;IFS=$'\n' lines=($SENSORS);echo ${lines[2]} | cut --bytes=16-21
	;;
2)
	SENSORS=`sensors`;IFS=$'\n' lines=($SENSORS);echo ${lines[3]} | cut --bytes=16-21
	;;
3)
	SENSORS=`sensors`;IFS=$'\n' lines=($SENSORS);echo ${lines[4]} | cut --bytes=16-21
	;;
4)
	SENSORS=`sensors`;IFS=$'\n' lines=($SENSORS);echo ${lines[5]} | cut --bytes=16-21
	;;

5)
	SENSORS=`sensors`;IFS=$'\n' lines=($SENSORS);echo ${lines[8]} | cut --bytes=16-21
	;;
6)
	SENSORS=`sensors`;IFS=$'\n' lines=($SENSORS);echo ${lines[9]} | cut --bytes=16-21
	;;
7)
	SENSORS=`sensors`;IFS=$'\n' lines=($SENSORS);echo ${lines[10]} | cut --bytes=16-21
	;;
8)
	SENSORS=`sensors`;IFS=$'\n' lines=($SENSORS);echo ${lines[11]} | cut --bytes=16-21
	;;
esac

