
#GUI.SetSliderValue

##Syntax
**GUI.SetSliderValue** (_widgetID_, _value_ : **int**)


##Description
Sets the value of a slider or scroll bar specified by _widgetID_ to _value_. It moves the thumb on the slider or scroll bar to the appropriate location and calls the slider's _action procedure_ with the new value.


##Example
See **GUI.SetScrollAmount** for an example of **GUI.SetSliderValue**.


##Status
Exported qualified.

This means that you can only call the function by calling **GUI.SetSliderValue**, not by calling **SetSliderValue**.


##See also
**[gui_getslidervalue.html](GUI.GetSliderValue)** for reading a slider [or.html](or) scroll bar's value. See also **GUI.CreateHorizontalScrollBar**, **GUI.CreateVerticalScrollBar**, **[gui_createhorizontalslider.html](GUI.CreateHorizontalSlider)**, and **[gui_createverticalslider.html](GUI.CreateVerticalSlider)**.

