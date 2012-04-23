
#getch

##Syntax
**getch** ( **var** _ch_ : **string** ( 1 ) )


##Description
The **getch** procedure is used to input a single character without waiting for the end of a line. The parameter _ch_ is set to the next character in the keyboard buffer (the oldest not-yet-read character).


##Example
This program contains a procedure called _getKey_ which causes the program to wait until a key is pressed.

        setscreen ("graphics")
        
        procedure getKey
            var ch : string (1)
            getch (ch)
        end getKey
        
        for i : 1 .. 1000
            put i : 4, " Pause till a key is pressed"
            getKey
        end for
##Details
The screen should be in a "_screen_" or "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in one of these modes, it will automatically be set to "_screen_" mode.

On IBM PC's some keys, such as the left arrow key, insert key, delete key, and function keys do not produce ordinary character values. These keystrokes are returned by **getch** as their "scan code" with 128 added to them, unless the scan code already has a value of 128 or greater. This provides a unique value for every key on the keyboard. See Appendix D for these codes.


##See also
**[hasch.html](hasch)** (has character) which is used to see if a character has been typed but [not.html](not) yet [read.html](read).

See also predefined unit **[inputmodule.html](Input)**.

