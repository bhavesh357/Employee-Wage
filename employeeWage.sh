#!/bin/bash -x

echo "Welcome to employee wage computation program"

wagePerHour=20
fullTime=8

isPresent=$(($RANDOM%3))

if [ $isPresent -eq 2 ]
then
	echo $(($fullTime * $wagePerHour))
else
	if [ isPresent -eq 1 ]
	then
		echo $(( $partTime * $wagePerHour))
	else
		echo $(( 0 * $wagePerHour ))
	fi
fi