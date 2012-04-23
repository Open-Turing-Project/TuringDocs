
# Font.StartName

## Syntax
**Font.StartName**

## Description
**Font.StartName** is used to start the listing of all the fonts available on the system. This procedure is called before making calls to **Font.GetName** to get the name of the fonts available. Once the name of a font is known, it's possible to list the available styles (using **Font.GetStyle**) and the available sizes (using **Font.StartSize** and **Font.GetSize**).


## Example
The program lists all the fonts available on the system.



        var fontName : string
        Font.StartName
        loop
            fontName := Font.GetName
            exit when fontName = ""
            put fontName
        end loop
## Example
Another example is available that displays full information aboutthe fonts including name, styles, and point sizes.




## Status
Exported qualified.

This means that you can only call the function by calling **Font.StartName**, not by calling **StartName**.

