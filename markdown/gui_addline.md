
#GUI.AddLine

##Syntax
**GUI.AddLine** (_widgetID_ : **int**, _text_ : **string**)



##Description
**GUI.AddLine **adds text and a newline to the current line of the text box specified by _widgetID_. It is essentially equivalent to **put** _text_ in the text box. **GUI.AddLine s**crolls the text box (if necessary) so that the added text is now visible. The _widgetID_ parameter must be the widget id of a text box. The _text_ parameter is the text to be added to the text box.



##Example
The following creates a text box and puts the numbers from 1 to 25 in it.



        import GUI
        var boxID : int := GUI.CreateTextBox (50, 50, 200, 200)
        for i : 1 .. 25
            GUI.AddLine (boxID, intstr (i))
        end for
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.AddLine**, not by calling **AddLine**.



##See also
**GUI.CreateTextBox**.


