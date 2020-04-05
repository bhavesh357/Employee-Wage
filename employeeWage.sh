#!/bin/bash -x
#CONSTANTS
declare -r wagePerHour=20
declare -A wages
declare isFullTime=2
declare isPartTime=1
#VARIABLES
monthsWage=0
workingDays=0
workingHours=0
function getWorkingHours() {
	case $1 in 
	isPartTime)
		echo 4
			;;
	isFullTime)
		echo 8
			;;
	*)
		echo 0
			;;	
	esac	
}

function calculateWages() {
	hoursWorked=$1
	echo $(( $hoursWorked * $wagePerHour))
}

echo "Welcome to employee wage computation program"
while [[ $workingDays -lt 20 && $workingHours -lt 100 ]]
do
	isPresent=$(($RANDOM%3))
	hours=$( getWorkingHours $isPresent )
	workingHours=$(($workingHours+$hours))
	((workingDays++))
	wages[$workingDays]=$( calculateWages $hours)
	monthsWage=$((${wages[$workingDays]}+$monthsWage)) 
done
echo $monthsWage
echo ${!wages[@]}
echo ${wages[@]}