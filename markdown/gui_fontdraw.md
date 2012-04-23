
# GUI.FontDraw

## Syntax
**GUI.FontDraw** (_widgetID_ : **int**, _textStr_ : **string**, _x_, _y_, _fontID_, _Color_ : **int**)

## Description
Performs a _Font.Draw_ command to the canvas specified by _widgetID_.

This routine is essentially the same as the _Font.Draw_ procedure in the _Font_ module. All coordinates are based on the canvas and all drawing is clipped to the canvas drawing surface. If the canvas is in "xor mode", all the drawing will be done with "xor" set. (See **View.Set** for more information about "xor".)

The _widgetID_ must specify a canvas widget.


## Status
Exported qualified.

This means that you can only call the procedure by calling **GUI.FontDraw**, not by calling **FontDraw**.


## See also
**GUI.CreateCanvas**.

