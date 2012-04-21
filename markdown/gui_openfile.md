
#GUI.OpenFile

##Syntax
**GUI.OpenFile** (*title* : **string**) : **string**



##Description
Displays an "Open File" dialog box to obtain the name of an already existing file. The caption (a window title under MS Windows, a string in a Macintosh dialog box) is specified by the *title* parameter. The function uses a dialog box specific to the operating system the program is being run on.
If the user did not choose a file (i.e. hit the *Cancel* button in the dialog), the function returns "" (the empty string).
**Note**: This function is **not** available in the current version of the GUI Procedure Library (shipping with Turing 4.0 and MacOOT 1.5). It is documented here for use with future shipping version of Turing. It is likely to be implemented in the version of Turing released in September 2002. Check the release notes that are found in the on-line help to find out if this function is now available.



##Example
The following program asks the user for the name of a file and then echoes the contents of it.


        import GUI in "%oot/lib/GUI"
        
        var fileName, line : string
        var streamNumber : int
        
        fileName := GUI.OpenFile ("Choose a Text File")
        
        open : streamNumber, fileName, get
        assert streamNumber > 0
        loop
            exit when eof (streamNumber)
            get : streamNumber, line : *
            put line
        end loop
        close : streamNumber
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.OpenFile**, not by calling **OpenFile**.


