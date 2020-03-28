#!/bin/bash -x

echo "Welcome to employee wage computation program"

isPresent=$(($RANDOM%2))

if [ $isPresent -eq 1 ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi