
#fetcharg

##Syntax
**fetcharg** ( *i *: **int** ) : **string**

##Description
The **fetcharg** function is used to access the *i*-th argument that has been passed to a program from the command line. For example, if the program is run from the Turing environment using
 :r file1 file2
then **fetcharg**(2) will return "file2". If a program called *prog.x *is run under UNIX using this command:
 prog.x file1 file2
the value of **fetcharg**(2) will similarly be "file2".
The **nargs** function, which gives the number of arguments passed to the program, is usually used together with the **fetcharg** function. Parameter *i* passed to **fetcharg** must be in the range 0 .. **nargs**.
The 0-th argument is the name of the running program.

##Example
This program lists its own name and its arguments.
        put "The name of this program is : ", fetcharg ( 0 )
        for i : 1 .. nargs
            put "Argument ", i, " is ", fetcharg ( i )
        end for
##See also
**[nargs.html](nargs)**
