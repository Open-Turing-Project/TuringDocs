
# GUI.CreateCheckBox[Full]

## Syntax
**GUI.CreateCheckBox** (_x_, _y_ : **int**, _text_ : **string**,    _actionProc_ : **procedure** _x_ (_filled_ : **boolean**)) : **int****GUI.CreateCheckBoxFull** (_x_, _y_ : **int**, _text_ : **string**,    _actionProc_ : **procedure** _x_ (_filled_ : **boolean**), _alignment_ : **int**, _shortcut_ : **char**) : **int**

## Description
Creates a check box (with accompanying text) and returns the check box's widget ID.

The check box widget is used to implement a check box that can be set or unset. When you click on a check box, the status of the check box flips from set to unset and back again and the check box's _action procedure_ is called with the new status as a parameter. If a check box is given a short cut, then entering the keystroke will cause the check box to change status and the _action procedure_ to be called. The new status will be displayed immediately.



![Doc Image](gui_createcheckbox_full01.gif)

**Two Check Boxes**

The _x_ and _y_ parameters specify the lower-left corner of the check box (unless _alignment_ is set to _GUI.RIGHT_, in which case they specify the lower-right corner of the check box). The _text_ parameter specifies the text (or label) beside the check box. The _actionProc_ parameter is the name of a procedure that is called when the status of the check box changes. The _actionProc_procedure must have one boolean parameter which is the new status of the check box. In **GUI.CreateCheckBox**, the check box's text is always to the right of the actual check box. In **GUI.CreateCheckBoxFull**, the text can be set to the right or left of the check box with the _alignment_ parameter.

For **GUI.CreateCheckBoxFull**, the _alignment_ parameter specifies the position of the check box in relation to the text as well as the meaning of the _x_ and _y_ parameters. The _alignment_ parameter is one of 0, _GUI.LEFT_, or _GUI.RIGHT_. An _alignment_ of 0 is the default and is the same as _GUI.LEFT_. _GUI.LEFT_ means the actual box in the check box appears to the left of the check box's label and (_x_, _y_) specifies the lower-left corner. An _alignment_ of _GUI.RIGHT_ means that the actual box appears to the right of the check box's label and (_x_, _y_) specifies the lower-right corner of the check box. The _shortcut_ parameter is the keystroke to be used as the button's shortcut. The _default_ parameter is a boolean indicating whether the button should be the default button. If there is already a default button, and _default_ is set to true, then this button becomes the new default button.

A check box's size is not specified during creation. It is determined based on the size of the text. Instead the user specifies the lower-left corner of the check box (or the lower-right if the check box is right justified).


## Example
The following program creates two buttons, one which draws a random circle on the screen and one which quits the program



        import GUI
        
        procedure DoNothing (status : boolean)
        end DoNothing 
        
        View.Set ("graphics:300;100,nobuttonbar")
        var cb1 : int := GUI.CreateCheckBox (10, 10, "Check Box 1",
            DoNothing)
        var cb2 : int := GUI.CreateCheckBoxFull (200, 10, "Check Box 2",
            DoNothing, GUI.RIGHT, '2')
        GUI.SetCheckBox (cb2, true)
        var quitBtn : int := GUI.CreateButton (230, 10, 0, "Quit", GUI.Quit)
        loop
            exit when GUI.ProcessEvent
        end loop
        var cb1Status : boolean := GUI.GetCheckBox (cb1)
        var cb2Status : boolean := GUI.GetCheckBox (cb2)
        if cb1Status then
            put "Check box 1: filled"
        else
            put "Check box 1: empty"
        end if
        if cb2Status then
            put "Check box 2: filled"
        else
            put "Check box 2: empty"
        end if
## Details
When **GUI.CreateButton** or **GUI.CreateButtonFull** is called, the newly created check box will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 

When a check box is not enabled, the label beside the check box is grayed out and the check box no longer responds to any mouse clicks or keystrokes until the check box is enabled again.


## Details
The following GUI subprograms can be called with a check box as the _widgetID_ parameter:


**GUI.Show**, **GUI.Hide**, **GUI.Enable**, **GUI.Disable**, **GUI.Dispose**, **GUI.GetX**, **GUI.GetY**, **GUI.GetWidth**, **GUI.GetHeight**, **GUI.SetPosition**, **GUI.SetSize**, **GUI.SetPositionAndSize**, **GUI.SetLabel**, **GUI.GetCheckBox**, **GUI.SetCheckBox**



## Status
Exported qualified.

This means that you can only call the function by calling **GUI.CreateCheckBox**, not by calling **CreateCheckBox**.


## See also
**[GUI.SetLabel](gui_setlabel.html)** for changing the chec box's text and **[GUI.GetCheckBox](gui_getcheckbox.html)** and **[GUI.SetCheckBox](gui_setcheckbox.html)** for reading and setting the check box's state.

