
#GUI.SetSliderReverse

##Syntax
**GUI.SetSliderReverse** (*widgetID* : **int**)

##Description
Sets a slider or scroll bar specified by *widgetID* into (or out of, if already into) "reverse mode". Normally, a slider or scroll bar is at its minimum value when the thumb is on the left hand side (bottom for a vertical slider). This reverses it, so the minimum value is when the thumb is at the right hand side (top for vertical sliders) of the track. Calling this routine a second time reverses it back to normal. This procedure redraws the slider to move the thumb to its new location.

##Example
The following program creates two sliders, one of which is reversed.
        import GUI in "%oot/lib/GUI"
        
        View.Set ("graphics:300;70")
        var sBar, sBarLabel, reverseSBar, reverseSBarLabel : int
        
        procedure SBarMoved (value : int)
            GUI.SetLabel (sBarLabel, intstr (value))
        end SBarMoved
        
        procedure ReverseSBarMoved (value : int)
            GUI.SetLabel (reverseSBarLabel, intstr (value))
        end ReverseSBarMoved
        
        sBar := GUI.CreateHorizontalScrollBar (10, 10, 250,
            50, 150, 50, SBarMoved)
        sBarLabel := GUI.CreateLabel (
            GUI.GetX (sBar) + GUI.GetWidth (sBar) + 10, 10, "50")
        
        reverseSBar := GUI.CreateHorizontalScrollBar (10, 40, 250,
            50, 150, 50, ReverseSBarMoved)
        GUI.SetSliderReverse (reverseSBar)
        reverseSBarLabel := GUI.CreateLabel ( GUI.GetX (reverseSBar) + 
            GUI.GetWidth (reverseSBar) + 10, 40, "50")
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetSliderReverse**, not by calling **SetSliderReverse**.

##See also
**GUI.CreateHorizontalScrollBar**, **GUI.CreateVerticalScrollBar**, **[gui_createhorizontalslider.html](GUI.CreateHorizontalSlider)**, and **[gui_createverticalslider.html](GUI.CreateVerticalSlider)**.
