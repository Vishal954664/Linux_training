#!/bin/bash
read x y z s
a=addTeam
b=addUser
if [ $a == $x ]
then
sudo groupadd $y
elif [ $b == $x ]
then
sudo usermod -a -G $z $s
else 
echo"wrong Input"
fi

