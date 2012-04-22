
#GUI.Draw...

##Syntax
**GUI.DrawArc** (_widgetID_, _x_, _y_, _xRadius_, _yRadius_ : **int**,    _initialAngle_, _finalAngle_, _Color_ : **int** )
**GUI.DrawBox** (_widgetID_, _x1_, _y1_, _x2_, _y2_, _Color_ : **int** )
**GUI.DrawCls** (_widgetID_ : **int** )
**GUI.DrawDot** (_widgetID_, _x_, _y_, _Color_ : **int** )
**GUI.DrawFill** (_widgetID_, _x_, _y_ : **int**,    _fillColor_, _borderColor_ : **int**)
**GUI.DrawFillArc** (_widgetID_, _x_, _y_ : **int**,    _initialAngle_, _finalAngle,_ _Color_ : **int**)
**GUI.DrawFillBox** (_widgetID_, _x1_, _y1_, _x2_, _y2_ : **int**,    _Color_ : **int** )
**GUI.DrawFillMapleLeaf** (_widgetID_, _x1_, _y1_ : **int**,    _x2_, _y2_, _Color_ : **int** )
**GUI.DrawFillOval** (_widgetID_, _x_, _y_ : **int**,    _xRadius_, _yRadius_ : **int**, _Color_ : **int**)
**GUI.DrawFillPolygon** (_widgetID_ : **int**,     _x_, _y_ : **array** 1 .. * **of** **int**, _n_ : **int**, _Color_ : **int**)
**GUI.DrawFillStar** (_widgetID_, _x1_, _y1_, _x2_, _y2_ : **int**,    _Color_ : **int**)
**GUI.DrawLine** (_widgetID_, _x1_, _y1_, _x2_, _y2_, _Color_ : **int**)
**GUI.DrawMapleLeaf** (_widgetID_, _x1_, _y1_, _x2_, _y2_ : **int**,_Color_ : **int**)
**GUI.DrawOval** (_widgetID_, _x_, _y_ : **int**,    _xRadius_, _yRadius_, _Color_ : **int**)
**GUI.DrawPolygon** (_widgetID_ : **int**,     _x_, _y_ : **array** 1 .. * **of** **int**, _n_ : **int**, _Color_ : **int**)
**GUI.DrawStar** (_widgetID_, _x1_, _y1_, _x2_, _y2_, _Color_ : **int** )
**GUI.DrawText** (_widgetID_ : **int**, _textStr_ : **string**,     _x_, _y_ : **int**, _fontID_, _Color_ : **int**)



##Description
Performs a _Draw_&#133; command to the canvas specified by _widgetID_.
All of these routines are essentially the same as the similarly-named procedures in the _Draw_ module. All coordinates are based on the canvas and all drawing is clipped to the canvas drawing surface. If the canvas is in "xor mode", all the drawing will be done with "xor" set. (See **View.Set** for more information about "xor".)
The _widgetID_ must specify a canvas widget.



##Example
See **GUI.CreateCanvas** for an example of **GUI.DrawFillOval**.



##Status
Exported qualified.
This means that you can only call the procedures by calling **GUI.Draw&#133;**, not by calling **Draw&#133;**.



##See also
**GUI.CreateCanvas**.


