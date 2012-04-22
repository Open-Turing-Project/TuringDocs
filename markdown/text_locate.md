
#Text.Locate

##Syntax
**Text.Locate** ( _row_, _column_ : **int** )



##Description
The **Text.Locate** procedure is used to move the cursor so that the next output from **put** will be at the given row and column. Row 1 is the top of the screen and column 1 is the left side of the screen.



##Example
This program outputs stars of random colors to random locations on the screen. The variable _colr_ is purposely spelled differently from the word _color_ to avoid the procedure of that name (used to set the color of output). The row number is purposely chosen so that it is one less than **maxrow**. This avoids the scrolling of the screen which occurs when a character is placed in the last column of the last row.


        View.Set ("screen")
        var row, column, colr : int
        loop
            row := Rand.Int (1, maxrow)
            column := Rand.Int (1, maxcol)
            colr := Rand.Int (0, maxcolor)
            Text.Color (colr)
            Text.Locate (row, column )
            put "*" ..  % Use dot-dot to avoid clearing end of line
        end loop
##Details
The **Text.Locate** procedure is used to locate the next output based on row and column positions. See also the **Text.LocateXY** procedure which is used to locate the output based x and y positions, where x=0, y=0 is the left bottom of the screen.
The screen should be in a "_screen_" or "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in one of these modes, it will automatically be set to"_screen_" mode.



##Status
Exported qualified.
This means that you can only call the function by calling **Text.Locate** , not by calling **Locate**.



##See also
**[view_set.html](View.Set)** and **[draw_dot.html](Draw.Dot)**.


