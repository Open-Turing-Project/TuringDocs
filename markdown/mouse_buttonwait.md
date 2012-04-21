
#Mouse.ButtonWait

##Syntax
**Mouse.ButtonWait **(*motion* : **string**,  **var** *x*, *y*, *buttonNumber*, *buttonUpDown* : **int**)



##Description
The **Mouse.ButtonWait** procedure gets information about a mouse event and removes it from the queue.
The parameter *motion* must be one of "up", "down", "updown" or "downup". If an event of the type requested is in the queue, **Mouse.ButtonWait** returns** **instantly. If there isn't such an event, **Mouse.ButtonWait** waits until there is one and then returns (much like **getch** handles keystrokes).
In "*single-button mode*" (where the mouse is treated like a one-button mouse), a "down" event occurs whenever all the buttons are up and a button is pressed. An "up" event takes place when the last button is released so that no buttons remain pressed.
In "*multi-button mode*", a "down" event occurs whenever any button is pressed, and an "up" event occurs whenever any button is released.
The parameters *x* and *y* are set to the position of the mouse cursor when the button was pressed. The parameter *buttonnumber* is set to 1 when in "*single-button mode*". In  "*multi-button mode*", it is set to 1 if the left button was pressed, 2 if the middle button was pressed, and 3 if the right button was pressed. The parameter *buttonupdown* is set to 1, if a button was pressed and 0 if a button was released. 



##Example
This program draws lines. It starts a line where the user presses down and continues to update the line while the mouse button is held down. When the button is released, the line is permanently draw and the user can draw another line.


        var x, y, btnNumber, btnUpDown, buttons : int
        var nx, ny : int
        loop
            Mouse.ButtonWait ("down", x, y, btnNumber, btnUpDown)
            nx := x
            ny := y
            loop
                Draw.Line (x, y, nx, ny, 0) % Erase previous line
                exit when Mouse.ButtonMoved ("up")
                Mouse.Where (nx, ny, buttons)
                Draw.Line (x, y, nx, ny, 1) % Draw line to position
            end loop
            Mouse.ButtonWait ("up", nx, ny, btnNumber, btnUpDown)
            Draw.Line (x, y, nx, ny, 2) % Draw line to final position
        end loop
##Example
This is an example demonstrating how to check for both character and mouse input at the same time.


        var ch : string (1)
        var x, y, btnNum, btnUpDown : int
        loop
            if hasch then
                getch (ch)
                Text.Locate (1, 1)
                put "The character entered is a: ", ch
            end if
            if Mouse.ButtonMoved ("down") then
                Mouse.ButtonWait ("down", x, y, btnNum, btnUpDown)
                Text.Locate (1, 1)
                put "The button was clicked at position: ", x, ", ",y
            end if
        end loop
##Details
**Mouse.ButtonWait **can be thought of as the mouse equivalent of **getch** in that they both read something in a queue and both wait until they get the thing they're looking for.



##Status
Exported qualified.
This means that you can only call the function by calling **Mouse.ButtonWait**, not by calling **ButtonWait**.



##See also
**[](Mouse.ButtonWait)** to see if an appropriate event is in the queue. See also **[mouse_buttonchoose.html](Mouse.ButtonChoose)** to switch between "*single-button mode*" and "*multi-button mode*".


