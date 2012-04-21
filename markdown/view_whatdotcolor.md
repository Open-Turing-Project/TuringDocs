
#View.WhatDotColor

##Syntax
**View.W****hatDotColor** ( *x*, *y* : **int** ) : **int**

##Description
The **View.WhatDotColor** function is used to determine the color number of the specified pixel. The alternate spelling is **View.WhatDotColour**.

##Example
This program draws a line which bounces off the edges of the screen and makes a beep when it finds a pixel that has already been colored.
        View.Set ( "graphics" )
        var x, y : int := 0
        var dx, dx : int := 1
        loop
            if View.WhatDotColor ( x, y ) not= 0 and
	            View.WhatDotColor ( x, y ) not= brightred then
                Draw.FillOval (x, y, 10, 10, brightred)
            end if
            Draw.Dot ( x, y, 1 )
            x := x + dx
            y := y + dy
            if x = 0 or x = maxx then
                dx := -dx
            end if
            if y = 0 or y = maxy then
                dy := -dy
            end if
        end loop
##Example
Another example illustrates the use of **View.WhatDotColor** to determine the color of pixels in a window painted with multi-colorblocks. The actual color number appears in the block. The colorof the dot under the mouse cursor appears in the upper-leftcorner of the window.  Note that you can also place the mousecursor over the black text indicating the color number.

##Details
The screen should be in a"*graphics*" mode. If is not set to "*graphics*"*  *mode,  it will automatically be set to "*graphics*" mode. See **View.Set **for details.

##Status
Exported qualified.
This means that you can only call the function by calling **View.WhatDotColor**, not by calling **WhatDotColor**.

##See also
**[draw_dot.html](Draw.Dot)**, which is used for setting the color of a pixel. See also **[maxx.html](maxx)** and **[maxy.html](maxy)**, which are used to determine the number of pixels on the screen.
