
#GUI.SetBackgroundColor

##Syntax
**GUI.SetBackgroundColor** (_Color_ : **int**)



##Description
Changes the background colour of the currently-selected window to the color specified by _Color_. This does _not_ change the value of color 0 in the window. Instead it fills the entire window with the new background color and then redraws all the widgets.
For indented and extended items, the background color is assumed to be set to _gray_.
The alternate spelling is **GUI.SetBackgroundColour**



##Example
See **GUI.CreateFrame **for an example of **GUI.SetBackgroundColour**.



##Status
Exported qualified.
This means that you can only call the procedures by calling **GUI.SetBackgroundColor**, not by calling **SetBackgroundColor**.


