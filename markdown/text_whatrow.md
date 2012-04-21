
#Text.WhatRow

##Syntax
**Text.WhatRow** : **int**

##Description
The **Text.WhatRow** function is used to** **determine the cursor position's row.

##Example
This program outputs *The current row is 5*,* the current column is 15*.
        Text.Locate  ( 5, 10 )
        put "12345"..
        put "The current row is", Text.WhatRow
        put "The current column is", Text.WhatCol
##Details
The screen should be in a "*screen*" or* *"*graphics*" mode. **Text.WhatRow** functions properly even if the cursor is invisible.

##Status
Exported qualified.
This means that you can only call the function by calling **Text.WhatRow**, not by calling **WhatRow**.

##See also
the **[text_whatcol.html](Text.WhatCol) **function, which is used to determine the cursor column. See also the **[text_locate.html](Text.Locate)**, **[textmodule.html](Text)**.**[maxrow.html](maxrow)** and **[text_maxcol.html](Text.maxcol) **[procedure.html](procedure).