
#File.Copy

##Syntax
**File.Copy** (_srcPathName_, _destPathName_ : **string**)


##Description
**File.Copy** copies a file named by the _srcPathName_ parameter to the file named by the _destPathName_ parameter. The copy can be between different disks or file systems.


##Details
The source file name must be an actual file. This procedure will not copy directories. 

If the **File.Copy** call fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.

Note that you can use either forward or backward slashes to separatecomponents in a path. If you use backward slashes, you must doublethem in a string literal.  (i.e.  "d:\\west\\example.t")


##Example
This program copies the file "_d:\west\example.dat_" to "_new_example.t_". in the current directory.



        File.Copy ("d:/west/example.dat", "new_example.t")
        if Error.Last = eNoError then
            put "File copied"
        else
            put "Did not copy the file."
            put "Error: ", Error.LastMsg
        end if
##Execute
An example program is available that copies a file to the current directory using **File.Copy**, displays its contents to the run window, and then deletes the file using **File.Delete**.




##Status
Exported qualified.

This means that you can only call the function by calling **File.Copy**, not by calling **Copy**.

