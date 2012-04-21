
#GUI.CreateLabelledFrame

##Syntax
**GUI.CreateLabelledFrame** ( *x1*, *y1*, *x2*, *y2*, *kind* : **int**,    *text* : **string** ) : **int**



##Description
Creates a labelled frame and returns the frame's widget ID.
A labelled frame is a box with a text label drawn around other GUI widgets to make the window look better and help organize the GUI elements.
**Three Types of Labelled Frames**
Frames and labelled frames are the only GUI widgets that can have other widgets placed within them. Labelled frames are passive widgets, meaning that they do not respond to button clicks or keystrokes.
The *x1* and *y1* parameters specify the lower-left corner of the frame and the *x2* and *y2* parameters specify the upper-right corner of the frame. (The text will extend above the frame.) The *kind* parameter specifies the type of frame. This is one of 0, *GUI.LINE*, *GUI.INDENT* or *GUI.EXDENT*. A *kind* of 0 is the default and is the same as *GUI.LINE*. 
*GUI.INDENT* and *GUI.EXDENT* only display properly if the background colour has been set to *gray* using **GUI.SetBackgroundColor**. *GUI.INDENT* makes the contents frame appear indented or recessed. *GUI.EXDENT* makes the contents of the frame appear to stand out from the window.

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
When **GUI.CreateLabelledFrame **is called, the newly created labelled frame will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the *display* parameter set to false. 
A labelled frame widget is a passive widget and cannot be enabled or disabled.



##Details
The following GUI subprograms can be called with a labelled frame as the *widgetID* parameter:
 **GUI.Show**, **GUI.Hide**, **GUI.Dispose**,**GUI.GetX**, **GUI.GetY**, **GUI.GetWidth**, **GUI.GetHeight**, **GUI.SetPosition**, **GUI.SetSize**, **GUI.SetPositionAndSize**,**GUI.SetLabel**



##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreateLabelledFrame**, not by calling **CreateLabelledFrame**.



##See also
**[gui_setlabel.html](GUI.SetLabel)** for changing the frame's text.


