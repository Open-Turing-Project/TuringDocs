
# Draw.Oval

## Syntax
**Draw.Oval** (_x_, _y_, _xRadius_, _yRadius_, _Color_ : **int**)

## Description
The **Draw.Oval** procedure is used to draw an oval whose center is at (_x_, _y_). The horizontal and vertical distances from the center to the oval are given by _xRadius_ and _yRadius_.



![Doc Image](draw_oval01.gif)


## Example
This program draws a large oval that just touches each edge of the screen in magenta. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The center of the oval is at (_midx_, _midy_), which is the middle of the screen.

        View.Set ("graphics")
        const midx := maxx div 2
        const midy := maxy div 2
        Draw.Oval (midx, midy, midx, midy, magenta)
## Details
Ideally, a circle is drawn when _xRadius_ = _yRadius_. In fact, the aspect ratio (the ratio of height to width of pixels displayed on the screen) of the IBM PC compatibles is not 1.0, so this does not draw a true circle. In CGA graphics mode this ratio is 5 to 4.

The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.


## Status
Exported qualified.

This means that you can only call the function by calling **Draw.Oval**, not by calling **Oval**.


## See also
**[View.Set](view_set.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various procedures in the **[Draw](drawmodule.html)** unit.

