
# Input.getchar

## Syntax
**getchar** : **char**

## Description
The **getchar** function is used to input a single character without waiting for the end of a line. The next character in the keyboard buffer (the oldest not-yet-read character) is returned.


## Example
This program contains a procedure called _getKey_ which causes the program to wait until a key is pressed.

        View.Set ("graphics")
        
        procedure getKey
            var ch : char
            ch := getchar
        end getKey
        
        for i : 1 .. 1000
            put i : 4, " Pause till a key is pressed"
            getKey
        end for
## Details
The screen should be in a "_screen_" or "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in one of these modes, it will automatically be set to "_screen_" mode.

Some keys, such as the left arrow key, insert key, delete key, and function keys do not produce ordinary character values. These keystrokes are returned by **getch** as special values. See Appendix D for these values.


## Status
Exported unqualified.

This means that you can call the function by calling **getchar** or by calling **Input.getchar**.


## See also
**[hasch](hasch.html)** (has character) [procedure](procedure.html) which is used to see if a character has been typed but [not](not.html) yet [read](read.html).

