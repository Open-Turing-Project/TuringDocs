
#View.SetTransparentColor

##Syntax
**View.SetTransparentColor** (*colorNumber* : **int**)



##Description
The **View.SetTransparentColor** procedure sets the color in the Run window that should be considered transparent when a picture is drawn on the window using the picUnderMerge mode. If no color is specified, then the default background color (**colorbg**, usually **white**) is used as the transparent color. You can change this background color using **RGB.SetColor**on color 0.



##Details
This call is often used when you want the Run window to have abackground color other than color 0.



##Example
This program displays two images loaded from the same file. In the second image,the transparent color has been set to bright red (thatis, the parts of the image that are meant to be transparent are inbright red).


        const SIZE : int := 20
        procedure DrawCheckerBoard
            cls
            for x : 0 .. maxx by SIZE
                for y : 0 .. maxy by SIZE
                    if ((x + y) div SIZE) mod 2 = 0 then
                        Draw.FillBox (x, y, x + SIZE, y + SIZE, brightgreen)
                    end if
                end for
            end for
        end DrawCheckerBoard

        var pic : int := Pic.FileNew ("data files/airplane.bmp")
        Pic.SetTransparentColor (pic, brightred)
        RGB.SetColor (0, 1., 0., 0.)
        DrawCheckerBoard
        Pic.Draw (pic, 100, 100, picUnderMerge)
        View.SetTransparentColor (brightgreen)
        Pic.Draw (pic, 400, 100, picUnderMerge)
##Details
**View.SetTransparentColour** is an alternate spelling for **View.SetTransparentColor**.



##Status
Exported qualified.
This means that you can only call the function by calling **View.SetTransparentColor**, not by calling **SetTransparentColor**.



##See also
**[pic_settransparentcolor.html](Pic.SetTransparentColor)**.


