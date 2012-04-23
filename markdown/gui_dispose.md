
# GUI.Dispose

## Syntax
**GUI.Dispose** (_widgetID_ : **int**)

## Description
Eliminates the widget specified by _widgetID_. 

If the widget is visible, it is immediately made invisible before being deleted. It should be called in order to free up any memory that the widget might have allocated. Note that you cannot use the widget after it has been disposed of. If you wish to temporarily get rid of a widget, consider using the _Hide_ method and then the _Show_ method when you want to use it again.


## Example
The following program waits for the Quit button to be pressed. When it is, the Quit button is deleted and a message is displayed in the center of the screen.

        import GUI in "%oot/lib/GUI" 
        View.Set ("graphics:150;100") 
        
        var button, message : int
        
        button := GUI.CreateButton (20, 40, 0, "Quit", GUI.Quit)
        
        loop
            exit when GUI.ProcessEvent
        end loop
        
        GUI.Dispose (button)
        message := GUI.CreateLabelFull (0, 0, "Done", maxx, maxy, 
            GUI.CENTER + GUI.MIDDLE, 0)
## Status
Exported qualified.

This means that you can only call the procedure by calling **GUI.Dispose** , not by calling **Dispose** .

