
# Draw.Arc

## Syntax
**Draw.Arc** (_x_, _y_, _xRadius_, _yRadius_ **:** **int**,      _initialAngle_, _finalAngle_, _Color_ : **int**)

## Description
The **Draw.Arc** procedure is used to draw an arc whose center is at (_x_, _y_). This is just like **Draw.Oval**, except that you must also give two angles, _initialAngle_ and _finalAngle_, which determine where to start and stop drawing. Zero degrees is "three o'clock", 90 degrees is "twelve o'clock", etc. The horizontal and vertical distances from the center to the arc are given by _xRadius_ and _yRadius_.



![Doc Image](draw_arc01.gif)


## Example
This program draws a quarter circle whose center is (_midx_, _midy_) the center of the screen, using color number 1. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen.

        View.Set ("graphics")
        const midx := maxx div 2
        const midy := maxy div 2
        Draw.Arc (midx, midy, midx, midy, 0, 90, 1)
## Details
The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur


## Status
Exported qualified.

This means that you can only call the function by calling **Draw.Arc**, not by calling **Arc**.


## See also
**[View.Set](view_set.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various procedures in the **[Draw](drawmodule.html)** unit.

