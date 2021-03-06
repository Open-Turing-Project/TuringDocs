
# drawpic

## Syntax
**drawpic** (_x_, _y_ : **int**, _buffer_ : **array** 1 .. * **of** **int**, _picmode_ : **int**)

## Description
The **drawpic** procedure is used to copy of a rectangular picture onto the screen. The left bottom of the picture is placed at (_x_, _y_). In the common case, the buffer was initialized by calling **takepic**. The values of _picmode_ are:


0:  Copy actual picture on screen.  
1:  Copy picture by XORing it onto the screen.  


XORing a picture onto the screen twice leaves the screen as it was  (this is a convenient way to move images for animation). XORing a picture onto a background effectively superimposes the picture onto the background.


## Details
See **takepic** for an example of the use of **drawpic** and for further information about buffers for drawing pictures.

The screen must be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, an error will occur.


## Details
The **drawpic**, **takepic**, and **sizepic** subprogramshave been made obsolete by the subprograms **[Pic.Draw](pic_draw.html)** and**[Pic.New](pic_new.html)** of the **[Pic](picmodule.html)** module.  Users are strongly suggested to use those routines instead. The **[Pic](picmodule.html)** module also contains subprograms to load images from files.


## See also
**[takepic](takepic.html)** and **[sizepic](sizepic.html)**. See also **[setscreen](setscreen.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)** and the various **draw&#133;** procedures.

See also predefined unit **[Draw](drawmodule.html)** and **[Pic](picmodule.html)**.

