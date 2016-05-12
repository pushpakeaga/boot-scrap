#!/bin/sh
array=( zero one two three four five six )
ELEMENTS=${#array[@]}
for ((i=0;i<ELEMENTS;i++));
do 
echo ${array[${i}]}
done
