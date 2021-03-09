#!/bin/bash
clear
read x y z
d=cpu
c=memory
a=topprocess
ab=RunningDurationProcess
ac=listOrphanProcess
ad=listZombieProcess
ae=killProcess
af=ListWaitingProcess

if [ $x == $a  ]
then
   if [ $z == $d ]
   then
      ps aux | sort -nrk 3,3 | head -n $y
     fi
   if [ $z == $c ]
    then
      ps aux --sort -rss | head -n $y
     fi
    
elif [ $x == $ab  ]
then
 ps -p $y -o etime
elif [ $x == $ac  ]
then
 ps -elf | head -1; ps -elf | awk '{if ($5 == 1 && $3 != "root") {print $0}}' | head
elif [ $x == $ad  ]
then
 ps aux | grep 'Z'
elif [ $x == $ae  ]
then 
 ps -ef | grep $y
elif [ $x == $af ]
then 
 top -i
else
 echo "wrong input"


fi
