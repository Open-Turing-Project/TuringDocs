
#GUI.Disable

##Syntax
**GUI.Disable** (_widgetID_ : **int**)


##Description
Disables a widget specified by _widgetID_. 

Used in conjunction with **GUI.Enable** to enable and disable widgets. 

Disabled widgets generally are "grayed out" to visually depict their disabled status.

Disabled widgets do not respond to keystrokes or mouse clicks.


##Example
The three color radio buttons are enabled only when the color check box is selected.

        import GUI in "%oot/lib/GUI" 
        View.Set ("graphics:100;100") 
        
        var colorCheckBox, redRadio, greenRadio, blueRadio : int
        
        procedure DoNothing
        end DoNothing
        
        procedure ColorCheckBoxProc (filled : boolean)
            if filled then
                GUI.Enable (redRadio)
                GUI.Enable (greenRadio)
                GUI.Enable (blueRadio)
            else
                GUI.Disable (redRadio)
                GUI.Disable (greenRadio)
                GUI.Disable (blueRadio)
            end if
        end ColorCheckBoxProc
        
        colorCheckBox := GUI.CreateCheckBox (10, 80,
            "Use Color", ColorCheckBoxProc)
        redRadio := GUI.CreateRadioButton (33, 60, "Red", 0, DoNothing)
        greenRadio := GUI.CreateRadioButton (1, 1, "Green", 
            redRadio, DoNothing)
        blueRadio := GUI.CreateRadioButton (1, 1, "Blue", 
            greenRadio, DoNothing)
        ColorCheckBoxProc (false)
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Details
The following types of widgets can be enabled or disabled:


Buttons, Check Boxes, Radio Buttons, Picture Buttons,


Picture Radio Buttons, Horizontal Scroll Bars, Horizontal Sliders,Canvases, Text Fields, Vertical Scroll Bars, Vertical Sliders


##Status
Exported qualified.

This means that you can only call the procedure by calling **GUI.Disable**, not by calling **Disable**.


##See also
**[gui_enable.html](GUI.Enable)**.

