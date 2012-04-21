
#GUI.CreateHorizontalScrollBar[Full]

##Syntax
**GUI.CreateHorizontalScrollBar** (*x*, *y*, *size* : **int**,    *min*, *max*, *start*: **int**, *actionProc* : **procedure** *x* (*value* : **int**)) : **int**
**GUI.CreateHorizontalScrollBarFull** (*x*, *y*, *size* : **int**,    *min*, *max*, *start* : **int**,    *actionProc* : **procedure** *x* (*value* : **int**),    *arrowInc*, *pageInc*, *thumbSize* : **int**) : **int**

##Description
Creates a horizontal (left-right) scroll bar and returns the scroll bar's widget ID. 
A scroll bar is a widget that allows users to see a piece of a document that cannot be displayed on the screen in its entirety. The picture below shows a horizontal scroll bar. To control a scroll bar, there are a few choices: the user can click on the thumb (the box in the scroll bar) and slide it left or right, or the user can click in the scroll bar itself to the left or right of the thumb (in which case the thumb is moved up or down one "page"), or the user can click on the left or right arrows at the ends of the scroll bar (in which case the thumb is moved left or right one "arrow increment"). 
**A Horizontal Scroll Bar**
The programmer defines a page or an arrow increment. When the value of the scroll bar changes, the *action procedure* of the scroll bar is called with the new value as a parameter. The *action procedure* should then redraw the contents using the new value of the scroll bar.
The range of values that the scroll bar will give is determined by the *min* and *max* parameters in the *Create* call. The left side of the scroll bar represents the minimum value, while the right represents the maximum value. There is also the "thumb size". This represents the range of values that can be seen at once on the screen.
By default, the arrow increment (the amount the value is changed when the scrolling arrows are pressed) is set to one. The page increment (the amount the value is changed when the user clicks in the bar to the right or left of the thumb) is set to one quarter the difference between the minimum and the maximum. The "thumb size" is set to zero (see the description of scroll bars for an explanation of the thumb size).
The *x* and *y* parameters specify the lower-left corner of the scroll bar. The *size* parameter specifies the length of the scroll bar (including the arrows) in pixels. The *min* and *max* parameters are the minimum and maximum values returned by the scroll bar. The *start* parameter is the initial value of the scroll bar and should be between *min* and *max* inclusive. The *actionProc *parameter* *is the name of a procedure that is called when the value of the scroll bar is changed. The parameter to the *action procedure *is the current value of the scroll bar.
![Doc image](gui_createhorizontalscrollbar_full01.gif)

##Example
The following program creates a horizontal scroll bar. Whenever the scroll bar's value is changed, a message is displayed in the window.

        import GUI 
        
        View.Set ("graphics:300;60,nobuttonbar") 
        var scrollBar : int
        
        procedure ScrollBarMoved (value : int)
            Text.Locate (2, 3)
            put "Horizontal Scroll Bar: ", value : 4
        end ScrollBarMoved
        
        scrollBar := GUI.CreateHorizontalScrollBar (10, 10, 250,
            50, 150, 50, ScrollBarMoved)
        loop
            exit when GUI.ProcessEvent
        end loop
##Description
For **GUI.CreateHorizontalScrollBarFull**, the *arrowInc* parameter specifies the arrow increment (the amount the scroll bar's value is changed when the scroll arrows are pressed). The *pageInc* specifies the page increment (the amount the scroll bar's value is changed when the user clicks in the page left/right section of the scroll bar). The *thumbSize* parameter specifies the "thumb size". (See the scroll bar explanation for more detail on a scroll bar's "thumb size").
For example, if you have a window that can display 20 lines of text at once and there are 100 lines of text, you would set *min* to 1, *max* to 100 and *thumbSize* to 20. The value returned by the scroll bar would then be the line number of the first line on the screen to be displayed. When the scroll bar was at its maximum value, it would return 81, since by doing so, lines 81-100 would be displayed. 

##Example
Here is an example program that scrolls a large picture over a smaller window.

        % The "ScrollPic" program.
        import GUI
        
        var h, v : int      % The scroll bars.
        var canvas : int        % The canvas.
        var pic : int       % The picture.
        const width : int := 220    % The width of the canvas.
        
        procedure ScrollPic (ignore : int)
            % Get the current value of the scroll bars.
            var x : int := GUI.GetSliderValue (h)
            var y : int := GUI.GetSliderValue (v)
            GUI.PicDraw (canvas, pic, -x, -y, picCopy)
        end ScrollPic
        
        pic := Pic.FileNew ("Forest.jpg")
        if pic <= 0 then
            put "Error loading picture: ", Error.LastMsg
            return
        end if
        
        View.Set ("graphics:265;265")
        
        canvas := GUI.CreateCanvas (15, 15 + GUI.GetScrollBarWidth, 
            width, width)
        % Note the frame of the canvas is:
        %   (14, 14 + ScrollbarWidth) - (235, 235 + ScrollbarWidth)
        h := GUI.CreateHorizontalScrollBarFull (14, 14,
            221, 0, Pic.Width (pic) , 0, ScrollPic, 3, 100, width)
        v := GUI.CreateVerticalScrollBarFull (235, 
            14 + GUI.GetScrollBarWidth, 221, 0, Pic.Height (pic), 
            Pic.Height (pic), ScrollPic, 3, 100, width)
        ScrollPic (0) % Draw the picture initially

        loop
            exit when GUI.ProcessEvent
        end loop
##Details
In some instances, you will want the the minimum and maximum values of the scroll bar to be reversed (right/top is minimum). In that case, call the **GUI.SetSliderReverse** procedure to flip the values of the scroll bar.
Scroll bars always have a fixed height (for horizontal scroll bars) or width (for vertical scroll bars). To get a scroll bar's width, use the **GUI.GetScrollBarWidth **function. 
When **GUI.CreateHorizontalScrollBar **or **GUI.CreateHorizontalScrollBarFull*** *is called, the newly created scroll bar will be displayed immediately unless **GUI.DisplayWhenCreated** has been called with the *display* parameter set to false. 
When a scroll bar is not enabled, the gray in the bar is set to white and the thumb is not displayed. The scroll bar no longer responds to any mouse clicks until the scroll bar is enabled again.

##Details
The following GUI subprograms can be called with a scroll bar as the *widgetID* parameter:
 **GUI.Show**, **GUI.Hide**, **GUI.Enable**,**GUI.Disable**, **GUI.Dispose**, **GUI.GetX**,**GUI.GetY**, **GUI.GetWidth**, **GUI.GetHeight**,**GUI.SetPosition**, **GUI.SetSize**,**GUI.SetPositionAndSize**, **GUI.GetSliderValue**,**GUI.SetSliderValue**, **GUI.SetSliderMinMax**,**GUI.SetSliderSize**, **GUI.SetSliderReverse**,**GUI.SetScrollAmount**

##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreateHorizontalScrollBar**, not by calling **CreateHorizontalScrollBar**.

##See also
**[gui_getslidervalue.html](GUI.GetSliderValue)** and **[gui_setslidervalue.html](GUI.SetSliderValue) **for reading and setting the value of a scroll bar, **[gui_setsliderminmax.html](GUI.SetSliderMinMax)** for changing the minimum and maximum values of a scroll bar, and **[gui_setscrollamount.html](GUI.SetScrollAmount)** for changing the scrolling increments and thumb size of a scroll bar. See also **[gui_setslidersize.html](GUI.SetSliderSize) **for setting the [length.html](length) of a scroll bar and **[gui_setsliderreverse.html](GUI.SetSliderReverse)** for reversing the sense of a scroll bar.
