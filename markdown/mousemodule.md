
#Mouse

##Description
This unit contains the predefined subprograms that deal with using the mouse in a Turing program. The routines allow you to get the current mouse cursor position, check if a button has been pressed and get the information if it has. There are also routines to hide and show the mouse on systems where it makes sense. (On GUI based systems like the Macintosh, the mouse can't be hidden as it may be needed by other applications running at the same time.)

All routines in the Mouse module are exported qualified (and thus must be prefaced with "**Mouse.**").


##Entry Points

[mouse_where.html](**Where**)   Gets the current location of the mouse cursor and status of the mouse buttons.
[mouse_buttonmoved.html](**ButtonMoved**)   Checks to see if a mouse button has been pressed.
[mouse_buttonwait.html](**ButtonWait**)   Gets information about a mouse button being pressed such as where it was pressed, which button was pressed, etc.
[mouse_buttonchoose.html](**ButtonChoose**)   Selects the mode for the mouse (either single button mode or multi-button mode).
