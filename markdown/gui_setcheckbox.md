
#GUI.SetCheckBox

##Syntax
**GUI.SetCheckBox** (*widgetID* : **int**, *status* : **boolean**)

##Description
Sets the status of a check box specified by *widgetID*. If *status* is **true**, the check box is filled (marked with an 'X'). If *status* is **false**, the check box is set empty. **GUI.SetCheckBox **calls the check box's *action procedure* with the new status and redraws the widget with the new status.

##Example
See **GUI.CreateCheckBox **for an example of **GUI.SetCheckBox**.

##Status
Exported qualified.
This means that you can only call the procedures by calling **GUI.SetCheckBox**, not by calling **SetCheckBox**.

##See also
**GUI.CreateCheckBox**.
