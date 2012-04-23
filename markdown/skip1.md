
#skip

##Syntax
**skip**


##Description
Using **skip** as an input item in a **get** statement causes the current input to be skipped until a non-whitespace token is encountered. Whitespace includes all blanks, tabs, form feeds and newlines.


##Example
The **skip** input item was originally intended to be used to see if more input exists in an input file. This use has been largely made redundant by a change in the Turing language. The new version of Turing reads a token, as in _**get** s_ but not in _**get** s:*_ or _**get** s:3_, and automatically skips any white space following the input value, but will not go beyond the beginning of the next input line. Originally this automatic skipping did not take place, so **skip** was required. The form of an input loop that used **skip** was as follows:

        loop
            get skip            % This is line now redundant
            exit when eof
            get 
            
        end loop
##Details
The **skip** bypasses all whitespace characters including any trailing newlines and blank lines. By skipping these characters, a true end-of-file condition was detected. Otherwise, the end-of-file could have been hidden by any whitespace following the last input item. With the change in Turing, the line **get** **skip** is no longer needed (although it still works correctly).


##Example
The **skip** can also be used to correctly identify the start of a long string (usually to be read in _line_ or _counted_ mode). Here, it skips the whitespace and trailing newline as follows:

        var i : int
        var line : string
        loop
            get i, skip, line:*
            
        end loop
##Details
The first item in the **get** statement reads an integer by skipping all whitespace and reading digits until whitespace is encountered. The input stream is then left with the whitespace as the next input character. The **skip** then skips past the whitespace, effectively beginning the next input at the next non-whitespace character. This truncates leading blanks and has another, potentially more important, effect. If the integer is the last data on a line and the string is on a following line, the **skip** is necessary to avoid setting _line_ to a null string value.


##See also
**[get.html](get)** [statement.html](statement) and **[loop.html](loop)** [statement.html](statement).

