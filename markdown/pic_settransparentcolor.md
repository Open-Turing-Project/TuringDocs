
#Pic.SetTransparentColor

##Syntax
**Pic.SetTransparentColor** (*colorNumber* : **int**)

##Description
The **Pic.SetTransparentColor** procedure sets the color in the picture that should be considered transparent when the picture is drawn using the picMerge or picUnderMerge modes. If no color is specified, then the default background color (**colorbg**, usually **white**) is used as the transparent color.

##Details
This call is often used when displaying images that were originally stored as GIFs and translated into another format. Many GIFs have a transparent color that can be non-white. To use this call, you must know the color number that represents the color in the image that is to be transparent.

##Example
This program displays two images loaded from the same file. In the second image,the transparent color has been set to bright red (thatis, the parts of the image that are meant to be transparent are inbright red).

        var pic1 : int := Pic.FileNew ("airplane.bmp")
        var pic2 : int := Pic.FileNew ("airplane.bmp")
        Pic.SetTransparentColor (pic2, brightred)
        setscreen ("offscreenonly")
        for x : 100 .. maxx - 100
            cls
            put "The lower image has the transparent color set to bright red"
            Pic.Draw (pic1, x, 150, picMerge)
            Pic.Draw (pic2, x, 50, picMerge)
            View.Update
            delay (5)
        end for
##Details
**Pic.SetTransparentColour** is an alternate spelling for **Pic.SetTransparentColor**.

##Status
Exported qualified.
This means that you can only call the function by calling **Pic.SetTransparentColor**, not by calling **SetTransparentColor**.

##See also
**[pic_draw.html](Pic.Draw)** and **[pic_filenew.html](Pic.FileNew)**.
