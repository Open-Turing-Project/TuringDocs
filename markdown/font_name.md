
#Font.Name

##Syntax
**Font.Name** (_fontID_ : **int**) _fontName_ : **string**



##Description
**Font.Name** is used to get the name of a font that is being used. The string that is returned can be used to determine which font is actually being used for the default fonts &#147;serif&#148;, &#147;sans serif&#148; and &#147;mono&#148;.



##Example
The program prints out the fonts used for &#147;serif&#148;, &#147;sans serif&#148; and &#147;mono&#148;.



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


