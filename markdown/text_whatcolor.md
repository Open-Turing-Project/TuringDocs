
#Text.WhatColor

##Syntax
**Text.WhatColor** : **int**



##Description
The **Text.WhatColor** function is used to** **determine the current text (foreground) color, ie., the color used for characters that are output using **put**. The alternate spelling is **Text.WhatColour**.



##Example
This program outputs the currently-active color number. The  message is also given in the currently-active color.


        View.Set ("graphics")
        
        put "This writing is in color number ", Text.WhatColor
##Details
The screen should be in a "*screen*"* *or "*graphics*" mode. See **View.Set **for details.



##Status
Exported qualified.
This means that you can only call the function by calling **Text.WhatColor**, not by calling **WhatColor**.



##See also
the **[text_color.html](Text.Color)** [procedure.html](procedure), which is used to [set.html](set) the [color.html](color). See also **[text_colorback.html](Text.ColorBack)** and **[text_whatcolorback.html](Text.WhatColorBack)**.


