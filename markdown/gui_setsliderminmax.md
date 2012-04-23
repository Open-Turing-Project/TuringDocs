
# GUI.SetSliderMinMax

## Syntax
**GUI.SetSliderMinMax** (_widgetID_, _min_, _max_ : **int**)

## Description
Sets the minimum and maximum values of the slider or scroll bar specified by _widgetID_. The _min_ parameter specifies the new minimum value of the slider or scroll bar. The _max_ parameter specifies the new maximum value of the slider or scroll bar. The _max_ parameter must be greater than the _min_ parameter.

**GUI.SetSliderMinMax** redraws the thumb to take into account the new minimum and maximum. If the current value of the slider is outside the new minimum/maximum, then the value is adjusted appropriately.


## Example
See **GUI.SetScrollAmount** for an example of **GUI.SetSliderMinMax**.


## Status
Exported qualified.

This means that you can only call the function by calling **GUI.SetSliderMinMax**, not by calling **SetSliderMinMax**.


## See also
**GUI.CreateHorizontalScrollBar**, **GUI.CreateVerticalScrollBar**, **[GUI.CreateHorizontalSlider](gui_createhorizontalslider.html)**, and **[GUI.CreateVerticalSlider](gui_createverticalslider.html)**.

