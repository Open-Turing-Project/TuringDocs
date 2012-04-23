
# GUI.Quit

## Syntax
**GUI.Quit**

## Description
This procedure causes **GUI.ProcessEvent** to return **true**. If the program is structured properly with a

at the end of the program, then the program will exit the loop after finishing the current _action procedure_. This procedure is usually called from the _action procedure_ of a Quit button or Exit menu item. 

        loop
            exit when GUI.ProcessEvent
        end loop
## Example
Here is program that does nothing but wait for the user to press the quit button or type the letter 'Q', 'q', 'X', or 'x'.

        import GUI
        
        procedure KeyHandler (ch : char)
            if ch = 'Q' or ch = 'q' or ch = 'X' or ch = 'x' then
                GUI.Quit
            end if
        end KeyHandler
        
        var quitButton : int := GUI.CreateButton (10, 10, 0, "Quit", GUI.Quit)
        GUI.SetKeyEventHandler (KeyHandler)
        
        loop
            exit when GUI.ProcessEvent
        end loop
        
        put "Done!"
## Status
Exported qualified.

This means that you can only call the procedures by calling **GUI.Quit**, not by calling **Quit**.


## See also
**[GUI.ProcessEvent](gui_processevent.html)**.See also [GUI.ResetQuit](gui_resetquit.html)for resetting the "quit" flag, so that a second event loopcan be used in the same program.

