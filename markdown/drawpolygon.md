
#drawpolygon

##Syntax
**drawpolygon** (*x*, *y*  : **array** 1 .. * **of** **int**, *n* : **int**, *Color* : **int**)

##Description
The **drawpolygon** procedure is used to draw a polygon with *n* points. A line is drawn in *Color *from the point (*x*(1), *y*(1)) to (*x*(2), *y*(2)) to (*x*(3), *y*(3)) and so on. After drawing the line to (*x*(*n*), *y* (*n*)), a line will be drawn back to (*x*(1), *y*(1)), closing the polygon. The **drawpolygon** procedure is equivalent to:
        for i : 1 .. n - 1
            drawline (x (i), y(i), x (i + 1), y (i + 1), Color)
        end for
        drawline (x (n), y (n), x (1), y (1), Color)
##Example
This program will create an octagon and display it in color 1.
        setscreen ("graphics")
        var x : array 1..8 of int := init (100, 100, 135, 185, 
                                   220, 220, 185, 135)
        var y : array 1..8 of int := init (100, 150, 185, 185,
                                   150, 100, 65, 65)
        drawpolygon (x, y, 8, 1)
##Details
The IBM PC limits **drawpolygon** to a maximum of 256 points.
The meaning of the *Color* number depends on the current palette. See the **palette** statement.
The screen should be in a "*graphics*" mode. See the **setscreen** procedure for details. If the screen is not in a "*graphics*" mode, it will automatically be set to "*graphics*" mode.

##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw** procedures. 
