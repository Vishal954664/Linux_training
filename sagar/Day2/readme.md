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
•	ting scripts and editing files.



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

tr:-  tr stands for translate.
	The tr command in UNIX is a command line utility for translating or deleting characters. It supports a range of transformations including uppercase to lowercase, squeezing repeating characters, deleting specific characters and basic find and replace.
Syntax:- $ tr [OPTION] SET1 [SET2]


tac:- tac command in Linux is used to concatenate and print files in reverse. This command will write each FILE to standard output, the last line first. When no file is specified then this command will read the standard input.
Syntax:- tac [OPTION]... [FILE]...

Pushd and popd:- pushd and popd are commands that allow you to work with directory stack and change the current working directory in Linux and other Unix-like operating systems.
The directory stack is a list of directories you have previously navigated to. The contents of the directory stack can be seen using the dirs command. Directories are added to the stack when changing to a directory using the pushd command and removed with the popd command.

The syntax for the pushd command is as follows:
pushd [OPTIONS] [DIRECTORY]

popd [OPTIONS]


Difference:- The first time pushd dir is called, pushd pushes the current directory onto the stack, then cds to dir and pushes it onto the stack. Subsequent calls to pushd dir cd to dir and push dir only onto the stack. popd removes the top directory off the stack, revealing a new top. Then it cds to the new top directory.

echo:- echo command in linux is used to display line of text/string that are passed as an argument . This is a built in command that is mostly used in shell scripts and batch files to output status text to the screen or a file.
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

•	-b, –basename : Match only the base name against the specified patterns, which is the opposite of –wholename.
•	-c, –count : Instead of writing file names on standard output, write the number of matching entries only.
•	-d, –database DBPATH : Replace the default database with DBPATH. DBPATH is a : (colon) separated list of database file names. If more than one –database option is specified, the resulting path is a concatenation of the separate paths. An empty database file name is replaced by the default database. A database file name – refers to the standard input. Note that a database can be read from the standard input only once.
•	-e, –existing : Print only entries that refer to files existing at the time locate is run.
•	-L, –follow : When checking whether files exist (if the –existing option is specified), follow trailing symbolic links. This causes bro ken symbolic links to be omitted from the output. This option is the default behavior. The opposite can be specified using –nofollow.
•	-h, –help : Write a summary of the available options to standard output and exit successfully.
•	-i, –ignore-case : Ignore case distinctions when matching patterns.
•	-l, –limit, -n LIMIT : Exit successfully after finding LIMIT entries. If the –count option is specified, the resulting count is also limited to LIMIT.
•	-m, –mmap : Ignored, but included for compatibility with BSD and GNU locate.
•	-P, –nofollow, -H : When checking whether files exist (if the –existing option is specified), do not follow trailing symbolic links. This causes broken symbolic links to be reported like other files.
This option is the opposite of –follow.
•	-0, –null : Separate the entries on output using the ASCII NUL character instead of writing each entry on a separate line. This option is designed for interoperability with the –null option of GNU xargs.
•	-S, –statistics : Write statistics about each read database to standard output instead of searching for files and exit successfully.
•	-q, –quiet : Write no messages about errors encountered while reading and processing databases.
•	-r, –regexp REGEXP : Search for a basic regexp REGEXP. No PATTERNs are allowed if this option is used, but this option can be specified multiple times.
•	–regex : Interpret all PATTERNs as extended regexps.
•	-s, –stdio : Ignored, for compatibility with BSD and GNU locate.
•	-V, –version : Write information about the version and license of locate on standard output and exit successfully.
•	-w, –wholename : Match only the whole path name against the specified patterns. This option is the default behavior. The opposite can be specified using –basename.

 

whoami 
effective user ID
As its name suggests, the whoami command prints the user name of the effective user ID. In other words, it displays the name of the currently logged-in user.


Uptime:-  It is used to find out how long the system is active (running). This command returns set of values that involve, the current time, and the amount of time system is in running state, number of users currently logged into, and the load time for the past 1, 5 and 15 minutes respectively.

Whereis:- whereis command is used to find the location of source/binary file of a command and manuals sections for a specified file in Linux system.
	
	Comparison between whereis and fine command:-
	 If we compare whereis command with find command they will appear similar to each other as both can be used for the same purposes but whereis command produces the result more accurately by consuming less time comparatively.

Syntax:
whereis [options] filename...





