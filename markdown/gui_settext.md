
#GUI.SetText

##Syntax
**GUI.SetText** (_widgetID_ : **int**, _text_ : **string**)



##Description
Sets the text of a text field specified by _widgetID_ to _text_. The selection is set to 1, 1 (i.e. the cursor is at the beginning of the text).



##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetText**, not by calling **SetText**.



##Example
The following program converts all lower case input in the text field to upper case when the user presses ENTER.


        import GUI
        
        var textField, lbl : int
        
        procedure CheckInput (s : string)
            var newString : string := ""
            for i : 1 .. length (s)
                if 'a' <= s (i) and s (i) <= 'z' then
                    newString += chr (ord (s (i))  32)
                else
                    newString += s (i)
                end if
            end for
            GUI.SetText (textField, newString)
            GUI.SetSelection (textField, 1, 1)
        end CheckInput
        
        textField := GUI.CreateTextField (100, 100, 200, "", CheckInput)
        lbl := GUI.CreateLabelFull (100 + GUI.GetWidth (textField) div 2,
            100 + GUI.GetHeight (textField),  "Converts to Upper Case", 
            0, 0, GUI.CENTER + GUI.BOTTOM, 0)
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetText**, not by calling **SetText**.



##See also
**GUI.CreateTextField**.


