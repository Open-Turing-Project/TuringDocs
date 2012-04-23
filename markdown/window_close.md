
# Window.Close

## Syntax
**Window.Close** (_windowID_ : **int**)

## Description
The **Window.Close**  procedure closes the window specified by the _windowID_ parameter.


## Example
The following program opens a window, makes it active and then closes the window after getting a keystroke from the user.

        % Open the window
        var winID : int
        winID := Window.Open ("position:300;300,graphics:200;200")
        
        % Draw the random ovals in the box
        var x, y, clr : int
        for : 1 .. 20
            x := Rand.Int (0, maxx)     % Random x
            y := Rand.Int (0, maxy)     % Random y
            clr := Rand.Int (0, maxcolor)   % Random color
            Draw.FillOval (x, y, 30, 30, clr)
        end for
        
        var ch : char := getchar            % Wait for input
        
        Window.Close (winID)            % Close the window
## Details
If a window is selected (i.e. output is going to that window) when it is closed, the main **Run** window becomes the selected window.


## Status
Exported qualified.

This means that you can only call the function by calling **Window.Close**, not by calling **Close**.


## See also
**[Window.Open](window_open.html)** and **[Window.Select](window_select.html)**.

