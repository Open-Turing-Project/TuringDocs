
#Sprite.ChangePic

##Syntax
**Sprite.ChangePic** (*spriteID*, *picID* : **int**)

##Description
Changes the picture associated with a sprite while maintaining the sprites height and visibility status. A typical use **Sprite.ChangePic** would be to animate a sprite that stays in position.

##Example
Here is a program that t that loads six images from files *Pic1.bmp** ***through*** **Pic6.bmp* and then displays them sequentially in the center of the screen.
        var pics : array 0 .. 5 of int
        var sprite: int
        for i : 1 .. 6
            pics (i  1) := Pic.FileNew ("Pic" + intstr (i) + ".bmp")
            if Error.Last not= 0 then
                put "Error loading image: ", Error.LastMsg
                return
            end if
        end for
        figure := Sprite.New (pics (0))
        Sprite.SetPosition (sprite, maxx div 2, maxy div 2, true)
        Sprite.Show (sprite)
        for i : 1 .. 100
            Sprite.ChangePic (sprite, pics (i mod 6))
        end for
        Sprite.Free (sprite)
##Status
Exported qualified.
This means that you can only call the function by calling **Sprite.ChangePic**, not by calling **ChangePic**.

##See also
**[sprite_new.html](Sprite.New)**.
