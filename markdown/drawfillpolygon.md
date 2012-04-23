
# drawfillpolygon

## Syntax
**drawfillpolygon** (_x_, _y_  : **array** 1 .. * **of** **int**, _n_ : **int**, _Color_ : **int**)

## Description
The **drawfillpolygon** procedure is used to draw a filled polygon with _n_ points. The polygon is described by the points (_x_(1), _y_(1)) to (_x_(2), _y_(2)) to (_x_(3), _y_(3)) and so on to (_x_(_n_), _y_ (_n_)). The polygon will be drawn and filled with _Color_. 

To get an polygon outlined in a different color, use **drawfillpolygon** with the _Color_ parameter set to the fill color and then call **drawpolygon**  with the _Color_ parameter set to the border color.


## Example
This program will create a filled octagon and display it in color 1 and then outline it in color 3.

        setscreen ("graphics")
        var x : array 1..8 of int := init (100, 100, 135, 185, 
                                   220, 220, 185, 135)
        var y : array 1..8 of int := init (100, 150, 185, 185,
                                   150, 100, 65, 65)
        drawfillpolygon (x, y, 8, 1)
        drawpolygon (x, y, 8, 3)
## Details
The PC allows a maximum of 256 points. As well, **drawfillpolygon**  can fail (due to lack of memory). If failure occurs, it will try to draw an outline of the polygon. If that also fails, it will not draw anything. 

The meaning of the _Color_ number depends on the current palette. See the **palette** statement.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


## See also
**[setscreen](setscreen.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various **draw&#133;** procedures.

