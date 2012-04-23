
#GUI.CreateCanvas[Full]

##Syntax
**GUI.CreateCanvas** (_x_, _y_, _width_, _height_ : **int**) : **int**

**GUI.CreateCanvasFull** (_x_, _y_, _width_, _height_ : **int**,    _border_ : **int**,    _mouseDown_ : **procedure** _x_ (_mx_, _my_ : int),    _mouseDrag_ : **procedure** _x_ (_mx_, _my_ : int),    _mouseUp_ : **procedure** _x_ (_mx_, _my_ : int)) : **int**


##Description
Creates a canvas and returns the canvas' widget ID.

A canvas is a drawing surface for use by the program. It differs from just using the window surface to draw on in that (0, 0) represents the lower-left corner of the canvas and all drawing is clipped to the canvas. (This means that if you accidently attempt to draw outside of the canvas, it will not actually draw beyond the border of the canvas.)

Canvases have procedures that emulate all the procedures in the Draw module as well as a procedure to emulate Font.Draw, Pic.Draw, Pic.New, Pic.ScreenLoad and Pic.ScreenSave.

You can get mouse feedback from a canvas. Using the _CreateCanvasFull_ method, you can specify three routines that are called when the mouse button is depressed while pointing in a canvas. One routine will be called when the user presses the mouse button down in a canvas. Another routine will be called while the user drags the mouse with the mouse button down. This routine is repeatedly called whenever the mouse changes position while the mouse button is down. The last routine is called when the mouse button is released. All three routines take an _x_ and _y_ parameter, which is the location of the mouse with respect to the canvas (i.e. (0, 0) is the lower-left corner of the canvas).



![Doc Image](gui_createcanvas_full01.gif)

**Output of Canvases.dem**

The _x_ and _y_ parameters specify the lower-left corner of the canvas. The _width_ and _height_ parameters specify the width and height of the canvas. 

For **GUI.CreateCanvasFull**, the _border_ parameter specifies the type of border that surrounds the canvas and is one of 0, _GUI.LINE_, _GUI.INDENT_ or _GUI.EXDENT_. A border of 0 is the default and is the same as _GUI.LINE_. _GUI.INDENT_ and _GUI.EXDENT_ only display properly if the background colour has been set to _gray_ using **GUI.SetBackgroundColor**. _GUI.INDENT_ makes the canvas appear indented or recessed. _GUI.EXDENT_ makes the canvas appear to stand out from the window.

The _mouseDown_ parameter is a procedure called when the user presses the mouse button in the canvas. The _mouseDrag_ parameter is a procedure called when the user drags the mouse while the mouse button is still pressed. The _mouseUp_ parameter is a procedure called when the user releases the mouse button. The parameters to all three are the x and y location of the mouse where the button was pressed (dragged/released). The coordinates are given with respect to the canvas (i.e. (0, 0) is the lower-left corner of the canvas). 


##Example
The following program draws 10 random stars in the canvas.



        import GUI
        var canvas : int := GUI.CreateCanvas (10, 10, maxx - 20, maxy - 20)
        for i : 1 .. 10
            var x : int := Rand.Int (0, maxx - 20)
            var y : int := Rand.Int (0, maxy - 20)
            var c : int := Rand.Int (0, maxcolor)
            GUI.DrawFillOval (canvas, x, y, 20, 20, c)
        end for
##Details
When **GUI.CreateCanvas** or **GUI.CreateCanvasFull** is called, the newly created canvas will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 

The border of the canvas is just outside the drawing surface, so **GUI.GetWidth** and **GUI.GetHeight** will return slight larger values than _width_ and _height_.

When the canvas is disabled, clicking the mouse in the canvas does not call any of the _mouseDown_, _mouseDrag_, or _mouseUp_ procedures. The appearance of the canvas does not change.


##Details
The following GUI subprograms can be called with a button as the _widgetID_ parameter:


**GUI.Show**, **GUI.Hide**,**GUI.Enable**, **GUI.Disable**, **GUI.Dispose**,**GUI.GetX**, **GUI.GetY**, **GUI.GetWidth**,**GUI.GetHeight**, **GUI.SetPosition**, **GUI.SetSize**,**GUI.SetPositionAndSize**, **GUI.Draw&#133;**,**GUI.FontDraw**, **GUI.Pic&#133;**, **GUI.SetXOR**



##Status
Exported qualified.

This means that you can only call the function by calling **GUI.CreateCanvas**, not by calling **CreateCanvas**.


##See also
**[gui_draw.html](GUI.Draw&#133;)**, **[gui_fontdraw.html](GUI.FontDraw)**,**[gui_pic.html](GUI.Pic&#133;)**, and **[gui_setxor.html](GUI.SetXOR)** for drawing on a canvas.

