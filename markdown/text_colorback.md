
#Text.ColorBack

##Syntax
**Text.ColorBack** ( _Color_ : **int** )



##Description
The **Text.ColorBack** procedure is used to change the current text background color. The alternate spelling is **Text.ColourBack**.
The **Text.ColorBack** procedure sets the text background color to the specified color. This is the color that surrounds characters when they are **put** onto the screen. On an IBM PC in "_screen_" mode, the color can be from 0 - 7. (You can not have the upper 8 colors as text background colors. On UNIX dumb terminals, **Text.ColorBack**(1) turns on highlighting and **Text.ColorBack**(0) turns it off. On other systems, this procedure may have no effect.



##Example
Since this program is in "_screen_" mode, changing the background color has no immediately observable effect. When the message "Greetings" is output, the background surrounding each letter will be red.


        View.Set ( "screen" )
        
        Text.ColorBack ( red )
        put "Greetings"
##Details
The screen should be in a "_screen_" or "_graphics_" mode. If the screen mode has not been set, it will automatically be set to "_screen_" mode. See **View.Set** for details 



##Status
Exported qualified.
This means that you can only call the function by calling **Text.ColorBack** , not by calling **ColorBack**.



##See also
**[text_color.html](Text.Color)** and **[text_whatcolorback.html](Text.WhatColorBack)**.


