
#GUI.SetSliderMinMax

##Syntax
**GUI.SetSliderMinMax** (*widgetID*, *min*, *max* : **int**)



##Description
Sets the minimum and maximum values of the slider or scroll bar specified by *widgetID*. The *min* parameter specifies the new minimum value of the slider or scroll bar. The *max* parameter specifies the new maximum value of the slider or scroll bar. The *max* parameter must be greater than the *min* parameter.
**GUI.SetSliderMinMax** redraws the thumb to take into account the new minimum and maximum. If the current value of the slider is outside the new minimum/maximum, then the value is adjusted appropriately.



##Example
See **GUI.SetScrollAmount **for an example of **GUI.SetSliderMinMax**.



##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetSliderMinMax**, not by calling **SetSliderMinMax**.



##See also
**GUI.CreateHorizontalScrollBar**, **GUI.CreateVerticalScrollBar**, **[gui_createhorizontalslider.html](GUI.CreateHorizontalSlider)**, and **[gui_createverticalslider.html](GUI.CreateVerticalSlider)**.


