
#RGB.GetColor

##Syntax
**RGB.GetColor** (_colorNumber_ : **int**, 
**var** _redComp_, _greenComp_, _blueComp_ : **real**)



##Description
The **RGB.GetColor** procedure returns the red, green and blue components to the color associated with the _colorNumber_ parameter. The red, green and blue values are normalized to be between 0 and 1. Thus color white returns 1.0 for the _redComp_, _greenComp_ and _blueComp_ values and color black returns 0.0 for all three.


##Example
This program gets the components of all the available colors.


**Details**   **RGB.GetColour** is an alternate spelling for **RGB.GetColor**.


        put "Color   Red     Green     Blue"
        for clr : 0 .. maxcolor
            var redComp, greenComp, blueComp : int
            RGB.GetColor (clr, redComp, greenComp, blueComp)
            put clr : 4, "  ", redComp : 6 : 4 , "  ", greenComp : 6 : 4, " ", 
                                        blueComp : 6 : 4
        end for
##Status
Exported qualified.

This means that you can only call the function by calling **RGB.GetColor**, not by calling **GetColor**.


##See also
**[rgb_setcolor.html](RGB.SetColor)**and **[rgb_addcolor.html](RGB.AddColor)**.

