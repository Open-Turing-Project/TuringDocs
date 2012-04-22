
#Draw.FillMapleLeaf

##Syntax
**Draw.FillMapleLeaf** (_x1_, _y1_, _x2_, _y2_, _Color_ : **int**)



##Description
The **Draw.FillMapleLeaf **procedure is used to draw a filled maple leaf on the screen bounded by a rectangle with bottom left and top right corners of (_x1_, _y1_) to (_x2_, _y2_) and filled using the specified _Color_. To get a maple leaf outlined in a different color, use **Draw.FillMapleLeaf** with the _Color_ parameter set to the fill color and then call **Draw.MapleLeaf**  with the _Color_ parameter set to the border color. If _y1_ is greater than _y2_, then the mapleleaf is drawn upside down.

![Doc image](draw_fillmapleleaf01.gif)


##Example
This program will draw two maple leaves beside each other. The first will be outlined in black and filled in brightred. The second maple leaf will be upside down and both filled and outlined in green.


        View.Set ("graphics")
        Draw.FillMapleLeaf (0, 0, 100, 100, brightred)
        Draw.MapleLeaf (0, 0, 100, 100, black)
        Draw.FillMapleLeaf (150, 100, 250, 0, green)
##Details
The **Draw.FillMapleLeaf** procedure is useful for drawing the Canadian flag.
The screen should be in a "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.



##Status
Exported qualified.
This means that you can only call the function by calling **Draw.FillMapleLeaf**, not by calling **FillMapleLeaf**.



##See also
**[view_set.html](View.Set)**, **[maxx.html](maxx)**, **[maxy.html](maxy)** and the various procedures in the **[drawmodule.html](Draw)** unit.


