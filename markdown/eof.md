
#eof

##Syntax
**eof** (*streamNumber* : **int**) : **boolean**



##Description
The **eof** (end of file) function is used to determine if there is any more input. It returns **true** when there are no more characters to be read. The parameter and its parentheses are omitted when referring to the standard input (usually this is the keyboard); otherwise the parameter specifies the number of a stream. The stream number has been determined (in most cases) by an **open** statement.



##Example
This program reads and outputs all the lines in the file called "info".


        var line : string
        var fileNumber : int
        open : fileNumber, "info", get
        loop
            exit when eof (fileNumber)
            get : fileNumber, line : *
            put line
        end loop
##Details
See also the description of the **get** statement, which gives more examples of the use of **eof**. See also the **open** and **read** statements.
When the input is from the keyboard, the user can signal end-of-file by typing control-Z on a PC (or control-D on UNIX). If a program tests for **eof** on the keyboard, and the user has not typed control-Z (or control-D) and the user has typed no characters beyond those that have been read, the program must wait until the next character is typed. Once this character is typed, the program knows whether it is at the end of the input, and returns the corresponding **true** or **false** value for **eof**.



##Example
Another example is available that illustrates detecting EOF fromthe keyboard.


