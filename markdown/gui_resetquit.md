
#GUI.ResetQuit

##Syntax
**GUI.ResetQuit**


##Description
The **GUI.ResetQuit** procedure resets the "quitting" flag thatis set by the **GUI.Quit** program. The **GUI.ResetQuit**can be used whenever you want to have a program that exitsfrom the main processing loop, does some work, and then reenters the processing loop.

Without **GUI.ResetQuit**, the program will exit the secondloop immediately because **GUI.ProcessEvent** will return**true**.

##Example
This program allows the user to select the color thatstars are to be drawn in.  When the user presses the button,the program exits the first event loop and draws the stars.Before creating another button and entering a second eventloop, it calls **GUI.ResetQuit**.



        import GUI
        var radio : array 1 .. 4 of int
        var button : int
        var starColor : int := red

        % Action procedures for the radio buttons
        procedure Red
            starColor := brightred
        end Red

        procedure Green
            starColor := brightgreen
        end Green

        procedure Blue
            starColor := brightblue
        end Blue

        procedure Cyan
            starColor := brightcyan
        end Cyan

        % Create the radio buttons
        radio (1) := GUI.CreateRadioButton (15, maxy - 35, "Red", 0, Red)
        radio (2) := GUI.CreateRadioButton (-1, -1, "Green", radio (1), Red)
        radio (3) := GUI.CreateRadioButton (-1, -1, "Blue", radio (2), Blue)
        radio (4) := GUI.CreateRadioButton (-1, -1, "Cyan", radio (3), Cyan)

        % Create the push button
        button := GUI.CreateButton (100, maxy - 70, 0, "Draw Stars", GUI.Quit)

        % Process events until the "Draw Stars" button is pressed
        loop
            exit when GUI.ProcessEvent
        end loop

        % Dispose of all the radio buttons and the push button
        for i : 1 .. 4
            GUI.Dispose (radio (i))
        end for
        GUI.Dispose (button)

        % Draw a bunch of stars - No more handling of events or widgets
        for i : 1 .. 100
            var x : int := Rand.Int (0, maxx - 20)
            var y : int := Rand.Int (0, maxy - 20)
            Draw.FillStar (x, y, x + 20, y + 20, starColor)
        end for

        % Create a new button
        button := GUI.CreateButton (300, 10, 0, "Quit", GUI.Quit)

        % Reset the quit flag. Without this statement, the loop following would
        % exit immediately because the quit flag was set in the previous loop
        GUI.ResetQuit

        % Process events until the "Quit" button is pressed
        loop
            exit when GUI.ProcessEvent
        end loop

        % Close the window
        GUI.CloseWindow (defWinID)
##Status
Exported qualified.

This means that you can only call the function by calling **GUI.ResetQuit**, not by calling **ResetQuit**.

