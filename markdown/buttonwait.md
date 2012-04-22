
#buttonwait

##Syntax
**buttonwait** (_motion_ : **string**, 
**var** _x_, _y_, _buttonnumber_, _buttonupdown_ : **int**)




##Description
The **buttonwait** procedure gets information about a mouse event and removes it from the queue.
The parameter _motion_ must be one of "up", "down", "updown" or "downup". If an event of the type requested is in the queue, **buttonwait** returns instantly. If there isn't such an event, **buttonwait** waits until there is one and then returns (much like **getch** handles keystrokes).
In "_single-button mode_" (where the mouse is treated like a one-button mouse), a "down" event occurs whenever all the buttons are up and a button is pressed. An "up" event takes place when the last button is released so that no buttons remain pressed.
In "_multi-button mode_", a "down" event occurs whenever any button is pressed, and an "up" event occurs whenever any button is released.
The parameters _x_ and _y_ are set to the position of the mouse cursor when the button was pressed. The parameter _buttonnumber_ is set to 1 when in "_single-button mode_". In  "_multi-button mode_", it is set to 1 if the left button was pressed, 2 if the middle button was pressed, and 3 if the right button was pressed. The parameter _buttonupdown_ is set to 1, if a button was pressed and 0 if a button was released. 



##Example
This program draws lines. It starts a line where the user presses down and continues to update the line while the mouse button is held down. When the button is released, the line is permanently draw and the user can draw another line.


        var x, y, buttonnumber, buttonupdown, buttons : int
        var nx, ny : int
        loop
            buttonwait ("down", x, y, buttonnumber, buttonupdown)
            nx := x
            ny := y
            loop
                drawline (x, y, nx, ny, 0)  % Erase previous line
                exit when buttonmoved ("up")
                mousewhere (nx, ny, buttons)
                drawline (x, y, nx, ny, 1)  % Draw line to position
            end loop
            buttonwait ("up", nx, ny, buttonnumber, buttonupdown)
            drawline (x, y, nx, ny, 2)  % Draw line to final position
        end loop
##Example
In the previous example, when the mouse moves, the line is erased by drawing it in white. This erases anything thatthe line was drawn on top of, including previous lines. A more complete example involving the clicking and dragging of filled rectangles using the mouse is available. In this example, the background is fully restored when the rectangle is moved by using "xor".




##Example
This is an example demonstrating how to check for both character and mouse input at the same time.


        var ch : string (1)
        var x, y, btnnum, btnupdown : int
        loop
            if hasch then
                getch (ch)
                locate (1, 1)
                put "The character entered is a: ", ch
            end if
            if buttonmoved ("down") then
                buttonwait ("down", x, y, btnnum, btnupdown)
                locate (1, 1)
                put "The button was clicked at position: ", x, ", ",y
            end if
        end loop
##Details
**buttonwait** can be thought of as the mouse equivalent of **getch** in that they both read something in a queue and both wait until they get the thing they're looking for.



##See also
**[](buttonwait)** to see if an appropriate event is in the queue. See also **[buttonchoose.html](buttonchoose)** to switch between "_single-button mode_" and "_multi-button mode_".
See also predefined unit **[mousemodule.html](Mouse)**.


