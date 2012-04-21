
#GUI.SetScrollAmount

##Syntax
**GUI.SetScrollAmount** (*widgetID* : **int**,*arrowInc*, *pageInc*, *thumbSize* : **int**)

##Description
Sets a scroll bar's arrow increment, page increment and thumb size. Redraws the scroll bar to take into account the new thumb size. The *widgetID* specifies the scroll bar to be changed. The *arrowInc* parameter is the new arrow increment (the amount the scroll bar's value is changed when the scroll arrows are pressed). A value of 1 means to use the previously-defined arrow increment value. The *pageInc* parameter specifies the new page increment (the amount the scroll bar's value is changed when the user clicks in the page up/down section of the scroll bar). A value of 1 means to use the previously-defined page increment value. The *thumbSize* parameter specifies he new thumb size. See the scroll bar explanation for more detail on a scroll bar's thumb size. A value of 1 means to use the previously-defined thumb size.

##Example
The following program displays an image in a canvas in a window. If the image is larger than the canvas, scroll bars to the bottom and left are used to allow the user to see the entire image. A text field allows users to load additional images whenever the "Load File" button is pressed.
        % The "ScrollPic2" program.
        import GUI in "%oot/lib/GUI"
        
        % The maximum width/height of the canvas.
        const maxSize : int := 220 
        const leftBorder : int := 15    % Left margin.
        const bottomBorder : int := 25  % Bottom margin.
        
        var h, v : int          % The scroll bars.
        var canvas : int            % The canvas.
        var pic : int               % The picture.
        var fileNameField : int     % The file name text field.
        var errorLabel : int        % The error message label.
        var loadButton : int        % The "Load Picture" button.
        
        procedure ScrollPic (ignore : int)
            % Get the current value of the scroll bars.
            var x : int := GUI.GetSliderValue (h)
            var y : int := GUI.GetSliderValue (v)
            GUI.PicDraw (canvas, pic, x, y, picCopy)
        end ScrollPic
        
        procedure LoadFile (fileName : string)
            var picWidth, picHeight, canvasWidth, canvasHeight : int
            var newPic : int := Pic.FileNew (fileName)
            if newPic <= 0 then
                GUI.SetLabel (errorLabel, 
                    "Error loading picture: " + Error.LastMsg)
                GUI.SetSelection (fileNameField, 1, 1)
                return
            else
                GUI.SetLabel (errorLabel, "")
                pic := newPic
            end if
            picWidth := Pic.GetWidth (pic)
            picHeight := Pic.GetHeight (pic)
            canvasWidth := min (picWidth, maxSize)
            canvasHeight := min (picHeight, maxSize)
            % Hide the canvas and the three items, readjust them 
            % and then show them.
            GUI.Hide (canvas)
            GUI.Hide (h)
            GUI.Hide (v)
            GUI.SetSize (canvas, canvasWidth, canvasHeight)
            GUI.SetSliderSize (h, canvasWidth + 1)
            GUI.SetPosition (v, 15 + canvasWidth,
                bottomBorder + GUI.GetScrollBarWidth - 1)
            GUI.SetSliderSize (v, canvasHeight + 1)
            GUI.SetSliderMinMax (h, 0, picWidth  1)
            GUI.SetSliderMinMax (v, 0, picHeight  1)
            GUI.SetScrollAmount (h, 3, 100, canvasWidth)
            GUI.SetScrollAmount (v, 3, 100, canvasHeight)
            GUI.SetSliderValue (h, 0)
            GUI.SetSliderValue (v, picHeight)
            GUI.Show (canvas)
            GUI.Show (h)
            GUI.Show (v)
            ScrollPic (0)
        end LoadFile
        
        procedure LoadFileButton
            var fileName : string := GUI.GetText (fileNameField)
            LoadFile (fileName)
        end LoadFileButton
        
        View.Set ("graphics:265;295")
        
        % We place the canvas first and everything else is placed 
        % relative to the canvas.
        canvas := GUI.CreateCanvas (leftBorder, 
            bottomBorder + GUI.GetScrollBarWidth, maxSize, maxSize)h := GUI.CreateHorizontalScrollBarFull (GUI.GetX (canvas),
            GUI.GetY (canvas)  GUI.GetScrollBarWidth,
            GUI.GetWidth (canvas), 0, 100, 0, ScrollPic, 3, 100, maxSize)
        v := GUI.CreateVerticalScrollBarFull (
            GUI.GetX (canvas) + GUI.GetWidth (canvas),
            GUI.GetY (canvas), GUI.GetHeight (canvas), 0, 100,
            100, ScrollPic, 3, 100, maxSize)
        fileNameField := GUI.CreateTextField (GUI.GetX (canvas),
            GUI.GetY (canvas) + GUI.GetHeight (canvas) + 10, 150, "", 
            LoadFile)
        loadButton := GUI.CreateButton (GUI.GetX (fileNameField) +
            GUI.GetWidth (fileNameField) + 20, 
            GUI.GetY (fileNameField), 0, "Load File", LoadFileButton)
        errorLabel := GUI.CreateLabel (GUI.GetX (canvas), 5, "")
        
        % Set the initial picture and return if it is not found.
        GUI.SetText (fileNameField, "Forest.bmp")
        LoadFileButton
        if pic = 0 then
            return
        end if
        
        loop
            exit when GUI.ProcessEvent
        end loop
        
        
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetScrollAmount**, not by calling **SetScrollAmount**.

##See also
**GUI.CreateHorizontalScrollBar** and **GUI.CreateVerticalScrollBar**
