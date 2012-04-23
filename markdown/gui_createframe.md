
# GUI.CreateFrame

## Syntax
**GUI.CreateFrame** (_x1_, _y1_, _x2_, _y2_, _kind_ : **int**) : **int**

## Description
Creates a frame and returns the frame's widget ID.

A frame is a box drawn around other GUI widgets to make the window look better and help organize the GUI elements.



![Doc Image](gui_createframe01.gif)

**Three Types of Frames With a Label in Each Frame**

Frames are the only GUI widgets that can have other widgets placed within them. Frames are passive widgets, meaning that they do not respond to button clicks or keystrokes.

The _x1_ and _y1_ parameters specify the lower-left corner of the frame and the _x2_ and _y2_ parameters specify the upper-right corner of the frame. The _kind_ parameter specifies the type of frame. This is one of 0, _GUI.LINE_, _GUI.INDENT_, or _GUI.EXDENT_. A _kind_ of 0 is the default and is the same as _GUI.LINE_. 

_GUI.INDENT_ and _GUI.EXDENT_ only display properly if the background colour has been set to _gray_ using **GUI.SetBackgroundColor**. _GUI.INDENT_ makes the contents frame appear indented or recessed. _GUI.EXDENT_ makes the contents of the frame appear to stand out from the window.


## Example
The following program draws three frames in the window and draws a label in each one.



        import GUI 
        View.Set ("graphics:250;90,nobuttonbar") 
        GUI.SetBackgroundColor (gray)
        var lineFrame, indentFrame, exdentFrame : int
        var lineLabel, indentLabel, exdentLabel : int
        lineFrame := GUI.CreateFrame (10, 10, 80, 70, 0) 
        indentFrame := GUI.CreateFrame (90, 10, 160, 70, GUI.INDENT) 
        exdentFrame := GUI.CreateFrame (170, 10, 240, 70, GUI.EXDENT)
		% Label the lines.
        lineLabel := GUI.CreateLabelFull (10, 10, "Line", 70, 60,
            GUI.CENTER + GUI.MIDDLE, 0)
        indentLabel := GUI.CreateLabelFull (90, 10, "Indent", 70, 60, 
            GUI.CENTER + GUI.MIDDLE, 0)
        exdentLabel := GUI.CreateLabelFull (170, 10, "Exdent", 70, 60, 
            GUI.CENTER + GUI.MIDDLE, 0)
## Details
When **GUI.CreateFrame** is called, the newly created frame will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 

A frame widget is a passive widget and cannot be enabled or disabled.


## Details
The following GUI subprograms can be called with a frame as the _widgetID_ parameter:


**GUI.Show**, **GUI.Hide**, **GUI.Dispose**, **GUI.GetX**, **GUI.GetY**, **GUI.GetWidth**,**GUI.GetHeight**, **GUI.SetPosition**, **GUI.SetSize**, **GUI.SetPositionAndSize**



## Status
Exported qualified.

This means that you can only call the function by calling **GUI.CreateFrame**, not by calling **CreateFrame**.

