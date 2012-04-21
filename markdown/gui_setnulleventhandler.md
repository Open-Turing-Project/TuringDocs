
#GUI.SetNullEventHandler

##Syntax
**GUI.SetNullEventHandler** (*nullHandler* : **procedure** *x* ())



##Description
Sets the new null event handler. The *nullHandler* parameter is the name of a procedure that is called every time **GUI.ProcessEvent** is called and there are no mouse button presses or keystrokes to be processed.
This is used by programs that need to call subprograms often, but do not wish to interrupt the action of user widgets.



##Example
The following program has a Quit button. When no widgets are being processed, a clock in the corner is updated.


        import GUI
        View.Set ("graphics:220;50")
        
        var oldTime : string := ""
        var button : int
        
        procedure NullHandler
            var newTime : string := Time.Date
            newTime := newTime (11 .. *)
            if newTime not= oldTime then
                Text.Locate (maxrow, maxcol  9)
                put newTime ..
                oldTime := newTime
            end if
        end NullHandler
        
        GUI.SetNullEventHandler (NullHandler)
        button := GUI.CreateButton (10, 5, 100, "Quit", GUI.Quit)
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetNullEventHandler**, not by calling **SetNullEventHandler**.



##See also
**[gui_processevent.html](GUI.ProcessEvent)**.


