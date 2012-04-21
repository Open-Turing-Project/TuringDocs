
#Dir.Change

##Syntax
**Dir.Change** (*directoryPathName* : **string**)

##Description
**Dir.Change** changes the execution directory to that specified by the parameter *directoryPathName*. This is the equivalent of doing a **cd** in UNIX.
Under Microsoft Windows, specifying a drive in the *directoryPathName* parameter causes the drive to become the default drive (unlike the DOS **cd** command).

##Details
If the **Dir.Change** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.

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
This means that you can only call the function by calling **Dir.Change**, not by calling **Change**.
