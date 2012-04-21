
#Window.SetPosition

##Syntax
**Window.SetPosition** (*windowID* : **int**, *x*, *y* : **int**)



##Description
The **Window.SetPosition** procedure moves the location of the specified execution window on the screen. *x* and *y* specify the lower left corner of the window in screen coordinates.  (0, 0) is the lower left corner of the screen.



##Example
The following program opens four windows, one at each corner of the screen.


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
        var winID1 : int := Window.Open ("title:Upper Right")
        Window.SetPosition (winID1, screenWidth  windowWidth,                   screenHeight  windowHeight)
        
        var winID2 : int := Window.Open ("title:Upper Left")
        Window.SetPosition (winID2, 0, screenHeight  windowHeight)
        
        var winID3 : int := Window.Open ("title:Lower Left")
        Window.SetPosition (winID3, 0, 0)
        
        var winID4 : int := Window.Open ("title:Lower Right")
        Window.SetPosition (winID4, screenWidth  windowWidth, 0)
        
##Status
Exported qualified.
This means that you can only call the function by calling **Window.SetPosition**, not by calling **SetPosition**.



##See also
**[window_getposition.html](Window.GetPosition)** to get the current window position and **[config_display.html](Config.Display)** to get the size of the screen.


