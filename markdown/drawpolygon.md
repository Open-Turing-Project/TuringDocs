
#drawpolygon

##Syntax
**drawpolygon** (_x_, _y_  : **array** 1 .. * **of** **int**, _n_ : **int**, _Color_ : **int**)



##Description
The **drawpolygon** procedure is used to draw a polygon with _n_ points. A line is drawn in _Color _from the point (_x_(1), _y_(1)) to (_x_(2), _y_(2)) to (_x_(3), _y_(3)) and so on. After drawing the line to (_x_(_n_), _y_ (_n_)), a line will be drawn back to (_x_(1), _y_(1)), closing the polygon. The **drawpolygon** procedure is equivalent to:


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
The meaning of the _Color_ number depends on the current palette. See the **palette** statement.
The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.



##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw&#133;** procedures. 


