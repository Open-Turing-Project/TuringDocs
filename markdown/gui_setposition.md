
#GUI.SetPosition

##Syntax
**GUI.SetPosition** (_widgetID_, _x_, _y_ : **int**)



##Description
Moves a widget specified by _widgetID_ to the location (_x_, _y_). If the widget is visible, it is moved immediately to the new location. If the widget is hidden, it will appear at the new location when the _Show_ procedure is called. Note that the _x_ and _y_ specified here are the same as in the _Create_ method. For example, if you had specified a check box to be right justified in the _CreateCheckBoxFull_ function, then (_x_, _y_) in a call to _SetPosition_ would specify the lower-right corner as opposed to the lower-left corner.



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


