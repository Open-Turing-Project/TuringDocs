
# Draw.Star

## Syntax
**Draw.Star** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)

## Description
The **Draw.Star** procedure is used to draw a star on the screen bounded by a rectangle described by the bottom left and top right corners of (_x1_, _y1_) to (_x2_, _y2_) using the specified _Color_. If _y1_ is greater than _y2_ then the star is drawn upside down.



![Doc Image](draw_star01.gif)


## Example
This program will draw two stars beside each other. The first star will be in color 1 and the second star will be upside down and in color 2.

        View.Set ("graphics")
        Draw.Star (0, 0, 100, 100, brightred)
        Draw.Star (150, 100, 250, 0, brightblue)
## Details
The **Draw.Star** procedure is useful for drawing the American flag.

The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.


## Status
Exported qualified.

This means that you can only call the function by calling **Draw.Star**, not by calling **Star**.


## See also
**[View.Set](view_set.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various procedures in the **[Draw](drawmodule.html)** unit.

