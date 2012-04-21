
#Error.Trip

##Syntax
**Error.Trip** (*errorCode* : **int**)



##Description
**Error.Trip** is a procedure that sets the error number that isreturned by **Error.Last** and **Error.LastMsg**. It does  not halt the program.
Error codes that do not correspond to recognized errors will cause an abort with the error message "Unknown Error #n" where n is the error passed in.
You can find a list of constants for the legal error codes in the module **ErrorNum**. Any call to **Error.Trip** should use a constant found in the **ErrorNum** module.



##Example
This program sets an error code. The program outputs 201 for the errornumber and "File not found" for the message.


        Error.Trip (eFsysFileNotFound)
        put "Error code = ", Error.Last
        put "Error message = ", Error.LastMsg
##Execute




##Status
Exported qualified.
This means that you can only call the function by calling **Error.Trip**, not by calling **Trip**.


