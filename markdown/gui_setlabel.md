
#GUI.SetLabel

##Syntax
**GUI.SetLabel** (_widgetID_ : **int**, _text_ : **string**)


##Description
Changes the text of a widget specified by _widgetID_ to _text_. This procedure can accept a button, check box, radio button, label, or a labelled frame widget as the _widgetID_ parameter.

In most cases, if the text will not fit in the widget's current size, the widget will be resized to fit the text. If the widget was made larger to fit the text and then the text is changed, the widget will be resized as appropriate for the original _width_ specified and the new text.


##Example
The following program changes the text in the button whenever a keystroke occurs. When the text is changed back to "Quit", the button assumes a width of 100 again.

        import GUI in "%oot/lib/GUI"
        View.Set ("graphics:220;50")
        
        var short : boolean := true
        var button : int
        
        procedure KeyHandler (ch : char)
            if short then
                GUI.SetLabel (button, "Press This Button to Quit")
            else
                GUI.SetLabel (button, "Quit")
            end if
            short := not short
        end KeyHandler
        
        GUI.SetKeyEventHandler (KeyHandler)
        button := GUI.CreateButton (10, 5, 100, "Quit", GUI.Quit)
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.

This means that you can only call the function by calling **GUI.SetLabel**, not by calling **SetLabel**.


##See also
**GUI.CreateButton**, **GUI.CreateCheckBox**, **GUI.CreateRadioButton**, **GUI.CreateLabel**, and **[gui_createlabelledframe.html](GUI.CreateLabelledFrame)**.

