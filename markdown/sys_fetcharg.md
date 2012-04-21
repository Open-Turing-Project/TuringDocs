
#Sys.FetchArg

##Syntax
**System.FetchArg** ( *i *: **int** ) : **string**

##Description
The **Sys.FetchArg **function is used to** **access the *i*-th argument that has been passed to a program from the command line. For example, if the program is run from the Turing environment using
 :r file1 file2
then **Sys.FetchArg **(2) will return "file2". If a program called *prog.x *is run under UNIX using this command:
 prog.x file1 file2
the value of **Sys.FetchArg**(2)** **will similarly be "file2".
The **Sys.Nargs **function, which gives the number of arguments passed to the program, is usually used together with the **Sys.FetchArg **function. Parameter *i* passed to **Sys.FetchArg **must be in the range 0 .. **Sys.Nargs**.
The 0-th argument is the name of the running program.

##Example
This program lists its own name and its arguments.
        put "The name of this program is : ", Sys.FetchArg ( 0 )
        for i : 1 .. Sys.Nargs
            put "Argument ", i, " is ", Sys.FetchArg ( i )
        end for
##Status
Exported qualified.
This means that you can only call the function by calling **Sys.FetchArg**, not by calling **FetchArg**.

##See also
**[sys_nargs.html](Sys.Nargs)**
