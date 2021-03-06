
# takepic

## Syntax
**takepic** (_x1_, _y1_, _x2_, _y2_ : **int**, **var** _buffer_ : **array** 1 .. * **of** **int**)

## Description
The **takepic** procedure is used to record the pixel values in a rectangle, with left bottom and right corners of (_x1_, _y1_) and (_x2_, _y2_), in the buffer array. This requires a sufficiently-large buffer (see **sizepic** ). The **drawpic** procedure is used to make copies of the recorded rectangle on the screen.


## Example
After drawing a happy face, this program copies the face to a new location.



![Doc Image](takepic01.gif)


## Details
The integer values that **takepic** places in the buffer can be read or written (using the **read** and **write** statements). Unfortunately, if a value happens to be the pattern used to represent the uninitialized value (the largest negative number the hardware can represent) assignment (by:=) and **put** of the individual integer values in the buffer will fail.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


## Details
The **drawpic**, **takepic**, and **sizepic** subprogramshave been made obsolete by the subprograms **[Pic.Draw](pic_draw.html)** and**[Pic.New](pic_new.html)** of the **[Pic](picmodule.html)** module.  Users are strongly suggested to use those routines instead. The **[Pic](picmodule.html)** module also contains subprograms to load images from files.


## See also
**[sizepic](sizepic.html)** and **[drawpic](drawpic.html)**. See also **[setscreen](setscreen.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)**, **[drawdot](drawdot.html)**, **[drawline](drawline.html)**, **[drawbox](drawbox.html)**, and **[drawoval](drawoval.html)**.

See also predefined unit **[Pic](picmodule.html)**.

