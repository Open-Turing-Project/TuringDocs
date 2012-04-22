
#GUI.CreateTextBoxChoice

##Syntax
**GUI.CreateTextBoxChoice** (_x_, _y_, _width_, _height_ : **int**,    _border_, _fontID_ : **int**, _actionProc_ : **procedure** _x_ (_line_ : **int**)) : **int**



##Description
Creates a text box that can be used for selecting individual items and returns the text box's widget ID. 
A text box is a box used for displaying text. By using **GUI.AddLine** to add lines of text, the program can then waitfor the user to double click on lines in the text box.  The linehighlights when the user clicks the line once, and calls the actionprocedure when the user clicks the highlighted line a second time.Like a text box, the text box choice has scroll bars that activate when text appears outside the border of the text box. The user cannot directly edit or modify the text in the text box choice.
The _x_ and_ y_ parameters specify the lower-left corner of the area in which the text will be drawn. The _width_ and _height_ parameters specify the width and height of the text drawing area The text box border is just outside the text drawing area. Because of this, **GUI.GetX** and **GUI.GetY** will return a value slightly smaller than _x_ and _y_ and **GUI.GetWidth**_ _and **GUI.GetHeight** will return values slightly larger than _width_ and _height_.
For **GUI.CreateTextBox**, the border around the text box is always a line. For **GUI.CreateTextBoxFull**, the type of border is specified by the _border_ parameter. The _border_ parameter is one of 0, _GUI.LINE_, _GUI.INDENT_, or _GUI.EXDENT_. A border of 0 is the default and is the same as _GUI.LINE_. _GUI.INDENT_ and _GUI.EXDENT_ only display properly if the background colour has been set to _gray_ using **GUI.SetBackgroundColor**. _GUI.INDENT_ makes the text box appear indented or recessed. _GUI.EXDENT_ makes the text box appear to stand out from the window. The _fontID_ parameter specifies the font ID of the font to be used in the text box. The font ID is received from a _Font.New_ call. Do not call _Font.Free_ for this font ID until the label has been disposed of by calling **GUI.Dispose**.
By using the _fontID_ parameter, text boxes can have any size or typeface.


![Doc image](gui_createtextboxchoice01.gif)


##Example
The following program displays the contents of a file in a text box.



        import GUI 

        procedure ChoseLine (line : int)
            location (1, 1)
            put "The user chose ", line
        end ChoseLine
        
        var x : int := GUI.CreateTextBoxChoice (20, 20, 200, 100, 0, 0, ChoseLine)

	GUI.AddLine (x, "Choose A")
	GUI.AddLine (x, "Choose B")
	GUI.AddLine (x, "Choose C")
	GUI.AddLine (x, "Choose D")
	GUI.AddLine (x, "Choose E")
	GUI.AddLine (x, "Choose F")
	GUI.AddLine (x, "Choose G")
	GUI.AddLine (x, "Choose H")
	GUI.AddLine (x, "Choose I")
	GUI.AddLine (x, "Choose J")

        loop
            exit when GUI.ProcessEvent
        end loop
##Details
When **GUI.CreateTextBox **or **GUI.CreateTextBoxFull** is called, the newly created text box choice will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 



##Details
The following GUI subprograms can be called with a text box as the _widgetID_ parameter:






##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreateTextBoxChoice**, not by calling **CreateTextBoxChoice**.



##See also
**[gui_addline.html](GUI.AddLine)** for adding text to the text box.See also **[gui_settopline.html](GUI.SetTopLine)**to set the top line of text in the text box.See also **[gui_setscrollonadd.html](GUI.SetScrollOnAdd)**to set stop the text box from scrolling when text is added to the text box.See also **[gui_cleartext.html](GUI.ClearText)** for clearing the text box.


