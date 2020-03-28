#!/bin/bash -x
function getWorkingHours() {
	case $1 in 
	0)
		echo 0
			;;
	1)
		echo 4
			;;
	2)
		echo 8
			;;	
	esac	
}


echo "Welcome to employee wage computation program"

wagePerHour=20
monthsWage=0
workingDays=0
workingHours=0
while [[ $workingDays -lt 20 && $workingHours -lt 100 ]]
do
	isPresent=$(($RANDOM%3))
	hours=$( getWorkingHours $isPresent )
	wage=$(($hours * $wagePerHour))
	workingHours=$(($workingHours+$hours))
	((workingDays++))
	wages[workingDays]=$wage
	monthsWage=$(($wage+$monthsWage)) 
done
echo $monthsWage
echo ${wages[@]}