
#GUI.SetKeyEventHandler

##Syntax
**GUI.SetKeyEventHandler** (    _keyEventHandler_ : **procedure** _x_ (_ch_ : **char**))



##Description
Sets the new default keystroke event handler. The _keyEventHandler_ parameter is the name of a procedure that is called every time **GUI.ProcessEvent** is called and there is a keystroke which is not handled by any widget. The _ch_ parameter in the _keyEventHandler_ is the keystroke typed by the user.
This procedure is often used to allow for more than one shortcut character for a given button.



##Example
The following program draws a star or quits depening on the button. The Draw Star button can be activated by clicking on it or typing 'D', 'd', 'S', 's' or Ctrl+S. The Quit button can be activate by typing 'Q', 'q' or Ctrl+Q. The Draw Star button is also the default button. It is activated whenever the user presses ENTER.


        import GUI
        View.Set ("graphics:220;200")
        procedure DrawStar
            Draw.FillStar (25, 40, 175, 190, Rand.Int (10, 15))
        end DrawStar
        
        procedure KeyHandler (ch : char)
            if ch = 'q' or ch = '^Q' then
                Draw.Cls
                GUI.Quit
            elsif ch = 'd' or ch = '^d' or ch = 'S' or ch = 's' or ch = '^s' then
                DrawStar
            end if
        end KeyHandler
        
        GUI.SetKeyEventHandler (KeyHandler)
        var button : int := GUI.CreateButtonFull (5, 5, 100, "Draw Star",
            DrawStar, 0, 'D', true)
        var quitButton : int := GUI.CreateButtonFull (115, 5, 100, "Quit", 
            GUI.Quit, 0, 'Q', false)
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetKeyEventHandler**, not by calling **SetKeyEventHandler**.



##See also
**[gui_processevent.html](GUI.ProcessEvent)**.


