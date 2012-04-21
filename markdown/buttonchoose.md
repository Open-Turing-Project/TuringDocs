
#buttonchoose

##Syntax
**buttonchoose** (*choice* : **string**)

##Description
The **buttonchoose** procedure is used to change the mode of the mouse. In Turing, the mouse can either be in "*single-button mode*" or in "*multi-button mode*". In "*single-button mode*" the mouse is treated as a one button mouse. A button is considered pressed when any button is pressed and released only when all buttons have been released.
In Turing, the mouse starts in "*single-button mode*".
The parameter *choice* can be one of "singlebutton", "onebutton" (which switch the mouse into "*single-button mode*") or "multibutton" (which switches the mouse into "*multi-button mode*").

##Example
A program that displays the status of the mouse at the top left corner of the screen.
        buttonchoose ("multibutton")
        var x, y, button, left, middle, right : int
        mousewhere (x, y, button)
        left := button mod 10           % left = 0 or 1
        middle := (button - left) mod 100   % middle = 0 or 10
        right := button - middle - left     % right = 0 or 100
        if left = 1 then
            put "left button down"
        end if
        if middle = 10 then
            put "middle button down"
        end if
        if right = 100 then
            put "right button down"
        end if
##See also
**[buttonmoved.html](buttonmoved)** and **[buttonwait.html](buttonwait)** to get mouse events saved in a queue. See also **[mousewhere.html](mousewhere)** to get the current status of mouse button(s).
See also predefined unit **[mousemodule.html](Mouse)**.