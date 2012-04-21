
#Font

##Description
This unit contains the predefined subprograms that deal with fonts. Using these routines, you can display text in a selected font name, size and style on the screen. Note that output in a particular font is treated as graphics output.
All routines in the Font module are exported qualified (and thus must be prefaced with "**Font**.").



##Details
There is a default font. You can draw in and obtain information about the default font by passing *fontDefaultID* to **Font.Draw**, **Font.Width** and **Font.Sizes**. The default font is the same font as is used by **put** in the output window. 



##Entry Points
[font_new.html](**New**) Selects a particular font name, size and style for a new font.[font_free.html](**Free**) Frees up the font created by using **New**.[font_draw.html](**Draw**) Draws text in a given font.[font_width.html](**Width**) Gets the width in pixels of a particular piece of text in a specified font.[font_sizes.html](**Sizes**) Gets the height and various leadings of a specified font.[font_name.html](**Name**) Returns the name of the specified font.[font_startname.html](**StartName**) Prepares to list all available fonts,[font_getname.html](**GetName**) Gets the next font name.[font_getstyle.html](**GetStyle**) Gets all the available styles for a specified font.[font_startsize.html](**StartSize**) Prepares to list all available sizes for a specified font and style.[font_getsize.html](**GetSize**) Gets the next font size.


