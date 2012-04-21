
#Dir.Delete

##Syntax
**Dir.Delete** (*directoryPathName* : **string**)



##Description
**Dir.Delete** is used to delete the directory specified by the parameter *directoryPathName*. This is the equivalent of doing a **rmdir** in DOS or UNIX. On the Macintosh, it removes a folder.
**Dir.Delete** will fail if it attempts delete a directory that has files in it.



##Details
If the **Dir.Delete** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.



##Example
This program deletes the directory called *information*.


        Dir.Delete ("information")
        if Error.Last = eNoError then
            put "Directory delete"
        else
            put "Did not delete the directory."
            put "Error: ", Error.LastMsg
        end if
##Example
An example demonstrating the use of several of the **Dir** subprogramsis available. In this example, a directory is created, a file is writtento the directory, an attempt is made to delete the directory, the file isdeleted, and then the directory is deleted.
This example demonstrates the use of **Dir.Change**, **Dir.Current**, **Dir.Create**, and **Dir.Delete**.



##Status
Exported qualified.
This means that you can only call the function by calling **Dir.Delete**, not by calling **Delete**.


