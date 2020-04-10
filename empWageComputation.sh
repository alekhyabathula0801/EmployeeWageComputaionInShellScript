#!/bin/bash -x
echo Welcome to employee wage computation program
partTime=2
present=1
absent=0
empRatePerHr=20
numWorkingDay=20
totalSalary=0
for (( day=1; day<=$numWorkingDay; day++ ))
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
	salary=$(($empHr*$empRatePerHr))
	totalSalary=$(($totalSalary + $salary ))
done
