
#GUI.FontDraw

##Syntax
**GUI.FontDraw** (*widgetID* : **int**, *textStr* : **string**, *x*, *y*, *fontID*, *Color* : **int**)

##Description
Performs a *Font.Draw* command to the canvas specified by *widgetID*.
This routine is essentially the same as the *Font.Draw* procedure in the *Font* module. All coordinates are based on the canvas and all drawing is clipped to the canvas drawing surface. If the canvas is in "xor mode", all the drawing will be done with "xor" set. (See **View.Set*** *for more information about "xor".)
The *widgetID* must specify a canvas widget.

##Status
Exported qualified.
This means that you can only call the procedure by calling **GUI.FontDraw**, not by calling **FontDraw**.

##See also
**GUI.CreateCanvas**.
