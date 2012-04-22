
#Window.Open

##Syntax
**Window.Open** (_setUpString_ : **string**) : **int**



##Description
The **Window.Open** function is used to create a window. A window ID is returned if the window  is successfully created. If the window is not created then it returns 0. **Error.Last** and **Error.LastMsg** can then be used to determine the cause of the failure.
The _setUpString_ parameter is identical to that of **View.Set**. See **View.Set** for the list of options available. 
When the window is created, it is automatically selected (i.e. all output will be sent to that window unless redirected by a **Window.Select** command).



##Example
The following program opens a window, makes it active and then close the window after getting a keystroke from the user.


        % Open the window
        var winID : int
        winID := Window.Open ("position:top;center,graphics:200;200")
        
        % Draw the random ovals in the box
        var x, y, clr : int
        for : 1 .. 20
            x := Rand.Int (0, maxx)     % Random x
            y := Rand.Int (0, maxy)     % Random y
            clr := Rand.Int (0, maxcolor)   % Random color
            Draw.FillOval (x, y, 30, 30, clr)
        end for
        
        var ch : char := getchar            % Wait for input
        
        Window.Close (winID)                % Close the window
##Status
Exported qualified.
This means that you can only call the function by calling **Window.Open**, not by calling **Open**.



##See also
**[view_set.html](View.Set) **for the syntax of _startUpString_. See also **[window_select.html](Window.Select)** and **[window_setactive.html](Window.SetActive)**.


