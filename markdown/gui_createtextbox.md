
#GUI.CreateTextBox[Full]

##Syntax
**GUI.CreateTextBox** (*x*, *y*, *width*, *height* : **int**) : **int**
**GUI.CreateTextBoxFull** (*x*, *y*, *width*, *height* : **int**,    *border*, *fontID* : **int**) : **int**



##Description
Creates a text box and returns the text box's widget ID. 
A text box is a box used for displaying text. It has scroll bars that activate when text appears outside the border of the text box. The user cannot directly select, edit or modify the text in the text box.
The *x* and* y* parameters specify the lower-left corner of the area in which the text will be drawn. The *width* and *height* parameters specify the width and height of the text drawing area The text box border is just outside the text drawing area. Because of this, **GUI.GetX** and **GUI.GetY** will return a value slightly smaller than *x* and *y* and **GUI.GetWidth*** *and **GUI.GetHeight** will return values slightly larger than *width* and *height*.
For **GUI.CreateTextBox**, the border around the text box is always a line. For **GUI.CreateTextBoxFull**, the type of border is specified by the *border* parameter. The *border* parameter is one of 0, *GUI.LINE*, *GUI.INDENT*, or *GUI.EXDENT*. A border of 0 is the default and is the same as *GUI.LINE*. *GUI.INDENT* and *GUI.EXDENT* only display properly if the background colour has been set to *gray* using **GUI.SetBackgroundColor**. *GUI.INDENT* makes the text box appear indented or recessed. *GUI.EXDENT* makes the text box appear to stand out from the window. The *fontID* parameter specifies the font ID of the font to be used in the text box. The font ID is received from a *Font.New* call. Do not call *Font.Free* for this font ID until the label has been disposed of by calling **GUI.Dispose**.
By using the *fondID* parameter, text boxes can have any size or typeface.
**A text box displaying the contents of a file.**

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
When **GUI.CreateTextBox **or **GUI.CreateTextBoxFull*** *is called, the newly created picture will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the *display* parameter set to false. 
A text box widget is a passive widget and cannot be enabled or disabled.



##Details
The following GUI subprograms can be called with a text box as the *widgetID* parameter:
 **GUI.Show**, **GUI.Hide**, **GUI.Dispose**,**GUI.GetX**, **GUI.GetY**, **GUI.GetWidth**,**GUI.GetHeight**, **GUI.SetPosition**,**GUI.SetSize**, **GUI.SetPositionAndSize**,**GUI.AddLine**, **GUI.AddText**, **GUI.ClearText**, **GUI.SetTopLine**, **GUI.SetScrollOnAdd** 



##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreateTextBox**, not by calling **CreateTextBox**.



##See also
**[gui_addline.html](GUI.AddLine)**, **[gui_addtext.html](GUI.AddText)** for adding text to the text box.See also **[gui_settopline.html](GUI.SetTopLine)**to set the top line of text in the text box.See also **[gui_setscrollonadd.html](GUI.SetScrollOnAdd)**to set stop the text box from scrolling when text is added to the text box.See also **[gui_cleartext.html](GUI.ClearText)** for clearing the text box.


