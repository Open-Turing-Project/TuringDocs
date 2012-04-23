
#Error.LastMsg

##Syntax
**Error.LastMsg** : **string**


##Description
**Error.LastMsg** is a function that returns the error message set by the last called predefined subprogram. If there is no error, then it returns the empty string. If there is an error, you can use **Error.Last** to obtain the error code.

The fact that **Error.LastMsg** is not "" does not necessarily mean that the previous predefined function failed or failed completely. **Error.LastMsg** also returns a number of warning messages. For example, if a user specifies a number larger than **maxcolor** for the _color_ parameter of the **Draw.Line** procedure, the line is still drawn, only in color **maxcolor**. However, **Error.LastMsg** will return a message that indicates that the color was out of range


##Example
This program creates the directory called _information_. If the creation fails, it prints out the error number and an error message.

        Dir.Create ("testdata/information")
        if Error.Last = eNoError then
            put "Directory created"
        else
            put "Did not create the directory."
            put "Error Number: ", Error.Last
            put "Error Message: ", Error.LastMsg
        end if
##Status
Exported qualified.

This means that you can only call the function by calling **Error.LastMsg**, not by calling **LastMsg**.

