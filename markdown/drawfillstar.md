
#drawfillstar

##Syntax
**drawfillstar** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)



##Description
The **drawfillstar** procedure is used to draw a filled five pointed star on the screen bounded by a rectangle with bottom left and top right corners of (_x1_, _y1_) to (_x2_, _y2_) and filled using the specified _Color_. To get a star outlined in a different color, use **drawfillstar** with the _Color_ parameter set to the fill color and then call **drawstar** with the _Color_ parameter set to the border color. If _y1_ is greater than _y2_, then the star is drawn upside down.

![Doc image](drawfillstar01.gif)


##Example
This program will draw two stars beside each other. The first will be outlined in color 1 and filled in color 2. The second star will be upside down and both filled and outlined in color 3.


        setscreen ("graphics")
        drawfillstar (0, 0, 100, 100, 1)
        drawstar (0, 0, 100, 100, 2)
        drawfillstar (150, 100, 250, 0, 3)
##Details
The **drawfillstar** procedure is useful for drawing the American flag.
The meaning of the _Color_ number depends on the current palette. See the **palette** statement.
The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.



##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw&#133;** procedures. 


