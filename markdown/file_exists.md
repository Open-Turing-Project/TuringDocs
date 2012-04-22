
#File.Exists

##Syntax
**File.Exists** (_pathName_ : **string**) : **boolean**



##Description
**File.Exists** returns **true** if a file by the name of _pathName_ exists. It will return **false** if _pathName_ is a directory.



##Details
If the **File.Exists** returns **false**, you can examine **Error.Last** or **Error.LastMsg** for more information (i.e. whether the path failed or the file was simply not found).



##Example
This program loops until the user types in a path name that either doesn't already exist or is allowed to be overwritten.


        var pathName : string
        var choice : string
        loop
            put "Enter file name to write results to" ..
            get pathName
            if File.Exists (pathName) then
                put "Overwrite ", pathName, "?" ..
                get choice
                exit when choice = "y"
            else
                exit
            end if
        end loop
##Execute
An example program is available that creates a file in the current directory, tests for its existence using **File.Exists** and deletes the file using **File.Delete**.




##Status
Exported qualified.
This means that you can only call the function by calling **File.Exists**, not by calling **Exists**.


