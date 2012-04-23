
# GUI.SetSliderValue

## Syntax
**GUI.SetSliderValue** (_widgetID_, _value_ : **int**)

## Description
Sets the value of a slider or scroll bar specified by _widgetID_ to _value_. It moves the thumb on the slider or scroll bar to the appropriate location and calls the slider's _action procedure_ with the new value.


## Example
See **GUI.SetScrollAmount** for an example of **GUI.SetSliderValue**.


## Status
Exported qualified.

This means that you can only call the function by calling **GUI.SetSliderValue**, not by calling **SetSliderValue**.


## See also
**[GUI.GetSliderValue](gui_getslidervalue.html)** for reading a slider [or](or.html) scroll bar's value. See also **GUI.CreateHorizontalScrollBar**, **GUI.CreateVerticalScrollBar**, **[GUI.CreateHorizontalSlider](gui_createhorizontalslider.html)**, and **[GUI.CreateVerticalSlider](gui_createverticalslider.html)**.

