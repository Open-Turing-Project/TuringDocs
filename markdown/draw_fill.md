
#Draw.Fill

##Syntax
**Draw.Fill** (*x*, *y* **:** **int**, *fillColor*,** ***borderColor* **: int**)

##Description
The **Draw.Fill **procedure is used to color in a figure that is on the screen. Starting at (*x*, *y*), the figure is filled with *fillColor* to a surrounding border whose color is *borderColor*.
![Doc image](draw_fill01.gif)

##Example
This program draws an oval with x and y radius of 10 in the center of the screen in bright green. Then the oval is filled with red. The **maxx** and **maxy **functions are used to determine the maximum x and y values on the screen.

        View.Set ("graphics")
        const midx := maxx div 2
        const midy := maxy div 2
        Draw.Oval (midx, midy, 10, 10, brightgreen)
        Draw.Fill (midx, midy, red, brightgreen)
##Details
The screen must be in a "*graphics*" mode. See the **View.Set** procedure for details. If the screen is not in a "*graphics*" mode, an error will occur.

##Status
Exported qualified.
This means that you can only call the function by calling **Draw.Fill**, not by calling **Fill.**

##See also
**[view_set.html](View.Set)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various procedures in the **[drawmodule.html](Draw)** unit.
