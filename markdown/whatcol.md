
#whatcol

##Syntax
**whatcol** : **int**

##Description
The **whatcol** function is used to determine the cursor position's column.

##Example
This program outputs *The current row is 5*,* the current column is 15*.
        locate  ( 5, 10 )
        put "12345"..
        put "The current row is", whatrow
        put "The current column is", whatcol
##Details
The screen should be in a "*screen*" or* *"*graphics*" mode. **whatcol** functions properly even if the cursor is invisible.

##See also
the **[whatrow.html](whatrow)** function, which is used to [set.html](set) the determine the cursor row. See also the **[locate.html](locate)**, **[maxrow.html](maxrow)** and **[maxcol.html](maxcol)** [procedure.html](procedure).
See also predefined unit **[textmodule.html](Text)**.
