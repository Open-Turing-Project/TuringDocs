
# GUI.Pic...

## Syntax
**GUI.PicDraw** (_widgetID_ : **int**, _picID_, _x_, _y_, _mode_ : **int**)**GUI.PicNew** (_widgetID_ : **int**, _x1_, _y1_, _x2_, _y2_ : **int** ) : **int****GUI.PicScreenLoad** (_widgetID_ : **int**, _fileName_ : **string**,    _x_, _y_, _mode_ : **int**)**GUI.PicScreenSave** (_widgetID_ : **int**, _x1_, _y1_, _x2_, _y2_ : **int**,_fileName_ : **string**)

## Description
Performs a _Pic_&#133; command to the canvas specified by _widgetID_.

All of these routines are essentially the same as the similarly-named procedures in the _Pic_ module. All coordinates are based on the canvas and all drawing is clipped to the canvas drawing surface. 


## Example
See the _ScrollPic_ program in **GUI.CreateHorizontalScrollBarFull** for an example of **GUI.PicDraw**.


## Status
Exported qualified.

This means that you can only call the procedures by calling **GUI.Pic&#133;**, not by calling **Pic&#133;**.


## See also
**GUI.CreateCanvas**.

