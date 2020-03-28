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

function calculateWages() {
	declare -r wagePerHour=20
	echo $(( $1 * $wagePerHour))
}
echo "Welcome to employee wage computation program"
declare -A wages
monthsWage=0
workingDays=0
workingHours=0
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