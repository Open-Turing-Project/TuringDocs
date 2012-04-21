
#GUI.Refresh

##Syntax
**GUI.Refresh**



##Description
This routine redraws all the widgets in the currently-selected window. This is used when some form of drawing may have overwritten the widgets in a window. 
It is often used when there is some possibility that the widgets may have been drawn over. For example, a program that places buttons on top of a background image should call **GUI.Refresh** when the image is changed.



##Details
**GUI.Refresh** is used by the GUI Library to redraw all the widgets when the background colour of a window has changed.



##Status
Exported qualified.
This means that you can only call the procedures by calling **GUI.Refresh**, not by calling **Refresh**.


