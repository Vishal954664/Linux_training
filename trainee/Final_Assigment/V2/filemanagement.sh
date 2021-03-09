#!/bin/bash
clear
read x  z g
y="addDir"
k="delete"
m="listFiles"
j="listAll"
l="addFile"
w="addText"
if [ $x == $y ]
then 
 mkdir $z
elif [ $x == $k ]
then 
 rm -r $z
elif [ $x == $m ]
then
 ls -d */ $z
elif [ $x == $j ]
then
 ls 
elif [ $x == $l ]
then
 touch $z
elif [ $x == $w ]
then
 echo "$g" > "$z"
else
 echo "no"
fi
