
#Text

##Description
This unit contains the predefined subprograms that handle character (text) output on the screen (i.e. output using **put**).
All routines in the **Text** unit are exported qualified (and thus must be prefaced with "**Text.**") with the exception of **maxrow** and **maxcol** which are exported unqualified.

##Entry Points
[text_cls.html](**Cls**) Clears the screen to the text background color.[text_color.html](**Color**) Sets the text color used by **put**.[text_colour.html](**Colour**) Sets the text color used by **put**.[text_colorback.html](**ColorBack**) Sets the text background color used by **put**.[text_colourback.html](**ColourBack**) Sets the text background color used by **put**.[text_locate.html](**Locate**) Moves the cursor to the specified row and column.[text_locatexy.html](**LocateXY**) Moves the cursor to the cursor location closest to a specified pixel position.[text_maxcol.html](**maxcol**) The number of columns on the screen (exported unqualified).[text_maxrow.html](**maxrow**) The number of rows on the screen (exported unqualified).[text_whatrow.html](**WhatRow**) Returns the current cursor row.[text_whatcol.html](**WhatCol**) Returns the current cursor column.[text_whatcolor.html](**WhatColor**) Returns the current text color.[text_whatcolour.html](**WhatColour**) Returns the current text color.[text_whatcolorback.html](**WhatColorBack**) Returns the current text background color.[text_whatcolourback.html](**WhatColourBack**) Returns the current text background color.
