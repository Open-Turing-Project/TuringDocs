
#whatcolor

##Syntax
**whatcolor** : **int**



##Description
The **whatcolor** function is used to determine the current (foreground) color, ie., the color used for characters that are output using **put**. The alternate spelling is **whatcolour**.



##Example
This program outputs the currently-active color number. The  message is also given in the currently-active color.


        setscreen ("graphics")
        
        put "This writing is in color number ", whatcolor
##Details
The screen should be in a "_screen_"_ _or "_graphics_" mode. See **setscreen** for details.



##See also
the **[color.html](color)** [procedure.html](procedure), which is used to [set.html](set) the [color.html](color). See also **[colorback.html](colorback)** and **[whatcolorback.html](whatcolorback)**.
See also predefined unit **[textmodule.html](Text)**.


