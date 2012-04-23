
# GUI.SetTopLine

## Syntax
**GUI.SetTopLine** (_widgetID_ : **int**, _lineNum_ : **int**)

## Description
The **GUI.SetTopLine** procedure scrolls the text in a text box so as to place the line number specified by_lineNum_ at the top of the text box (if possible).This is often used to scroll the text back to the beginningof the text box by assigning a value of 1 to _lineNum_.

## Example
This program displays 100 lines of text in a text box, thensets the text box to display line 50 at the top of the box.

        import GUI

        var textBox : int     % The Text Field ID.
        textBox := GUI.CreateTextBoxFull (10, 10, 180, 275,
            GUI.INDENT, 0)

        GUI.SetBackgroundColor (gray)

        % Read the file and place it in the text box.
        for i : 1 .. 100
            GUI.AddLine (textBox, intstr (i))
        end for
        GUI.SetTopLine (textBox, 50)

        loop
            exit when GUI.ProcessEvent
        end loop
## Status
Exported qualified.

This means that you can only call the function by calling **GUI.SetTopLine**, not by calling **SetTopLine**.

