# Linux_training
contains readme text file file with basic theory and command about linux os
directory :- In my terms can be defined as file(or array) which stores the address of other files stored and linked with it.

File Directory :- Directory in linux are arranged in conventional tree structure as it starts with root and then further branches
which is similar to tree which follows node root approach.

root node contains all the directory/files required to boot the system all the other directory are sub-folders of root as in a coventional tree .
/bin -contains the excecutable files \
/boot- contains boot loader and kernel executable 
/dev -contains files related to the hardware devices attached to the computer
/lib- shared library files (acessible to all users )are required for booting of system.
/media - externally connected storage devices are displayed
/mnt -
/opt - Optional files such as externally installed application are located
/root-It is home directory for root user 
/sbin -System binary files > used for System admnistation
/tmp-Temporary directory by defination are to used by operating systm and temprory files of 
appliactions installed over the system. Even I tried storing files here but were automatically
deleted after reboot
/usr -These are shareable, read-only files, including executable binaries and libraries, man files, and other types of documentation.
/var - Variable data files >like databases file 
/home - Is some what like storage point for users 

----------------------------------------------------------------------------------------------------------------------------------------------------------------
Architecture of Linux os - 
Os - Set of programs which acts as mediator between human and machine 
System Library ,kernel , shell 
System library - It is a program or function using which applications installed interact with the kernel (??. kernel module acess code)
Kernel - It is an important part of os which is responsible for interaction between the hardware and os .It performs device management ,Memory management,
Security (by Authentication , Authority , Encryption) .



Shell _ It is an ApI which connects the terminal for I/O operations with the kernel.

----------------------------------------------------------------------------------------------------------------------------------------------------------------
Boot process -
BIOS -Basic I/O searches and loads  bootloader
MBR - (Master boot record) - executes bootloader GRUB in case of Linux 
GRUB (Grand Unified Bootloader ) executes kernel can be found in /boot dir 
kernel _ executes sbin/init assembly label codes which interacts with hardware 
RunLevel - Runlevel programs are executed from etc/rc/rc.d/rc*.d/

................................................................................................................................................................




