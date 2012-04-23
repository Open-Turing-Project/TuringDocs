
# Draw.MapleLeaf

## Syntax
**Draw.MapleLeaf** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)

## Description
The **Draw.MapleLeaf** procedure is used to draw a maple leaf on the screen bounded by a rectangle described by the bottom left and top right corners of (_x1_, _y1_) to (_x2_, _y2_) using the specified _Color_. If _y1_ is greater than _y2_, then the maple leaf is drawn upside down.



![Doc Image](draw_mapleleaf01.gif)


## Example
This program will draw two maple leaves beside each other. The first will be in red and the second maple leaf will be upside down and in yellow.

        View.Set ("graphics")
        Draw.MapleLeaf (0, 0, 100, 100, red)
        Draw.MapleLeaf (150, 100, 250, 0, yellow)
## Details
The **Draw.MapleLeaf** procedure is useful for drawing the Canadian flag.

The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.


## Status
Exported qualified.

This means that you can only call the function by calling **Draw.MapleLeaf**, not by calling **MapleLeaf**.


## See also
**[View.Set](view_set.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various procedures in the **[Draw](drawmodule.html)** unit.

