
#Font.Free

##Syntax
**Font.Free** (_fontID_ : **int**)



##Description
**Font.Free **is used to release a font that is no longer needed. There is a limit to the number of fonts that may be defined at any one time. By having a **Font.Free** for every **Font.New**, the number of simultaneously defined fonts is kept to a minimum.



##Details
If **Font.Free** is passed an invalid font ID, a fatal error occurs. If the **Font.Free** call fails for other (non-fatal) reasons, **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.



##Example
The program prints out several phrases in a variety of fonts.



        var font1, font2, font3, font4 : int
        font1 := Font.New ("serif:12")
        assert font1 > 0
        font2 := Font.New ("sans serif:18:bold")
        assert font2 > 0
        font3 := Font.New ("mono:9")
        assert font3 > 0
        font4 := Font.New ("Palatino:24:Bold,Italic")
        assert font4 > 0
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
This means that you can only call the function by calling **Font.Free**, not by calling **Free**.


