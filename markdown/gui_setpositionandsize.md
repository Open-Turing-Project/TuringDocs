
#GUI.SetPositionAndSize

##Syntax
**GUI.SetPositionAndSize** (_widgetID_, _x_,_ y_ : **int**, _width_, _height_ : **int**)



##Description
Changes the position and size of the widget specified by _widgetID _simultaneously. The _x_, _y_, _width_ and _height_ parameters have the same meaning as in the **GUI.Create** function for that widget. Any widget except a menu or a menu item can be resized, although for some widgets, the _width_ or _height_ parameter may be ignored.
**GUI.SetPositionAndSize** works the same way as the **GUI.SetPosition** and **GUI.SetSize** procedures.



##Example
The following program moves and resizes the button every time the button is pressed.


        import GUI in "%oot/lib/GUI"
        
        var button, minWidth, minHeight  : int
        
        procedure MoveButton
            var newX, newY, newWidth, newHeight  : int
            newWidth := max (minWidth, Rand.Int (0, 200))
            newHeight := max (minHeight, Rand.Int (0, 100))
            newX := Rand.Int (0, maxx  newWidth)
            newY := Rand.Int (0, maxy  newHeight)
            GUI.SetPositionAndSize (button, newX, newY, 
                newWidth, newHeight)
        end MoveButton
        
        button := GUI.CreateButton (100, 100, 0, "Move Button", 
            MoveButton)
        minHeight := GUI.GetHeight (button)
        minWidth := GUI.GetWidth (button)
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetPositionAndSize**, not by calling **SetPositionAndSize**.


