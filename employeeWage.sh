#!/bin/bash -x

echo "Welcome to employee wage computation program"

wagePerHour=20
fullTime=8
partTime=4
monthsWage=0
workingDays=0
workingHours=0
while [[ $workingDays -lt 20 && $workingHours -lt 100 ]]
do
	isPresent=$(($RANDOM%3))
	wage=0
	case $isPresent in 
	0)
		wage=$((0 * $wagePerHour))
		;;
	1)
		wage=$(($partTime * $wagePerHour))
		workingHours=$(($workingHours+$partTime))
		;;
	2)
		wage=$(($fullTime * $wagePerHour))
		workingHours=$(($workingHours+$fullTime))
		;;	
	esac
	((workingDays++))
	monthsWage=$(($wage+$monthsWage)) 
done
echo $monthsWage