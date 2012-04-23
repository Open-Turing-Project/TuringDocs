
# Draw.FillBox

## Syntax
**Draw.FillBox** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)

## Description
The **Draw.FillBox** procedure is used to draw a filled box on the screen with bottom left and top right corners of (_x1_, _y1_) to (_x2_, _y2_) filled using the specified _Color_. To get a box outlined in a different color, use **Draw.FillBox** with the _Color_ parameter set to the fill color and then call **Draw.Box**  with the _Color_ parameter set to the border color.



![Doc Image](draw_fillbox01.gif)


## Example
This program will fill the bottom half of the screen with color 1 and then outline it in color 2. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The point (0,0) is the left bottom of the screen and (**maxx**, **maxy**) is the right top.

        View.Set ("graphics")
        Draw.FillBox (0, 0, maxx, maxy div 2, 1)
        Draw.Box (0, 0, maxx, maxy div 2, 2)
## Details
The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.


## Status
Exported qualified.

This means that you can only call the function by calling **Draw.FillBox**, not by calling **FillBox**.


## See also
**[View.Set](view_set.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various procedures in the **[Draw](drawmodule.html)** unit.

