## Assignment solution for day 1
**BOOT PROCESS**

*Step 1* **BIOS POST**
This is the hardware portion of the boot process and is the same for any operating system. When power is first applied to the computer it runs the POST (Power On Self Test) which is part of the BIOS (Basic I/O System). 
*POST* is the part of BIOS whose task is to ensure that the computer hardware functioned correctly.
*BIOS POST* checks the basic operability of the hardware and then it issues a BIOS interrupt,  which locates the boot sectors on any attached bootable devices. The first boot sector it finds that contains a valid boot record is loaded into Memory(RAM) and control is then transferred to the code that was loaded from the boot sector.
BIOS interrupt calls are a facility that operating systems and applications use to take basic hardware controls

**STEP2*** **BOOT Loader** 

*Boot Loader* is program which helps the computer to find the OS kernel and load it into memory .
In case of linux system there are multiple bootloaders avilable likeGRUB (GRand Unified Bootloader),LILO (Linux Loader),SYSLINUX
Currently **GRUB** is the the most widely used in linux distributions 
AS *Grub* supports both bios and UEFI(It stands for United Extensible Firmware Interface. It does the same job as bIOS but it stores all data about intialization and startup in .efi file instead of storing it in the firmwareand advantages like supports large drive size ,boot time is faster )
and all popular linux file system .LILO laked support of dual boot and didn't Support UEFI


**STEP 3 ** **KERNEL**

*KERNEL* is responsible for interaction between the hardware and Os and services deployed over it.
After the selected kernel is loaded into memory and begins executing, it must first extract itself from the compressed version of the file before it can perform any useful work. Once the kernel has extracted itself, it loads systemd.

**STEP 4 ** **Systemd**

It mounts the file system and starts the services on the device


--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Linux Basic Commands that I executed ** 

**ls**

list the content of the directory.
*ls -l*   Displays long list and also the file size permissions and edit time 
*ls -a*   shows hidden file and directory 

**pwd** 

Prints the working directory that is the current directory location 

**Cd** 

Change directory helps to change our working directory similar to cmd in windows

**rm**

followed by name of file or directory or address deltes the file/directory 

**clear** 
to clean up the terminal 

**mkdir** 

to create a directory 

**touch**

to create a file and even tried touch --help and found the extensive command for the same one of them .touch for creating a hidden file.

**su** 

gave me admin privilaged was able to run few adminstrative commands such as *sudo poweroff* in some cases password and sudo prefix was required 

**cp**

for copying files cp - r copying a directory 

**cat** 

It is displayed the output of the text file in the terminal 
*cat > vishal.txt * created a file named  vishal 

cat sagar.txt vishal.txt>vk.txt merged the text in the files

**locate** 

found it similar search in windows and find was also similar it was returning the contents just from the current directory


**Head and tail **

displayed the first few line of txt file while tail displayed last few lines 

**df** 
displayed toatal disk used by virtual machine 

**uname** 

printed my virtual box details with kernel 

**useradd**

for adding new users required su command 

--------------------------------------------------------------------------------------------------------------------------------------------------------







