
#Error.Msg

##Syntax
**Error.Msg** (*errorCode* : **int**): **string**



##Description
**Error.Msg** is a function that returns the error message related to a specified error code. If the error code is *eNoError*, or if there is no such error code, it returns the empty string. If there is such an error, it returns the textual message associated with that error.



##Example
This program prints out the error message associated with *eFsysFileNotFound* (File not found).


        put Error.Msg (eFsysFileNotFound)
##Status
Exported qualified.
This means that you can only call the function by calling **Error.Msg**, not by calling **Msg**.


