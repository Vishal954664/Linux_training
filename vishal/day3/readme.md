#import data from excel to dictonary by iterating through rows and colums 


dict temp = {'Appname':'appnametext','LatencyType':'cold/warm','Actualtime':'112ms','Device':Device'}


frame a multminsional array for respective rows and columns


 run a loop to iterate rowiswe 


  running the plot function using a plot libirary



--------------------------------------------------------------------------------------------------------------------------------------
# Operators in linux shell



** semicolon(;) **

We can put two or more commands on the same line separated by a semicolon(;) 


** ampersand (&) **

When a line ends with an ampersand & the shell will not wait for the command to finish.


** dollar question mark ($?) **

The exit code of the previous command is stored in the shell variable $?. Actually $? is a shell parameter and not a variable since we cannot assign a value to $?.


** double ampersand (&&) ** 

We can use this as logical and operator.


** double vertical bar (||) **

We can use this a logical OR operator.


** pound sign (#) ** 

Used to comment in shell 

** escaping special characters (\)** 


The backslash \ character enables the use of control characters, but without the shell interpreting it, this is called escaping characters.



---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


## Redirectional operator 


**Output Redirection**


The '>' symbol is used for output redirection.

> vishal@vishal-VirtualBox:~$ ls > read.txt



> vishal@vishal-VirtualBox:~$ cat read.txt


> Desktop
Documents
Downloads
Linux_training
Music
Pictures
projecttest
Public
read.txt
vishal
snap
Templates
Videos
vishal
vishal.txt


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


**Input Redirection**


The '<' symbol is used for input redirection .We can Take input from devices other stdinput that is keyboard or mouse instead of that we can use a file as an input in terminal.


**File Globaling**

This is used for sorting files by name or alphabetical order or extensions it can be done by using "*" and "??" syntaxt with list operartor

**History**


This is used to display the last comments & commands used by user after the bootup 


**Shell Varibles**


It is used to store data of various data data type at an micro label the variables basically store the address of the stack location where the data is stored in the memory .
$ is used for addressing them after they are decleared .


_______________________________________________________________________________________________________________________________________________________________________________________________________________________


## Vim Editor 

This works as text editor as custom editors are not available in light weight linux server .


we can edit files by opening it for opening we just need to type vim followed by a file name  vim vishal.html


when we enter editor is in command and has following commands for performing operation : -]


* 1 **(insert mode )** i  can be entered in command to set the editor in insert mode once insert mode is acivated we can nagivate to the line and enter the text . 
* 2  **(delete line)** dd can be entered in cmd mode to set the editor in delete a line  and it deletes the line cursor is pointing. multiple lines can be also deleted using 3dd i.e number of lines followed by dd .
* 3  **(Undo & Redo ) U in cmd mode for undo and ctrl +R for Redo.
* 4  **(Seraching) forward / can be used in cmd mode followed by the string to be searched 
* 5  **(Search and Replace ) :%S/string to replaced /string to be used as replacement 
* 6  **(to save/write the data)** :w to write the data 
* 7  **(to save and quit)**  :wq  in command mode 
* 8  **(to quit without saving)**: in command mode :q!   
 
 ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
### Cut Command 


Cut command in linux is linux is used for cutting a section of a file by byte position , character, field in linux and it displays them over the terminal 


**-b(byte)** 


-b is used for by cuting the byte -b is followed by byte positions to be cut multiple positions can be specified by separating them by , .

vishal@vishal-VirtualBox:~$ cut -b 1,2,3 name.txt


Vis


joh


Sag


Adi


vishal@vishal-VirtualBox:~$ cat name.txt


Vishal Kumar


john mathew 


Sagar Mahato 


Aditya Raj


ishal@vishal-VirtualBox:~$ cut -b 1- name.txt


Vishal Kumar


john mathew 


Sagar Mahato 


Aditya Raj


vishal@vishal-VirtualBox:~$ cut -b 2- name.txt
ishal Kumar


ohn mathew 


agar Mahato 


ditya Raj

we can cut even from starting of the byte position to end of line using - indication after or before byte place indicating numeral.


cut by character is also similar -c can be used as option 

ishal@vishal-VirtualBox:~$ cut -c 2,5,7 name.txt


ia 


o a


arM


dy 


vishal@vishal-VirtualBox:~$ cut -c 1-3 name.txt


Vis


joh


Sag


Adi


vishal@vishal-VirtualBox:~$ cut -c 1- name.txt


Vishal Kumar


john mathew 


Sagar Mahato 


Aditya Raj


vishal@vishal-VirtualBox:~$ cut -c -4 name.txt


Vish


john


Saga


Adit


vishal@vishal-VirtualBox:~$ cut -d " " -f 1 name.txt


Vishal


john


Sagar


Aditya

-f is used to cut fileds while with combination of -d is used as delimeter with it and charater/filed by which file is to cut is also specified .


vishal@vishal-VirtualBox:~$ cut -d " " -f 2 name.txt


Kumar


mathew


Mahato


Raj



----------------------------------------------------------------------------------------------------------------------
### Find Command 

It is commad in linux to locate files folder it can search files by name ,creation date ,modification date and by user in mutiple user platform . 


vishal@vishal-VirtualBox:~$ find -name vishal.txt


./vishal.txt



vishal@vishal-VirtualBox:~$ find Linux_training -name hello.txt
Linux_training/hello.txt



vishal@vishal-VirtualBox:~$ find Linux_training/vishal -name day3


Linux_training/vishal/day3


####### Find and remove operation can be also executed 

vishal@vishal-VirtualBox:~$ find Linux_training -name hello.txt -exec rm -i {} \;


rm: remove regular file 'Linux_training/hello.txt'? y

------------------------------------------------------------------------------------------------------
## Tr commad 

It helps in transformation of characters from upper case to lower case and vice versa ,squeezing repeating characters delete specific character and basic find and replace .


vishal@vishal-VirtualBox:~$ cat test.txt


HII THIS IS VISHAL vishal


vishal@vishal-VirtualBox:~$ cat test.txt | tr "[:upper:]" "[:lower:]"


hii this is vishal



-------------------------------------------------------------------------------------------------------
## tac commad 


Tac commad in linux to add String (concatenate) and print files in reverse . Last line will 
be Printed first on Terminal .


------------------------------------------------------------------------------------------------------------------
### awk 
 
 
 

Awk is a Scripting language used in linux shell it is used for searching patterns and string 
and it returns matching pattern from the files .



--------------------------------------------------------------------------------------------------------------
##SED 


Sed is used for text substitution and delteion it can search within the range .



----------------------------------------------------------------------------------------------------------------------------------

### Grep 

Grep is used a filter to find the matching text in the files .



____________________________________________________________________________________________________________















