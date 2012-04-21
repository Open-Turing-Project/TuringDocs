
#drawline

##Syntax
**drawline** (*x1*, *y1*, *x2*, *y2*, *Color* : **int**)

##Description
The **drawline** procedure is used to draw a line on the screen from (*x1*, *y1*) to (*x2*, *y2*) using the specified *Color*.
![Doc image](drawline01.gif)

##Example
This program draws a large X, reaching to each corner of the screen using color number 1. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The point (0,0) is the left bottom of the screen, (**maxx**, **maxy**) is the right top, etc.
        setscreen ("graphics")
        % First draw a line from the left bottom to right top
        drawline (0, 0, maxx, maxy, 1) 
        % Now draw a line from the left top to right bottom
        drawline (0, maxy, maxx, 0, 1)
##Details
The meaning of the *Color* number depends on the current palette. See the **palette** statement.
The screen should be in a "*graphics*" mode. See the **setscreen** procedure for details. If the screen is not in a "*graphics*"* *mode, it will automatically be set to "*graphics*" mode.

##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw** procedures.
