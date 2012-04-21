
#mousewhere

##Syntax
**mousewhere **(**var** *x*, *y*, *button* : **int**)

##Description
The **mousewhere** procedure is used to get current information about the status of the mouse. The parameters *x* and *y* are set to the current location of the mouse cursor. If the program is running on a system using windows, the cursor may be outside the window. This means that *x* and *y* may be set to values outside of the bounds of 0 to **maxx** and 0 to **maxy**.
The parameter *button* is set depending on the current mode. In "*single-button mode*" (where the mouse is treated like a one-button mouse), *button* is set to 0 if all the mouse buttons are up, and 1 if any of the mouse buttons are down. In "*multi-button mode*", *button*** **is assigned the sum of 1 if the left button is down, 10 if the middle button is down, and 100 if the right button is down. Thus if *button* has the value of 101, then it means that the left and right mouse buttons were depressed.

##Example
A program that displays the status of the mouse at the top left corner of the screen.
        var x, y, button : int
        loop
            mousewhere (x, y, button)
            locate (1, 1)
            if button = 0 then
                put x : 4, "  ", y : 4, "  button up"
            else
                put x : 4, "  ", y : 4, "  button down"
            end if
        end loop
##See also
**[buttonmoved.html](buttonmoved)** and **[buttonwait.html](buttonwait)** to get mouse events saved in a queue. See also **[buttonchoose.html](buttonchoose)** to switch between "*single-button mode*" and "*multi-button mode*".