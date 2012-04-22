
#Mouse.ButtonMoved

##Syntax
**Mouse.ButtonMoved** (_motion_ : **string**) : **boolean**



##Description
The **Mouse.ButtonMoved** function indicates whether there is a mouse event of the appropriate type on the mouse queue. Events are either "up", "down", "updown" or "downup" events (although the "downup" and "updown" are the same event).
The parameter _motion_ must be one of "up", "down", "updown" or "downup". If an event of the type requested is in the queue, **Mouse.ButtonMoved** returns **true**. If the event is not in the queue, then **Mouse.ButtonMoved** returns **false**.
In "_single-button mode_" (where the mouse is treated like a one-button mouse), a "down" event occurs whenever all the buttons are up and a button is pressed. An "up" event takes place when the last button is released so that no buttons remain pressed.
In "_multi-button mode_", a "down" event occurs whenever any button is pressed, and an "up" event occurs whenever any button is released.



##Example
This program draws random circles on the screen until the user clicks the mouse button, whereupon is starts drawing random boxes. Clicking the mouse button switches between the two.


        var circles: boolean := true
        loop
            var x, y, radius, clr: int
            if Mouse.ButtonMoved ("down") then
                var buttonnumber, buttonupdown : int
                Mouse.ButtonWait ("down", x, y, buttonnumber, 
                                        buttonupdown)
                circles := not circles
            end if
            x := Rand.Int (0, maxx)
            y := Rand.Int (0, maxy)
            radius := Rand.Int (0, 100)
            clr := Rand.Int (0, maxcolor)
            if circles then
                Draw.FillOval (x, y, radius, radius, clr)
            else
                Draw.FillBox (x, y, x + radius, y + radius, clr)
            end if
        end loop
##Example
This is an example demonstrating how to check for both character and mouse input at the same time.


        var ch : string (1)
        var x, y, btnnum, btnupdown : int
        loop
            if hasch then
                getch (ch)
                Text.Locate (1, 1)
                put "The character entered is a: ", ch
            end if
            if Mouse.ButtonMoved ("down") then
                Mouse.ButtonWait ("down", x, y, btnnum, btnupdown)
                Text.Locate (1, 1)
                put "The button was clicked at position: ", x, ", ",y
            end if
        end loop
##Details
**Mouse.ButtonMoved** can be thought of as the mouse equivalent of **hasch** in that they both check for something in a queue and both return immediately.



##Status
Exported qualified.
This means that you can only call the function by calling **Mouse.ButtonMoved**, not by calling **ButtonMoved**.



##See also
**[](Mouse.ButtonMoved)** to get mouse events saved in the queue. See also **[mouse_buttonchoose.html](Mouse.ButtonChoose)** to switch between "_single-button mode_" and "_multi-button mode_".


