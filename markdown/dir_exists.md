
# Dir.Exists

## Syntax
**Dir.Exists** (_directoryPathName_ : **string**) : **boolean**

## Description
**Dir.Exists** returns **true** if a directory by the name of _directoryPathName_ exists. It will return **false** if _directoryPathName_ is a file.


## Details
If the **Dir.Exists** returns **false**, you can examine **Error.Last** or **Error.LastMsg** for more information (i.e. whether the path failed or the directory was simply not found).


## Example
The following program determines if the directory "d:/usr/west" exists, and outputs an error message if it does not.

        if Dir.Exists ("d:/usr/west") then
            put "Directory exists"
        else
            put "Directory does not exists: ", Error.LastMsg
        end if

##Status  
 Exported qualified.
This means that you can only call the function by calling **Dir.Exists**, not by calling **Exists**.
                        
