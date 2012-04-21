
#GUI.SaveFile

##Syntax
**GUI.SaveFile** (*title* : **string**) : **string**

##Description
Displays an "Save File" dialog box to obtain the name of a file. The caption (a window title under MS Windows, a string in a Macintosh dialog box) is specified by the *title* parameter. The function uses a dialog box specific to the operating system the program is being run on.
If the user did not choose a file (i.e. hit the *Cancel* button in the dialog), the function returns "" (the empty string).
**Note**: This function is **not** available in the current version of the GUI Procedure Library (shipping with Turing 4.0 and MacOOT 1.5). It is documented here for use with future shipping version of Turing. Check the release notes that are found in the on-line help to find out if this function is now available.

##Example
The following program asks the user for the name of a file and then writes the numbers 1 to 10 in it.
        import GUI in "%oot/lib/GUI"
        
        var fileName : string
        var streamNumber : int
        
        fileName := GUI.SaveFile ("Choose a Text File")
        
        open : streamNumber, fileName, put
        assert streamNumber > 0
        for i : 1 .. 10
            put : streamNumber, i
        end loop
        close : streamNumber
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SaveFile**, not by calling **SaveFile**.
