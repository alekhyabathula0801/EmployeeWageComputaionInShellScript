#!/bin/bash -x
#constants for the program
partTime=2
present=1
absent=0
empRatePerHr=20
numWorkingDays=20
maxWorkingHrs=100
#variables
totalEmpHr=0
totalWorkingDays=0
while [ $totalWorkingDays -lt $numWorkingDays -a $totalEmpHr -lt $maxWorkingHrs ]
do
    case $((RANDOM%3)) in
	$present)
		empHr=8
		;;
	$absent)
		empHr=0
		;;
	$partTime)
        	empHr=4
		;;
    esac
	totalEmpHr=$(($totalEmpHr + $empHr ))
	((totalWorkingDays++))
done
totalSalary=$(($totalEmpHr*$empRatePerHr ))
