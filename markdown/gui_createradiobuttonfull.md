
# GUI.CreateRadioButton[Full]

## Syntax
**GUI.CreateRadioButton** (_x_, _y_ : **int**, _text_ : **string**,    _joinID_ : **int**, _actionProc_ : **procedure** _x_ ()) : **int****GUI.CreateRadioButtonFull** (_x_, _y_ : **int**, _text_ : **string**,    _joinID_ : **int**, _actionProc_ : **procedure** _x_ (), _alignment_ : **int**, _shortCut_ : **char**) : **int**

## Description
Creates a radio button and returns the radio button's widget ID. 

A slider is a widget that allows the user to select one of a set of values. It has a real-life equivalent in the old car stereos where a single station is selected at a time. That is, one of the buttons in the radio group is always selected, and if another button in the group is selected, the previously selected button is unselected. 



![Doc Image](gui_createradiobutton_full01.gif)

**Six Radio Buttons in Two Groups**

A radio group is created by first creating a single radio button. To add another button to the group, a second radio button is created specifying the first radio button in the _joinID_ parameter. Subsequent radio buttons are added, each specifying a previous member of the group in the _joinID_ parameter. 

The _x_ and _y_ parameters specify the lower-left corner of the radio button (unless _alignment_ is set to _GUI.RIGHT_, in which case they specify the lower-right corner of the radio button). If these are both 1 and _joinID_ is not zero, then the button will be placed directly below the previous radio button in the group. The _text_ parameter specifies the text (or label) beside the radio button. The _joinID_ parameter specifies a member of the radio group that this widget should join. A _joinID_ of 0 sepecifies this radio button is not a member of any group. The _actionProc_ parameter is the name of a procedure that is called when the radio button is selected. In **GUI.CreateRadioButton**, the radio button's text is always to the right of the actual radio button. In **GUI.CreateRadioButtonFull**, the text can be set to the right or left of the radio button with the _alignment_ parameter.

For **GUI.CreateRadioButtonFull**, the _alignment_ parameter specifies the position of the radio button in relation to the text as well as the meaning of the _x_ and _y_ parameters. The _alignment_ parameter is one of 0, _GUI.LEFT_, or _GUI.RIGHT_. An _alignment_ of 0 is the default and is the same as _GUI.LEFT_. _GUI.LEFT_ means the actual box in the check box appears to the left of the check box's label and (_x_, _y_) specify the lower-left corner. An _alignment_ of _GUI.RIGHT_ means that the actual box appears to the right of the radio button's label and (_x_, _y_) specify the lower-right corner of the radio button. The _shortcut_ parameter is the keystroke to be used as the button's shortcut. 

A radio button's size is not specified during creation. It is determined based on the size of the text. Instead the user specifies the lower-left corner of the radio button (or the lower-right if the radio button is right justified).


## Example
The following program creates six radio buttons in two groups.

        import GUI
        View.Set ("graphics:350;80") 
        
        var radio : array 1 .. 6 of int % The radio button IDs.
        
        procedure RadioPressed
            Text.Locate (1, 1)
            put "Radio Button " ..
            for i : 1 .. 6
                if radio (i) = GUI.GetEventWidgetID then
                    put i ..
                end if
            end for
            put " Selected"
        end RadioPressed
        
        radio (1) := GUI.CreateRadioButton (15, maxy  35, 
            "Radio Button 1", 0, RadioPressed)
        radio (2) := GUI.CreateRadioButton ( 1, 1, "Radio Button 2", 
            radio (1), RadioPressed)
        radio (3) := GUI.CreateRadioButton ( 1, 1, "Radio Button 3",
            radio (2), RadioPressed)
        radio (4) := GUI.CreateRadioButtonFull (maxx  15, maxy  35,
            "Radio Button A (Shortcut: 'a')", 0, RadioPressed, 
            GUI.RIGHT, 'a')
        radio (5) := GUI.CreateRadioButtonFull ( 1, 1,
            "Radio Button B (Shortcut: 'b')", radio (4), RadioPressed,
            GUI.RIGHT, 'b')
        radio (6) := GUI.CreateRadioButtonFull ( 1, 1,
            "Radio Button C (Shortcut: 'c')", radio (5), RadioPressed,
            GUI.RIGHT, 'c')
        
        loop
            exit when GUI.ProcessEvent
        end loop
## Details
When a group of radio buttons is selected, the first radio button created in the group will be the selected one. You can change this by using the **GUI.SelectRadio** procedure to select a different one.

When **GUI.CreateRadioButton** or **GUI.CreateRadioButtonFull** is called, the newly created picture will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 

When a radio button is not enabled, the radio button is grayed out and the radio button no longer responds to any mouse clicks or keystrokes until the button is enabled again.


## Details
The following GUI subprograms can be called with a radio button as the _widgetID_ parameter:


**GUI.Show**, **GUI.Hide**, **GUI.Enable**, **GUI.Disable**, **GUI.Dispose**, **GUI.GetX**,**GUI.GetY**, **GUI.GetWidth**, **GUI.GetHeight**, **GUI.SetPosition**, **GUI.SetSize**, **GUI.SetPositionAndSize**, **GUI.SetLabel**, **GUI.SelectRadio**  



## Status
Exported qualified.

This means that you can only call the function by calling **GUI.CreateRadioButton**, not by calling **CreateRadioButton**.


## See also
**[GUI.SelectRadio](gui_selectradio.html)** for selecting a radio button in a program. See also **[GUI.SetLabel](gui_setlabel.html)** for changing the radio button's text.

