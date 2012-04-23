
#Text.Cls

##Syntax
**Text.Cls**


##Description
The **Text.Cls** (clear screen) procedure is used to blank the screen to the text background color. The cursor is set to the top left (to row 1, column 1).


##Details
The screen should be in a "_screen_" or "_graphics_" mode. If the screen mode has not been set, it will automatically be set to "_screen_" mode. See **View.Set** for details.


##Status
Exported qualified.

This means that you can only call the function by calling **Text.Cls**, not by calling **Cls**.

