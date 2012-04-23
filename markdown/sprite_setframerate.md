
#Sprite.SetFrameRate

##Syntax
**Sprite.SetFrameRate** (_framesPerSec_ : **int**)


##Description
Specifies the maximum number of times per second that sprite positionswill be changed on the screen.  The higher the number, the smootherthe animation will appear (and the more processor time will be usedto perform the animation).

##Details
When you change the position or appearance of a sprite, Turing doesnot update the window immediately.  Instead, it waits a certain lengthof time and then updates all sprites that have moved since the lastupdate.  This allows for relatively smooth animation.

This means that you have a simple loop that calls Sprite.SetPosition200 times a second, the image of the sprite on the screen is stillonly being moved (by default) 33 times a second.

You can specify how many times a second Turing checks to see if a sprite has moved by using the **Sprite.SetFrameRate** procedure.Rates of 5-10 will make the movement of the sprites seem very choppy.  Rates of 100 are more or less completely smooth (the maximum is 120) and most CRT's will not notice any difference after60.  The default rate is 33 frames per second.  You should note thatif you set the rate higher than your computer can handle, every otherpart of your program will slow down as Turing will be checking forsprite movement rather than executing your program.

A modern PC (2+ GHz with a decent graphics card) can probably handlea frame rate of 60+, depending on the number of sprites.  A Pentium III should probably use the default rate.  Slower machinesshould probably use a lower rate (around 20).  Experimentation isthe best way to determine the ideal frame rate.


##Status
Exported qualified.

This means that you can only call the function by calling **Sprite.SetFrameRate**, not by calling **SetFrameRate**.

