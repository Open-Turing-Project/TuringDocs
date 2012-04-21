
#Font.New

##Syntax
**Font.New** (*fontSelectStr* : **string**) : **int**



##Description
**Font.New **is used to obtain a font for drawing. The *fontSelectStr*parameter specifies the name, size and style of the font. **Font.New** returns a font identifier which is then used by the **Font.Draw** procedure to draw text in the selected font.
The format for the *fontSelectStr*parameter is "*Family*:*Size*:*Style*". Each element is separated by a colon. The ":*Style*" is optional. If left out, the text appears in the standard face for the font.
*Family* is the name of the font, such as "Times", "Helvetica", etc. The name must match an existing font on the system. Because one does not necessarily know which fonts will be available and names for the same font change between different systems (i.e Times, Times-Roman, etc.), Turing defines three family names that will be mapped as closely as possible to fonts that exist on the system.
 "serif" is used for a serifed body font. This will usually be mapped to Times-Roman. "sans serif" is used for a non-serifed display font. This will usually be mapped to Arial. "mono" is used for a mono spaced font. This will usually be mapped to Courier.
*Size* is the point size in which the text should appear. If the number is larger or smaller than can be created on a given system, the system will return the font of the largest or smallest size available and set **Error.Last**.
Under Turing, the *size* parameter may also have the form *height *x *width* where *height* and *width* are the pixel height and width desired. What is returned is the font scaled in order to fit into the *width* and *height* requested. The font name must be a scaleable font for this to succeed.
*Style* is the font style in which the text should appear. It can be one of "bold", "italic" or "underline". You can also have "bold,italic" and any other combination.


        example fontID := Font.New ("Ariel:18x12:Italic")
##Details
If the **Font.New** call fails, then it returns 0. Also **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.
It is quite possible for **Error.Last** to be set, even if the call succeeds. **Font.New** will report success even if unable to successfully match the requested font with the available resources. A font will be set that matches as closely as possible the requested font and **Last.Error** will be set to indicate that some substitutions were required.



##Example
The program prints out several phrases in a variety of fonts.


        var font1, font2, font3, font4 : int
        font1 := Font.New ("serif:12")
        font2 := Font.New ("sans serif:18:bold")
        font3 := Font.New ("mono:9")
        font4 := Font.New ("Palatino:24:Bold,Italic")
        assert font1 > 0 and font2 > 0 and font3 > 0 and font4 > 0
        Font.Draw ("This is in a serif font", 50, 30, font1, red)
        Font.Draw ("This is in a sans serif font", 50, 80, font2, brightblue)
        Font.Draw ("This is in a mono font", 50, 130, font3, colorfg)
        Font.Draw ("This is in Palatino (if available)", 50, 180, font4, green)
        Font.Free (font1)
        Font.Free (font2)
        Font.Free (font3)
        Font.Free (font4)
##Status
Exported qualified.
This means that you can only call the function by calling **Font.New**, not by calling **New**.


