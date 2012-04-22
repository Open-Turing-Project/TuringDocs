
#File.FullPath

##Syntax
**File.FullPath** (_pathName_) : **string**) : **string**



##Description
**File.FullPath** returns a string representing the full absolute path name in Turing format (forward slashes) of the path thatis passed to the function. The path name passed in does not have to describe an existing file or directory.



##Details
The full path name will be in Turing format and include the drive name (for example "d:/turing/examples/games/SpaceGame.t")



##Example
This program obtains a path from the user and then outputs a full path name based on the path.



        var pathName : string
        get pathName
	put "Full path = ", File.FullPath (pathName)
##Details
Another example is available that checks whether a file and all of the directories in the path to the file exist.This program illustrates the use of **File.FullPath**, **File.Parent**, **File.Exists**, and **Dir.Exists**.




##Status
Exported qualified.
This means that you can only call the function by calling **File.FullPath**, not by calling **FullPath**.


