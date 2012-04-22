
#File.Parent

##Syntax
**File.Parent** (_pathName_ : **string**) : **string**



##Description
**File.Parent **returns a string representing the parent directory in Turing format (forward slashes) of the path passed asa parameter. The path name passed in does not have to describe an existing file or directory.Attempting to obtain the parent directory of a root directory (for example "c:/") will return the sameroot directory and will set the value returned by **Error.Last** to a non-zero value.



##Example
This program obtains a path from the user and then lists all the parent directories until it reaches the root directory.


        var pathName : string
        put "Enter a path: " ..
        get pathName
        loop
            pathName := File.Parent (pathName)
            exit when Error.Last not= eNoError
            put pathName
        end loop
##Details
Another example is available that checks whether a file and all of the directories in the path to the file exist.This program illustrates the use of **File.FullPath**, **File.Parent**, **File.Exists**, and **Dir.Exists**.




##Status
Exported qualified.
This means that you can only call the function by calling **File.Parent**, not by calling **Parent**.


