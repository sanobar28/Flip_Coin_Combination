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
echo "FLIPCOUNT singlet-"$count
echo "HEADS Percentage -"$(($HEADS*10))
echo "TAILS Percentage -"$(($TAILS*10))
echo "flipcoin output "${flipcoin[@]}
percentage[H]=$(($HEADS*10))
percentage[T]=$(($TAILS*10))
echo "percentage output "${percentage[@]}


declare -A flipcoin
count=1
HH=0
HT=0
TH=0
TT=0
max=10
while [[ $count -le $max ]]
do
   flip1=$((RANDOM%2))
   flip2=$((RANDOM%2))

   if [[ $flip1 -eq 1 && $flip2 -eq 1 ]]
   then
      ((HH++))
   elif [[ $flip1 -eq 0 && $flip2 -eq 0 ]]
   then
      ((TT++))
   elif [[ $flip1 -eq 0 && $flip2 -eq 1 ]]
   then
      ((TH++))
   else
      ((HT++))
fi
   flipcoin["$count"]=$flip1$flip2
   ((count++))
done


echo "FLIPCOUNT doublet -"$count
echo "HH Percentage -"$(($HH*10))
echo "TT Percentage -"$(($TT*10))
echo "HT Percentage -"$(($HT*10))
echo "TH Percentage -"$(($TH*10))
echo "flipcoin output "${flipcoin[@]}
percentage[HH]=$(($HH*10))
percentage[TT]=$(($TT*10))
percentage[HT]=$(($HT*10))
percentage[TH]=$(($TH*10))

echo "percentage output "${percentage[@]}




