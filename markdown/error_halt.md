
#Error.Halt

##Syntax
**Error.Halt** (*errorMessage* : **string**)



##Description
**Error.Halt** is a procedure that immediately halts execution ofthe program and shows the specified error message on the line in theprogram that calls **Error.Halt**.
This procedure is useful for allowing a quick halt to a programwhile indicating an error condition.



##Example
This program halts on the first line with an error message stating"Execution terminated by the program."


        Error.Halt ("Execution terminated by the program.")
##Execute




##Status
Exported qualified.
This means that you can only call the function by calling **Error.Halt**, not by calling **Halt**.


