
# Text

## Description
This unit contains the predefined subprograms that handle character (text) output on the screen (i.e. output using **put**).

All routines in the **Text** unit are exported qualified (and thus must be prefaced with "**Text.**") with the exception of **maxrow** and **maxcol** which are exported unqualified.


## Entry Points

[**Cls**](text_cls.html)   Clears the screen to the text background color.
[**Color**](text_color.html)   Sets the text color used by **put**.
[**Colour**](text_colour.html)   Sets the text color used by **put**.
[**ColorBack**](text_colorback.html)   Sets the text background color used by **put**.
[**ColourBack**](text_colourback.html)   Sets the text background color used by **put**.
[**Locate**](text_locate.html)   Moves the cursor to the specified row and column.
[**LocateXY**](text_locatexy.html)   Moves the cursor to the cursor location closest to a specified pixel position.
[**maxcol**](text_maxcol.html)   The number of columns on the screen (exported unqualified).
[**maxrow**](text_maxrow.html)   The number of rows on the screen (exported unqualified).
[**WhatRow**](text_whatrow.html)   Returns the current cursor row.
[**WhatCol**](text_whatcol.html)   Returns the current cursor column.
[**WhatColor**](text_whatcolor.html)   Returns the current text color.
[**WhatColour**](text_whatcolour.html)   Returns the current text color.
[**WhatColorBack**](text_whatcolorback.html)   Returns the current text background color.
[**WhatColourBack**](text_whatcolourback.html)   Returns the current text background color.
