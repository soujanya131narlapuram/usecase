#!/bin/bash -x

present=1
randomCheck=$((RANDOM%2))
if (($present==$randomCheck))
then
  echo "employee is present"
else
 echo "employee is absent"
fi
