
#Sprite.Animate

##Syntax
**Sprite.Animate** (_spriteID_, _picID, x_, _y_ : **int**,    _centered_ : **boolean**)


##Description
Moves the sprite specified by _spriteID_ to the location specified by (_x, y_). If _centered_ is **true**, then the sprite is centered on (_x, y_). Otherwise (_x, y_) specifies the lower-left corner of the sprite. At the same time, it changes the picture associated with the sprite.

A simple example of the **Sprite.Animate** procedure would be of a man walking. The picture associated with the sprite would constantly change as the figure was walking. At the same time, the location of the figure would also change.


##Example
Here is a program that loads a series of images from an animatedGIF file called "mypic.gif".  It works by loading the images fromthe GIF file into an array (see **[pic_filenewframes.html](Pic.FileNewFrames)** formore information) and then displays the images sequentially on the screen, moving the image eight pixels each time.



        var numFrames := Pic.Frames ("mypic.gif")
        % Load the picture
        var delayTime : int
        var pics : array 1 .. numFrames of int
	Pic.FileNewFrames ("mypic.gif", pics, delayTime)

        var sprite: int
        sprite:= Sprite.New (pics (1))
        Sprite.SetPosition (sprite, 0, 100, false)
        Sprite.Show (sprite)
        for x : 8 .. maxx by 8
            Sprite.Animate (sprite, pics ((x div 8) mod numFrames + 1), x, 100, false)
    	    delay (40)    % Stop sprite from moving too quickly
        end for
        Sprite.Free (sprite)
##Status
Exported qualified.

This means that you can only call the function by calling **Sprite.Animate**, not by calling **Animate**.


##See also
**[sprite_new.html](Sprite.New)**, **[sprite_setposition.html](Sprite.SetPosition)** and **[sprite_changepic.html](Sprite.ChangePic)**.

