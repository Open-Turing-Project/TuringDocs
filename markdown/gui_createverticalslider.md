
# GUI.CreateVerticalSlider

## Syntax
**GUI.CreateVerticalSlider** (_x_, _y_, _length_ : **int**,    _min_, _max_, _start_ : **int**, _actionProc_ : **procedure** _x_ (_value_ : **int**)) : **int**

## Description
Creates a vertical (up-down) slider and returns the slider's widget ID. 

A slider is a widget that allows the user to set a continuous set of values. It has a real-life equivalent in things such as a stereo volume control.



![Doc Image](gui_createverticalslider01.gif)

**A Vertical Slider**

To control a slider, the user clicks on the slider box and drags it back and forth. Every time the value changes, a procedure is called with the new value as a parameter.

The range of values that the slider will give is determined by the _min_ and _max_ parameters in the _Create_ call. The left side of the slider represents the minimum value, while the right represents the maximum value. 

The _x_ and _y_ parameters specify the lower-left corner of the slider track. This means that the slider actually extends above and below this point (and slightly to the left of it to take into account the rounded end of the track). The _length_ parameter specifies the length of the track in pixels. (You can use **GUI.GetX**_,_ **GetY**_,_ **GetWidth**, and **GetHeight** to get the exact dimensions of the slider.) The _min_ and _max_ parameters are the minimum and maximum valies returned by the slider. The _start_ parameter is the initial value of the slider and should be between _min_ and _max_ inclusive. The _actionProc_ parameter is the name of a procedure that is called when the value of the slider is changed. The parameter to the _action procedure_ is the current value of the slider.


## Example
The following program creates a vertical slider. Whenever the slider's value is changed, a message is displayed in the window.



        import GUI
        
        View.Set ("graphics:125;200,nobuttonbar") 
        var slider : int
        
        procedure SliderMoved (value : int)
            Text.Locate (9, 7)
            put "Slider"
            Text.Locate (10, 9)
            put value : 3
        end SliderMoved 
        
        slider := GUI.CreateVerticalSlider (20, 10, 180,
            50, 150, 50, SliderMoved )
        loop
            exit when GUI.ProcessEvent
        end loop
## Details
In some instances, you will want the the minimum and maximum values of the slider to be reversed (right is minimum). In that case, call the **GUI.SetSliderReverse** procedure to flip the values of the slider.

Sliders always have a fixed height (for horizontal sliders) or width (for vertical sliders). 

When **GUI.CreateVerticalSlider** or **GUI.CreateVerticalSliderFull** is called, the newly created slider will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 

When a slider is not enabled, the appearance does not change. However, the slider no longer responds to any mouse clicks until it is enabled again.


## Details
The following GUI subprograms can be called with a slider as the _widgetID_ parameter:


**GUI.Show**, **GUI.Hide**, **GUI.Enable**,**GUI.Disable**, **GUI.Dispose**, **GUI.GetX**,**GUI.GetY**, **GUI.GetWidth**, **GUI.GetHeight**,**GUI.SetPosition**, **GUI.SetSize**, **GUI.SetPositionAndSize**, **GUI.GetSliderValue**,**GUI.SetSliderValue**, **GUI.SetSliderMinMax**,**GUI.SetSliderSize**, **GUI.SetSliderReverse**  



## Status
Exported qualified.

This means that you can only call the function by calling **GUI.CreateVerticalSlider**, not by calling **CreateVerticalSlider**.


## See also
**[GUI.GetSliderValue](gui_getslidervalue.html)** and **[GUI.SetSliderValue](gui_setslidervalue.html)** for reading and setting the value of a slider, **[GUI.SetSliderMinMax](gui_setsliderminmax.html)** for changing the minimum and maximum values of a slider. See also **[GUI.SetSliderSize](gui_setslidersize.html)**for setting the length of a slider and **[GUI.SetSliderReverse](gui_setsliderreverse.html)** for reversing the sense of a slider.

