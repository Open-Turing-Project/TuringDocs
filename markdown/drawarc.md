
#drawarc

##Syntax
**drawarc** (*x*, *y*, *xRadius*, *yRadius* : **int**,   *initialAngle*, *finalAngle*, *Color* : **int**)

##Description
The **drawarc** procedure is used to draw an arc whose center is at (*x*, *y*). This is just like **drawoval**, except that you must also give two angles, *initialAngle *and *finalAngle*, which determine where to start and stop drawing. Zero degrees is "three o'clock", 90 degrees is "twelve o'clock", etc. The horizontal and vertical distances from the center to the arc are given by *xRadius *and *yRadius*.
![Doc image](drawarc01.gif)

##Example
This program draws a semicircle (actually, an approximation to a semicircle) whose center is (*midx*,0) the bottom center of the screen, using color number 1. The **maxx** and **maxy** functions are used to determine the maximum x and y values on the screen.
        setscreen ("graphics")
        const midx := maxx div 2
        drawarc (midx, 0, maxy, maxy, 0, 180, 1)
##Details
The meaning of the *Color* number depends on the current palette. See the **palette** statement.
The screen should be in a "*graphics*" mode. See the **setscreen** procedure for details. If the screen is not in a "*graphics*" mode, it will automatically be set to "*graphics*" mode.

##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw** procedures.
