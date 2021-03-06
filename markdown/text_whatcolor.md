
# Text.WhatColor

## Syntax
**Text.WhatColor** : **int**

## Description
The **Text.WhatColor** function is used to determine the current text (foreground) color, ie., the color used for characters that are output using **put**. The alternate spelling is **Text.WhatColour**.


## Example
This program outputs the currently-active color number. The  message is also given in the currently-active color.

        View.Set ("graphics")
        
        put "This writing is in color number ", Text.WhatColor
## Details
The screen should be in a "_screen_" or "_graphics_" mode. See **View.Set** for details.


## Status
Exported qualified.

This means that you can only call the function by calling **Text.WhatColor**, not by calling **WhatColor**.


## See also
the **[Text.Color](text_color.html)** [procedure](procedure.html), which is used to [set](set.html) the [color](color.html). See also **[Text.ColorBack](text_colorback.html)** and **[Text.WhatColorBack](text_whatcolorback.html)**.

