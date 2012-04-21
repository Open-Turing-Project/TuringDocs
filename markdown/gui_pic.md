
#GUI.Pic...

##Syntax
**GUI.PicDraw** (*widgetID* : **int**, *picID*, *x*, *y*, *mode* : **int**)
**GUI.PicNew** (*widgetID* : **int**, *x1*, *y1*, *x2*, *y2* : **int** ) : **int**
**GUI.PicScreenLoad** (*widgetID* : **int**, *fileName* : **string**,    *x*, *y*, *mode* : **int**)
**GUI.PicScreenSave** (*widgetID* : **int**, *x1*, *y1*, *x2*, *y2* : **int**,*fileName* : **string**)



##Description
Performs a *Pic* command to the canvas specified by *widgetID*.
All of these routines are essentially the same as the similarly-named procedures in the *Pic* module. All coordinates are based on the canvas and all drawing is clipped to the canvas drawing surface. 



##Example
See the *ScrollPic* program in **GUI.CreateHorizontalScrollBarFull **for an example of **GUI.PicDraw**.



##Status
Exported qualified.
This means that you can only call the procedures by calling **GUI.Pic**, not by calling **Pic**.



##See also
**GUI.CreateCanvas**.


