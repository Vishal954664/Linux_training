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
