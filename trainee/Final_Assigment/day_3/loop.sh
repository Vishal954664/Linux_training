#!/bin/bash
echo Enter the multiplication number required:
read number
d=10
if [ "$d" -gt "$number" ]
then
 for i in 1 2 3 4 5 6 7 8 9 10
do
echo "$number * $i =`expr $number \* $i`"
done
else 
for (( i=0; i<5; ++i)); do
    echo "INDIA"
done

fi

