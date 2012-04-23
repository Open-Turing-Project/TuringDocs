
#Text.LocateXY

##Syntax
**Text.LocateXY** ( _x_ , _y_ : **int** )


##Description
The **Text.LocateXY** procedure is used to move the cursor so that the next output from **put** will be at approximately (_x_, _y_). The exact location may be somewhat to the left of _x_ and below _y_ to force alignment to a character boundary.


##Example
This program outputs _Hello_ starting at approximately (100, 50) on the screen.

        View.Set ("graphics")
        Text.LocateXY ( 100, 50 )
        put "Hello"
##Details
The **Text.LocateXY** procedure is used to locate the next output based on x and y positions, where the position x=0, y=0 is the left bottom of the screen. See also the **Text.Locate** procedure which is used to locate the output-based row and column positions, where row 1 is the top row and column 1 is the left column.

The screen should be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


##Status
Exported qualified.

This means that you can only call the function by calling **Text.LocateXY** , not by calling **LocateXY**.


##See also
**[view_set.html](View.Set)** and **[draw_dot.html](Draw.Dot)**.

