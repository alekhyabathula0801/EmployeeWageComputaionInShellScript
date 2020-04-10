#!/bin/bash -x
echo Welcome to employee wage computation program
present=1
absent=0
empRatePerHr=20
case $((RANDOM%2)) in
$present)
	echo employee is present
	empHr=8
;;
$absent)
	echo employee is absent
	empHr=0
;;
esac
salary=$(($empHr*$empRatePerHr))
