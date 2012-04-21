
#File.Delete

##Syntax
**File.Delete** (*filePathName* : **string**)

##Description
**File.Delete** is used to delete the file specified by the parameter *filePathName*. This is the equivalent of doing a **del** in DOS or **rm** in UNIX.

##Details
If the **File.Delete** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.

##Example
This program deletes the file called *information*.
        File.Delete ("information")
        if Error.Last = eNoError then
            put "File delete"
        else
            put "Did not delete the file."
            put "Error: ", Error.LastMsg
        end if
##Execute
An example program is available that creates a file in the current directory, and then deletes the file using **File.Delete**.

##Status
Exported qualified.
This means that you can only call the function by calling **File.Delete**, not by calling **File**.
