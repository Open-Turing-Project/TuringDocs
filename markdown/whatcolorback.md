
#whatcolorback

##Syntax
**whatcolorback** : **int**


##Description
The **whatcolorback** function is used to determine the current background color. The alternate spelling is **whatcolourback**.


##Example
This program outputs the currently-active background color number. The background color of the message is determined by this number.

        setscreen ("screen")
        
        put "The background of this writing"
        put  "is in color number ", whatcolorback
##Details
The screen should be in a "_screen_" or "_graphics_" mode. Beware that the meaning of background color is different in these two modes. See **colorback** for details.


##See also
**[color.html](color)** and **[whatcolor.html](whatcolor)**.

See also predefined unit **[textmodule.html](Text)**.

