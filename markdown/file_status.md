
#File.Status

##Syntax
**File.Status** (*pathName* : **string**, **var** *size*, *attribute*, *fileTime* : **int**)



##Description
**File.Status **is used to get assorted information about a file or directory. When the function is called with a specified *pathName*, it returns the information about the file in the other parameters.
The *size* parameter is the size of the file in bytes. 
The *attribute* parameter has its individual bits set as exactly as the *attribute* parameter in **Dir.GetLong** subprogram does. See **Dir.GetLong** for the list of attribute constants.
The *fileTime* is the time of last modification of the file. It is returned as the number of seconds since 00:00:00 GMT 1/1/1970. To convert this to a string, use **Time.SecDate.**



##Details
If the **File.Status** call fails, *size*, *attribute* and *fileTime* are all set to 1. **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.



##Example
This program prints information about the NotePad.exe application in Windows foundat "*c:\windows\notepad.exe*". (Note on some systems, this will be "c:\winnt\notepade.exe"



        const pathName : string := "c:/windows/notepad.exe"
        var size, attribute, fileTime : int
        File.Status (pathName, size, attribute, fileTime )
        if Error.Last = eNoError then
            put "      Name: ", File.FullPath (pathName)
            put "   Created: ", Time.SecDate (fileTime)
            put "      Size: ", size, " bytes"
            put "Attributes: " ..
            if (attribute and ootAttrDir) not= 0 then
                put "Directory " ..
            else
                put "" ..
            end if
            if (attribute and ootAttrRead) not= 0 then
                put "Readable " ..
            else
                put "" ..
            end if
            if (attribute and ootAttrWrite) not= 0 then
                put "Writable " ..
            else
                put "" ..
            end if
            if (attribute and ootAttrExecute) not= 0 then
                put "Executable", skip
            else
                put skip
            end if
        else
            put "Unable to get file information"
            put "Error: ", Error.LastMsg, skip
        end if
##Execute
Another example program is available that uses **File.Status** to determine the status of several files and directories.



##Status
Exported qualified.
This means that you can only call the function by calling **File.Status**, not by calling **Status**.


