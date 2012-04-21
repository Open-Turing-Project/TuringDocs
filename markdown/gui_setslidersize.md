
#GUI.SetSliderSize

##Syntax
**GUI.SetSliderSize** (*widgetID*, *length* : **int**)

##Description
Changes the length of a slider or scroll bar specified by *widgetID* to the value specified by the *length* parameter. Redraws the slider or scroll bar and changes the position of the thumb to take into account the new size of the slider or scroll bar.

##Example
See **GUI.SetScrollAmount **for an example of **GUI.SetSliderSize**.

##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetSliderSize**, not by calling **SetSliderSize**.

##See also
**GUI.CreateHorizontalScrollBar**, **GUI.CreateVerticalScrollBar**, **[gui_createhorizontalslider.html](GUI.CreateHorizontalSlider)**, and **[gui_createverticalslider.html](GUI.CreateVerticalSlider)**.