
#buttonmoved

##Syntax
**buttonmoved** (*motion* : **string**) : **boolean**



##Description
The **buttonmoved** function indicates whether there is a mouse event of the appropriate type on the mouse queue. Events are either "up", "down", "updown" or "downup" events (although the "downup" and "updown" are the same event).
The parameter *motion* must be one of "up", "down", "updown" or "downup". If an event of the type requested is in the queue, **buttonmoved** returns **true**. If the event is not in the queue, then **buttonmoved** returns **false**.
In "*single-button mode*" (where the mouse is treated like a one-button mouse), a "down" event occurs whenever all the buttons are up and a button is pressed. An "up" event takes place when the last button is released so that no buttons remain pressed.
In "*multi-button mode*", a "down" event occurs whenever any button is pressed, and an "up" event occurs whenever any button is released.



##Example
This program draws random circles on the screen until the user clicks the mouse button, whereupon is starts drawing random boxes. Clicking the mouse button switches between the two.


        var circles: boolean := true
        loop
            var x, y, radius, clr: int
            if buttonmoved ("down") then
                var buttonnumber, buttonupdown : int
                buttonwait ("down", x, y, buttonnumber, buttonupdown)
                circles := not circles
            end if
            randint (x, 0, maxx)
            randint (y, 0, maxy)
            randint (radius, 0, 100)
            randint (clr, 0, maxcolor)
            if circles then
                drawfilloval (x, y, radius, radius, clr)
            else
                drawfillbox (x, y, x + radius, y + radius, clr)
            end if
        end loop
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
**buttonmoved** can be thought of as the mouse equivalent of **hasch** in that they both check for something in a queue and both return immediately.



##See also
**[buttonwait.html](buttonwait)** to get mouse events saved in the queue. See also **[buttonchoose.html](buttonchoose)** to switch between "*single-button mode*" and "*multi-button mode*".
See also predefined unit **[mousemodule.html](Mouse)**.


