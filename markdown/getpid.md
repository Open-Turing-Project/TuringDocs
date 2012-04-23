
# getpid

## Syntax
**getpid** : **int**

## Description
The **getpid** function is used to determine the I.D. (number) that identifies the current operating system task (process). Beware that there are processes, activated by the **fork** statement, that are independent of the operating systems tasks.

Under UNIX, the number is used, for example, for creating a unique name of a file. 


## See also
**[nargs](nargs.html)**, **[fetcharg](fetcharg.html)** and **[getenv](getenv.html)**.

See also predefined unit **[Sys](sysmodule.html)**.

