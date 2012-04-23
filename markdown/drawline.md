
# drawline

## Syntax
**drawline** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)

## Description
The **drawline** procedure is used to draw a line on the screen from (_x1_, _y1_) to (_x2_, _y2_) using the specified _Color_.



![Doc Image](drawline01.gif)


## Example
This program draws a large X, reaching to each corner of the screen using color number 1. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The point (0,0) is the left bottom of the screen, (**maxx**, **maxy**) is the right top, etc.

        setscreen ("graphics")
        % First draw a line from the left bottom to right top
        drawline (0, 0, maxx, maxy, 1) 
        % Now draw a line from the left top to right bottom
        drawline (0, maxy, maxx, 0, 1)
## Details
The meaning of the _Color_ number depends on the current palette. See the **palette** statement.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


## See also
**[setscreen](setscreen.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various **draw&#133;** procedures.

