
#getpid

##Syntax
**getpid** : **int**



##Description
The **getpid** function is used to determine the I.D. (number) that identifies the current operating system task (process). Beware that there are processes, activated by the **fork** statement, that are independent of the operating systems tasks.
Under UNIX, the number is used, for example, for creating a unique name of a file. 



##See also
**[nargs.html](nargs)**, **[fetcharg.html](fetcharg)** and **[getenv.html](getenv)**.
See also predefined unit **[sysmodule.html](Sys)**.


