
#sizepic

##Syntax
**sizepic** ( *x1*, *y1*, *x2*, *y2* : **int**) : **int**



##Description
The **sizepic** function is used to determine the size buffer needed to record a picture from the screen (see description of **takepic** ). This gives the minimum number of elements of the int array used by **takepic**. The buffer is used by **drawpic** to make copies of the picture on the screen.



##Example
This program outputs the size of array needed to hold a picture with left bottom corner at x=10, y=20 and right top corner at x=50, y=60.


        setscreen ("graphics")
        
        put "The size of the array needs to be",
            sizepic ( 10, 20, 50, 60 )
##Details
See **takepic** for an example of the use of **sizepic** and for further information about buffers for drawing pictures.
The screen should be in a "*graphics*" mode. See the **setscreen** procedure for details. If the screen is not in a "*graphics*" mode, it will automatically be set to "*graphics*" mode.



##See also
**[drawpic.html](drawpic)**. See also **[setscreen.html](setscreen)**, **[maxx.html](maxx)**, **[maxy.html](maxy)**, **[drawdot.html](drawdot)**, **[drawline.html](drawline)**, **[drawbox.html](drawbox)**, and **[drawoval.html](drawoval)**.
See also predefined unit **[picmodule.html](Pic)**.


