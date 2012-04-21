
#GUI.CloseWindow

##Syntax
**GUI.CloseWindow** (*window* : **int**)



##Description
Closes a window with widgets in it. This procedure automatically disposes of any widgets in the window and makes certain that the GUI Library recognizes that the window no longer exists. This procedure will call *Window.Close*, so there is no need for the user to do so.



##Example
The program opens up a window with two buttons. If the button labelled "Close and Open" is pressed, the window is closed and a new window with two buttons is opened in a random location on the screen.



        import GUI
        
        const screenWidth : int := Config.Display (cdScreenWidth)
        const screenHeight : int := Config.Display (cdScreenHeight)
        const titleBarHeight : int := 32
        const windowEdgeSize : int := 13
        const windowWidth : int := 150
        const windowHeight : int := 100
        var windowID, windowNumber, closeButton, quitButton : int := 0
        
        procedure CloseAndOpen
            if windowID not= 0 then
                GUI.CloseWindow (windowID)
            end if
            windowNumber += 1
            var xPos : int := Rand.Int (0, screenWidth - windowWidth -
                windowEdgeSize)
            var yPos : int := Rand.Int (0, screenHeight - windowHeight - 
                titleBarHeight)
            windowID := Window.Open ("title:Window #" + 
                intstr (windowNumber) + ",graphics:" + 
                intstr (windowWidth) + ";" + intstr (windowHeight) +
                ",position:" + intstr (xPos) + ";" + intstr (yPos))
            closeButton := GUI.CreateButton (10, 60, 130, 
                "Close And Open", CloseAndOpen)
            quitButton := GUI.CreateButton (10, 10, 130, "Quit", GUI.Quit)
        end CloseAndOpen
        
        CloseAndOpen
        loop
            exit when GUI.ProcessEvent
        end loop
        GUI.CloseWindow (windowID)
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CloseWindow**, not by calling **CloseWindow**.



##See also
**[gui_showwindow.html](GUI.ShowWindow)** and**[gui_hidewindow.html](GUI.HideWindow)**, for showing and hiding windows with widgets in them.


