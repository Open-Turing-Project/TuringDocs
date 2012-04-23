
# whatcolor

## Syntax
**whatcolor** : **int**

## Description
The **whatcolor** function is used to determine the current (foreground) color, ie., the color used for characters that are output using **put**. The alternate spelling is **whatcolour**.


## Example
This program outputs the currently-active color number. The  message is also given in the currently-active color.

        setscreen ("graphics")
        
        put "This writing is in color number ", whatcolor
## Details
The screen should be in a "_screen_" or "_graphics_" mode. See **setscreen** for details.


## See also
the **[color](color.html)** [procedure](procedure.html), which is used to [set](set.html) the [color](color.html). See also **[colorback](colorback.html)** and **[whatcolorback](whatcolorback.html)**.

See also predefined unit **[Text](textmodule.html)**.

