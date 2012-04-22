
#Sprite.New

##Syntax
**Sprite.New** (_picID_ : **int**) : **int**



##Description
Creates a new sprite from a picture specified by _picID_. The sprite starts invisible and should be given a _depth_ using **Sprite.SetHeight** and a position, given **Sprite.SetPosition** before being made visible using **Sprite.Show**. When you are finished using the sprite, the sprite should be freed using **Sprite.Free**.
Sprites work best when they are of moderate size. Large sprites will cause flashing when moved across the screen.
Anything that is is color 0 in the picture will not appear when the sprite is drawn. In other words, color 0 is transparent. (This is bydefault. You can set the transparent color for a sprite by settingthe picture's transparent colour using**[pic_settransparentcolor.html](Pic.SetTransparentColor)**.



##Example
See **Sprite.Animate** for an example of **Sprite.New**.



##Status
Exported qualified.
This means that you can only call the function by calling **Sprite.New**, not by calling **New**.



##See also
**[sprite_setheight.html](Sprite.SetHeight)**, **[sprite_setposition.html](Sprite.SetPosition)**, **[sprite_show.html](Sprite.Show)** and **[sprite_free.html](Sprite.Free)**.


