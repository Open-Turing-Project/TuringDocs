
#Font.Name

##Syntax
**Font.Name** (*fontID* : **int**) *fontName* : **string**

##Description
**Font.Name** is used to get the name of a font that is being used. The string that is returned can be used to determine which font is actually being used for the default fonts serif, sans serif and mono.

##Example
The program prints out the fonts used for serif, sans serif and mono.

        var serifFont, sansSerifFont, monoFont : int
        serifFont := Font.New ("serif:12")
        assert serifFont > 0
        sansSerifFont := Font.New ("sans serif:12")
        assert sansSerifFont > 0
        monoFont := Font.New ("mono:12")
        assert monoFont > 0
        put "serif = ", Font.Name (serifFont)
        put "sans serif = ", Font.Name (sansSerifFont)
        put "mono = ", Font.Name (monoFont)
        Font.Free (serifFont)
        Font.Free (sansSerifFont)
        Font.Free (monoFont)
##Status
Exported qualified.
This means that you can only call the function by calling **Font.Name**, not by calling **Name**.
