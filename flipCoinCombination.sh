#! /bin/bash
for (( count=0; count<50; count++ ))
do
	flip=$(( RANDOM%2 ))
	if [ $flip -eq 1 ]
	then
		echo "Heads"
	else
		echo "Tails"
	fi
done


