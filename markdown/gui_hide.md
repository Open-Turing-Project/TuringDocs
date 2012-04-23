
#GUI.Hide

##Syntax
**GUI.Hide** (_widgetID_ : **int**)


##Description
Hides a widget specified by _widgetID_. Used in conjunction with _Show_ to hide and show widgets. Hidden widgets cannot get events (i.e. respond to keystrokes or mouse clicks). If an active text field (see text field) is hidden, then any keystrokes in the window will be ignored.

In most cases where a widget is to appear, then disappear, then appear again, it is advised to create the widget once and hide it until it is to appear, whereupon **GUI.Show** is called. When the user is finished with the widget, the widget is hidden using **GUI.Hide**. This saves the overhead of creating and disposing of the same widget several times.


##Example
See **GUI.SetDisplayWhenCreated** for an example of **GUI.Hide**.


##Status
Exported qualified.

This means that you can only call the function by calling **GUI.Hide**, not by calling **Hide**.


##See also
**[gui_show.html](GUI.Show)**.

