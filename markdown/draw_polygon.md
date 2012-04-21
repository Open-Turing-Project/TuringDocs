
#Draw.Polygon

##Syntax
**Draw.Polygon** (*x*, *y*  : **array** 1 .. * **of** **int**, *n* : **int**, *Color* : **int**)

##Description
The **Draw.Polygon** procedure is used to draw a polygon with *n* points. A line is drawn in *Color *from the point (*x*(1), *y*(1)) to (*x*(2), *y*(2)) to (*x*(3), *y*(3)) and so on. After drawing the line to (*x*(*n*), *y* (*n*)), a line will be drawn back to (*x*(1), *y*(1)), closing the polygon. The **Draw.Polygon** procedure is equivalent to:
        for i : 1 .. n - 1
            Draw.Line (x (i), y(i), x (i + 1), y (i + 1), Color)
        end for
        Draw.Line (x (n), y (n), x (1), y (1), Color)
##Example
This program will create an octagon and display it in color 1.
        View.Set ("graphics")
        var x : array 1..8 of int := init (100, 100, 135, 185, 
                                   220, 220, 185, 135)
        var y : array 1..8 of int := init (100, 150, 185, 185,
                                   150, 100, 65, 65)
        Draw.Polygon (x, y, 8, brightblue)
##Details
The IBM PC limits **Draw.Polygon** to a maximum of 256 points.
The screen must be in a "*graphics*" mode. See the **View.Set** procedure for details. If the screen is not in a "*graphics*" mode, an error will occur.

##Status
Exported qualified.
This means that you can only call the function by calling **Draw.Polygon**, not by calling **Polygon**.

##See also
**[view_set.html](View.Set)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various procedures in the **[drawmodule.html](Draw)** unit.
