
# sizepic

## Syntax
**sizepic** ( _x1_, _y1_, _x2_, _y2_ : **int**) : **int**

## Description
The **sizepic** function is used to determine the size buffer needed to record a picture from the screen (see description of **takepic** ). This gives the minimum number of elements of the int array used by **takepic**. The buffer is used by **drawpic** to make copies of the picture on the screen.


## Example
This program outputs the size of array needed to hold a picture with left bottom corner at x=10, y=20 and right top corner at x=50, y=60.

        setscreen ("graphics")
        
        put "The size of the array needs to be",
            sizepic ( 10, 20, 50, 60 )
## Details
See **takepic** for an example of the use of **sizepic** and for further information about buffers for drawing pictures.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


## See also
**[drawpic](drawpic.html)**. See also **[setscreen](setscreen.html)**, **[maxx](maxx.html)**, **[maxy](maxy.html)**, **[drawdot](drawdot.html)**, **[drawline](drawline.html)**, **[drawbox](drawbox.html)**, and **[drawoval](drawoval.html)**.

See also predefined unit **[Pic](picmodule.html)**.

