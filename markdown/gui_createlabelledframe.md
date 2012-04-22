
#GUI.CreateLabelledFrame

##Syntax
**GUI.CreateLabelledFrame** ( _x1_, _y1_, _x2_, _y2_, _kind_ : **int**,    _text_ : **string** ) : **int**



##Description
Creates a labelled frame and returns the frame's widget ID.
A labelled frame is a box with a text label drawn around other GUI widgets to make the window look better and help organize the GUI elements.

Frames and labelled frames are the only GUI widgets that can have other widgets placed within them. Labelled frames are passive widgets, meaning that they do not respond to button clicks or keystrokes.
The _x1_ and _y1_ parameters specify the lower-left corner of the frame and the _x2_ and _y2_ parameters specify the upper-right corner of the frame. (The text will extend above the frame.) The _kind_ parameter specifies the type of frame. This is one of 0, _GUI.LINE_, _GUI.INDENT_ or _GUI.EXDENT_. A _kind_ of 0 is the default and is the same as _GUI.LINE_. 
_GUI.INDENT_ and _GUI.EXDENT_ only display properly if the background colour has been set to _gray_ using **GUI.SetBackgroundColor**. _GUI.INDENT_ makes the contents frame appear indented or recessed. _GUI.EXDENT_ makes the contents of the frame appear to stand out from the window.

![Doc image](gui_createlabelledframe01.gif)


##Example
The following program draws three frames in the window.



        import GUI
        View.Set ("graphics:250;90,nobuttonbar") 
        GUI.SetBackgroundColor (gray)
        var lineFrame, indentFrame, exdentFrame : int
        lineFrame := GUI.CreateLabelledFrame (10, 10, 80, 70, 0, "Line") 
        indentFrame := GUI. CreateLabelledFrame (90, 10, 160, 70,   
            GUI.INDENT, "Indent") 
        exdentFrame := GUI. CreateLabelledFrame (170, 10, 240, 70, 
            GUI.EXDENT, "Exdent")
##Details
When **GUI.CreateLabelledFrame** is called, the newly created labelled frame will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 
A labelled frame widget is a passive widget and cannot be enabled or disabled.



##Details
The following GUI subprograms can be called with a labelled frame as the _widgetID_ parameter:






##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreateLabelledFrame**, not by calling **CreateLabelledFrame**.



##See also
**[gui_setlabel.html](GUI.SetLabel)** for changing the frame's text.


