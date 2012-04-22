
#Pic.Draw

##Syntax
**Pic.Draw** (_picID_, _x_, _y_, _mode_ : **int**)



##Description
**Pic.Draw **is used to draw a picture on the screen. The picture is drawn with the lower left corner at (_x_, _y_).
The _mode_ parameter has one of the following values:

_picCopy_ This draws the picture on top of what was underneath, obscuring it completely.
_picXor_ This draws the picture XORing it with the background. In DOS, you can use this function to do animation. Drawing an object on top of itself with XOR erases it and restores the background.
_picMerge_ This draws the picture like _picCopy_ except that any occurrence of the background color in the picture is not drawn to the screen. This allows you to draw an irregularly-shaped object and draw it to the screen.
_picUnderMerge_ This draws the picture, but only where the background color was displayed underneath it. The effect of this is to make the picture appear to be displayed behind the background.




##Details
If the **Pic.Draw** call fails, **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.


![Doc image](pic_draw01.gif)


##Example
The program draws a graphic on the screen and then repeats it 50 times in random positions.


        var picID: int
        var x, y : int
        Draw.FillBox (50, 50, 150, 150, red)
        Draw.FillStar (50, 50, 150, 150, green)
        Draw.FillOval (100, 100, 30, 30, blue)
        
        picID := Pic.New (50, 50, 150, 150)
        for i : 1 .. 50
            x := Rand.Int (0, maxx)     % Random x
            y := Rand.Int (0, maxy)     % Random y
            Pic.Draw (picID, x, y, picCopy)
        end for
        Pic.Free (picID)
##Status
Exported qualified.
This means that you can only call the function by calling **Pic.Draw**, not by calling **Draw**.



##See also
[view_update.html](View.Update) for information on howto produce smooth animation.
[pic_drawspecial.html](Pic.DrawSpecial) for information on howto make pictures appear using special effects such as wipes and slides.
[pic_drawframes.html](Pic.DrawFrames) for information on howto display multiple frame images such as are obtained from GIF files.


