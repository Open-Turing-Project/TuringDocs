
#Sys.GetPid

##Syntax
**Sys.GetPid** : **int**



##Description
The **Sys.GetPid **function is used to determine the I.D. (number) that identifies the current operating system task (process). Beware that there are processes, activated by the **fork** statement, that are independent of the operating systems tasks.
Under UNIX, the number is used, for example, for creating a unique name of a file. 



##Status
Exported qualified.
This means that you can only call the function by calling **Sys.GetPid**, not by calling **GetPid**.



##See also
**[sys_nargs.html](Sys.Nargs)**, **[sys_fetcharg.html](Sys.FetchArg)** and **[sys_getenv.html](Sys.GetEnv)**.


