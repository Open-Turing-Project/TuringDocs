
# whatrow

## Syntax
**whatrow** : **int**

## Description
The **whatrow** function is used to determine the cursor position's row.


## Example
This program outputs _The current row is 5_, _the current column is 15_.

        locate  ( 5, 10 )
        put "12345"..
        put "The current row is", whatrow
        put "The current column is", whatcol
## Details
The screen should be in a "_screen_" or "_graphics_" mode. **whatrow** functions properly even if the cursor is invisible.


## See also
the **[whatcol](whatcol.html)** function, which is used to [set](set.html) the determine the cursor column. See also the **[locate](locate.html)**, **[maxrow](maxrow.html)** and **[maxcol](maxcol.html)** [procedure](procedure.html).

See also predefined unit **[Text](textmodule.html)**.

