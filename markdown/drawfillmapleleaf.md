
#drawfillmapleleaf

##Syntax
**drawfillmapleleaf** (*x1*, *y1*, *x2*, *y2*, *Color* : **int**)



##Description
The **drawfillmapleleaf** procedure is used to draw a filled maple leaf on the screen bounded by a rectangle with bottom left and top right corners of (*x1*, *y1*) to (*x2*, *y2*) and filled using the specified *Color*. To get a maple leaf outlined in a different color, use **drawfillmapleleaf** with the *Color* parameter set to the fill color and then call **drawmapleleaf**  with the *Color* parameter set to the border color. If *y1* is greater than *y2*, then the maple leaf is drawn upside down.

![Doc image](drawfillmapleleaf01.gif)


##Example
This program will draw two maple leaves beside each other. The first will be outlined in color 1 and filled in color 2. The second maple leaf will be upside down and both filled and outlined in color 3.


        setscreen ("graphics")
        drawfillmapleleaf (0, 0, 100, 100, 1)
        drawmapleleaf (0, 0, 100, 100, 2)
        drawfillmapleleaf (150, 100, 250, 0, 3)
##Details
The **drawfillmapleleaf** procedure is useful for drawing the Canadian flag.
The meaning of the *Color* number depends on the current palette. See the **palette** statement.
The screen should be in a "*graphics*" mode. See the **setscreen** procedure for details. If the screen is not in a "*graphics*" mode, it will automatically be set to "*graphics*" mode.



##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw** procedures.


