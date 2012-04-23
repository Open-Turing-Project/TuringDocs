
# Sys

## Description
This unit contains the predefined subprograms that deal with the operating system directly (getting the process id, getting run time arguments and executing commands in the operating system, etc.).

All routines in the **Sys** unit are exported qualified (and thus must be prefaced with "**Sys.**").


## Entry Points

[**GetComputerName**](sys_getcomputername.html)   Gets the name of the computer.
[**GetEnv**](sys_getenv.html)   Gets a string associated with an environment variable.
[**GetPid**](sys_getpid.html)   Gets the current process ID for Turing.
[**GetUserName**](sys_getusername.html)   Gets the name of the user currently logged on.
[**Exec**](sys_exec.html)   Executes a program or opens a data file using the operating system.
[**Nargs**](sys_nargs.html)   Gets the number of run time arguments (exported unqualified).
[**FetchArg**](sys_fetcharg.html)   Gets a specified run time argument (exported unqualified).
