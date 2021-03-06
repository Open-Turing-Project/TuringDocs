
# Sys.GetUserName

## Syntax
**Sys.GetUserName** : **string**

## Description
The **Sys.GetUserName** function is used to determine the name of the current user. It returns &#147;Unknown&#148; if a name could not be determined.


## Example
This program outputs a greeting to the user .

        var computerName, userName : string
        computerName := Sys.GetComputerName
        userName := Sys.GetUserName
        put "Hello ", userName, " on ", computerName
## Status
Exported qualified.

This means that you can only call the function by calling **Sys.GetUserName**, not by calling **GetUserName**.


## See also
**[Sys.GetComputerName](sys_getcomputername.html)** to obtain the name of the computer.

