
#GUI.ProcessEvent

##Syntax
**GUI.ProcessEvent** : **boolean**



##Description
This function processes a single event (a mouse button press or a keystroke). If the event activates a widget, then the *action procedure* of the widget is called. 
The function returns **false** until **GUI.Quit** is called. It then returns **true**.
In order for the widgets to function once placed, the GUI.ProcessEvent must be called continually. Without a call to **GUI.ProcessEvent**, the widgets will appear, but will not react to mouse clicks or keystrokes.
Almost all programs involving the GUI Procedure Library have the following code fragment in the program. This code fragment is often called the *event loop*.
The loop runs continuously until **GUI.Quit** is called, whereupon **GUI.ProcessEvent** will return **true** and the loop will exit. The rest of the program is reached through the *action procedures* that are called when the user interacts with various widgets. 


        loop
            exit when GUI.ProcessEvent
        end loop
##Details
It is usually desirable to allow the user some way of quitting the program without having to abort it. This can be done most simply by adding a Quit button and placing it in an appropriate location.



##Example
Here is program that does nothing but wait for the user to press the quit button.


        import GUI in "%oot/lib/GUI"
        var quitButton : int := GUI.CreateButton (10, 10, 0, "Quit", GUI.Quit)
        loop
            exit when GUI.ProcessEvent
        end loop
##Details
To find out which widget was activated and called the *action procedure* (necessary if several widgets have the same *action* *procedure*), you can call **GUI.GetEventWidgetID**. To get the exact time that the event occurred, you can call **GUI.GetEventTime.** To get the window in which the event took place, you can call **GUI.GetEventWindow**.
If a mouse click occured, but did not activate any widget, then the default mouse event handler is called. By default, this does nothing. However, if you want your program to respond to mouse events that do not affect a widget, call **GUI.SetMouseEventHandler **to specify your own default mouse event handler.
If a keystroke occurred, but did not activate any widget (i.e. it wasn't a short cut for a widget and there are no text fields in the window) then the default keystroke handler is called. By default, this does nothing. However, if you want your program to respond to keystroke events that do not affect a widget, call **GUI.SetKeyEventHandler **to specify your own default key event handler.
If no event occurred, then the null event handler is called. By default, this does nothing. However, if you want your program to perform some action repetetively when it is not doing anything else, then call **GUI.SetNullEventHandler **to specify your own null event handler. The null event handler is often used for such things as updating a clock and making certain that music is playing in the background.



##Status
Exported qualified.
This means that you can only call the procedures by calling **GUI.PProcessEvent**, not by calling **ProcessEvent**.



##See also
**[gui_geteventwidgetid.html](GUI.GetEventWidgetID)**, **[gui_geteventtime.html](GUI.GetEventTime)**, and **[gui_geteventwindow.html](GUI.GetEventWindow)** for obtaining information about an event in an *action [procedure.html](procedure)*. See also **[gui_setmouseeventhandler.html](GUI.SetMouseEventHandler)**, **[gui_setkeyeventhandler.html](GUI.SetKeyEventHandler)** and **[gui_setnulleventhandler.html](GUI.SetNullEventHandler)** for handling mouse, keyboard an d null events in the *event [loop.html](loop)*. See also **[gui_quit.html](GUI.Quit)** for information on exitting the *event [loop.html](loop)*.


