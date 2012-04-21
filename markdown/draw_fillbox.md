
#Draw.FillBox

##Syntax
**Draw.FillBox** (*x1*, *y1*, *x2*, *y2*, *Color* : **int**)



##Description
The **Draw.FillBox **procedure is used to draw a filled box on the screen with bottom left and top right corners of (*x1*, *y1*) to (*x2*, *y2*) filled using the specified *Color*. To get a box outlined in a different color, use **Draw.FillBox** with the *Color* parameter set to the fill color and then call **Draw.Box**  with the *Color* parameter set to the border color.

![Doc image](draw_fillbox01.gif)


##Example
This program will fill the bottom half of the screen with color 1 and then outline it in color 2. The **maxx** and **maxy **functions are used to determine the maximum x and y values on the screen. The point (0,0) is the left bottom of the screen and (**maxx**, **maxy**) is the right top.


        View.Set ("graphics")
        Draw.FillBox (0, 0, maxx, maxy div 2, 1)
        Draw.Box (0, 0, maxx, maxy div 2, 2)
##Details
The screen must be in a "*graphics*" mode. See the **View.Set** procedure for details. If the screen is not in a "*graphics*" mode, an error will occur.



##Status
Exported qualified.
This means that you can only call the function by calling **Draw.FillBox**, not by calling **FillBox**.



##See also
**[view_set.html](View.Set)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various procedures in the **[drawmodule.html](Draw)** unit.


