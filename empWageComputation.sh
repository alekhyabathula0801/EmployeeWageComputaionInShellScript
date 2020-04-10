#!/bin/bash
echo Welcome to employee wage computation program
present=1
absent=0
case $((RANDOM%2)) in
$present)
	echo employee is present
;;
$absent)
	echo employee is absent
;;
esac
