
#Sys.Nargs

##Syntax
**Sys.Nargs : int**



##Description
The **Sys.Nargs **function is used to** **determine the number of arguments that have been passed to a program from the command line. For example, if the program is run from the Turing environment using
then **Sys.Nargs** will return 2. If a program called _prog.x _is run under UNIX using this command:
the value of **Sys.Nargs **will similarly be 2.
The **Sys.Nargs **function is usually used together with the **Sys.FetchArg **function to access the arguments that have been passed to the program. 


        :r file1 file2        prog.x file1 file2
##Status
Exported qualified.
This means that you can only call the function by calling **Sys.Nargs**, not by calling **Nargs**.



##See also
**[sys_fetcharg.html](Sys.FetchArg)** for an example of the use of **[](Sys.Nargs)**.


