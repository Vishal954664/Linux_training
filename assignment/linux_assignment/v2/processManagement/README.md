1) Create a process management utility, to find
- Top n process by memory
- Top n process by cpu
- Kill process having least priority 
- running duration of a process by name or pid
- List orphan process if any
- List zoombie process if any
- Kill process by name or pid
- List process that are waiting for the resources
```
i.e.
./ otProcessManager topProcess 5 memory
./ otProcessManager topProcess 10 cpu
./ otProcessManager killLeastPriorityProcess 
./ otProcessManager RunningDurationProcess <processName>/<processID>
./ otProcessManager listOrphanProcess
./ otProcessManager listZoombieProcess
./ otProcessManager killProcess <processName>/<processID>
./ otProcessManager ListWaitingProcess
```
2) Create a utility that will create the service for any shell script 
Input:
- It should input the script path along with the parameters required to start script (if any)
- It should input the serivce name
Output:
- A service for script that can be start/stop like a daemon
- It should return the pid of that process as well along with memory and cpu consumption stored in a file (Good to do if you can persist the historical data of resource consumption for that process)
```
i.e.
./ otCreateService scriptPath ServiceName 
```
3) Let's play around with process:
- clear a log file of running process
- delete a log file of running process and see what happens to process
- elevate the priority of a process
