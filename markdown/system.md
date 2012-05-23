
# system

## Syntax
**system** ( _command_ : **string**, **var** _ret_ : **int** )

## Description
The **system** statement is used to execute the shell (operating system) _command_, as if it were typed at the terminal. The return code is in _ret_. A return code of 0 (zero) means no detected errors. A return code of 127 means the command processor could not be accessed. A return code of 126 means the command processor did not have room to run on the PC.


## Example
This program creates a directory listing when run under DOS on an IBM PC compatible computer. The same program will run under UNIX by changing "_dir_" to "_ls_".

        var success : int
        system ( "dir", success )
        if success not= 0 then
            if success= 127 then
                put "Sorry, can't find 'command.com'"
            elsif success = 126 then
                put "Sorry, no room to run 'dir'"
            else
                put "Sorry, 'dir' did not work"
            end if
        end if
## Details
When the **system** procedure is used, the executing program usually remains in memory while the system command is executing, and once execution of the system command is finished, control returns to the original program. However, on the PC, there is variant of the **system** procedure that allows "chaining". This means that when the system command is executed, the originally running program is "thrown away" (i.e. removed from memory). When the executed program terminates, one is returned to DOS.

To chain another program, one prepends "chain:" to the start _command_.

Note that this command is "hazardous". Specifically, if you call it from Turing (as opposed to a program compiled with TComp) and you have not saved your source file, **you** **will** **lose** **it!**  Turing will be removed from memory without any warning when the **system** procedure is executed. Likewise any open files will be closed instantly. This means there is a danger if all files were not properly closed before the **system** procedure was called. 

The "chain:" command is often used for starting menu programs, where the user selects a program to run and doesn't want Turing to remain in memory. It can also be used with extraordinarily large Turing programs that can be split into different parts. By using TComp and compiling each part separately, one can have each program call the other and never have all parts in memory at once.

        i.e.    system ("chain:myprog.exe", retCode)
## Example
This program uses chaining to launch one of several possible programs based on user choice. It gives an error if for some reason the **system** command fails to work. It assumes that c:\chemistry.exe, c:\math.exe, c:\english.exe and c:\history.exe already exist.

        var choice, success : int
        put "Enter the subject (1-4): "..
        get choice
        var command : string
        case choice of
            % Note the use of the double backslash in the file name. This
            % is because the backslash is a special character in Turing (as
            % in \t for tab and \n for a newline). To get a single backslash, 
            % one uses \\.
            label 1 :   command := "c:\\chemistry.exe"
            label 2 :   command := "c:\\math.exe"
            label 3 :   command := "c:\\english.exe"
            label 4 :   command := "c:\\history.exe"
            label :     put "Choice must be from 1-4."
                    assert false    % Wasn't a 1-4. Terminate.
        end case
        system ( "chain:" + command, success)
        % If I reach this line, the system command failed and one should give
        % an error message.
        put "System called failed."
        put "Program \"", command, "\"  couldn't be run."
        assert false    % Terminate the program
## Details
Here are the possible errors under PC-Turing


-1   Not enough memory to load COMMAND.COM  
-2   Not enough memory to run command  
-3   Argument list greater than 128 bytes or environment info  

is greater than 32k  

-4   Couldn't find COMMAND.COM  
-5   COMMAND.COM corrupt  
-6   -noshell option is selected, the system procedure is  

disallowed  



## See also
**[nargs](nargs.html)**, **[fetcharg](fetcharg.html)** and **[getenv](getenv.html)** functions.

See also predefined unit **[Sys](sysmodule.html)**.

