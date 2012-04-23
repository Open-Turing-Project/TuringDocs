
#Font.Width

##Syntax
**Font.Width** (_txtStr_ : **string**, _fontID_ : **int**) : **int**


##Description
**Font.Width** is used to obtain the width in pixels that a specified string will take to draw in a specified font. The _textStr_ parameter is the string. The _fontID_ parameter is the font in which the string would be drawn.


##Details
If **Font.Width** is passed an invalid font ID, a fatal error occurs. If the **Font.Width** call fails for other (non-fatal) reasons, the width for string in the default font will be returned. As well, **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.


##Example
The program gets information about 24pt Bold Palatino.



        const testString := "Test String"
        var width, fontID : int
        fontID := Font.New ("Palatino:24:Bold")
        width := Font.Width (testString, fontID)
        put "The width of \"" + testString + "\" is ", width, " pixels"
        Font.Draw (testString, 100, 100, fontID, black)
        Draw.Line (100, 50, 100, 150, brightred)
        Draw.Line (100 + width, 50, 100 + width, 150, brightred)
        Font.Free (fontID)
##Status
Exported qualified.

This means that you can only call the function by calling **Font.Width**, not by calling **Width**.

