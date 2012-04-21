
#Sys

##Description
This unit contains the predefined subprograms that deal with the operating system directly (getting the process id, getting run time arguments and executing commands in the operating system, etc.).
All routines in the **Sys** unit are exported qualified (and thus must be prefaced with "**Sys.**").



##Entry Points
[sys_getcomputername.html](**GetComputerName**) Gets the name of the computer.[sys_getenv.html](**GetEnv**) Gets a string associated with an environment variable.[sys_getpid.html](**GetPid**) Gets the current process ID for Turing.[sys_getusername.html](**GetUserName**) Gets the name of the user currently logged on.[sys_exec.html](**Exec**) Executes a program or opens a data file using the operating system.[sys_nargs.html](**Nargs**) Gets the number of run time arguments (exported unqualified).[sys_fetcharg.html](**FetchArg**) Gets a specified run time argument (exported unqualified).


