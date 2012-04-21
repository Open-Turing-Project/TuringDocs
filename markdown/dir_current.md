
#Dir.Current

##Syntax
**Dir.Current** : **string**

##Description
**Dir.Current** returns the full path name of the current execution directory. This is the equivalent of doing a **pwd** in UNIX.

##Details
If the **Dir.Current** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.

##Example
This program changes to the directory called */usr/west* and then lists the current directory.
        Dir.Change ("/usr/west")
        if Error.Last = eNoError  then
            put "Directory changed"
        else
            put "Did not change the directory."
            put "Error: ", Error.LastMsg
        end if
        put "The current execution directory is ", Dir.Current
##Example
An example demonstrating the use of several of the **Dir** subprogramsis available. In this example, a directory is created, a file is writtento the directory, an attempt is made to delete the directory, the file isdeleted, and then the directory is deleted.
This example demonstrates the use of **Dir.Change**, **Dir.Current**, **Dir.Create**, and **Dir.Delete**.

##Status
Exported qualified.
This means that you can only call the function by calling **Dir.Current**, not by calling **Current**.
