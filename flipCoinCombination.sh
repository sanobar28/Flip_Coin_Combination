#! /bin/bash

declare -A percentage
declare -A flipcoin
count=1
HEADS=0
TAILS=0
max=10
while [[ $count -le $max ]]
do
   flip=$((RANDOM%2))
   
   if [ $flip -eq 1 ]
   then
      ((HEADS++))
   else
      ((TAILS++))
   fi
   flipcoin["$count"]=$flip
   ((count++))
done
echo "FLIPCOUNT-"$count
echo "HEADS Percentage -"$(($HEADS*10))
echo "TAILS Percentage -"$(($TAILS*10))
echo "flipcoin output "${flipcoin[@]}
percentage[H]=$(($HEADS*10))
percentage[T]=$(($TAILS*10))
echo "percentage output "${percentage[@]}
