#!/bin/bash -x

declare -A result
monthKey=0
for (( counter=0; counter<=50; counter++ ))
do
	monthKey=$((RANDOM%12+1))
	result[$monthKey]=$((${result[$monthKey]}+1))
done
echo "Month of persons birth :" ${!result[@]}
echo "BirthDate in that month:" ${result[@]}

