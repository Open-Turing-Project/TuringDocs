
#GUI.SetScrollOnAdd

##Syntax
**GUI.SetScrollOnAdd** (_widgetID_ : **int**, _scrollOnAdd_ : **boolean**)



##Description
The **GUI.SetScrollOnAdd** procedure allows you to specifywhether a text box scrolls to the bottom of the text whennew text is added (the default behaviour). By calling thisprocedure with _scrollOnAdd_ set to **false**, the text box will not scroll unless the user manipulates thetext box's scroll bars.



##Example
This program displays the contents of a file in a text box.After the file is displayed, the top line in the text box willbe the first line in the file.



        import GUI 
        View.Set ("graphics:300;300") 
        
        const fileNameToBeViewed : string := "TextBxs.DEM"
        var textBox : int       % The Text Field ID.
        var title : int     % The label for the title.
        var f : int         % The stream number of the file.
        var line : string       % Lines to be read from the file.
        
        % Open the file.
        open : f, fileNameToBeViewed, get
        if f = 0 then
            put "Unable to open " + fileNameToBeViewed + " : ", Error.LastMsg
            return
        end if
        
        % Set background color to gray for indented text box.
        GUI.SetBackgroundColor (gray)
        
        % Create the title label and text box.
        title := GUI.CreateLabelFull (20, 280, fileNameToBeViewed, 250, 0, 
            GUI.CENTER, 0)
        textBox := GUI.CreateTextBoxFull (10, 10, 280, 265, 
            GUI.INDENT, 0)
        
	GUI.SetScrollOnAdd (textBox, false)

        % Read the file and place it in the text box.
        loop
            exit when eof (f)
            get : f, line : *
            GUI.AddLine (textBox, line)
        end loop
        
        close : f   % Close the file.
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetScrollOnAdd**, not by calling **SetScrollOnAdd**.


