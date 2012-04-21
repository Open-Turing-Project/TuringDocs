
#Error.LastStr

##Syntax
**Error.LastStr** : **string**



##Description
**Error.LastStr** is a function that returns the string version of the error code set by the last called predefined subprogram (i.e. it would return the string "eDrawClrNumTooLarge" for using a color greater than **maxcolor** in a **Draw** command). If there is no error then it returns the empty string. If there is an error, you can use **Error.Last** to obtain the actual error code.
The fact that **Error.LastStr** is not "" does not necessarily mean that the previous predefined function failed or failed completely. **Error.LastStr** also returns a number of error codes for warning messages. For example, if a user specifies a number larger than **maxcolor** for the *color* parameter of the **Draw.Line** procedure, the line is still drawn, only in color **maxcolor**. However, **Error.LastStr** will return a string version of the error code that indicates that the color was out of range.
You can take a look at the error constants defined by looking at the unit **ErrorNum** which contains all defined error codes.



##Example
This program creates the directory called *information*. If the creation fails, it prints out the error number and an error message.


        Dir.Create ("testdata/information")
        if Error.Last = eNoError then
            put "Directory created"
        else
            put "Did not create the directory."
            put "Error Number: ", Error.Last
            put "Error Constant: ", Error.LastStr
        end if
##Status
Exported qualified.
This means that you can only call the function by calling **Error.LastStr**, not by calling **LastStr**.


