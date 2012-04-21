
#Draw.FillPolygon

##Syntax
**Draw.FillPolygon** (*x*, *y*  : **array** 1 .. * **of** **int**, *n* : **int**, *Color* : **int**)

##Description
The **Draw.FillPolygon** procedure is used to draw a filled polygon with *n* points. The polygon is described by the points (*x*(1), *y*(1)) to (*x*(2), *y*(2)) to (*x*(3), *y*(3)) and so on to (*x*(*n*), *y* (*n*)). The polygon will be drawn and filled with *Color*. 
To get an polygon outlined in a different color, use **Draw.FillPolygon **with the *Color* parameter set to the fill color and then call **Draw.Polygon** with the *Color* parameter set to the border color.

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
The PC allows a maximum of 256 points. As well, **Draw.FillPolygon  **can fail (due to lack of memory). If failure occurs, it will try to draw an outline of the polygon. If that also fails, it will not draw anything. 
The screen must be in a "*graphics*" mode. See the **View.Set** procedure for details. If the screen is not in a "*graphics*" mode, an error will occur.

##Status
Exported qualified.
This means that you can only call the function by calling **Draw.FillPolygon**, not by calling **FillPolygon**.

##See also
**[view_set.html](View.Set)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various procedures in the **[drawmodule.html](Draw)** unit.
