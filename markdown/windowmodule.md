
#Window

##Description
This unit contains the predefined subprograms that handle windows. There are routines to open, close, hide, show and select windows.
All routines in the **Window** unit are exported qualified (and thus must be prefaced with "**Window.**").

##Details
The predefined subprograms of the **Window** module all usewindow identifiers to indicate which window to act upon.  The default Run window can be specified by using **defWindID**.For example, the following code causes the main Run window toappear and then blink on and off three times.
        % Output some data to make the Run window appear.
        put "Hello, World!"
        for i : 1 .. 3
            delay (1000)
            Window.Hide (defWinID)
            delay (1000)
            Window.Show (defWinID)
        end for
        put "How are you?"
##Entry Points
[window_open.html](**Open**) Opens a new execution window.[window_close.html](**Close**) Closes an execution window.[window_select.html](**Select**) Selects an execution window for output.[window_getselect.html](**GetSelect**) Returns the currently-selected execution window.[window_setactive.html](**SetActive**) Selects and activate (make front-most) an execution window.[window_getactive.html](**GetActive**) Gets the current active window.[window_getposition.html](**GetPosition**) Get the screen position of an execution window.[window_setposition.html](**SetPosition**) Set the screen position of an execution window.[window_hide.html](**Hide**) Hides an execution window.[window_show.html](**Show**) Shows the current execution window.[window_set.html](**Set**) Sets the configuration of the execution window.[window_update.html](**Update**) Updates the onscreen window from the offscreen bitmap.
