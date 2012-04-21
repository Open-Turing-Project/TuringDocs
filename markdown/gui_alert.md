
#GUI.Alert[2,3,Full]

##Syntax
One of four procedures:
 **GUI.Alert** (*title*, *msg* : **string**) **GUI.Alert2** (*title*, *msg1*, *msg2* : **string**) **GUI.Alert3** (*title*, *msg*1, *msg2*, *msg3* : **string**) **GUI.AlertFull** (*title* : **string,**   *msg* : **array** 1 .. * **of string**, *button* : **string**)



##Description
Displays a dialog box with the string specified by *msg* in it. There is a single button labelled *OK* which dismisses the dialog and resumes execution. The *title* parameter specifies the window title under Microsoft Windows. On the Apple Macintosh, there is no title, so do not assume the user will see the title. The dialog box is centered on the screen.
The **GUI.Alert2** and **GUI.Alert3** procedures allow the user to specify a two or three line message respectively. The **GUI.AlertFull** procedure allows the user to specify any number of lines of text in the string array specified by *msg* as well as the text in the dismissal button. Any empty strings at the end of the array are not displayed.
**Note**: This function is **not** available in the current version of the GUI Procedure Library (shipping with Turing 4.0 and MacOOT 1.5). It is documented here for use with future shipping version of Turing. It is likely to be implemented in the version of Turing released in September 2002. Check the release notes that are found in the on-line help to find out if this function is now available.



##Example
The following program asks the user for the name of a file puts up an alert dialog box if it fails.


        import GUI in "%oot/lib/GUI"
        
        var fileName : string
        var streamNumber : int
        
        loop
            fileName := GUI.SaveFile ("Save As")
            open : streamNumber, fileName, put
            exit when streamNumber > 0
            GUI.Alert ("Open Failure", "\"" + fileName + 
                "\" could not be opened")
        end loop
        
##Example
The following program asks the user for the name of a file puts up a more complete alert dialog box if it fails.


        import GUI in "%oot/lib/GUI"
        
        var fileName : string
        var streamNumber : int
        loop
            fileName := GUI.SaveFile ("Save As")
            open : streamNumber, fileName, put
            exit when streamNumber > 0
            GUI.Alert2 ("Open Failure", 
                "\"" + fileName + "\" could not be opened.",
                "Reason: " + Error.LastMsg)
        end loop
##Example
The following program fragment displays an alert with four lines of text and a button that says "Abort".


        var message : array 1 .. 10 of string
        for i : 1 .. 10
            message (i) := ""
        end for
        
        message (1) := "The program must now quit"
        message (2) := "becasue of an unrecoverable error."
        message (3) := "A Read Error occurred while reading"
        message (4) := "file \"" + fileName + "\"."
        message (5) := Error.LastMsg
        GUI.AlertFull ("Error", message, "Abort")
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.Alert**, not by calling **Alert**.


