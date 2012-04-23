
# Window.GetPosition

## Syntax
**Window.GetPosition** (_windowID_ : **int**, **var** _x_, _y_ : **int**)

## Description
The **Window.GetPosition** procedure returns the location of the specified execution window on the screen in the _x_ and _y_ parameters. The _x_ and _y_ parameters specify the lower left corner of the window in screen coordinates. (0, 0) is the lower left corner of the screen.


## Example
The following program outputs the current position of the run window.

        % Constants for windows
        const titleBarHeight : int := 21
        const windowEdgeSize : int := 13
        
        % Calculate the actual size of a window
        var windowWidth : int := maxx + windowEdgeSize
        var windowHeight : int := maxy + windowEdgeSize + titleBarHeight
        
        % Get the screen size
        var screenWidth : int := Config.Display (cdScreenWidth)
        var screenHeight : int := Config.Display (cdScreenHeight)
        
        % Open the window
        var winID : int := Window.Open ("title:Upper Right")
        Window.SetPosition (winID, screenWidth  windowWidth,                    screenHeight  windowHeight)
        
        % Return the current position
        var windowXPosition, windowYPosition : int
        Window.GetPosition (winID, windowXPosition, windowYPosition)
        put "Window located at ", windowXPosition, ",", windowYPosition
## Status
Exported qualified.

This means that you can only call the function by calling **Window.GetPosition**, not by calling **GetPosition**.


## See also
**[Window.SetPosition](window_setposition.html)** to [set](set.html) the current window position and **[Config.Display](config_display.html)** to get the size of the screen.

