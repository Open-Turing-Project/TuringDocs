
#GUI.CreateTextBox[Full]

##Syntax
**GUI.CreateTextBox** (_x_, _y_, _width_, _height_ : **int**) : **int**
**GUI.CreateTextBoxFull** (_x_, _y_, _width_, _height_ : **int**,    _border_, _fontID_ : **int**) : **int**



##Description
Creates a text box and returns the text box's widget ID. 
A text box is a box used for displaying text. It has scroll bars that activate when text appears outside the border of the text box. The user cannot directly select, edit or modify the text in the text box.
The _x_ and _y_ parameters specify the lower-left corner of the area in which the text will be drawn. The _width_ and _height_ parameters specify the width and height of the text drawing area The text box border is just outside the text drawing area. Because of this, **GUI.GetX** and **GUI.GetY** will return a value slightly smaller than _x_ and _y_ and **GUI.GetWidth** and **GUI.GetHeight** will return values slightly larger than _width_ and _height_.
For **GUI.CreateTextBox**, the border around the text box is always a line. For **GUI.CreateTextBoxFull**, the type of border is specified by the _border_ parameter. The _border_ parameter is one of 0, _GUI.LINE_, _GUI.INDENT_, or _GUI.EXDENT_. A border of 0 is the default and is the same as _GUI.LINE_. _GUI.INDENT_ and _GUI.EXDENT_ only display properly if the background colour has been set to _gray_ using **GUI.SetBackgroundColor**. _GUI.INDENT_ makes the text box appear indented or recessed. _GUI.EXDENT_ makes the text box appear to stand out from the window. The _fontID_ parameter specifies the font ID of the font to be used in the text box. The font ID is received from a _Font.New_ call. Do not call _Font.Free_ for this font ID until the label has been disposed of by calling **GUI.Dispose**.
By using the _fondID_ parameter, text boxes can have any size or typeface.


![Doc image](gui_createtextbox_full01.gif)


##Example
The following program displays the contents of a file in a text box.



        import GUI 
        View.Set ("graphics:300;300") 
        
        const fileNameToBeViewed : string := "TextBxs.DEM"
        var textBox : int       % The Text Field ID.
        var title : int     % The label for the title.
        var f : int         % The stream number of the file.
        var line : string       % Lines to be read from the file.
        
        % Open the file.
        open : f, fileNameToBeViewed, get
        if f = 0 then
            put "Unable to open " + fileNameToBeViewed + " : ", Error.LastMsg
            return
        end if
        
        % Set background color to gray for indented text box.
        GUI.SetBackgroundColor (gray)
        
        % Create the title label and text box.
        title := GUI.CreateLabelFull (20, 280, fileNameToBeViewed, 250, 0, 
            GUI.CENTER, 0)
        textBox := GUI.CreateTextBoxFull (10, 10, 280, 265, 
            GUI.INDENT, 0)
        
        % Read the file and place it in the text box.
        loop
            exit when eof (f)
            get : f, line : *
            GUI.AddLine (textBox, line)
        end loop
        
        close : f   % Close the file.
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Details
When **GUI.CreateTextBox** or **GUI.CreateTextBoxFull** is called, the newly created picture will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 
A text box widget is a passive widget and cannot be enabled or disabled.



##Details
The following GUI subprograms can be called with a text box as the _widgetID_ parameter:





##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreateTextBox**, not by calling **CreateTextBox**.



##See also
**[gui_addline.html](GUI.AddLine)**, **[gui_addtext.html](GUI.AddText)** for adding text to the text box.See also **[gui_settopline.html](GUI.SetTopLine)**to set the top line of text in the text box.See also **[gui_setscrollonadd.html](GUI.SetScrollOnAdd)**to set stop the text box from scrolling when text is added to the text box.See also **[gui_cleartext.html](GUI.ClearText)** for clearing the text box.


