
# GUI.GetMenuBarHeight

## Syntax
**GUI.GetMenuBarHeight** : **int**

## Description
Returns the height of the menu bar. Useful when drawing or placing widgets to make certain that they don't overlap the menu bar.


## Example
The following program draws a red box in the window just belowe the menu bar.

        import GUI in "%oot/lib/GUI"
        
        var menu : int := GUI.CreateMenu ("File")
        var item : int := GUI.CreateMenuItem ("Quit", GUI.Quit)
        
        Draw.FillBox (0, 0, maxx, maxy  GUI.GetMenuBarHeight  2, 
            brightred)
        
        loop
            exit when GUI.ProcessEvent
        end loop
## Status
Exported qualified.

This means that you can only call the function by calling **GUI.GetMenuBarHeight**, not by calling **GetMenuBarHeight**.


## See also
**[GUI.CreateMenu](gui_createmenu.html)**.

