
# drawmapleleaf

## Syntax
**drawmapleleaf** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)

## Description
The **drawmapleleaf** procedure is used to draw a maple leaf on the screen bounded by a rectangle described by the bottom left and top right corners of (_x1_, _y1_) to (_x2_, _y2_) using the specified _Color_. If _y1_ is greater than _y2_, then the maple leaf is drawn upside down.



![Doc Image](drawmapleleaf01.gif)


## Example
This program will draw two maple leaves beside each other. The first will be in color 1 and the second maple leaf will be upside down and in color 2.

        setscreen ("graphics")
        drawmapleleaf (0, 0, 100, 100, 1)
        drawmapleleaf (150, 100, 250, 0, 2)
## Details
The **drawmapleleaf** procedure is useful for drawing the Canadian flag.

The meaning of the _Color_ number depends on the current palette. See the **palette** statement.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


## See also
**[setscreen](setscreen.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various **draw&#133;** procedures.

