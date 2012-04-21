
#GUI.OpenFileFull

##Syntax
**GUI.OpenFileFull** (*title*, *filter*: **string**,*startDir* : **string**) : **string**



##Description
Displays an "Open File" dialog box to obtain the name of an already existing file. The caption (a window title under MS Windows, a string in a Macintosh dialog box) is specified by the *title* parameter. The list of files shown is specified by the *filter* parameter. The initial directory to be displayed is specified by the *startDir* parameter. The function uses a dialog box specific to the operating system the program is being run on.
The *filter* parameter is a file name suffix that should be displayed. Multiple suffixes can be specified by separating them with commas. If the user specifies the empty string for *filter*, then all the files in the directory are displayed. If the *startDir* parameter is empty, or if it specifies a non-existent directory, then the current directory is displayed in the "Open File" dialog box.
If the user did not choose a file (i.e. hit the *Cancel* button in the dialog), the function returns "" (the empty string).
**Note**: This function is **not** available in the current version of the GUI Procedure Library (shipping with Turing 4.0 and MacOOT 1.5). It is documented here for use with future shipping version of Turing. It is likely to be implemented in the version of Turing released in September 2002. Check the release notes that are found in the on-line help to find out if this function is now available.



##Example
The following program asks the user to select a file ending in ".txt". The initial directory is the root directory of the C drive.


        import GUI in "%oot/lib/GUI"
        
        var fileName : string
        fileName := GUI.OpenFileFull ("Choose a Text File", "txt", "C:\\")
##Details
If a suffix is placed in single quotes, it will be ignored on all but the Apple Macintosh, where it will specify a Macintosh file type. 



##Example
The example makes the dialog box display all files ending in ".txt" or ".text" on all systems but the Macintosh. On the Apple Macintosh, only files of file type 'TEXT' will be displayed.


        fileName := GUI.OpenFileFull ("Open", "txt,text,'TEXT'", "")
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.OpenFileFull**, not by calling **OpenFileFull**.


