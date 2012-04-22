
#Config.Display

##Syntax
**Config.Display** (_displayCode_ : **int**) : **int**



##Description
**Config.Display** returns information about the display (or displays) attached to the computer. The parameter _displayCode_ determines what sort of information is passed back. _displayCode_ has a number of possible values, all summarized by a set of predefined constants.
At the time of this writing, the following constants were defined:

_cdScreenHeight_ return the height of the screen in pixels.
_cdScreenWidth_ return the width of the screen in pixels.
_cdMaxNumColors_ return the maximum number of colors supported by the display.
_cdMaxNumColours_ return the maximum number of colors supported by the display.




##Example
This program prints the screen width and height.


        const width : int := Config.Display (cdScreenWidth)
        const height: int := Config.Display (cdScreenHeight)
        put "The screen width is ", width, "  the screen height is ", height
##Details
On the Macintosh, it's possible to have multiple displays attached to a single computer. To get information about the extra displays, you can call **Config.Display** with any of the first four constants above plus one, two, three, etc.  This will return the height, width or maximum number of colors for the second, third and beyond displays.



##Example
This program prints the screen width and height of the second display on a Macintosh.


        const width : int := Config.Display (cdScreenWidth + 1)
        const height: int := Config.Display (cdScreenHeight + 1)
        put "The second display size is ", width, "  x ", height
##Status
Exported qualified.
This means that you can only call the function by calling **Config.Display**, not by calling **Display**.


