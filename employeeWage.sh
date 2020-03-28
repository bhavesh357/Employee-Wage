#!/bin/bash -x

echo "Welcome to employee wage computation program"

wagePerHour=20
fullTime=8
partTime=4
isPresent=$(($RANDOM%3))
wage=0

case $isPresent in 
	0)
		wage=$((0 * $wagePerHour))
		;;
	1)
		wage=$(($partTime * $wagePerHour))
		;;
	2)
		wage=$(($fullTime * $wagePerHour))
		;;	
esac