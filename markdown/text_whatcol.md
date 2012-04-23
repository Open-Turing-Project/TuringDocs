
#Text.WhatCol

##Syntax
**Text.WhatCol** : **int**


##Description
The **Text.WhatCol** function is used to determine the cursor position's column.


##Example
This program outputs _The current row is 5_, _the current column is 15_.

        Text.Locate  ( 5, 10 )
        put "12345"..
        put "The current row is", Text.WhatRow
        put "The current column is", Text.WhatCol
##Details
The screen should be in a "_screen_" or "_graphics_" mode. **Text.WhatCol** functions properly even if the cursor is invisible.


##Status
Exported qualified.

This means that you can only call the function by calling **Text.WhatCol** , not by calling **WhatCol** .


##See also
the **[text_whatrow.html](Text.WhatRow)** function, which is used to determine the cursor row. See also the **[text_locate.html](Text.Locate)**, **[text_maxrow.html](Text.maxrow)** and **[text_maxcol.html](Text.maxcol)** [procedure.html](procedure).

