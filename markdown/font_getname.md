
#Font.GetName

##Syntax
**Font.GetName** : **string**


##Description
**Font.GetName** is used to get the next font available on the system. By using **Font.StartName** and then calling **Font.GetName** repeatedly, you can get the names of all the fonts available to the program.

**Font.StartName** must be called before any calls to **Font.GetName**. After that, **Font.GetName** returns the list of the font names, one per call. When there are no more sizes, **Font.GetName** returns the empty string.

Once the name of a font is known, it's possible to list the available styles (using **Font.GetStyle**) and the available sizes (using **Font.StartSize** and **Font.GetSize**) for that font.


##Example
The program lists all the fonts available on the system.



        var fontName : string
        Font.StartName
        loop
            fontName := Font.GetName
            exit when fontName = ""
            put fontName
        end loop
##Example
Another example is available that displays full information aboutthe fonts including name, styles, and point sizes.




##Status
Exported qualified.

This means that you can only call the function by calling **Font.GetName**, not by calling **GetName**.

