
#GUI.Draw...

##Syntax
**GUI.DrawArc** (*widgetID*, *x*, *y*, *xRadius*, *yRadius* : **int**,    *initialAngle*, *finalAngle*, *Color* : **int** )
**GUI.DrawBox** (*widgetID*, *x1*, *y1*, *x2*, *y2*, *Color* : **int** )
**GUI.DrawCls** (*widgetID* : **int** )
**GUI.DrawDot** (*widgetID*, *x*, *y*, *Color* : **int** )
**GUI.DrawFill** (*widgetID*, *x*, *y* : **int**,    *fillColor*, *borderColor* : **int**)
**GUI.DrawFillArc** (*widgetID*, *x*, *y *: **int**,    *xRadius,* *yRadius* : **int**,     *initialAngle*, *finalAngle,* *Color* : **int**)
**GUI.DrawFillBox** (*widgetID*, *x1*, *y1*, *x2*, *y2* : **int**,    *Color* : **int** )
**GUI.DrawFillMapleLeaf** (*widgetID*, *x1*, *y1* : **int**,    *x2*, *y2*, *Color* : **int** )
**GUI.DrawFillOval** (*widgetID*, *x*, *y* : **int**,    *xRadius*, *yRadius* : **int**, *Color* : **int**)
**GUI.DrawFillPolygon** (*widgetID* : **int**,     *x*, *y* : **array** 1 .. * **of** **int**, *n* : **int**, *Color* : **int**)
**GUI.DrawFillStar** (*widgetID*, *x1*, *y1*, *x2*, *y2* : **int**,    *Color* : **int**)
**GUI.DrawLine** (*widgetID*, *x1*, *y1*, *x2*, *y2*, *Color* : **int**)
**GUI.DrawMapleLeaf** (*widgetID*, *x1*, *y1*, *x2*, *y2* : **int**,*Color* : **int**)
**GUI.DrawOval** (*widgetID*, *x*, *y* : **int**,    *xRadius*, *yRadius*, *Color* : **int**)
**GUI.DrawPolygon** (*widgetID* : **int**,     *x*, *y* : **array** 1 .. * **of** **int**, *n* : **int**, *Color* : **int**)
**GUI.DrawStar** (*widgetID*, *x1*, *y1*, *x2*, *y2*, *Color* : **int** )
**GUI.DrawText** (*widgetID* : **int**, *textStr* : **string**,     *x*, *y* : **int**, *fontID*, *Color* : **int**)

##Description
Performs a *Draw* command to the canvas specified by *widgetID*.
All of these routines are essentially the same as the similarly-named procedures in the *Draw* module. All coordinates are based on the canvas and all drawing is clipped to the canvas drawing surface. If the canvas is in "xor mode", all the drawing will be done with "xor" set. (See **View.Set*** *for more information about "xor".)
The *widgetID* must specify a canvas widget.

##Example
See **GUI.CreateCanvas** for an example of **GUI.DrawFillOval**.

##Status
Exported qualified.
This means that you can only call the procedures by calling **GUI.Draw**, not by calling **Draw**.

##See also
**GUI.CreateCanvas**.
