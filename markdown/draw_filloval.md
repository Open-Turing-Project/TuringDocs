
# Draw.FillOval

## Syntax
**Draw.FillOval** (_x_, _y_, _xRadius_, _yRadius_, _Color_ **: int**)

## Description
The **Draw.FillOval** procedure is used to draw a filled oval whose center is at (_x_, _y_). The horizontal and vertical distances from the center to the oval are given by _xRadius_ and _yRadius_. To get an oval outlined in a different color, use **Draw.FillOval** with the _Color_ parameter set to the fill color and then call **Draw.Oval** with the _Color_ parameter set to the border color.



![Doc Image](draw_filloval01.gif)


## Example
This program draws a large filled oval that just touches each edge of the screen using color number 1. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The center of the oval is at (_midx_, _midy_), which is the middle of the screen.

        View.Set ("graphics")
        const midx := maxx div 2
        const midy := maxy div 2
        Draw.FillOval (midx, midy, midx, midy, 1)
## Details
Ideally, a circle is drawn when _xRadius_ = _yRadius_.

The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, am error will occur.


## Status
Exported qualified.

This means that you can only call the function by calling **Draw.FillOval**, not by calling **FillOval**.


## See also
**[View.Set](view_set.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various procedures in the **[Draw](drawmodule.html)** unit.

