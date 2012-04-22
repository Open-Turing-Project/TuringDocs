
#Text.Color

##Syntax
**Text.Color** ( _Color_ : **int** )



##Description
The **Text.Color** procedure is used to change the currently-active color. This is the color of characters that are to be **put** on the screen. The alternate spelling is **Text.Colour**.



##Example
This program prints out the message "Bravo" three times, each in a different color.


        View.Set ( "graphics" )
        for i : 1 .. 3
            Text.Color ( i )
            put "Bravo"
        end for
##Example
This program prints out a message. The color of each letter is different from the preceding letter. For letter number _i_ the color number is _i_ mod maxcolor + 1. This cycles repeatedly through all the available colors.


        View.Set ( "screen" )
        const message := "Happy New Year!!"
        for i : 1 .. length ( message )
            Text.Color ( i mod maxcolor + 1 )
            put message ( i ) ..
        end for
##Details
In "_screen_" mode on the IBM PC, the color specified can actually range from 0 - 31. The upper 16 colors (16-31) are the same as the lower 16, except that they blink.
See **View.Set** for the number of colors available in the various "_graphics_" modes.
The screen should be in a "_screen_" or "_graphics_" mode. If the screen mode has not been set, it will automatically be set to "_screen_" mode. See **View.Set** for details.



##Status
Exported qualified.
This means that you can only call the function by calling **Text.Color**, not by calling **Color**.



##See also
**[text_colorback.html](Text.ColorBack)**, **[text_whatcolor.html](Text.WhatColor)**, **Text.WhatChar** and **[view_maxcolor.html](View.maxcolor)**.


