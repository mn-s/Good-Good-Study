#!/bin/bash
#Program:
#	User inputs 2 integer numbers:program will cross these two numbers.	
#History:
#2017/06/19 Quanyin qytang326@gmail.com v0.1
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin 
export PATH

echo -e "Your SHOULD input 2 integer numbers, I will multiplying them!\n"
read -p "First number: " firstnu
read -p "second number:" secnu
total=$((${firstnu}*${secnu}))
echo -e "\nThe result of ${firstnu}x${secnu} is ==>${total}"
exit 0
