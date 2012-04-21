
#File.DiskFree

##Syntax
**File.DiskFree** (*pathName* : **string**) : **int**

##Description
**File.DiskFree** gets the number of bytes for the disk upon which *pathName* resides. The *pathName* parameter can specify either a file or a directory. If it is the empty string, then **File.DiskFree** returns the number of bytes of free disk space on the disk upon which the execution directory resides.

##Details
If the **File.DiskFree** call fails, then it returns -1. Also **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.
If there is more than 2,147,483,647 bytes free on a disk, the **File.DiskFree** function returns 2,147,483,647.

##Example
This program prints out the amount of space on the *A: *drive on a PC and in the execution directory.

        var bytesFree : int
        bytesFree := File.DiskFree ("A:\\")
        if bytesFree = -1 then
            put "Can't get free space on drive A:."
            put "Error: ", Error.LastMsg
        else
            put "There are ", bytesFree , " bytes free on drive A:" 
        end if
        
        bytesFree := File.DiskFree (".")
        if bytesFree = -1 then
            put "Can't get free space on default directory."
            put "Error: ", Error.LastMsg
        else
            put "There are ", bytesFree , " bytes free on the default dir" 
        end if
##Status
Exported qualified.
This means that you can only call the function by calling **File.DiskFree**, not by calling **DiskFree**.
