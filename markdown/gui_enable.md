
#GUI.Enable

##Syntax
**GUI.Enable** (*widgetID* : **int**)

##Description
Enables a disabled widget specified by *widgetID*. 
Used in conjunction with **GUI.Disable** to enable and disable widgets. 
Disabled widgets generally are "grayed out" to visually depict their disabled status.
Disabled widgets do not respond to keystrokes or mouse clicks.

##Example
See **GUI.Disable** for an example of **GUI.Enable**.

##Details
The following types of widgets can be enabled or disabled:
 Buttons, Check Boxes, Radio Buttons, Picture Buttons,
Picture Radio Buttons, Horizontal Scroll Bars, Horizontal Sliders,Canvases, Text Fields, Vertical Scroll Bars, Vertical Sliders

##Status
Exported qualified.
This means that you can only call the procedure by calling **GUI.Enable**, not by calling **Enable**.

##See also
**[gui_disable.html](GUI.Disable)**.
