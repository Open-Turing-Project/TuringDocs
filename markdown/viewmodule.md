
#View

##Description
This unit contains the predefined subprograms that deal with the current output surface, which is a window.
All routines in the **View** unit are exported qualified (and thus must be prefaced with "**View.**") with the exception of **maxx**, **maxy**, **maxcolor** and **maxcolour** which are exported unqualified.



##Entry Points

[view_maxx.html](**maxx**) Returns the maximum x coordinate (width  1) (exported unqualified).
[view_maxy.html](**maxy**) Returns the maximum y coordinate (height  1) (exported unqualified).
[view_maxcolor.html](**maxcolor**) Returns the maximum color number (# colors  1) (exported unqualified).
[view_maxcolour.html](**maxcolour**) Returns the maximum color number (# colors  1) (exported unqualified).
[view_set.html](**Set**) Changes the configuration of the output surface.
[view_clipset.html](**ClipSet**) Clips output to a specified rectangle.
[view_clipadd.html](**ClipAdd**) Adds another specified rectangle to the clipping region.
[view_clipaddoval.html](**ClipAddOval**) Adds another specified oval to the clipping region.
[view_clipoff.html](**ClipOff**) Stops all clipping.
[view_whatdotcolor.html](**WhatDotColor**)  Gets the color of the pixel at a specified location.
[view_whatdotcolour.html](**WhatDotColour**) Gets the color of the pixel at a specified location.
[view_update.html](**Update**) Updates the onscreen window from the offscreen bitmap.
[view_updatearea.html](**UpdateArea**) Updates part of the onscreen window from the offscreen bitmap.
[view_settransparentcolor.html](**SetTransparentColor**) Sets the transparent color to be ignored when using `picUnderMerge` mode.
[view_settransparentcolor.html](**SetTransparentColour**) Sets the transparent colour to be ignored when using `picUnderMerge` mode.


