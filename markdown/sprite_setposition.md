
#Sprite.SetPosition

##Syntax
**Sprite.SetPosition** (*spriteID*, *x*, *y* : **int**,     *centered* : **boolean**)

##Description
Moves the sprite specified by *spriteID* to the location specified by (*x, y*). If *centered* is **true**, then the sprite is centered on (*x, y*). Otherwise (*x, y*) specifies the lower-left corner of the sprite.

##Example
See **Sprite.Hide** for an example of **Sprite.SetPosition**.

##Status
Exported qualified.
This means that you can only call the function by calling **Sprite.SetPosition**, not by calling **SetPosition**.

##See also
**[sprite_new.html](Sprite.New)**.
