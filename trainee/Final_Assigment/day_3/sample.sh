#!/bin/bash
clear
read a b c d e
result=$(($a + $b + $c + $d + $e))
echo $a
echo $e
echo $result
if [ $b == 10 ]
then 
echo "INDIA"
else 
echo "india"
fi 
