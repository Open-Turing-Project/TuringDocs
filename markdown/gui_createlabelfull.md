
# GUI.CreateLabel[Full]

## Syntax
**GUI.CreateLabel** (_x_, _y_ : **int**, _text_ : **string**) : **int****GUI.CreateLabelFull** (_x,_ _y_ : **int**, _text_ : **string**,     _width_, _height_, _alignment_, _fontID_ : **int**) : **int**

## Description
Creates a label and returns the label's widget ID. 

The label widget is used to display text. It can be used to display text in a variety of fonts and sizes. Label widgets can also be aligned in a variety of ways.



![Doc Image](gui_createlabel_full01.gif)

**Three Labels**

The _x_ and _y_ parameters specify the lower-left corner of the area in which the text will be drawn. For **GUI.CreateLabel**, this is the lower-left corner of the text. The _text_ parameter specifies the text of the label.

For **GUI.CreateLabelFull**, the _width_ and _height_ parameters specify the area in which the label is to appear. This is used for alignment purposes. See the program below for an example of aligning the text to different corners of the window. The _alignment_ parameter specifies the alignment of the text in the text area. This value is the sum of horizontal alignment and the vertical alignment. The horizontal alignment is one of 0, _GUI.LEFT_, _GUI.CENTER_, or _GUI.RIGHT_. A horizontal alignment of 0 is the default and is the same as the alignment of _GUI.LEFT_. The vertical alignment is one of 0, _GUI.TOP_, _GUI.MIDDLE_, or _GUI.BOTTOM_. A horizontal alignment of 0 is the default and is the same as the alignment of _GUI.BOTTOM_. These alignments align the text in various ways in the text area. The _fontID_ parameter specifies the font ID of the font to be used in the text field. The font ID is received from a _Font.New_ call. Do not call _Font.Free_ for this font ID until the label has been disposed of by calling **GUI.Dispose.**

By using the _fondID_ parameter, labels can be have any size or typeface.

Labels are passive widgets, meaning that they do not respond to button clicks or keystrokes.


## Example
The following program creates three labels, one with the default alignment, the other two aligned to appear in the center and upper-right corner of the window.

        import GUI
        View.Set ("graphics:300;100,nobuttonbar ")
        var lowerLeft : int := GUI.CreateLabel (0, 0, "Lower-Left")
        var center : int := GUI.CreateLabelFull (0, 0, "Center", maxx, maxy, 
            GUI.MIDDLE + GUI.CENTER, 0)
        var upperRight : int := GUI.CreateLabelFull (0, 0, "Upper-Right", 
            maxx, maxy, GUI.RIGHT + GUI.TOP, 0)
## Details
When **GUI.CreateLabel** or **GUI.CreateLabelFull** is called, the newly created label will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the _display_ parameter set to false. 

A frame widget is a passive widget and cannot be enabled or disabled.


## Details
The following GUI subprograms can be called with a label as the _widgetID_ parameter:


**GUI.Show**, **GUI.Hide**, **GUI.Dispose**,**GUI.GetX**, **GUI.GetY**, **GUI.GetWidth**,**GUI.GetHeight**, **GUI.SetPosition**,**GUI.SetSize**, **GUI.SetPositionAndSize**,**GUI.GetSliderValue**, **GUI.SetSliderValue**,**GUI.SetSliderMinMax**, **GUI.SetLabel**





## Status
Exported qualified.

This means that you can only call the function by calling **GUI.CreateLabel**, not by calling **CreateLabel**.


## See also
**[GUI.SetLabel](gui_setlabel.html)** for changing the label's text.

