#!/bin/bash -x
 

ispartime=1
isfulltime=2
emprateperhr=20
randomcheck=$((RANDOM%3))
if (( $ispartime == $randomcheck ))
then
      emphrs=4
elif  (( $isfulltime == $randomcheck ))
then
      emphrs=8
else
      emphrs=0
fi
    salary=$(($emphrs*$emprateperhr))
    echo $salary
