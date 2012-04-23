
#Draw.FillArc

##Syntax
**Draw.FillArc** (_x_, _y_, _xRadius_, _yRadius_ **:** **int**,
_initialAngle_, _finalAngle_, _Color_ : **int**)



##Description
The **Draw.FillArc** procedure is used to draw a filled arc whose center is at (_x_, _y_). It then fills in the pie-shaped wedge using the specified _Color_. To outline a filled arc, use **Draw.FillArc** with the _Color_ parameter set to the fill color and then **Draw.Arc** with the _Color_ parameter set to the border color. For _initialAngle_ and _finalAngle_, which determine the edges of the wedge, zero degrees is "three o'clock" and 90 degrees is "twelve o'clock", etc. The horizontal and vertical distances from the center to the arc are given by _xRadius_ and _yRadius_.



![Doc Image](draw_fillarc01.gif)


##Example
This program draws a filled semicircle (actually, an approximation to a semicircle) whose center is (_midx_,0) the bottom center of the screen, in bright red. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen.

        View.Set ("graphics")
        const midx := maxx div 2
        Draw.FillArc (midx, 0, maxy, maxy, 0, 180, brightred)
##Details
The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.


##Status
Exported qualified.

This means that you can only call the function by calling **Draw.FillArc**, not by calling **FillArc**.


##See also
**[view_set.html](View.Set)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various procedures in the **[drawmodule.html](Draw)** unit.

