There are 5 basics types in operators:-
1. Arithemetic operatos
2. relational operators
3. bolean operators
4. bitwise operatos
5. file test operators


*1. Arithmetic operators:- These operators are used to perform normal arithmetic/mathematical
	operators. There are 7 arithmetic operators:-
	** Addition(+): used to add two operands
	**Subtraction(-):- used to subtract two operands
	**Multiplication(*):- used to multiply two operands
	**Division(/):- used to divide two operands
	**modulus(%):- used to find remainder of two operands.
	**increment operator(++):- used to increase the value of operand by one
	**decrement operator(--):- used to decrease the value of a operand by one
	
	read - p 'Enter a : ' a
		p 'Enter b : ' b

*add
= $((a+b))
echo Addition of a and n are $add

*sub
= $((a-b))
echo Subtraction of a and b are $sub

mul
= $((a*b))
echo Multiplication of a and b are $mul

div 
= $((a / b)) 
echo division of a and b are $div

mod 
= $((a % b)) 
echo Modulus of a and b are $mod 
  
echo Increment    
((++a)) 
operator when applied on "a" results into a = $a 
  
echo Decrement     
((--b))           
operator when applied on "b" results into b = $b  







**2. Relational operators:- Relational operators are those operators which defines the relation between two operands. 
They give either true or false depending upon the relation.

		Enter a = a
		Enter b = b
 They are of 6 types:
 **‘==’ Operator : Double equal to operator compares the two operands. Its returns true if they are equal otherwise returns false.
	if(( $a==$b )) 
then
    echo a is equal to b. 
else
    echo a is not equal to b. 

**‘!=’ Operator : Not Equal to operator return true if the two operands are not equal otherwise it returns false.
if(( $a!=$b )) 
then
    echo a is not equal to b. 
else
    echo a is equal to b. 

**‘<' Operator : Less than operator returns true if first operand is lees than second operand otherwise returns false.
if(( $a<$b )) 
then
    echo a is less than b. 
else
    echo a is not less than b. 

‘>’ Operator : Greater than operator return true if the first operand is greater than the second operand otherwise return false.
if(( $a>$b )) 
then
    echo a is greater than b. 
else
    echo a is not greater than b. 



‘<=' Operator : Less than or equal to operator returns true if first operand is less than or equal to second operand otherwise returns false
if(( $a<=$b )) 
then
    echo a is less than or equal to b. 
else
    echo a is not less than or equal to b. 

‘>=’ Operator : Greater than or equal to operator returns true if first operand is greater than or equal to second operand otherwise returns false
if(( $a>=$b )) 
then
    echo a is greater than or equal to b. 
else
    echo a is not greater than or equal to b. 



**3. Logical Operators : They are also known as boolean operators. 
These are used to perform logical operations. 
They are of 3 types:
		Enter a = a;
		Enter b = b;
Logical AND (&&) : This is a binary operator, which returns true if both the operands are true otherwise returns false.
if(($a == "true" & $b == "true" )) 
then
    echo Both are true. 
else
    echo Both are not true. 
Logical OR (||) : This is a binary operator, which returns true is either of the operand is true or both the operands are true and returns false if none of then is false.
if(($a == "true" || $b == "true" )) 
then
    echo Atleast one of them is true. 
else
    echo None of them is true. 
Not Equal to (!) : This is a uninary operator which returns true if the operand is false and returns false if the operand is true.
if(( ! $a == "true"  )) 
then
    echo "a" was false. 
else
     echo "a" was true. 



**4. Bitwise Operators : A bitwise operator is an operator used to perform bitwise operations on bit patterns.
They are of 6 types:
Enter a = a
Enter b = b
Bitwise And (&) : Bitwise & operator performs binary AND operation bit by bit on the operands.
bitwiseAND=$(( a&b )) 
echo Bitwise AND of a and b is $bitwiseAND 

Bitwise OR (|) : Bitwise | operator performs binary OR operation bit by bit on the operands.
bitwiseOR=$(( a|b )) 
echo Bitwise OR of a and b is $bitwiseOR

Bitwise XOR (^) : Bitwise ^ operator performs binary XOR operation bit by bit on the operands.
bitwiseXOR=$(( a^b )) 
echo Bitwise XOR of a and b is $bitwiseXOR 

Bitwise compliment (~) : Bitwise ~ operator performs binary NOT operation bit by bit on the operand.
bitiwiseComplement=$(( ~a )) 
echo Bitwise Compliment of a is $bitiwiseComplement

Left Shift (<<) : This operator shifts the bits of the left operand to left by number of times specified by right operand.
  leftshift=$(( a<<1 )) 
echo Left Shift of a is $leftshift 

Right Shift (>>) : This operator shifts the bits of the left operand to right by number of times specified by right operand.
rightshift=$(( b>>1 )) 
echo Right Shift of b is $rightshift 



5. File Test Operator : These operators are used to test a particular property of a file



Shall variable:- it is a variable same as an other programming languages whuich is used to store the data with in use rhe terminal
	my name = sagar 
	echo$ myname 
	 o/p- sagar


shell history:- history is a command that displays the previous commands executed in the terminal as output.


file globbing:-  it is a arranging/sorting of files by there name or alphabatical order. 
	* ? a than b

redirection operators:- it is used to redirect the output or input from the shell.
	







Vi- Vi stands for Visual.
vi is a screen-oriented text editor originally created for the Unix operating system. The portable subset of the behavior of vi and programs based on it, and the ex editor language supported within these programs, is described by the Single Unix Specification and POSIX.
VI Editing commands

•	i - Insert at cursor (goes into insert mode)

•	a - Write after cursor (goes into insert mode)

•	A - Write at the end of line (goes into insert mode)

•	ESC - Terminate insert mode

•	u - Undo last change

•	U - Undo all changes to the entire line

•	o - Open a new line (goes into insert mode)

•	dd - Delete line

•	3dd - Delete 3 lines.

•	D - Delete contents of line after the cursor

•	C - Delete contents of a line after the cursor and insert new text. Press ESC key to end insertion.

•	dw - Delete word

•	4dw - Delete 4 words

•	cw - Change word

•	x - Delete character at the cursor

•	r - Replace character

•	R - Overwrite characters from cursor onward

•	s - Substitute one character under cursor continue to insert

•	S - Substitute entire line and begin to insert at the beginning of the line

•	~ - Change case of individual character
Summary:

•	The vi editor is the most popular and commonly used Unix text editor

•	It is usually available in all Linux Distributions.

•	It works in two modes, Command and Insert

•	Command mode takes the user commands, and the Insert mode is for editing text

•	You should know the commands to work on your file easily

•	Learning to use this editor can benefit you in crea




Vim(Vi Improved)  is a highly configurable text editor built to enable efficient text editing. It is an improved version of the vi editor distributed with most UNIX systems. Vim is often called a "programmer's editor," and so useful for programming that many consider it an entire IDE .
*vim - Vi IMproved, a programmers text editor.

Difference between vi and vim
Vi stands for Visual. It is a text editor that is an early attempt to a visual text editor. Vim stands for Vi IMproved. It is an implementation of the Vi standard with many additions.


Commands:
Find:-  It can be used to find files and directories and perform subsequent operations on them.
	Ex.- $ find ./GFG -name sample.txt 
Cut:- The cut command in UNIX is a command for cutting out the sections from each line of files and writing the result to standard output. It can be used to cut parts of a line by byte position, character and field
	Syntax:
cut OPTION... [FILE]...

tac:- tac command in Linux is used to concatenate and print files in reverse. This command will write each FILE to standard output, the last line first. When no file is specified then this command will read the standard input.
Syntax:- tac [OPTION]... [FILE]...

**Pushd and popd:- pushd and popd are commands that allow you to work with directory stack and change the current working directory in Linux and other Unix-like operating systems.
The directory stack is a list of directories you have previously navigated to. The contents of the directory stack can be seen using the dirs command. Directories are added to the stack when changing to a directory using the pushd command and removed with the popd command.

The syntax for the pushd command is as follows:
pushd [OPTIONS] [DIRECTORY]

popd [OPTIONS]


Difference:- The first time pushd dir is called, pushd pushes the current directory onto the stack, then cds to dir and pushes it onto the stack. Subsequent calls to pushd dir cd to dir and push dir only onto the stack. popd removes the top directory off the stack, revealing a new top. Then it cds to the new top directory.

**echo:- echo command in linux is used to display line of text/string that are passed as an argument . This is a built in command that is mostly used in shell scripts and batch files to output status text to the screen or a file.
	Syntax- echo [option] [string]
Options of echo command
	echo -e "my  \bname \bis \bsagar"
	output- my


	 \b : it removes all the spaces in between the text
	echo -e "my  \bname \bis \bsagar"
	output- mynameissagar


	 \n : this option creates new line from where it is used.
	
	 echo -e "my \nname \nis \nsagar"
	output-my
		name
		is
		sagar


	 \t : this option is used to create horizontal tab spaces.
Example :
	echo -e "Geeks \tfor \tGeeks"
	output- geeks		for 		geeks


	\r : carriage return with backspace interpretor ‘-e‘ to have specified carriage return in output.
Example :
	echo -e "Geeks \rfor Geeks"
	output- for Geeks


	 \v : this option is used to create vertical tab spaces.
Example :
	echo -e "Geeks \vfor \vGeeks
	geeks
		for
			geeks


	echo * : this command will print all files/folders, similar to ls command .
Example :
	echo *




 -n : this option is used to omit echoing trailing newline .
Example :
	echo -n "Geeks for Geeks"



locate:- locate command in Linux is used to find the files by name

•	

whoami 
effective user ID
As its name suggests, the whoami command prints the user name of the effective user ID. In other words, it displays the name of the currently logged-in user.


Uptime:-  It is used to find out how long the system is active (running). This command returns set of values that involve, the current time, and the amount of time system is in running state, number of users currently logged into, and the load time for the past 1, 5 and 15 minutes respectively.

Whereis:- whereis command is used to find the location of source/binary file of a command and manuals sections for a specified file in Linux system.
	
	Comparison between whereis and find command:-
	 If we compare whereis command with find command they will appear similar to each other as both can be used for the same purposes but whereis command produces the result more accurately by consuming less time comparatively.

Syntax:
whereis [options] filename...





