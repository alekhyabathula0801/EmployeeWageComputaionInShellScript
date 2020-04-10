#!/bin/bash -x
echo Welcome to employee wage computation program
partTime=2
present=1
absent=0
empRatePerHr=20
case $((RANDOM%3)) in
$present)
	echo employee is present
	empHr=8
;;
$absent)
	echo employee is absent
	empHr=0
;;
$partTime)
        echo employee is part time
        empHr=4
;;
esac
salary=$(($empHr*$empRatePerHr))
