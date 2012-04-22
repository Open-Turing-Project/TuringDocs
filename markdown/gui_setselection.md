
#GUI.SetSelection

##Syntax
**GUI.SetSelection** (_widgetID_, _fromSel_, _toSel_ : **int**)



##Description
Sets the selected text in the text field specified by _widgetID_. The value of the _fromSel_ and _toSel_ parameters indicate the characters where the selection will begin and end. For example, if the text was "Hello there", setting _fromSel_ to 2 and _toSel_ to 5 would select "ell". Setting _fromSel_ and _toSel_ to 1 automatically selects the entire text.
The _fromSel_ parameter specifies the start of the selection. This ranges from 1 (before the first character) to the number of characters in the text + 1 (after the last character). A value of 1 for both _fromSel_ and _toSel_ selects the entire text.
The _toSel_ parameter specifies the end of the selection. This ranges from 1 (before the first character) to the number of characters in the text + 1 (after the last character). A value of 1 for both _fromSel_ and _toSel_ selects the entire text.



##Example
The following program allows the user to type into a text field. When the user presses ENTER, it searches for any non-lowercase text and if it finds any, selects it to make it easy for the user to correct it. If all the input is lower-case text, the program terminates.


        import GUI in "%oot/lib/GUI"
        
        var textField, lbl : int
        
        procedure CheckInput (s : string)
            for i : 1 .. length (s)
                if (s (i) < 'a' or 'z' < s (i)) and s (i) not= ' ' then
                    GUI.SetSelection (textField, i, i + 1)
                    return
                end if
            end for
            GUI.Quit
        end CheckInput
        
        textField := GUI.CreateTextField (100, 100, 200, "", CheckInput)
        lbl := GUI.CreateLabelFull (100 + GUI.GetWidth (textField) div 2,
            100 + GUI.GetHeight (textField), 
            "Only Allows Lower Case Letters", 0, 0, 
            GUI.CENTER + GUI.BOTTOM, 0)
        
        loop
            exit when GUI.ProcessEvent
        end loop
        
        GUI.SetLabel (lbl, "Program Finished!")
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetSelection**, not by calling **SetSelection**.



##See also
**GUI.CreateTextField**.


