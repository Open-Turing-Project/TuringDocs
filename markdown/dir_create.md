
#Dir.Create

##Syntax
**Dir.Create** (*directoryPathName* : **string**)

##Description
**Dir.Create** is used to create the directory specified by the parameter *directoryPathName*. This is the equivalent of doing a **mkdir** in DOS or UNIX. On the Macintosh, it creates a folder.

##Details
If the **Dir.Create** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.

##Example
This program creates the directory called *information*.
        Dir.Create ("information")
        if Error.Last = eNoError  then
            put "Directory created"
        else
            put "Did not create the directory."
            put "Error: ", Error.LastMsg
        end if
##Example
An example demonstrating the use of several of the **Dir** subprogramsis available. In this example, a directory is created, a file is writtento the directory, an attempt is made to delete the directory, the file isdeleted, and then the directory is deleted.
This example demonstrates the use of **Dir.Change**, **Dir.Current**, **Dir.Create**, and **Dir.Delete**.

##Status
Exported qualified.
This means that you can only call the function by calling **Dir.Create**, not by calling **Create**.
