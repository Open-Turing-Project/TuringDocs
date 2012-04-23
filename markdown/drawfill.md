
#drawfill

##Syntax
**drawfill** (_x_, _y_ : **int**, _fillColor_, _borderColor_ : **int**)


##Description
The **drawfill** procedure is used to color in a figure that is on the screen. Starting at (_x_, _y_), the figure is filled with _fillColor_ to a surrounding border whose color is _borderColor_.



![Doc Image](drawfill01.gif)


##Example
This program draws an oval with x and y radius of 10 in the center of the screen using color 1. Then the oval is filled with color 2. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen.

        setscreen ("graphics")
        const midx := maxx div 2
        const midy := maxy div 2
        drawoval (midx, midy, 10, 10, 1)
        drawfill (midx, midy, 2, 1)
##Details
The meaning of the _Color_ number depends on the current palette; see the **palette** statement.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.

Warning: In Turing for IBM PC compatibles, **drawfill** fails to completely fill in some complicated figures that contain "islands" within them surrounded by the _borderColor_.


##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw&#133;** procedures. 

