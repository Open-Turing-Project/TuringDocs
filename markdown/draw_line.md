
#Draw.Line

##Syntax
**Draw.Line** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)


##Description
The **Draw.Line** procedure is used to draw a line on the screen from (_x1_, _y1_) to (_x2_, _y2_) using the specified _Color_.



![Doc Image](draw_line01.gif)


##Example
This program draws a large X, reaching to each corner of the screen using color number 1. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The point (0,0) is the left bottom of the screen, (**maxx**, **maxy**) is the right top, etc.

        View.Set ("graphics")
        % First draw a line from the left bottom to right top
        Draw.Line (0, 0, maxx, maxy, 1) 
        % Now draw a line from the left top to right bottom
        Draw.Line (0, maxy, maxx, 0, 1)
##Details
The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.


##Status
Exported qualified.

This means that you can only call the function by calling **Draw.Line**, not by calling **Line**.


##See also
**[view_set.html](View.Set)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various procedures in the **[drawmodule.html](Draw)** unit.

