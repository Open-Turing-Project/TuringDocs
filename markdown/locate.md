
#locate

##Syntax
**locate** ( _row_, _column_ : **int** )



##Description
The **locate** procedure is used to move the cursor so that the next output from **put** will be at the given row and column. Row 1 is the top of the screen and column 1 is the left side of the screen.



##Example
This program outputs stars of random colors to random locations on the screen. The variable _colr_ is purposely spelled differently from the word _color_ to avoid the procedure of that name (used to set the color of output). The row number is purposely chosen so that it is one less than **maxrow**. This avoids the scrolling of the screen which occurs when a character is placed in the last column of the last row.


        setscreen ("screen")
        var row, column, colr : int
        loop
            randint ( row, 1, maxrow - 1)
            randint ( column, 1, maxcol)
            randint (colr, 0, maxcolor)
            color (colr)
            locate (row, column )
            put "*" ..  % Use dot-dot to avoid clearing end of line
        end loop
##Details
The **locate** procedure is used to locate the next output based on row and column positions. See also the **locatexy** procedure which is used to locate the output based x and y positions, where x=0, y=0 is the left bottom of the screen.
The screen should be in a "_screen_" or "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in one of these modes, it will automatically be set to"_screen_" mode.



##See also
**[setscreen.html](setscreen)** and **[drawdot.html](drawdot)**.
See also predefined unit **[textmodule.html](Text)**.


