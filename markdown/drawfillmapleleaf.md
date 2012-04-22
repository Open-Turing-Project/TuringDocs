
#drawfillmapleleaf

##Syntax
**drawfillmapleleaf** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)



##Description
The **drawfillmapleleaf** procedure is used to draw a filled maple leaf on the screen bounded by a rectangle with bottom left and top right corners of (_x1_, _y1_) to (_x2_, _y2_) and filled using the specified _Color_. To get a maple leaf outlined in a different color, use **drawfillmapleleaf** with the _Color_ parameter set to the fill color and then call **drawmapleleaf**  with the _Color_ parameter set to the border color. If _y1_ is greater than _y2_, then the maple leaf is drawn upside down.

![Doc image](drawfillmapleleaf01.gif)


##Example
This program will draw two maple leaves beside each other. The first will be outlined in color 1 and filled in color 2. The second maple leaf will be upside down and both filled and outlined in color 3.


        setscreen ("graphics")
        drawfillmapleleaf (0, 0, 100, 100, 1)
        drawmapleleaf (0, 0, 100, 100, 2)
        drawfillmapleleaf (150, 100, 250, 0, 3)
##Details
The **drawfillmapleleaf** procedure is useful for drawing the Canadian flag.
The meaning of the _Color_ number depends on the current palette. See the **palette** statement.
The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.



##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw&#133;** procedures.


