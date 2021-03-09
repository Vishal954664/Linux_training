#!/bin/bash
clear
read x y z l
a=addLineTop
b=addLineBottom
c=addLineAt
d=ReplaceWord
e=delteLine
if [ $x == $a ]
then 
 echo $z | cat - $y | tee $y
elif [ $x == $b ]
 then 
   echo $z >> $y
elif [ $x == $c ]
 then 
 sed -i "${z}i${z} ${l}" $y
elif [ $x == $d ]
then 
 sed "s/${y}/${z}/" $l
elif [ $x == $e ] 
then 
 sed "${z}d" $y
 
fi

  
