#!/bin/bash -x
#constants for the program
partTime=2
fullTime=1
absent=0
empRatePerHr=20
numWorkingDays=20
maxWorkingHrs=100
#variables
totalEmpHr=0
totalWorkingDays=0
function getWorkingHrs(){
    case $1 in
        $fullTime)
                empHr=8
                ;;
        $absent)
                empHr=0
                ;;
        $partTime)
                empHr=4
                ;;
    esac
	echo $empHr
}
function calDailyWage(){
	local empHrs=$1
	wage=$(($empHrs*$empRatePerHr))
	echo $wage
}
while [ $totalWorkingDays -lt $numWorkingDays -a $totalEmpHr -lt $maxWorkingHrs ]
do
	empHr="$( getWorkingHrs $((RANDOM%3)) )"
	totalEmpHr=$(($totalEmpHr + $empHr ))
	((totalWorkingDays++))
	empDailyWage[$totalWorkingDays]="$(calDailyWage $empHr)"
done
totalSalary=$(($totalEmpHr*$empRatePerHr ))
echo Daily wage ${empDailyWage[@]}
echo "All Keys " ${!empDailyWage[@]}
