
#GUI.SetMouseEventHandler

##Syntax
**GUI.SetMouseEventHandler** (    *mouseEventHandler* : **procedure** *x* (*mx*, *my* : **int**))



##Description
Sets the new default mouse event handler. The *mouseEventHandler* parameter is the name of a procedure that is called every time **GUI.ProcessEvent** is called and there is a mouse button down which is not handled by any widget. The *mx* and *my* parameters in the *mouseEventHandler* are the location of mouse when the button was pressed.
This procedure is used by programs to allow for mouse input in a program that uses widgets.



##Example
This is a program that allows the user to place stars on the screen. The menu bar allows the user to quit the program at any time. The user can also toggle the appearance of the menu bar by pressing any key.



        import GUI
        
        var starX, starY, starColor : array 1 .. 100 of int
        var numStars : int := 0
        var menuVisible : boolean := true
        
        procedure DrawStar (i : int)
            if menuVisible then
                View.ClipSet (0, 0, maxx, 
                    maxy  GUI.GetMenuBarHeight)
            end if
            Draw.FillStar (starX (i)  20, starY (i)  20, starX (i) + 20,
                starY (i) + 20, starColor (i))    View.ClipOff
        end DrawStar
        
        procedure Redraw
            for i : 1 .. numStars
                DrawStar (i)
            end for
            Text.Locate (maxrow, 1)
            put "Press any key to toggle menu bar" ..
        end Redraw
        
        procedure KeyHandler (ch : char)
            if menuVisible then
                GUI.HideMenuBar    else
                GUI.ShowMenuBar
            end if
            menuVisible := not menuVisible
            Redraw
        end KeyHandler
        
        procedure MouseHandler (x, y : int)
            if numStars = 100 then
                Text.Locate (maxrow, 1)
                put "Maximum number of stars exceeded!" ..
                return
            end if
            numStars += 1
            starX (numStars) := x
            starY (numStars) := y
            starColor (numStars) := Rand.Int (9, 15)
            DrawStar (numStars)
        end MouseHandler
        
        var menu : int := GUI.CreateMenu ("File")
        var menuItem : int := GUI.CreateMenuItemFull ("Quit", 
            GUI.Quit, '^Q', false)
        GUI.SetKeyEventHandler (KeyHandler)
        GUI.SetMouseEventHandler (MouseHandler)
        Redraw
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetMouseEventHandler**, not by calling **SetMouseEventHandler**.



##See also
**[gui_processevent.html](GUI.ProcessEvent)**.


