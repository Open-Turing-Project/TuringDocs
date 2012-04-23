
#Text.WhatColorBack

##Syntax
**Text.WhatColorBack** : **int**


##Description
The **Text.WhatColorBack** function is used to determine the current text background color. The alternate spelling is **whatcolourback**.


##Example
This program outputs the currently-active background color number. The background color of the message is determined by this number.

        View.Set ("screen")
        
        put "The background of this writing"
        put  "is in color number ", Text.WhatColorBack
##Details
The screen should be in a "_screen_" or "_graphics_" mode. Beware that the meaning of background color is different in these two modes. See **Text.ColorBack** for details.


##Status
Exported qualified.

This means that you can only call the function by calling **Text.WhatColorBack**, not by calling **WhatColorBack**.


##See also
**[text_color.html](Text.Color)** and **[text_whatcolor.html](Text.WhatColor)**.

