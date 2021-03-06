
# Text.WhatRow

## Syntax
**Text.WhatRow** : **int**

## Description
The **Text.WhatRow** function is used to determine the cursor position's row.


## Example
This program outputs _The current row is 5_, _the current column is 15_.

        Text.Locate  ( 5, 10 )
        put "12345"..
        put "The current row is", Text.WhatRow
        put "The current column is", Text.WhatCol
## Details
The screen should be in a "_screen_" or "_graphics_" mode. **Text.WhatRow** functions properly even if the cursor is invisible.


## Status
Exported qualified.

This means that you can only call the function by calling **Text.WhatRow**, not by calling **WhatRow**.


## See also
the **[Text.WhatCol](text_whatcol.html)** function, which is used to determine the cursor column. See also the **[Text.Locate](text_locate.html)**, **[Text](textmodule.html)**.**[maxrow](maxrow.html)** and **[Text.maxcol](text_maxcol.html)** [procedure](procedure.html).

