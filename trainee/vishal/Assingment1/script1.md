vishal@vishal-VirtualBox:~$ user=$(cat users.txt | awk '{print $1}')


vishal@vishal-VirtualBox:~$ password=$(cat users.txt | awk '{print $3}')


vishal@vishal-VirtualBox:~$ group=$(cat users.txt | awk '{print  $2}')


vishal@vishal-VirtualBox:~$ dir=$(cat users.txt | awk '{print $4}')


vishal@vishal-VirtualBox:~$ shell=$(cat users.txt | awk '{print $5}')


vishal@vishal-VirtualBox:~$ useradd $user -d $dir -p $password -s $shell -g $group


vishal@vishal-VirtualBox:~$ sudo useradd $user -d $dir -p $password -s $shell -g $group


vishal@vishal-VirtualBox:~$ echo $password


sandeep@123


vishal@vishal-VirtualBox:~$ echo $user


sandeep


vishal@vishal-VirtualBox:~$ echo $group


admin


vishal@vishal-VirtualBox:~$ echo $shell


/bin/bash


vishal@vishal-VirtualBox:~$ touch user1.txt


vishal@vishal-VirtualBox:~$ user1=$(cat user1.txt | awk '{print $1}')


vishal@vishal-VirtualBox:~$ pass1=$(cat user1.txt | awk '{print $2}')


vishal@vishal-VirtualBox:~$ group=$(cat user1.txt | awk '{print $3}')


vishal@vishal-VirtualBox:~$ shell1=$(cat user1.txt | awk '{print $4}')


vishal@vishal-VirtualBox:~$ dir1=$(cat user1.txt | awk '{print $5}')


vishal@vishal-VirtualBox:~$ groupadd $group



vishal@vishal-VirtualBox:~$ sudo groupadd $group


vishal@vishal-VirtualBox:~$ sudo useradd $user1 -p $pass1 -g $group -d $shell -s $dir1


vishal@vishal-VirtualBox:~$ echo $pass1


sagar@123


vishal@vishal-VirtualBox:~$ 




