
#drawbox

##Syntax
**drawbox** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)



##Description
The **drawbox** procedure is used to draw a box on the screen with bottom left and top right corners of (_x1_, _y1_) to (_x2_, _y2_) using the specified _Color_.

![Doc image](drawbox01.gif)


##Example
This program draws a large box, reaching to each corner of the screen using color number 1. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The point (0,0) is the left bottom of the screen and (**maxx**, **maxy**) is the right top.


        setscreen ("graphics")
        drawbox (0, 0, maxx, maxy, 1)
##Details
The meaning of the _Color_ number depends on the current palette. See the **palette** statement.
The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.



##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw&#133;** procedures.


