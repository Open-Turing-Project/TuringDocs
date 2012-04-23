
#drawfillarc

##Syntax
**drawfillarc** (_x_, _y_, _xRadius_, _yRadius_ : **int**,
_initialAngle_, _finalAngle_, _Color_ : **int**)



##Description
The **drawfillarc** procedure is used to draw a filled arc whose center is at (_x_, _y_). It then fills in the pie-shaped wedge using the specified _Color_. To outline a filled arc, use **drawfillarc** with the _Color_ parameter set to the fill color and then **drawarc** with the _Color_ parameter set to the border color. For _initialAngle_ and _finalAngle_, which determine the edges of the wedge, zero degrees is "three o'clock" and 90 degrees is "twelve o'clock", etc. The horizontal and vertical distances from the center to the arc are given by _xRadius_ and _yRadius_.



![Doc Image](drawfillarc01.gif)


##Example
This program draws a filled semicircle (actually, an approximation to a semicircle) whose center is (_midx_,0), the bottom center of the screen, using color number 1. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen.

        setscreen ("graphics")
        const midx := maxx div 2
        drawfillarc (midx, 0, maxy, maxy, 0, 180, 1)
##Details
On the PC, **drawfillarc**  fills the pie-shaped wedge by using a "flood" fill and is thus subject to all the conditions of a flood fill. 

The meaning of the _Color_ number depends on the current palette. See the **palette** statement.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw&#133;** procedures.

