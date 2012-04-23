
# View

## Description
This unit contains the predefined subprograms that deal with the current output surface, which is a window.

All routines in the **View** unit are exported qualified (and thus must be prefaced with "**View.**") with the exception of **maxx**, **maxy**, **maxcolor** and **maxcolour** which are exported unqualified.


## Entry Points

[**maxx**](view_maxx.html)   Returns the maximum x coordinate (width  1) (exported unqualified).
[**maxy**](view_maxy.html)   Returns the maximum y coordinate (height  1) (exported unqualified).
[**maxcolor**](view_maxcolor.html)   Returns the maximum color number (# colors  1) (exported unqualified).
[**maxcolour**](view_maxcolour.html)   Returns the maximum color number (# colors  1) (exported unqualified).
[**Set**](view_set.html)   Changes the configuration of the output surface.
[**ClipSet**](view_clipset.html)   Clips output to a specified rectangle.
[**ClipAdd**](view_clipadd.html)   Adds another specified rectangle to the clipping region.
[**ClipAddOval**](view_clipaddoval.html)   Adds another specified oval to the clipping region.
[**ClipOff**](view_clipoff.html)   Stops all clipping.
[**WhatDotColor**](view_whatdotcolor.html)      Gets the color of the pixel at a specified location.
[**WhatDotColour**](view_whatdotcolour.html)   Gets the color of the pixel at a specified location.
[**Update**](view_update.html)   Updates the onscreen window from the offscreen bitmap.
[**UpdateArea**](view_updatearea.html)   Updates part of the onscreen window from the offscreen bitmap.
[**SetTransparentColor**](view_settransparentcolor.html)   Sets the transparent color to be ignored when using `picUnderMerge` mode.
[**SetTransparentColour**](view_settransparentcolor.html)   Sets the transparent colour to be ignored when using `picUnderMerge` mode.
