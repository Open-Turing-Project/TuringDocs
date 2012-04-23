
#drawfillbox

##Syntax
**drawfillbox** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)


##Description
The **drawfillbox** procedure is used to draw a filled box on the screen with bottom left and top right corners of (_x1_, _y1_) to (_x2_, _y2_) filled using the specified _Color_. To get a box outlined in a different color, use **drawfillbox** with the _Color_ parameter set to the fill color and then call **drawbox**  with the _Color_ parameter set to the border color.



![Doc Image](drawfillbox01.gif)


##Example
This program will fill the bottom half of the screen with color 1 and then outline it in color 2. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen. The point (0,0) is the left bottom of the screen and (**maxx**, **maxy**) is the right top.

        setscreen ("graphics")
        drawfillbox (0, 0, maxx, maxy div 2, 1)
        drawbox (0, 0, maxx, maxy div 2, 2)
##Details
The meaning of the _Color_ number depends on the current palette. See the **palette** statement.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw&#133;** procedures. 

