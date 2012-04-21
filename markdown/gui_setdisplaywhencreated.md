
#GUI.SetDisplayWhenCreated

##Syntax
**GUI.SetDisplayWhenCreated** (*display* : **boolean**)



##Description
By default, whenever a widget is created with a *GUI.Create* procedure, the widget instantly appears. Sometimes, this is not the desired behaviour. For example, if several widgets are to occupy the same location with only one being displayed at a time, then it is desirable not to have the widget appear when first created.
If a widget is not displayed when created, then *GUI.Show* must be called to make the widget visible.
If the *display* parameter is **true**, then widgets are displayed immediately upon creation. If the *display* parameter is set to **false**, then the widget is not made visible on creation and *GUI.Show* must be called to display the widget.



##Example
The following program toggles the visiblility of the frame when the button is pushed. The frame starts out invisible.


        import GUI in "%oot/lib/GUI" 
        View.Set ("graphics:150;100") 
        
        var visible : boolean := false
        var button, frame : int
        
        procedure Toggle
            if visible then
                GUI.Hide (frame)
            else
                GUI.Show (frame)
            end if
            visible := not visible
        end Toggle
        
        button := GUI.CreateButton (25, 40, 0, "Toggle Frame", Toggle)
        GUI.SetDisplayWhenCreated (false)
        frame := GUI.CreateFrame (10, 10, 140, 90, 0)
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetDisplayWhenCreated**, not by calling **SetDisplayWhenCreated**.


