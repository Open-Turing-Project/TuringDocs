
#Input.getch

##Syntax
**getch** ( **var** *ch* : **string** ( 1 ) )



##Description
The **getch** procedure is used to input a single character without waiting for the end of a line. The parameter *ch* is set to the next character in the keyboard buffer (the oldest not-yet-read character).



##Example
This program contains a procedure called *getKey *which causes the program to wait until a key is pressed.


        View.Set ("graphics")
        
        procedure getKey
            var ch : string (1)
            getch (ch)
        end getKey
        
        for i : 1 .. 1000
            put i : 4, " Pause till a key is pressed"
            getKey
        end for
##Details
The screen should be in a "*screen*"* *or "*graphics*" mode. See the **View.Set** procedure for details. If the screen is not in one of these modes, it will automatically be set to "*screen*" mode.
Some keys, such as the left arrow key, insert key, delete key, and function keys do not produce ordinary character values. These keystrokes are returned by **getch** as special values. See Appendix D for these values.



##Status
Exported unqualified.
This means that you can call the function by calling **getch** or by calling **Input.getch**.



##See also
**[hasch.html](hasch) **(has character) [procedure.html](procedure) which is used to see if a character has been typed but [not.html](not) yet [read.html](read).


