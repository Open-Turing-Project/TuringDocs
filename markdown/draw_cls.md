
#Draw.Cls

##Syntax
**Draw.Cls**

##Description
The **Draw.Cls** (clear screen) procedure is used to blank the output window The cursor is set to the top left (to row 1, column 1).

##Details
The **Draw.Cls** procedure sets all pixels in the output window to color 0. In this way it differs from the **cls** and **Text.Cls** procedures which set the screen to the text background color.
The screen must be in "*graphics*" mode. See **View.Set** for details.

##Status
Exported qualified.
This means that you can only call the function by calling **Draw.Cls**, not by calling **Cls**.

##See also
**[view_set.html](View.Set)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various procedures in the **[drawmodule.html](Draw)** unit.
