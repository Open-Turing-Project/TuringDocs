
# Sprite

## Description
Sprites are a way of doing animation in Turing bypassing the **Pic** module. A sprite is essentially a picture with a specific location and "depth". You create a sprite by calling **Sprite.New** with a picID received from **Pic.New**. You can then move the sprite around by calling **Sprite.SetPosition**. When you are finished with the sprite, you call **Sprite.Free**.

Note that sprites work best when they are moderately small. If you have large sprites, you will continue to have flashing. 

All subprograms in the **Sprite** unit are exported qualified (and thus must be prefaced with "**Sprite.**").


## Entry Points

[**New**](sprite_new.html)   Creates a new sprite from a picture.  
[**Free**](sprite_free.html)   Disposes of a sprite and free up its memory.  
[**SetHeight**](sprite_setheight.html)   Sets the height of a sprite. Sprites with a greater height appear above sprites with a lesser height. The background is considered height 0. The height may be negative.  
[**SetPosition**](sprite_setposition.html)   Sets the location of the sprite. Can specify the center of the sprite or the lower-left corner.  
[**SetFrameRate**](sprite_setframerate.html)   Sets the maximum number of times a second the sprites will be moved on screen.  
[**ChangePic**](sprite_changepic.html)   Changes the picture associated with a sprite.  
[**Animate**](sprite_animate.html)   Changes the location and the picture associated with a sprite. Used for animating a moving changing image.  
[**Show**](sprite_show.html)   Shows a previously hidden sprite.  
[**Hide**](sprite_hide.html)   Hides a visible sprite.  
