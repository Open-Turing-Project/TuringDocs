
#Window.GetPosition

##Syntax
**Window.GetPosition** (*windowID* : **int**, **var** *x*, *y* : **int**)

##Description
The **Window.GetPosition** procedure returns the location of the specified execution window on the screen in the *x* and *y* parameters. The *x* and *y* parameters specify the lower left corner of the window in screen coordinates. (0, 0) is the lower left corner of the screen.

##Example
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
##Status
Exported qualified.
This means that you can only call the function by calling **Window.GetPosition**, not by calling **GetPosition**.

##See also
**[window_setposition.html](Window.SetPosition)** to [set.html](set) the current window position and **[config_display.html](Config.Display)** to get the size of the screen.