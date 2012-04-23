
# Draw.Fill

## Syntax
**Draw.Fill** (_x_, _y_ **:** **int**, _fillColor_, _borderColor_ **: int**)

## Description
The **Draw.Fill** procedure is used to color in a figure that is on the screen. Starting at (_x_, _y_), the figure is filled with _fillColor_ to a surrounding border whose color is _borderColor_.



![Doc Image](draw_fill01.gif)


## Example
This program draws an oval with x and y radius of 10 in the center of the screen in bright green. Then the oval is filled with red. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen.



        View.Set ("graphics")
        const midx := maxx div 2
        const midy := maxy div 2
        Draw.Oval (midx, midy, 10, 10, brightgreen)
        Draw.Fill (midx, midy, red, brightgreen)
## Details
The screen must be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.


## Status
Exported qualified.

This means that you can only call the function by calling **Draw.Fill**, not by calling **Fill.**


## See also
**[View.Set](view_set.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various procedures in the **[Draw](drawmodule.html)** unit.

