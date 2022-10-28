#!/bin/bash 

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20
maxRateInMonth=10

totalEmphr=0
totalWorkingDays=0

while [ $totalEmphr -lt $maxRateInMonth -a $totalWorkingDays -lt $numOfWorkingDays ]
do  
      ((totalWorkingDays++))
        randomCheck=$((RANDOM%3))
       case $randomCheck in 
                           $isPartTime )
                              empHrs=4
                            ;;
                            $isFullTime )
                               empHrs=8
                             ;;
                             * )
                               empHrs=0
                             ;;
  esac
  totalEmpHr=$(( $totalEmpHr+$empHrs ))
done
totalSalary=$(( $totalEmpHr*$empRatePerHr ))
echo "Total salary is $totalSalary"
