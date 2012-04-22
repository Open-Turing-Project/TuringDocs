
#Draw.Text

##Syntax
**Draw.Text** (_txtStr_ : **string**, _x_, _y_, _fontID_, _Color_ : **int**)



##Description
**Draw.Text **is used to actually draw text in a specified font. The _textStr_ parameter contains the string to be drawn. The _x_ and _y_ paramters are the location of the lower left hand corner of the text to be displayed. The _fontID_ parameter is the number of the font in which the text is to be drawn. The _Color_ parameter is used to specify the color in which the text is to appear.
Note that the text that appears is completely unrelated to the text that appears using **put**. **Draw.Text** is a graphics command and thus does not use or affect the cursor location.
The text drawn by the **Draw.Text** procedure does not erase the background.



##Details
If **Draw.Text** is passed an invalid font ID, a fatal error occurs. If the **Draw.Text** call fails for other (non-fatal) reasons then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.



##Details
**Draw.Text** is identical to **Font.Draw**. It is placed here for consistency with other pixel graphics drawing routines.



##Example
The program draws a phrase in red surrounded by a box in bright blue.


        var font : int
        font := Font.New ("serif:12")
        assert font1 > 0
        var width : int:= Font.Width ("This is in a serif font", font)
        var height, ascent, descent, internalLeading : int
        Font.Sizes (font, height, ascent, descent, internalLeading)
        Draw.Text ("This is in a serif font", 50, 30, font, red)
        Draw.Box (50, 30 + descent, 50 + width, 30 + height, brightblue)
        Font.Free (font)
##Details
To use the same font as is used by the **put** statement, use **defFontID** for the font number.  This font does not have to be created or freed by the user, and allows a program to quickly place text in any location on the screen.



##Example
The program draws two strings in the default font (**defFontID**).


        Draw.Text ("Drawing Here", 100, 120, defFontID, brightred)
        Draw.Text ("and Here", 180, 90, defFontID, brightgreen)
##Status
Exported qualified.
This means that you can only call the function by calling **Draw.Text**, not by calling **Text**.



##See Also
**Font** module for more information about selecting the font to be displayed.


