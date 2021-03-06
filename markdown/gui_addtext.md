
# GUI.AddText

## Syntax
**GUI.AddText** (_widgetID_ : **int**, _text_ : **string**)

## Description
**GUI.AddText** adds text to the current line of the text box specified by _widgetID_. It does not add a newline after the text. It is essentially equivalent to **put** _text_ ... in the text box. **GUI.AddLine** scrolls the text box (if necessary) so that the added text is now visible. The _widgetID_ parameter must be the widget id of a text box. The _text_ parameter is the text to be added to the text box.


## Details
To force a text box to scroll to the end of the text without adding any extra text, call **GUI.AddText** with "" (the null string) for the _text_ parameter.


## Example
The following creates a text box and puts the numbers from 1 to 26 followed by the appropriate letter of the alphabet in it.



        import GUI
        var boxID : int := GUI.CreateTextBox (50, 50, 200, 200)
        for i : 1 .. 26
            GUI.AddText (boxID, intstr (i))
            GUI.AddText (boxID, " ")
            GUI.AddLine (boxID, chr (64 + i))
        end for
        loop
            exit when GUI.ProcessEvent
        end loop
## Status
Exported qualified.

This means that you can only call the function by calling **GUI.AddText**, not by calling **AddText**.


## See also
**GUI.CreateTextBox**.

