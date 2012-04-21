
#GUI.SetSize

##Syntax
**GUI.SetSize** (*widgetID*, *width*, *height* : **int**)



##Description
Changes the size of the widget specified by *widgetID*. If the widget is visible, its size is changed immediately, otherwise the widget will appear in its new size when the widget is next made visible. Note that the *width* and *height* parameters are no necessarily the actual width and height of the widget. For example, the *TextField* widget ignores the *height* parameter, calculating the widget's actual height from the height of the text in the *TextField*.



##Example
The following program resizes the button every time the button is pressed.


        import GUI in "%oot/lib/GUI"
        
        var button : int
        
        procedure ResizeButton
            var newWidth, newHeight  : int
            newWidth := Rand.Int (0, 200)
            newHeight := Rand.Int (0, 200)
            GUI.SetSize (button, newWidth, newHeight)
        end ResizeButton
        
        button := GUI.CreateButton (100, 100, 0, "Resize Button", 
            ResizeButton)
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetSize**, not by calling **SetSize**.


