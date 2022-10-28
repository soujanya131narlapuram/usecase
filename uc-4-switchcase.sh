#!/bin/bash -x

isPartTime=1
isFullTime=2
emprateperhrs=20
randomcheck=$((RANDOM%3))

case $randomcheck in
                       $isPartTime )
                              emphrs=4
                        ;;
                        $isFullTime )
                               emphrs=8
                        ;;
                        *)
                                emphrs=0
                        ;;
esac
 
salary=$(($emphrs*$emprateperhrs))
