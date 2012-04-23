
#Font.Draw

##Syntax
**Font.Draw** (_txtStr_ : **string**, _x_, _y_, _fontID_, _Color_ : **int**)


##Description
**Font.Draw** is used to actually draw text in a specified font. The _textStr_ parameter contains the string to be drawn. The _x_ and _y_ parameters are the location of the lower left hand corner of the text to be displayed. The _fontID_ parameter is the number of the font in which the text is to be drawn. The _Color_ parameter is used to specify the color in which the text is to appear.

Note that the text that appears is completely unrelated to the text that appears using **put**. **Font.Draw** is a graphics command and thus does not use or affect the cursor location.

The text drawn by the **Font.Draw** procedure does not erase the background.


##Details
If **Font.Draw** is passed an invalid font ID, a fatal error occurs. If the **Font.Draw** call fails for other (non-fatal) reasons, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.


##Example
The program prints out several phrases in a variety of fonts.



        var font1, font2, font3, font4 : int
        font1 := Font.New ("serif:12")
        assert font1 > 0
        font2 := Font.New ("sans serif:18:bold")
        assert font2 > 0
        font3 := Font.New ("mono:9")
        assert font3 > 0
        font4 := Font.New ("Palatino:24:bold,italic")
        assert font4 > 0
        Font.Draw ("This is in a serif font", 50, 30, font1, red)
        Font.Draw ("This is in a sans serif font", 50, 80, font2, brightblue)
        Font.Draw ("This is in a mono font", 50, 130, font3, colorfg)
        Font.Draw ("This is in Palatino (if available)", 50, 180, font4, green)
        Font.Free (font1)
        Font.Free (font2)
        Font.Free (font3)
        Font.Free (font4)
##Details
To use the same font as is used by the **put** statement, use **defFontID** for the font number.  This font does not have to be created or freed by the user, and allows a program to quickly place text in any location on the screen.

##Example
The program draws two strings in the default font (**defFontID**).

        Font.Draw ("Drawing Here", 100, 120, defFontID, brightred)
        Font.Draw ("and Here", 180, 90, defFontID, brightgreen)
##Status
Exported qualified.

This means that you can only call the function by calling **Font.Draw**, not by calling **Draw**.

