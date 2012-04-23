
# Error.TripMsg

## Syntax
**Error.TripMsg** (_errorCode_ : **int**, _errorMessage_ : **string**)

## Description
**Error.TripMsg** is a procedure that sets the error number anderror message that is returned by **Error.Last** and **Error.LastMsg**. It does not halt the program.

You can find a list of constants for the legal error codes in the module **ErrorNum**. Any call to **Error.TripMsg** should use a constant found in the **ErrorNum** module or zero, if the errorcode is not relevant (i.e. only the error message is relevant).


## Example
This program sets an error code. The program outputs 201 for the errornumber and "File *really* not found" for the message.

        Error.TripMsg (eFsysFileNotFound, "File *really* not found")
        put "Error code = ", Error.Last
        put "Error message = ", Error.LastMsg
## Execute



## Status
Exported qualified.

This means that you can only call the function by calling **Error.TripMsg**, not by calling **TripMsg**.

