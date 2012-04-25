
# nargs

## Syntax
**nargs** : **int**

## Description
The **nargs**  function is used to determine the number of arguments that have been passed to a program from the command line. For example, if the program is run from the Turing environment using

then **nargs** will return 2. If a program called _prog.x_ is run under UNIX using this command:

the value of **nargs** will similarly be 2.

The **nargs** function is usually used together with the **fetcharg** function to access the arguments that have been passed to the program. 

        :r file1 file2        
        prog.x file1 file2
## See also
**[fetcharg](fetcharg.html)** for an example of the use of **[nargs]()**.

                        
