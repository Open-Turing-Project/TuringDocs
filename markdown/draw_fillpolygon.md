
#Draw.FillPolygon

##Syntax
**Draw.FillPolygon** (_x_, _y_  : **array** 1 .. * **of** **int**, _n_ : **int**, _Color_ : **int**)



##Description
The **Draw.FillPolygon** procedure is used to draw a filled polygon with _n_ points. The polygon is described by the points (_x_(1), _y_(1)) to (_x_(2), _y_(2)) to (_x_(3), _y_(3)) and so on to (_x_(_n_), _y_ (_n_)). The polygon will be drawn and filled with _Color_. 
To get an polygon outlined in a different color, use **Draw.FillPolygon** with the _Color_ parameter set to the fill color and then call **Draw.Polygon** with the _Color_ parameter set to the border color.



##Example
This program will create a filled octagon and display it in bright blue and then outline it in cyan.


        View.Set ("graphics")
        var x : array 1..8 of int := init (100, 100, 135, 185, 
                                   220, 220, 185, 135)
        var y : array 1..8 of int := init (100, 150, 185, 185,
                                   150, 100, 65, 65)
        Draw.FillPolygon (x, y, 8, brightblue)
        Draw.Polygon (x, y, 8, cyan)
##Details
The PC allows a maximum of 256 points. As well, **Draw.FillPolygon** can fail (due to lack of memory). If failure occurs, it will try to draw an outline of the polygon. If that also fails, it will not draw anything. 
The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.



##Status
Exported qualified.
This means that you can only call the function by calling **Draw.FillPolygon**, not by calling **FillPolygon**.



##See also
**[view_set.html](View.Set)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various procedures in the **[drawmodule.html](Draw)** unit.


