
# drawfilloval

## Syntax
**drawfilloval** (_x_, _y_, _xRadius_, _yRadius_, _Color_ : **int**)

## Description
The **drawfilloval** procedure is used to draw a filled oval whose center is at (_x_, _y_). The horizontal and vertical distances from the center to the oval are given by _xRadius_ and _yRadius_. To get an oval outlined in a different color, use **drawfilloval** with the _Color_ parameter set to the fill color and then call **drawoval**  with the _Color_ parameter set to the border color.



![Doc Image](drawfilloval01.gif)


## Example
This program draws a large filled oval that just touches each edge of the screen using color number 1. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The center of the oval is at (_midx_, _midy_), which is the middle of the screen.

        setscreen ("graphics")
        const midx := maxx div 2
        const midy := maxy div 2
        drawfilloval (midx, midy, midx, midy, 1)
## Details
Ideally, a circle is drawn when _xRadius_ = _yRadius_. In fact, the aspect ratio (the ratio of height to width of pixels displayed on the screen) of the IBM PC compatibles is not 1.0, so this does not draw a true circle. In CGA graphics mode this ratio is 5 to 4.

The meaning of the _Color_ number depends on the current palette. See the **palette** statement.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


## See also
**[setscreen](setscreen.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various **draw&#133;** procedures.

