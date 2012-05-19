
# Font

## Description
This unit contains the predefined subprograms that deal with fonts. Using these routines, you can display text in a selected font name, size and style on the screen. Note that output in a particular font is treated as graphics output.

All routines in the Font module are exported qualified (and thus must be prefaced with "**Font**.").


## Details
There is a default font. You can draw in and obtain information about the default font by passing _fontDefaultID_ to **Font.Draw**, **Font.Width** and **Font.Sizes**. The default font is the same font as is used by **put** in the output window. 


## Entry Points

[**New**](font_new.html)   Selects a particular font name, size and style for a new font.  
[**Free**](font_free.html)   Frees up the font created by using **New**.  
[**Draw**](font_draw.html)   Draws text in a given font.  
[**Width**](font_width.html)   Gets the width in pixels of a particular piece of text in a specified font.  
[**Sizes**](font_sizes.html)   Gets the height and various leadings of a specified font.  
[**Name**](font_name.html)   Returns the name of the specified font.  
[**StartName**](font_startname.html)   Prepares to list all available fonts,  
[**GetName**](font_getname.html)   Gets the next font name.  
[**GetStyle**](font_getstyle.html)   Gets all the available styles for a specified font.  
[**StartSize**](font_startsize.html)   Prepares to list all available sizes for a specified font and style.  
[**GetSize**](font_getsize.html)   Gets the next font size.  
