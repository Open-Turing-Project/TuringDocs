
#drawpic

##Syntax
**drawpic** (*x*, *y* : **int**, *buffer* : **array** 1 .. * **of** **int**, *picmode* : **int**)



##Description
The **drawpic** procedure is used to copy of a rectangular picture onto the screen. The left bottom of the picture is placed at (*x*, *y*). In the common case, the buffer was initialized by calling **takepic**. The values of *picmode* are:
 0:  Copy actual picture on screen. 1:  Copy picture by XORing it onto the screen.
XORing a picture onto the screen twice leaves the screen as it was  (this is a convenient way to move images for animation). XORing a picture onto a background effectively superimposes the picture onto the background.



##Details
See **takepic** for an example of the use of **drawpic** and for further information about buffers for drawing pictures.
The screen must be in a "*graphics*" mode. See the **setscreen** procedure for details. If the screen is not in a "*graphics*" mode, an error will occur.



##Details
The **drawpic**, **takepic**, and **sizepic** subprogramshave been made obsolete by the subprograms **[pic_draw.html](Pic.Draw)** and**[pic_new.html](Pic.New)** of the **[picmodule.html](Pic)** module.  Users are strongly suggested to use those routines instead. The **[picmodule.html](Pic)** module also contains subprograms to load images from files.



##See also
**[takepic.html](takepic)** and **[sizepic.html](sizepic)**. See also **[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various **draw** procedures.
See also predefined unit **[drawmodule.html](Draw)** and **[picmodule.html](Pic)**.


