
#GUI.ShowWindow

##Syntax
**GUI.ShowWindow** (_window_ : **int**)


##Description
Hides a window with widgets in it. This procedure makes certain that the GUI Library recognizes that the window no longer visible. This procedure will call _Window.Hide_, so there is no need for the user to do so.


##Example
The program opens up a window with two buttons. If the button labelled "Close and Open" is pressed, the window is closed and a new window with two buttons is opened in a random location on the screen.



        import GUI

        var windowA, windowB : int
        var buttonA, buttonB, buttonQuit : int
	var backToMainA, backToMainB : int

        procedure ShowWindowA
            GUI.HideWindow (defWinID)
            GUI.ShowWindow (windowA)
        end ShowWindowA

        procedure ShowWindowB
            GUI.HideWindow (defWinID)
            GUI.ShowWindow (windowB)
        end ShowWindowB

        procedure ShowMain
            GUI.HideWindow (Window.GetActive)
            GUI.ShowWindow (defWinID)
        end ShowMain

        View.Set ("graphics:280;100,nobuttonbar")
        % Place the buttons in the main window
        buttonA := GUI.CreateButton (10, 10, 0, "Show Window A", ShowWindowA)
        buttonB := GUI.CreateButton (150, 10, 0, "Show Window B", ShowWindowB)
        buttonQuit := GUI.CreateButton (100, 60, 0, "Quit", GUI.Quit)

        windowA := Window.Open  ("title:Window A,graphics:150;100,position:bottom;left")
        backToMainA := GUI.CreateButton (20, 20, 0, "Back to Main", ShowMain)
        Window.Hide (windowA)
        windowB := Window.Open  ("title:Window B,graphics:150;100,position:bottom;right")
        backToMainB := GUI.CreateButton (20, 20, 0, "Back to Main", ShowMain)
        Window.Hide (windowB)

        loop
            exit when GUI.ProcessEvent
        end loop

##Status
Exported qualified.

This means that you can only call the function by calling **GUI.ShowWindow**, not by calling **ShowWindow**.


##See also
**[gui_hidewindow.html](GUI.HideWindow)**for hiding a window with widgets in it.See also **[gui_closewindow.html](GUI.CloseWindow)**for closing a window with widgets in it.

