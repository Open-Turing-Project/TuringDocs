
# Window.GetActive

## Syntax
**Window.GetActive** : **int**

## Description
The **Window.GetActive** function returns the window ID of the active window. If the active window is a Turing run window, then**Window.GetActive** returns **defWinID** (which is -1) if the window is the default run window, or whatever number was returned from **Window.Open** for any other run window. If the active window is not a run window, then it returns -5 and sets **Error.Last** and **Error.LastMsg** to indicate the fact.

An active window is defined as the window that has the input focus. This means that any typing will be sent to the active window. Under most systems an active window is indicated by a change in the appearance of the window.


## Status
Exported qualified.

This means that you can only call the function by calling **Window.GetActive**, not by calling **GetActive**.


## See also
**[Window.SetActive](window_setactive.html)**.

