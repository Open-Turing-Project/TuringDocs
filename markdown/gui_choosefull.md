
#GUI.Choose[Full]

##Syntax
One of two procedures:
 **GUI.Choose** (*title*, *msg1*, *msg2*, *msg3* : **string**,  *btn1*, *btn2*, *btn3* : **string**) : **int** **GUI.ChooseFull** (*title* : st**r**ing,  *msg* : **array** 1 .. * **of string**,   *btn1*, *btn2*, *btn3* : **string**,   *defaultBtn* : **int**) : **int** 

##Description
Displays a dialog box with text and from one to three buttons. The user selects a button to dismiss the dialog. The number of the button pressed is returned by the function. The dialog box is centered on the screen.
The *title* parameter specifies the title in the window bar of the dialog box. The Apple Macintosh does not have a title bar, so do not assume that the user will see the string in the *title* parameter. The message is specified by strings in *msg1*, *msg2* and *msg3* for **GUI.Choose** and the string array *message* for **GUI.ChooseFull**. In each case, empty strings at the end of the list of strings are ignored. The *btn1*, *btn2*, and *btn3* parameters specify the text to appear in the buttons. If the text is an empty string (""), the button is not displayed.
The function returns the button number from one to three that was chosen. 
The *defaultBtn* parameter in **GUI.ChooseFull** specifies which, if any, button should be the default button. The default button is selected if the user presses **Enter**. If the default button is 0, then no button is highlighted as the default button.
**Note**: This function is **not** available in the current version of the GUI Procedure Library (shipping with Turing 4.0 and MacOOT 1.5). It is documented here for use with future shipping version of Turing. It is likely to be implemented in the version of Turing. Check the release notes that are found in the on-line help to find out if this function is now available.

##Example
The following program asks if the user wants coffee or tea and set *wantsCoffee* appropriately.
        import GUI in "%oot/lib/GUI"
        var wantsCoffee : boolean 
        var choice : int := GUI.Choose ("Beverage Choice", 
            "Do you want coffee or tea?", "", "", "Coffee", "Tea", "")
        if choice = 1 then
            wantsCoffee := true
        else
            wantsCoffee := false
        end if
##Example
The following program asks the user whether they want to save their work, don't save their work or Cancel.
        import GUI in "%oot/lib/GUI"
        
        % Returns false if cancelling operation
        procedure CheckUnsavedWork : boolean
            var message : array 1 .. 3 of string
            message (1) := "Changes to " + fileName + " have not been "
            message (2) := "saved. Unsaved work will be lost. Do you "
            message (3) := "want to save before quitting."
            var choice : int := GUI.ChooseFull ("Save Before Quit", 
                message, "Save", "Don't Save", "Cancel", 1)
            if choice = 1 then
                SaveWork
            elsif choice = 3  then
                return false
            end if
            return true
        end CheckUnsavedWork 
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.Choose**, not by calling **Choose**.
