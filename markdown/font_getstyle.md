
#Font.GetStyle

##Syntax
**Font.GetStyle** (_fontName_ : **string**,         **var** _bold_, _italic_, _underline_ : **boolean**) : **string**



##Description
**Font.GetStyle** is used to get the styles available on the system for a specified font. _bold_, _italic_ and _underline_ are set to **true** if bold, italic or underline versions of the font are available. Once the styles available for a font are known, it's possible to get the sizes available for each style by using **Font.StartSize** and **Font.GetSize**.



##Example
The program lists all the fonts and their styles available on the system.



        var fontName : string
        var bold, italic, underline : boolean
        Font.StartName
        loop
            fontName := Font.GetName
            exit when fontName = ""
            Font.GetStyle (fontName, bold, italic, underline)
            put fontName : 30 ..
            if bold then
                put "bold  " ..
            end if
            if italic then
                put "italic  " ..
            end if
            if underline then
                put "underline  " ..
            end if
            put ""
        end loop
##Example
An example is available that displays full information aboutthe fonts including name, styles, and point sizes.




##Status
Exported qualified.
This means that you can only call the function by calling **Font.GetStyle**, not by calling **GetStyle**.


