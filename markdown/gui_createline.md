
#GUI.CreateLine

##Syntax
**GUI.CreateLine** (_x1_, _y1_, _x2_, _y2_, _kind_ : **int**) : **int**



##Description
Creates a line and returns the line's widget ID.
Lines are generally used to separate parts of a window. A line is used to make the window look better and help organize the GUI elements. 

Lines are passive widgets, meaning that they do not respond to button clicks or keystrokes.
The _x1_ and _y1_ parameters specify one end-point of the line and the _x2_ and _y2_ parameters specify the other end point. The line must either be horizontal or vertical (i.e. x1 must equal x2 or y1 must equal y2). The _kind_ parameter specifies the type of line. This is one of 0, _GUI.LINE_, _GUI.INDENT_ or _GUI.EXDENT_. A _kind_ of 0 is the default and is the same as _GUI.LINE_. 
_GUI.INDENT_ and _GUI.EXDENT_ only display properly if the background colour has been set to _gray_ using **GUI.SetBackgroundColor**. _GUI.INDENT_ makes the line appear indented or recessed. _GUI.EXDENT_ makes the line appear to stand out from the window.

![Doc image](gui_createline01.gif)


##Example
The following program draws three lines with three labels in the window.



        import GUI
        View.Set ("graphics:180;100,nobuttonbar") 
        GUI.SetBackgroundColor (gray)
        var line, indentLine, exdentLine : int
        var lineLabel, indentLabel, exdentLabel : int
        
        line := GUI.CreateLine (30, 20, 30, 90, 0)
        indentLine := GUI.CreateLine (90, 20, 90, 90, GUI.INDENT)
        exdentLine := GUI.CreateLine (150, 20, 150, 90, GUI.EXDENT)% Label the lines.
        lineLabel := GUI.CreateLabelFull (30, 15, "Line", 0, 0,
            GUI.CENTER + GUI.TOP, 0)
        indentLabel := GUI.CreateLabelFull (90, 15, "Indent", 0, 0, 
            GUI.CENTER + GUI.TOP, 0)
        exdentLabel := GUI.CreateLabelFull (150, 15, "Exdent", 0, 0, 
            GUI.CENTER + GUI.TOP, 0)
##Details
When **GUI.CreateLine** is called, the newly created line will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 
A line widget is a passive widget and cannot be enabled or disabled.



##Details
The following GUI subprograms can be called with a line as the _widgetID_ parameter:






##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreateLine**, not by calling **CreateLine**.


