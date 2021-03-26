Q. How would you check
    1.Memory used by a process(RAM)
	Ans:You can use the ps command to check memory usage of all the processes on Linux. 
	    There is one problem with this procedure.
	     ps don’t really show you how much memory a process uses in KB or MB format, 
		but it will show you how much memory is being used in percentage.

	we can check memory usage :- $ ps -o pid,user,%mem,command ax | sort -b -k3 -r

     2. total number of open files by a process
         Ans: find open files limit per process: ulimit -n
	      count all opened files by all processes: lsof | wc -l
              get maximum allowed number of open files: cat /proc/sys/fs/file-max


    3. running duration of a process
	Ans: $ ps -ef | grep java


Q. What is file descriptor?
Ans:- In Unix and related computer operating systems, 
	a file descriptor (FD, less frequently fildes) is an abstract indicator (handle) used to access a file or other input/output resource, 
	such as a pipe or network socket.


Q. How to kill a process
   Ans:- In Unix and Unix-like operating systems, kill is a command used to send a signal to a process.
	 By default, the message sent is the termination signal, which requests that the process exit.
	 But kill is something of a misnomer; the signal sent may have nothing to do with process killing.

	forcefully:-  If we want to terminate the process forcibly, we can use “SIGKILL” instead.
		      The Linux kernel maintains some information related to the state of a process.
	
	gracefully:- all the process killing commands use “SIGTERM”, which allows the program to run some code before it exits, 
		thus allowing it to terminate “gracefully”. 


Q. What are the signals?
   Ans:- A signal is an event generated by the UNIX and Linux systems in response to some condition. 
	Upon receipt of a signal, a process may take action.

	A signal is just like an interrupt; when it is generated at the user level, 
	a call is made to the kernel of the OS, which then acts accordingly.

	Signal Lists:-
	Signhup:- Hang-up detected on controlling terminal or death of controlling process.
	SIGINT	Issued if the user sends an interrupt signal (Ctrl + C).
	SIGQUIT	Issued if the user sends a quit signal (Ctrl + D).
	SIGFPE	Issued if an illegal mathematical operation is attempted.
	SIGKILL	If a process gets this signal, it must quit immediately and will not perform any clean-up operations.
	SIGTERM	Software termination signal (sent kill by default).
	SIGALRM	Alarm clock signal (used for timers).


Q. What is parent process ID?
	Ans:- In addition to a unique process ID, each process is assigned a parent process ID (PPID) that tells which process started it.
	 The PPID is the PID of the process's parent.
	A single parent process may spawn several child processes, each with a unique PID but all sharing the same PPID.

	Coomand:- $PPID is defined by the shell, it's the PID of the parent process.
	in /proc/ ,  some dirs with the PID of each processes. Then, if you cat /proc/$PPID/comm , echo the command name of the PID.


Q. Print pid of current shell in linux?
	Ans: can see the PID of the current shell with echo $$

Q. How to clear a log file of running process.
	Ans:- 






Q. What will happen if you delete a log file of running process
	Ans:- When we delete a file we really remove a link to the file (to the inode). 
	 It will keep blithely writing to the existing file descriptor it has: 
	we'll keep taking up (more) space on disk, but we won't be able to see any of the messages it writes, 
	so we're really in the worst of both worlds.


Q. How do you check all the running process in the system?
	Ans:- The most common way to list processes currently running on your system is to use the command ps (short for process status). 
		This command has a lot of options that come in handy when troubleshooting your system. 
		The most used options with ps are a, u and x.


Q. How do you check those process that are waiting for the resources
	Ans:- The ps command is a traditional Linux command to lists running processes. The following command shows all processes running on your Linux based server or system:
			vivek@nixcraft:~$ ps -aux
			vivek@nixcraft:~$ sudo ps -a
	      





Q.What init process is responsible for?
Ans:- init is the parent of all processes, executed by the kernel during the booting of a system. 
	Its principle role is to create processes from a script stored in the file /etc/inittab.

	Runlevel, a software configuration of the system which allows only a selected group of processes to exist. 
	The processes produced by init for each of these runlevels are defined in the /etc/inittab file.

Functions:- 
0 - To halt the system
1 - To get the system down into single user mode
2 - to get multiuser mode without networking
3 - to get multiuser mode with networking
4 - not used
5 - to get multiuser mode with networking and X windows
6 - to reboot the system
S or s - not used directly





Q. What are Running, Waiting, Stopped and Zombie processes?
Ans:- Linux maintains a process table of all the processes running, along with their states. Let’s briefly overview the various process states:

	Running (R): These processes are currently running or runnable.
	Waiting (S/D): These are the processes that are waiting for an event or a resource. 
	               The wait can either be an interruptible sleep (S) or an uninterruptible sleep (D).
	Stopped (T): We can stop a Linux process by sending an appropriate signal.
	Zombie (Z): When a process finishes its task, it releases the system resources it was using and cleans up its memory.
	            However, its entry from the process table is not removed, and its status is set as EXIT_ZOMBIE.



Q. How do you you elevate the priority of a process?
Ans:- The nice value is how much priority the Linux kernel will grant to each named user;
	 by comparison, the process priority is the actual priority of a running process. 
	The nice value of a process can have a range between -20 (highest priority) to +19 (lowest priority); by default, its value is 0.

Q. What are stdin, stdout, and stderr and how do we use them?
Ans:- In Linux, stdin is the standard input stream. This accepts text as its input.
	 Text output from the command to the shell is delivered via the stdout (standard out) stream. 
	Error messages from the command are sent through the stderr (standard error) stream.

Q. How many tables are there in iptables. What filter and nat table responsible for
Ans:-There are three tables in the kernel that contain sets of rules. 
	The filter table is used for packet filtering. 
	The nat table is used for address translation.
	 The mangle table can be used for special-purpose processing of packets.

	
Q. What are the defualt policies in iptables and What it signifies?
Ans:- The default policy is ACCEPT, change the policy to DROP for all the INPUT, FORWARD, OUTPUT.
	 For every firewall rule, we need to define two rules, i.e., one for In-coming and another for Out-going.
	 If we trust the internal users, we can use the DROP for incoming rules, and the default outgoing will be ACCEPT