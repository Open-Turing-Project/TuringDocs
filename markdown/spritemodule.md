
#Sprite

##Description
Sprites are a way of doing animation in Turing bypassing the **Pic** module. A sprite is essentially a picture with a specific location and "depth". You create a sprite by calling **Sprite.New** with a picID received from **Pic.New**. You can then move the sprite around by calling **Sprite.SetPosition**. When you are finished with the sprite, you call **Sprite.Free**.
Note that sprites work best when they are moderately small. If you have large sprites, you will continue to have flashing. 
All subprograms in the **Sprite **unit are exported qualified (and thus must be prefaced with "**Sprite.**").



##Entry Points

[sprite_new.html](**New**) Creates a new sprite from a picture.
[sprite_free.html](**Free**) Disposes of a sprite and free up its memory.
[sprite_setheight.html](**SetHeight**) Sets the height of a sprite. Sprites with a greater height appear above sprites with a lesser height. The background is considered height 0. The height may be negative.
[sprite_setposition.html](**SetPosition**) Sets the location of the sprite. Can specify the center of the sprite or the lower-left corner.
[sprite_setframerate.html](**SetFrameRate**) Sets the maximum number of times a second the sprites will be moved on screen.
[sprite_changepic.html](**ChangePic**) Changes the picture associated with a sprite.
[sprite_animate.html](**Animate**) Changes the location and the picture associated with a sprite. Used for animating a moving changing image.
[sprite_show.html](**Show**) Shows a previously hidden sprite.
[sprite_hide.html](**Hide**) Hides a visible sprite.


