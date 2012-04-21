
#Error.Last

##Syntax
**Error.Last** : **int**

##Description
**Error.Last** is a function that returns the error code set by the last called predefined subprogram. If there is no error, then it returns *eNoError* (which is 0). If there is an error, you can use **Error.LastMsg** to obtain a textual form of the error or **Error.LastStr** to obtain a string version of the error constant.
The fact that **Error.Last** is not *eNoError* does not necessarily mean that the previous predefined function failed or failed completely. **Error.Last** also returns a number of warning codes. For example, if a user specifies a number larger than **maxcolor** for the *color* parameter of the **Draw.Line** procedure, the line is still drawn, only in color **maxcolor**. However, **Error.Last** will return a code that warns the user of the fact.

##Example
This program creates the directory called *information*. If the creation fails, it prints out the error number and an error message.
        var f : int
        open : f, "testdata/information.txt", get
        if f <= 0 then
            put "File opened"
        else
            put "Could not open file."
            put "Error Number: ", Error.Last
            put "Error Message: ", Error.LastMsg
            put "Error Constant: ", Error.LastStr
        end if
##Status
Exported qualified.
This means that you can only call the function by calling **Error.Last**, not by calling **Last**.
