
#RGB.SetColor

##Syntax
**RGB.SetColor** (_colorNumber_: **int**,
_redComp_, _greenComp_, _blueComp_ : **real**)




##Description
The **RGB.SetColor** function sets the red, green and blue components of the color associated with the _colorNumber_ parameter. The red, green and blue values must normalized to be between 0 and 1. Thus to set the color associated with the _colorNumber_ parameter to pure red, you would call:
It is wise to use **Error.Last** and **Error.LastMsg** to check to see if the color change is successful.


        RGB.SetColor (colorNumber, 1.0, 0.0, 0.0)
##Example
This program sets all the available colors to shades of red

**Details** **RGB.SetColour** is an alternate spelling for **RGB.SetColor**.

<


        for clr : 0 .. maxcolor
             if not RGB.SetColor (clr, clr / maxcolor, 0, 0) then
                put "Color set failed on color number ", clr
                exit
            end if
        end for
##Status
Exported qualified.
This means that you can only call the function by calling **RGB.SetColor**, not by calling **SetColor**.



##See also
**[rgb_getcolor.html](RGB.GetColor)**and **[rgb_addcolor.html](RGB.AddColor)**.


