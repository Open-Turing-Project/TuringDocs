
#GUI.ClearText

##Syntax
**GUI.ClearText** (_widgetID_ : **int**)



##Description
Clears all the text in a text box specified by _widgetID_. The _widgetID_ parameter must be the widget id of a text box.



##Example
The program lists 25 numbers in a text box. Every time the button is pressed, it clears the text box and prints the next 25 numbers. 



        import GUI
        var boxID, buttonID, start : int
        start := 1
        
        procedure PrintTwentyFive
            GUI.ClearText (boxID)
            for i : start .. start + 24
                GUI.AddLine (boxID, intstr (i))
            end for
            start += 25
        end PrintTwentyFive
        
        boxID := GUI.CreateTextBox (50, 50, 200, 200)
        buttonID := GUI.CreateButton (50, 5, 0, "Next 25", PrintTwentyFive)
        PrintTwentyFive
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.ClearText**, not by calling **ClearText**.



##See also
**GUI.CreateTextBox**.


