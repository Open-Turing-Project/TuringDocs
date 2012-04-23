
#GUI.SetDefault

##Syntax
**GUI.SetDefault** (_widgetID_ : **int**, _default_ : **boolean**)


##Description
Sets the "default status" of a button specified by _widgetID_. If a button is the default button, then it is drawn with a heavy outline and it is activated when the user presses ENTER.

Only one button can be the default button per window. If a button is set to be the default button, then the previous default button has its "default status" removed.


##Status
Exported qualified.

This means that you can only call the procedures by calling **GUI.SetDefault**, not by calling **SetDefault**.


##See also
[gui_createbutton_full.html](GUI.CreateButton).

