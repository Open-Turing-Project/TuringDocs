
#GUI.SetXOR

##Syntax
**GUI.SetXOR** (*widgetID* : **int**, *xor* : **boolean**)

##Description
Sets the "xor mode" of the canvas specified by *widgetID*. If the *xor* parmeter is set to **true**, the canvas is set to *xor mode*. When in *xor mode*, all the *Draw*... procedures of a canvas are treated as if the **View.Set** ("xor") statement had been executed before the *Draw* procedure.

##Example
See **GUI.SetDisplayWhenCreated** for an example of **GUI.Show**.
        import GUI in "%oot/lib/GUI"
        View.Set ("graphics:400;300")
        var canvas1, label1, canvas2, label2 : int
        canvas1 := GUI.CreateCanvas (10, 20, maxx div 2  20, maxy  30)
        label1 := GUI.CreateLabelFull (10, 2, "XOR", maxx div 2  20, 0,
            GUI.CENTER, 0)
        canvas2 := GUI.CreateCanvas (maxx div 2 + 10, 20, 
            maxx div 2  20, maxy  30)
        label2 := GUI.CreateLabelFull (maxx div 2 + 10, 2, "Normal", 
            maxx div 2  20, 0, GUI.CENTER, 0)
        
        GUI.SetXOR (canvas1, true)
        for i : 1 .. 20
            var x : int := Rand.Int (0, maxx div 2  20)
            var y : int := Rand.Int (0, maxy  20)
            var c : int := Rand.Int (1, 15)
            GUI.DrawFillStar (canvas1, x  20, y  20, x + 20, y + 20, c)
        end for
        
        GUI.SetXOR (canvas2, false)
        for i : 1 .. 20
            var x : int := Rand.Int (0, maxx div 2  20)
            var y : int := Rand.Int (0, maxy  20)
            var c : int := Rand.Int (1, 15)
            GUI.DrawFillStar (canvas2, x  20, y  20, x + 20, y + 20, c)
        end for
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetXOR**, not by calling **SetXOR**.

##See also
**GUI.CreateCanvas**.
