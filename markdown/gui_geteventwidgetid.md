
#GUI.GetEventWidgetID

##Syntax
**GUI.GetEventWidgetID** : **int**



##Description
Returns the widget ID of the widget that was activated by the mouse button press or the keystroke. This function should only be called in an _action procedure_, as it will return 1 when there is no event that activated a widget being processed.
This function is used when a several buttons use the same action procedure to determine which button was pressed.



##Example
The following program prints a message stating which button was selected.


        import GUI in "%oot/lib/GUI" 
        View.Set ("graphics:150;210") 
        
        var buttonNames : array 1 .. 5 of string := init ("Red", "Green",
            "Blue", "Yellow", "Purple")
        var buttons : array 1 .. 5 of int
        
        procedure ButtonPush
            for i : 1 .. 5
                if GUI.GetEventWidgetID = buttons (i) then
                    Text.Locate (1, 1)
                    put buttonNames (i), " selected"
                end if
            end for
        end ButtonPush
        for i : 1 .. 5
            buttons (i) := GUI.CreateButton (10, 210  40 * i, 110, 
                buttonNames (i), ButtonPush)
        end for
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.GetEventWidgetID**, not by calling **GetEventWidgetID**.



##See also
**[gui_processevent.html](GUI.ProcessEvent)**.


