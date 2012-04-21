
#Sprite.SetHeight

##Syntax
**Sprite.SetHeight** (*spriteID*, *newHeight* : **int**)

##Description
Sets the height of the sprite specified by *spriteID* to the value specified by *newHeight*.
The height of a sprite determines which sprite appears above another when they overlap. The "higher" sprite (the one with the greater height) will appear on top of the sprite with the lower height, even if the lower sprite is drawn second.
The background (i.e. any non-sprite) is considered to be in height 0. Sprites with a negative height will appear "behind" the background. Note that if two sprites have the same height, the one drawn last will appear above the first one.

##Example
See **Sprite.Hide** for an example of **Sprite.SetHeight**.

##Details
It should be noted that a lot more computation must be done to display sprites with a negative height.  If you are on a slowermachine and performance is not sufficient, consider trying toeliminate the use of sprites moving behind the background.

##Status
Exported qualified.
This means that you can only call the function by calling **Sprite.SetPosition**, not by calling **SetPosition**.

##See also
**[sprite_new.html](Sprite.New)**.
