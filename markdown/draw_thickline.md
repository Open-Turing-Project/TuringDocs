
# Draw.ThickLine

## Syntax
**Draw.ThickLine** (_x1_, _y1_, _x2_, _y2_, _lineWidth_, _Color_ : **int**)

## Description
The **Draw.ThickLine** procedure is used to draw a line on the screen from (_x1_, _y1_) to (_x2_, _y2_) using the specified _Color_.



![Doc Image](draw_line01.gif)


## Example
This program draws a large X, reaching to each corner of the screen in two different colors. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The point (0,0) is the left bottom of the screen, (**maxx**, **maxy**) is the right top, etc.

        View.Set ("graphics")
        % First draw a line of 5 pixel width from the left bottom to right top
        Draw.ThickLine (0, 0, maxx, maxy, 5, brightred) 
        % Now draw a line of 5 pixel width from the left top to right bottom
        Draw.ThickLine (0, maxy, maxx, 0, 5, brightgreen)
## Details
The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.


## Status
Exported qualified.

This means that you can only call the function by calling **Draw.ThickLine**, not by calling **ThickLine**.


## See also
**[View.Set](view_set.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various procedures in the **[Draw](drawmodule.html)** unit.

