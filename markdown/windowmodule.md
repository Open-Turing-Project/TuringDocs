
# Window

## Description
This unit contains the predefined subprograms that handle windows. There are routines to open, close, hide, show and select windows.

All routines in the **Window** unit are exported qualified (and thus must be prefaced with "**Window.**").


## Details
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
## Entry Points

[**Open**](window_open.html)   Opens a new execution window.
[**Close**](window_close.html)   Closes an execution window.
[**Select**](window_select.html)   Selects an execution window for output.
[**GetSelect**](window_getselect.html)   Returns the currently-selected execution window.
[**SetActive**](window_setactive.html)   Selects and activate (make front-most) an execution window.
[**GetActive**](window_getactive.html)   Gets the current active window.
[**GetPosition**](window_getposition.html)   Get the screen position of an execution window.
[**SetPosition**](window_setposition.html)   Set the screen position of an execution window.
[**Hide**](window_hide.html)   Hides an execution window.
[**Show**](window_show.html)   Shows the current execution window.
[**Set**](window_set.html)   Sets the configuration of the execution window.
[**Update**](window_update.html)   Updates the onscreen window from the offscreen bitmap.
