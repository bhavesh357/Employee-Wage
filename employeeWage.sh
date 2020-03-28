#!/bin/bash -x

echo "Welcome to employee wage computation program"

wagePerHour=20
fullTime=8

isPresent=$(($RANDOM%2))

if [ $isPresent -eq 1 ]
then
	echo $(($fullTime * $wagePerHour))
else
	echo $(( 0 * $wagePerHour))
fi