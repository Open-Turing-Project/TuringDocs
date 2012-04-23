
#GUI.GetEventWindow

##Syntax
**GUI.GetEventWindow** : **int**


##Description
Returns the window ID of the window in which the event (mouse button or keystroke) took place. This function should only be called in an _action procedure_ or in a default mouse or keystroke event handler, as it will return 1 when there is no event being processed.

This function is commonly used when several windows share the same layout. The same buttons in each window point to the same _action procedures_. To determine which button was actually pressed, the function is called to get the window.


##Example
The following program creates four windows in a row, each with a button that, when pressed, causes a star to be drawn in that window.

        import GUI in "%oot/lib/GUI" 
        
        procedure DrawStar
            var windowID : int := GUI.GetEventWindow
            Window.Select (windowID)
            Draw.FillStar (25, 40, 175, 190, Rand.Int (10, 15))
        end DrawStar
        
        for i : 0 .. 3
            var window : int := Window.Open ("graphics:200;200") 
            % Place window above task bar, across from previous one.
            Window.SetPosition (window, 220 * i, 27) 
            var button : int := GUI.CreateButton (5, 5, 190, "Draw Star", 
                DrawStar) 
        end for
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.

This means that you can only call the function by calling **GUI.GetEventWindow**, not by calling **GetEventWindow**.


##See also
**[gui_processevent.html](GUI.ProcessEvent)**.

