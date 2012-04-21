
#getenv

##Syntax
**getenv** ( *symbol* : **string** ) : **string**



##Description
The **getenv** function is used to access the environment string whose name is *symbol*. These strings are determined by the shell (command processor) or the program that caused your program to run. See also the **nargs** and **fetcharg** functions.



##Example
On a PC, this retrieves the environment variable USERLEVEL and prints extra instructions if USERLEVEL had been set to NOVICE. USERLEVEL can be set to NOVICE with the command **SET** **USERLEVEL** = **NOVICE** in the **autoexec.bat** file or in any batch file.


        const userLevel : string
        userLevel := getenv ("USERLEVEL")
            if userLevel = "NOVICE" then
                       % put a set of instructions
        end if
##See also
See also predefined unit **[sysmodule.html](Sys)**.


