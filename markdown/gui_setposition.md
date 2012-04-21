
#GUI.SetPosition

##Syntax
**GUI.SetPosition** (*widgetID*, *x*, *y* : **int**)



##Description
Moves a widget specified by *widgetID *to the location (*x*, *y*). If the widget is visible, it is moved immediately to the new location. If the widget is hidden, it will appear at the new location when the *Show* procedure is called. Note that the *x* and *y* specified here are the same as in the *Create* method. For example, if you had specified a check box to be right justified in the *CreateCheckBoxFull* function, then (*x*, *y*) in a call to *SetPosition* would specify the lower-right corner as opposed to the lower-left corner.



##Example
The following program moves the button every time the button is pressed.


        import GUI in "%oot/lib/GUI"
        
        var button : int
        
        procedure MoveButton
            var newX, newY : int
            newX := Rand.Int (0, maxx  GUI.GetWidth (button))
            newY := Rand.Int (0, maxy  GUI.GetHeight (button))
            GUI.SetPosition (button, newX, newY)
        end MoveButton
        
        button := GUI.CreateButton (100, 100, 0, "Move Button", 
            MoveButton)
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetPosition**, not by calling **SetPosition**.


