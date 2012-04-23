
#GUI.CreateButton[Full]

##Syntax
**GUI.CreateButton** (_x_, _y_, _width_ : **int**, _text_ : **string**,    _actionProc_ : **procedure** _x_ ()) : **int**

**GUI.CreateButtonFull** (_x_, _y_, _width_ : **int**, _text_ : **string**,    _actionProc_ : **procedure** _x_ (), _height_ : **int**, _shortcut_ : **char**, _default_ : **boolean**) : **int**


##Description
Creates a button and returns the button's widget ID.

The button widget is used to implement a textual button. When you click on a button, the button's _action procedure_ is called. If a button is given a short cut, then entering the keystroke will cause the _action procedure_ to be called. It will not visibly cause the button to depress.



![Doc Image](gui_createbutton_full01.gif)

**Two Buttons**

The _x_ and _y_ parameters specify the lower-left corner of the button. The _width_ parameter specifies the width of the button. If _width_ is less than the size necessary to display the button, the button is automatically enlarged to fit the text. The _text_ parameter specifies the text to appear in the button. The _actionProc_ parameter is the name of a procedure that is called when the button is pressed.

For **GUI.CreateButtonFull**, the _height_ parameter specifies the height of the button. If _height_ is less than the size necessary to display the button, the button is automatically enlarged to fit the text. The _shortcut_ parameter is the keystroke to be used as the button's shortcut. The _default_ parameter is a boolean indicating whether the button should be the default button. If there is already a default button, and _default_ is set to true, then this button becomes the new default button.


##Example
The following program creates two buttons, one which draws a random circle on the screen and one which quits the program.



        import GUI
        
        procedure DrawRandomCircle
            var r : int := Rand.Int (20, 50)
            var x : int := Rand.Int (r, maxx - r)
            var y : int := Rand.Int (r, maxy - r)
            var c : int := Rand.Int (0, maxcolor)
            Draw.FillOval (x, y, r, r, c)
            % In case we drew over the buttons, redraw them.
            GUI.Refresh
        end DrawRandomCircle
        
        View.Set ("graphics:300;200,nobuttonbar ")
        var draw : int := GUI.CreateButtonFull (50, 10, 0, "Draw Circle",
            DrawRandomCircle, 0, '^D', true)
        var quitBtn : int := GUI.CreateButton (200, 10, 0, "Quit", GUI.Quit)
        loop
            exit when GUI.ProcessEvent
        end loop
##Details
When **GUI.CreateButton** or **GUI.CreateButtonFull** is called, the newly created button will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 

If a button's width or height is set to zero (or not specified at all), then the button is shaped to fit the text.

A button can be the default button for a window. The default button is drawn with a thicker border around it. If the user presses ENTER in a window with a default button, the default button's _action procedure_ is called.

When a button is not enabled, the text in the button is grayed out and the button no longer responds to any mouse clicks or keystrokes until the button is enabled again.


##Details
The following GUI subprograms can be called with a button as the _widgetID_ parameter:


**GUI.Show**, **GUI.Hide**, **GUI.Enable**, **GUI.Disable**, **GUI.Dispose**, **GUI.GetX**,**GUI.GetY**, **GUI.GetWidth**, **GUI.GetHeight**,**GUI.SetPosition**, **GUI.SetSize**,**GUI.SetPositionAndSize**, **GUI.SetLabel**,**GUI.SetDefault**



##Status
Exported qualified.

This means that you can only call the function by calling **GUI.CreateButton**, not by calling **CreateButton**.


##See also
**[gui_setlabel.html](GUI.SetLabel)** for changing the button's text, **[gui_setdefault.html](GUI.SetDefault)** for setting the default button in a window and**[gui_setcolor.html](GUI.SetColor)** for setting the button's color.

