
#GUI.SetCheckBox

##Syntax
**GUI.SetCheckBox** (_widgetID_ : **int**, _status_ : **boolean**)



##Description
Sets the status of a check box specified by _widgetID_. If _status_ is **true**, the check box is filled (marked with an 'X'). If _status_ is **false**, the check box is set empty. **GUI.SetCheckBox** calls the check box's _action procedure_ with the new status and redraws the widget with the new status.



##Example
See **GUI.CreateCheckBox** for an example of **GUI.SetCheckBox**.



##Status
Exported qualified.
This means that you can only call the procedures by calling **GUI.SetCheckBox**, not by calling **SetCheckBox**.



##See also
**GUI.CreateCheckBox**.


