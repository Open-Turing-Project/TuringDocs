
# GUI.Get{X,Y}

## Syntax
**GUI.GetX** (_widgetID_ : **int**) : **int**
**GUI.GetY** (_widgetID_ : **int**) : **int**

## Description
Returns the x coordinate of the left edge of a widget. Note that this may be different from the x coordinate specified in the widget's _Create_ call. For example, if a radio button is created with right justification, the x coordinate in the _Create_ method specifies the right edge while **GUI.GetX** will return the x coordinate of the left edge.

This function is used in conjunction with **GUI.GetWidth** and **GUI.GetHeight** to determine the bounds of a widget. The entire widget should always fit in the box (**GUI.GetX**, **GUI.GetY**) - (**GUI.GetX** + **GUI.GetWidth** - 1, **GUI.GetY** + **GUI.GetHeight** - 1)

The position and size of a widget is known only after it has been drawn to the screen. Attempting to get the location or dimesions of the widget may cause an uninitialized variable error.


## Example
The following procedure draws a red box around the widget specified by _widgetID_.

        import GUI in "%oot/lib/GUI"
        procedure BoxWidget (widgetID : int)
            var x, y, width, height : int
            x := GUI.GetX (widgetID)
            y := GUI.GetY (widgetID)
            width := GUI.GetWidth (widgetID)
            height := GUI.GetHeight (widgetID)
            Draw.Box (x  1, x  1, x + width, y + height, red)
            Draw.Box (x  2, x  2, x + width + 1, y + height + 1, red)
        end BoxWidget
        
        var title : int := GUI.CreateLabel (20, 20, "Frame This!")
        BoxWidget (title)
## Status
Exported qualified.

This means that you can only call the function by calling **GUI.GetX**, not by calling **GetX**.


## See also
**[GUI.GetHeight](gui_getheight.html)** and **[GUI.GetWidth](gui_getwidth.html)**.

                        
