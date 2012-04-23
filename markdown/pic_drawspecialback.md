
# Pic.DrawSpecialBack

## Syntax
**Pic.DrawSpecialBack** (_picID_, _x_, _y_, _mode_, _transition_, _duration_  : **int**)

## Description
**Pic.DrawSpecialBack** is very similar to **[Pic.DrawSpecial](pic_drawspecial.html)**.  The onlydifference is that **Pic.DrawSpecialBack** returns immediatelyafter being called and program execution continues while the specialeffect continues.  This allows you to continue to draw other graphicswhile the special effect is continuing.

For example, this procedure is necessary if you want to have two pictures being drawn using special effects simultaneously.


## Details
If you are wish to have several images displayed at the same timeusing special effects, you must use **Pic.DrawSpecialBack** to display all the images but the last and then use **Pic.DrawSpecial** to display the last image so that Turing will wait until the special effects are completed before continuing execution.

If you want to draw the several special effects continuously overthe same location, do not use **Pic.DrawSpecialBack**.

`**Pic.DrawSpecial** (_pic1_, 10, 10, _picCopy_, _picWipeLeftToRight_, 500)**Pic.DrawSpecial** (_pic2_, 10, 10, _picCopy_, _picFadeIn_, 1000)`

If you do, Turing will attempt to run each of the calls at the sametime, and most of the special effects will not be seen.


## Description
**Pic.DrawSpecialBack** is used to draw a picture on the screenwith a special effect such as a wipe, a slide, or a fade-in. Note that all the parameters are identical to the parameters of**[Pic.DrawSpecial](pic_drawspecial.html)**.The picture is drawn with the lower left corner at (_x_, _y_). The _duration_ specifies how long thetransition should take in milliseconds.  For example, a fade-in couldbe specified to last 1/2 a second by using a duration of 500.

The _mode_ parameter is the same as in **Pic.New** and has one of the following values:


_picCopy_   This draws the picture on top of what was underneath, obscuring it completely.
_picXor_   This draws the picture XORing it with the background. In DOS, you can use this function to do animation. Drawing an object on top of itself with XOR erases it and restores the background.
_picMerge_   This draws the picture like _picCopy_ except that any occurrence of the background color in the picture is not drawn to the screen. This allows you to draw an irregularly-shaped object and draw it to the screen.
_picUnderMerge_   This draws the picture, but only where the background color was displayed underneath it. The effect of this is to make the picture appear to be displayed behind the background.


See **[Pic.DrawSpecial](pic_drawspecial.html)** for thelist of possible values for the _transition_ parameter.


## Details
The **Pic.DrawSpecialBack** requires a moderately fast machine to operate successfully (Pentium III or higher). The _picFadeIn_and _picBlend_ transitions do not work well on 8-bit (256 color)displays.  On Microsoft Windows machines, you can determine the bit-depth of the display (the number of colors available) by selecting the _Display_ control panel from the _Start_ menu.  You can also use the

`      **Config.Display** (**cdNumMaxColors**)`

function to determine the bit-depth of the display (anything **over** 256 colors will produce acceptable results).


## Details
If the **Pic.DrawSpecialBack** call fails, **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.


## Example
The program draws a blue star on the screen, then a red circle, thenproceeds to have to have the two replace each simultaneously, side-by-side.



        var redID, blueID: int
        Draw.FillStar (0, 0, 100, 100, brightred)
        redID := Pic.New (0, 0, 100, 100)
        cls
        Draw.FillOval (50, 50, 50, 50, brightblue)
        blueID := Pic.New (0, 0, 100, 100)
        cls
	Pic.DrawSpecialBack (redID, 10, 10, picCopy, picWipeLeftToRightNoBar, 1000)
	Pic.DrawSpecial (blueID, 160, 10, picCopy, picWipeRightToLeftNoBar, 1000)
	Pic.DrawSpecialBack (blueID, 10, 10, picCopy, picSlideLeftToRightNoBar, 1000)
	Pic.DrawSpecial (redID, 160, 10, picCopy, picSlideRightToLeftNoBar, 1000)
	Pic.DrawSpecialBack (redID, 10, 10, picCopy, picGrowRightToLeftNoBar, 1000)
	Pic.DrawSpecial (blueID, 160, 10, picCopy, picGrowLeftToRightNoBar, 1000)
	Pic.DrawSpecialBack (blueID, 10, 10, picCopy, picWipeTopToBottomNoBar, 1000)
	Pic.DrawSpecial (redID, 160, 10, picCopy, picWipeTopToBottomNoBar, 1000)
	Pic.DrawSpecialBack (redID, 10, 10, picCopy, picFadeIn, 1000)
	Pic.DrawSpecial (blueID, 160, 10, picCopy, picFadeIn, 1000)
        Pic.Free (redID)
        Pic.Free (blueID)
## Status
Exported qualified.

This means that you can only call the function by calling **Pic.DrawSpecialBack**, not by calling **DrawSpecialBack**.


## See also
**[Pic.Draw](pic_draw.html)** for information on the meaningof the _mode_ argument.

**[Pic.DrawSpecial](pic_drawspecial.html)** for information on how to draw special effects and wait for completionof the effect.

