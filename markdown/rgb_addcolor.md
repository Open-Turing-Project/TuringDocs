
#RGB.AddColor

##Syntax
**RGB.AddColor** (_redComp_, _greenComp_, _blueComp_ : **real**) : **int**



##Description
The **RGB.AddColor** function attempts to create a new color with the red, green and blue components specified. If successful, the function returns a new color number (usually one greater than **maxcolor**) and **maxcolor** is updated by adding 1 to it. If it is unsuccessful, the function returns 1 and **Error.Last** and **Error.LastMsg** can be used to determine the cause of the problem. 
The red, green and blue values must normalized to be between 0 and 1. Thus to add the pure red to the color palette, you would call:
_newColor_ would be set to the color added, or 1 if the attempt to add a color failed.


        newColor := RGB.AddColor (1.0, 0.0, 0.0)
##Example
This program adds a palette of 16 blues to the end of the color palette.

**Details** **RGB.AddColour** is an alternate spelling for **RGB.AddColor**.



        var clr : int
        for blueShade : 0 .. 15
             clr = RGB.AddColor (0, 0, blueShade / 15)
             if clr = 1 then
                put "Color add failed on shade number ", blueShade
                exit
            else
                put "Added color number ", clr
            end if
        end for
##Status
Exported qualified.
This means that you can only call the function by calling **RGB.AddColor**, not by calling **AddColor**.



##See also
**[rgb_getcolor.html](RGB.GetColor)**and **[rgb_setcolor.html](RGB.SetColor)**.


