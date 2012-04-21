
#drawdot

##Syntax
**drawdot** (*x*, *y*, *Color* : **int**)

##Description
The **drawdot** procedure is used to color the dot (pixel) at location (*x*, *y*) using the specified *Color*.
![Doc image](drawdot01.gif)

##Example
This program randomly draws dots with random colors. The **maxx**, **maxy** and **maxcolor** functions give the maximum x, y and color values.
        setscreen ("graphics")
        var x, y, c : int
        loop
            randint (x, 0, maxx)        % Random x
            randint (y, 0, maxy)        % Random y
            randint (c, 0, maxcolor)    % Random color
            drawdot (x, y, c)
        end loop
##Details
The screen should be in a "*graphics*" mode. If the screen is not in a "*graphics*" mode,  it will automatically be set to "*graphics*" mode. See **setscreen** for details.

##Example
This program draws a line of dots that bounce off the sides of the screen. It also demonstrates that you can use real coordinates tostore position (*x*, *y*), as long as you convert the coordinates to **int** values using **round** in the **drawdot** call.
        var x, y : real
        var dx, dy : real
        var clr : int := 1
        x := Rand.Int (1, maxx - 1)
        y := Rand.Int (1, maxy - 1)
        dx := Rand.Real - 0.5
        dy := Rand.Real - 0.5
        loop
            drawdot (round (x), round (y), clr)
            clr := (clr + 1) mod maxcolor
            x := x + dx
            y := y + dy
            if x <= 0 or x >= maxx then
                dx := -dx
            end if
            if y <= 0 or y >= maxy then
                dy := -dy
            end if
        end loop
##See also
**[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw** procedures. 
